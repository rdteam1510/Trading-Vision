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
|
dense_179/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_179/kernel
u
$dense_179/kernel/Read/ReadVariableOpReadVariableOpdense_179/kernel*
_output_shapes

:
*
dtype0
t
dense_179/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_179/bias
m
"dense_179/bias/Read/ReadVariableOpReadVariableOpdense_179/bias*
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
lstm_537/lstm_cell_537/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_537/lstm_cell_537/kernel
?
1lstm_537/lstm_cell_537/kernel/Read/ReadVariableOpReadVariableOplstm_537/lstm_cell_537/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_537/lstm_cell_537/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_537/lstm_cell_537/recurrent_kernel
?
;lstm_537/lstm_cell_537/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_537/lstm_cell_537/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_537/lstm_cell_537/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_537/lstm_cell_537/bias
?
/lstm_537/lstm_cell_537/bias/Read/ReadVariableOpReadVariableOplstm_537/lstm_cell_537/bias*
_output_shapes	
:?*
dtype0
?
lstm_538/lstm_cell_538/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_538/lstm_cell_538/kernel
?
1lstm_538/lstm_cell_538/kernel/Read/ReadVariableOpReadVariableOplstm_538/lstm_cell_538/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_538/lstm_cell_538/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_538/lstm_cell_538/recurrent_kernel
?
;lstm_538/lstm_cell_538/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_538/lstm_cell_538/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_538/lstm_cell_538/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_538/lstm_cell_538/bias
?
/lstm_538/lstm_cell_538/bias/Read/ReadVariableOpReadVariableOplstm_538/lstm_cell_538/bias*
_output_shapes	
:?*
dtype0
?
lstm_539/lstm_cell_539/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_539/lstm_cell_539/kernel
?
1lstm_539/lstm_cell_539/kernel/Read/ReadVariableOpReadVariableOplstm_539/lstm_cell_539/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_539/lstm_cell_539/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_539/lstm_cell_539/recurrent_kernel
?
;lstm_539/lstm_cell_539/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_539/lstm_cell_539/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_539/lstm_cell_539/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_539/lstm_cell_539/bias
?
/lstm_539/lstm_cell_539/bias/Read/ReadVariableOpReadVariableOplstm_539/lstm_cell_539/bias*
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
Adam/dense_179/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_179/kernel/m
?
+Adam/dense_179/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_179/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_179/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_179/bias/m
{
)Adam/dense_179/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_179/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_537/lstm_cell_537/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_537/lstm_cell_537/kernel/m
?
8Adam/lstm_537/lstm_cell_537/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_537/lstm_cell_537/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_537/lstm_cell_537/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_537/lstm_cell_537/recurrent_kernel/m
?
BAdam/lstm_537/lstm_cell_537/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_537/lstm_cell_537/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_537/lstm_cell_537/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_537/lstm_cell_537/bias/m
?
6Adam/lstm_537/lstm_cell_537/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_537/lstm_cell_537/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_538/lstm_cell_538/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_538/lstm_cell_538/kernel/m
?
8Adam/lstm_538/lstm_cell_538/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_538/lstm_cell_538/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_538/lstm_cell_538/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_538/lstm_cell_538/recurrent_kernel/m
?
BAdam/lstm_538/lstm_cell_538/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_538/lstm_cell_538/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_538/lstm_cell_538/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_538/lstm_cell_538/bias/m
?
6Adam/lstm_538/lstm_cell_538/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_538/lstm_cell_538/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_539/lstm_cell_539/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_539/lstm_cell_539/kernel/m
?
8Adam/lstm_539/lstm_cell_539/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_539/lstm_cell_539/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_539/lstm_cell_539/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_539/lstm_cell_539/recurrent_kernel/m
?
BAdam/lstm_539/lstm_cell_539/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_539/lstm_cell_539/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_539/lstm_cell_539/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_539/lstm_cell_539/bias/m
?
6Adam/lstm_539/lstm_cell_539/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_539/lstm_cell_539/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_179/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_179/kernel/v
?
+Adam/dense_179/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_179/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_179/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_179/bias/v
{
)Adam/dense_179/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_179/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_537/lstm_cell_537/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_537/lstm_cell_537/kernel/v
?
8Adam/lstm_537/lstm_cell_537/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_537/lstm_cell_537/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_537/lstm_cell_537/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_537/lstm_cell_537/recurrent_kernel/v
?
BAdam/lstm_537/lstm_cell_537/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_537/lstm_cell_537/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_537/lstm_cell_537/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_537/lstm_cell_537/bias/v
?
6Adam/lstm_537/lstm_cell_537/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_537/lstm_cell_537/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_538/lstm_cell_538/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_538/lstm_cell_538/kernel/v
?
8Adam/lstm_538/lstm_cell_538/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_538/lstm_cell_538/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_538/lstm_cell_538/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_538/lstm_cell_538/recurrent_kernel/v
?
BAdam/lstm_538/lstm_cell_538/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_538/lstm_cell_538/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_538/lstm_cell_538/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_538/lstm_cell_538/bias/v
?
6Adam/lstm_538/lstm_cell_538/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_538/lstm_cell_538/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_539/lstm_cell_539/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_539/lstm_cell_539/kernel/v
?
8Adam/lstm_539/lstm_cell_539/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_539/lstm_cell_539/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_539/lstm_cell_539/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_539/lstm_cell_539/recurrent_kernel/v
?
BAdam/lstm_539/lstm_cell_539/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_539/lstm_cell_539/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_539/lstm_cell_539/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_539/lstm_cell_539/bias/v
?
6Adam/lstm_539/lstm_cell_539/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_539/lstm_cell_539/bias/v*
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
\Z
VARIABLE_VALUEdense_179/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_179/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_537/lstm_cell_537/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_537/lstm_cell_537/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_537/lstm_cell_537/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_538/lstm_cell_538/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_538/lstm_cell_538/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_538/lstm_cell_538/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_539/lstm_cell_539/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_539/lstm_cell_539/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_539/lstm_cell_539/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_179/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_179/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_537/lstm_cell_537/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_537/lstm_cell_537/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_537/lstm_cell_537/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_538/lstm_cell_538/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_538/lstm_cell_538/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_538/lstm_cell_538/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_539/lstm_cell_539/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_539/lstm_cell_539/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_539/lstm_cell_539/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_179/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_179/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_537/lstm_cell_537/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_537/lstm_cell_537/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_537/lstm_cell_537/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_538/lstm_cell_538/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_538/lstm_cell_538/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_538/lstm_cell_538/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_539/lstm_cell_539/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_539/lstm_cell_539/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_539/lstm_cell_539/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_537_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_537_inputlstm_537/lstm_cell_537/kernel'lstm_537/lstm_cell_537/recurrent_kernellstm_537/lstm_cell_537/biaslstm_538/lstm_cell_538/kernel'lstm_538/lstm_cell_538/recurrent_kernellstm_538/lstm_cell_538/biaslstm_539/lstm_cell_539/kernel'lstm_539/lstm_cell_539/recurrent_kernellstm_539/lstm_cell_539/biasdense_179/kerneldense_179/bias*
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
%__inference_signature_wrapper_2643850
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_179/kernel/Read/ReadVariableOp"dense_179/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_537/lstm_cell_537/kernel/Read/ReadVariableOp;lstm_537/lstm_cell_537/recurrent_kernel/Read/ReadVariableOp/lstm_537/lstm_cell_537/bias/Read/ReadVariableOp1lstm_538/lstm_cell_538/kernel/Read/ReadVariableOp;lstm_538/lstm_cell_538/recurrent_kernel/Read/ReadVariableOp/lstm_538/lstm_cell_538/bias/Read/ReadVariableOp1lstm_539/lstm_cell_539/kernel/Read/ReadVariableOp;lstm_539/lstm_cell_539/recurrent_kernel/Read/ReadVariableOp/lstm_539/lstm_cell_539/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_179/kernel/m/Read/ReadVariableOp)Adam/dense_179/bias/m/Read/ReadVariableOp8Adam/lstm_537/lstm_cell_537/kernel/m/Read/ReadVariableOpBAdam/lstm_537/lstm_cell_537/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_537/lstm_cell_537/bias/m/Read/ReadVariableOp8Adam/lstm_538/lstm_cell_538/kernel/m/Read/ReadVariableOpBAdam/lstm_538/lstm_cell_538/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_538/lstm_cell_538/bias/m/Read/ReadVariableOp8Adam/lstm_539/lstm_cell_539/kernel/m/Read/ReadVariableOpBAdam/lstm_539/lstm_cell_539/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_539/lstm_cell_539/bias/m/Read/ReadVariableOp+Adam/dense_179/kernel/v/Read/ReadVariableOp)Adam/dense_179/bias/v/Read/ReadVariableOp8Adam/lstm_537/lstm_cell_537/kernel/v/Read/ReadVariableOpBAdam/lstm_537/lstm_cell_537/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_537/lstm_cell_537/bias/v/Read/ReadVariableOp8Adam/lstm_538/lstm_cell_538/kernel/v/Read/ReadVariableOpBAdam/lstm_538/lstm_cell_538/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_538/lstm_cell_538/bias/v/Read/ReadVariableOp8Adam/lstm_539/lstm_cell_539/kernel/v/Read/ReadVariableOpBAdam/lstm_539/lstm_cell_539/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_539/lstm_cell_539/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2647062
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_179/kerneldense_179/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_537/lstm_cell_537/kernel'lstm_537/lstm_cell_537/recurrent_kernellstm_537/lstm_cell_537/biaslstm_538/lstm_cell_538/kernel'lstm_538/lstm_cell_538/recurrent_kernellstm_538/lstm_cell_538/biaslstm_539/lstm_cell_539/kernel'lstm_539/lstm_cell_539/recurrent_kernellstm_539/lstm_cell_539/biastotalcountAdam/dense_179/kernel/mAdam/dense_179/bias/m$Adam/lstm_537/lstm_cell_537/kernel/m.Adam/lstm_537/lstm_cell_537/recurrent_kernel/m"Adam/lstm_537/lstm_cell_537/bias/m$Adam/lstm_538/lstm_cell_538/kernel/m.Adam/lstm_538/lstm_cell_538/recurrent_kernel/m"Adam/lstm_538/lstm_cell_538/bias/m$Adam/lstm_539/lstm_cell_539/kernel/m.Adam/lstm_539/lstm_cell_539/recurrent_kernel/m"Adam/lstm_539/lstm_cell_539/bias/mAdam/dense_179/kernel/vAdam/dense_179/bias/v$Adam/lstm_537/lstm_cell_537/kernel/v.Adam/lstm_537/lstm_cell_537/recurrent_kernel/v"Adam/lstm_537/lstm_cell_537/bias/v$Adam/lstm_538/lstm_cell_538/kernel/v.Adam/lstm_538/lstm_cell_538/recurrent_kernel/v"Adam/lstm_538/lstm_cell_538/bias/v$Adam/lstm_539/lstm_cell_539/kernel/v.Adam/lstm_539/lstm_cell_539/recurrent_kernel/v"Adam/lstm_539/lstm_cell_539/bias/v*4
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
#__inference__traced_restore_2647192??+
?
?
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641803

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
while_body_2642021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_436_2642045_0:	d?0
while_lstm_cell_436_2642047_0:	2?,
while_lstm_cell_436_2642049_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_436_2642045:	d?.
while_lstm_cell_436_2642047:	2?*
while_lstm_cell_436_2642049:	???+while/lstm_cell_436/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_436/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_436_2642045_0while_lstm_cell_436_2642047_0while_lstm_cell_436_2642049_0*
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642007?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_436/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_436/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_436/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_436/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_436_2642045while_lstm_cell_436_2642045_0"<
while_lstm_cell_436_2642047while_lstm_cell_436_2642047_0"<
while_lstm_cell_436_2642049while_lstm_cell_436_2642049_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_436/StatefulPartitionedCall+while/lstm_cell_436/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_435_layer_call_fn_2646659

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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641803o
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2646723

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
*__inference_lstm_538_layer_call_fn_2645385
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642090|
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
?
*sequential_179_lstm_539_while_cond_2641499L
Hsequential_179_lstm_539_while_sequential_179_lstm_539_while_loop_counterR
Nsequential_179_lstm_539_while_sequential_179_lstm_539_while_maximum_iterations-
)sequential_179_lstm_539_while_placeholder/
+sequential_179_lstm_539_while_placeholder_1/
+sequential_179_lstm_539_while_placeholder_2/
+sequential_179_lstm_539_while_placeholder_3N
Jsequential_179_lstm_539_while_less_sequential_179_lstm_539_strided_slice_1e
asequential_179_lstm_539_while_sequential_179_lstm_539_while_cond_2641499___redundant_placeholder0e
asequential_179_lstm_539_while_sequential_179_lstm_539_while_cond_2641499___redundant_placeholder1e
asequential_179_lstm_539_while_sequential_179_lstm_539_while_cond_2641499___redundant_placeholder2e
asequential_179_lstm_539_while_sequential_179_lstm_539_while_cond_2641499___redundant_placeholder3*
&sequential_179_lstm_539_while_identity
?
"sequential_179/lstm_539/while/LessLess)sequential_179_lstm_539_while_placeholderJsequential_179_lstm_539_while_less_sequential_179_lstm_539_strided_slice_1*
T0*
_output_shapes
: {
&sequential_179/lstm_539/while/IdentityIdentity&sequential_179/lstm_539/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_179_lstm_539_while_identity/sequential_179/lstm_539/while/Identity:output:0*(
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642153

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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2646691

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
0__inference_sequential_179_layer_call_fn_2643139
lstm_537_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_537_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *T
fORM
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643114o
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
_user_specified_namelstm_537_input
?
?
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643114

inputs#
lstm_537_2642790:	?#
lstm_537_2642792:	d?
lstm_537_2642794:	?#
lstm_538_2642940:	d?#
lstm_538_2642942:	2?
lstm_538_2642944:	?"
lstm_539_2643090:2("
lstm_539_2643092:
(
lstm_539_2643094:(#
dense_179_2643108:

dense_179_2643110:
identity??!dense_179/StatefulPartitionedCall? lstm_537/StatefulPartitionedCall? lstm_538/StatefulPartitionedCall? lstm_539/StatefulPartitionedCall?
 lstm_537/StatefulPartitionedCallStatefulPartitionedCallinputslstm_537_2642790lstm_537_2642792lstm_537_2642794*
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2642789?
 lstm_538/StatefulPartitionedCallStatefulPartitionedCall)lstm_537/StatefulPartitionedCall:output:0lstm_538_2642940lstm_538_2642942lstm_538_2642944*
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642939?
 lstm_539/StatefulPartitionedCallStatefulPartitionedCall)lstm_538/StatefulPartitionedCall:output:0lstm_539_2643090lstm_539_2643092lstm_539_2643094*
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643089?
!dense_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_539/StatefulPartitionedCall:output:0dense_179_2643108dense_179_2643110*
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
GPU 2J 8? *O
fJRH
F__inference_dense_179_layer_call_and_return_conditional_losses_2643107y
IdentityIdentity*dense_179/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_179/StatefulPartitionedCall!^lstm_537/StatefulPartitionedCall!^lstm_538/StatefulPartitionedCall!^lstm_539/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_179/StatefulPartitionedCall!dense_179/StatefulPartitionedCall2D
 lstm_537/StatefulPartitionedCall lstm_537/StatefulPartitionedCall2D
 lstm_538/StatefulPartitionedCall lstm_538/StatefulPartitionedCall2D
 lstm_539/StatefulPartitionedCall lstm_539/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2645003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645003___redundant_placeholder05
1while_while_cond_2645003___redundant_placeholder15
1while_while_cond_2645003___redundant_placeholder25
1while_while_cond_2645003___redundant_placeholder3
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
lstm_539_while_cond_2644667.
*lstm_539_while_lstm_539_while_loop_counter4
0lstm_539_while_lstm_539_while_maximum_iterations
lstm_539_while_placeholder 
lstm_539_while_placeholder_1 
lstm_539_while_placeholder_2 
lstm_539_while_placeholder_30
,lstm_539_while_less_lstm_539_strided_slice_1G
Clstm_539_while_lstm_539_while_cond_2644667___redundant_placeholder0G
Clstm_539_while_lstm_539_while_cond_2644667___redundant_placeholder1G
Clstm_539_while_lstm_539_while_cond_2644667___redundant_placeholder2G
Clstm_539_while_lstm_539_while_cond_2644667___redundant_placeholder3
lstm_539_while_identity
?
lstm_539/while/LessLesslstm_539_while_placeholder,lstm_539_while_less_lstm_539_strided_slice_1*
T0*
_output_shapes
: ]
lstm_539/while/IdentityIdentitylstm_539/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_539_while_identity lstm_539/while/Identity:output:0*(
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
while_cond_2642211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2642211___redundant_placeholder05
1while_while_cond_2642211___redundant_placeholder15
1while_while_cond_2642211___redundant_placeholder25
1while_while_cond_2642211___redundant_placeholder3
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2646821

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

?
lstm_538_while_cond_2644101.
*lstm_538_while_lstm_538_while_loop_counter4
0lstm_538_while_lstm_538_while_maximum_iterations
lstm_538_while_placeholder 
lstm_538_while_placeholder_1 
lstm_538_while_placeholder_2 
lstm_538_while_placeholder_30
,lstm_538_while_less_lstm_538_strided_slice_1G
Clstm_538_while_lstm_538_while_cond_2644101___redundant_placeholder0G
Clstm_538_while_lstm_538_while_cond_2644101___redundant_placeholder1G
Clstm_538_while_lstm_538_while_cond_2644101___redundant_placeholder2G
Clstm_538_while_lstm_538_while_cond_2644101___redundant_placeholder3
lstm_538_while_identity
?
lstm_538/while/LessLesslstm_538_while_placeholder,lstm_538_while_less_lstm_538_strided_slice_1*
T0*
_output_shapes
: ]
lstm_538/while/IdentityIdentitylstm_538/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_538_while_identity lstm_538/while/Identity:output:0*(
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
/__inference_lstm_cell_436_layer_call_fn_2646757

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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642153o
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2646919

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

?
0__inference_sequential_179_layer_call_fn_2643877

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
GPU 2J 8? *T
fORM
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643114o
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

?
0__inference_sequential_179_layer_call_fn_2643755
lstm_537_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_537_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *T
fORM
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643703o
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
_user_specified_namelstm_537_input
?
?
while_cond_2641670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2641670___redundant_placeholder05
1while_while_cond_2641670___redundant_placeholder15
1while_while_cond_2641670___redundant_placeholder25
1while_while_cond_2641670___redundant_placeholder3
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2642631

inputs'
lstm_cell_437_2642549:2('
lstm_cell_437_2642551:
(#
lstm_cell_437_2642553:(
identity??%lstm_cell_437/StatefulPartitionedCall?while;
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
%lstm_cell_437/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_437_2642549lstm_cell_437_2642551lstm_cell_437_2642553*
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642503n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_437_2642549lstm_cell_437_2642551lstm_cell_437_2642553*
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
while_body_2642562*
condR
while_cond_2642561*K
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
NoOpNoOp&^lstm_cell_437/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_437/StatefulPartitionedCall%lstm_cell_437/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_2643386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_436_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_436_matmul_readvariableop_resource:	d?G
4while_lstm_cell_436_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_436_biasadd_readvariableop_resource:	???*while/lstm_cell_436/BiasAdd/ReadVariableOp?)while/lstm_cell_436/MatMul/ReadVariableOp?+while/lstm_cell_436/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_436/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_436/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_436/addAddV2$while/lstm_cell_436/MatMul:product:0&while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_436/BiasAddBiasAddwhile/lstm_cell_436/add:z:02while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_436/splitSplit,while/lstm_cell_436/split/split_dim:output:0$while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_436/SigmoidSigmoid"while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_1Sigmoid"while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mulMul!while/lstm_cell_436/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_436/ReluRelu"while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_1Mulwhile/lstm_cell_436/Sigmoid:y:0&while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/add_1AddV2while/lstm_cell_436/mul:z:0while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_2Sigmoid"while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_436/Relu_1Reluwhile/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_2Mul!while/lstm_cell_436/Sigmoid_2:y:0(while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_436/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_436/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_436/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_436/BiasAdd/ReadVariableOp*^while/lstm_cell_436/MatMul/ReadVariableOp,^while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_436_biasadd_readvariableop_resource5while_lstm_cell_436_biasadd_readvariableop_resource_0"n
4while_lstm_cell_436_matmul_1_readvariableop_resource6while_lstm_cell_436_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_436_matmul_readvariableop_resource4while_lstm_cell_436_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_436/BiasAdd/ReadVariableOp*while/lstm_cell_436/BiasAdd/ReadVariableOp2V
)while/lstm_cell_436/MatMul/ReadVariableOp)while/lstm_cell_436/MatMul/ReadVariableOp2Z
+while/lstm_cell_436/MatMul_1/ReadVariableOp+while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2646093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_437_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_437_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_437_matmul_readvariableop_resource:2(F
4while_lstm_cell_437_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_437_biasadd_readvariableop_resource:(??*while/lstm_cell_437/BiasAdd/ReadVariableOp?)while/lstm_cell_437/MatMul/ReadVariableOp?+while/lstm_cell_437/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_437/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_437/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_437/addAddV2$while/lstm_cell_437/MatMul:product:0&while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_437/BiasAddBiasAddwhile/lstm_cell_437/add:z:02while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_437/splitSplit,while/lstm_cell_437/split/split_dim:output:0$while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_437/SigmoidSigmoid"while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_1Sigmoid"while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mulMul!while/lstm_cell_437/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_437/ReluRelu"while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_1Mulwhile/lstm_cell_437/Sigmoid:y:0&while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/add_1AddV2while/lstm_cell_437/mul:z:0while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_2Sigmoid"while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_437/Relu_1Reluwhile/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_2Mul!while/lstm_cell_437/Sigmoid_2:y:0(while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_437/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_437/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_437/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_437/BiasAdd/ReadVariableOp*^while/lstm_cell_437/MatMul/ReadVariableOp,^while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_437_biasadd_readvariableop_resource5while_lstm_cell_437_biasadd_readvariableop_resource_0"n
4while_lstm_cell_437_matmul_1_readvariableop_resource6while_lstm_cell_437_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_437_matmul_readvariableop_resource4while_lstm_cell_437_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_437/BiasAdd/ReadVariableOp*while/lstm_cell_437/BiasAdd/ReadVariableOp2V
)while/lstm_cell_437/MatMul/ReadVariableOp)while/lstm_cell_437/MatMul/ReadVariableOp2Z
+while/lstm_cell_437/MatMul_1/ReadVariableOp+while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_437_layer_call_fn_2646855

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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642503o
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
K__inference_sequential_179_layer_call_and_return_conditional_losses_2644758

inputsH
5lstm_537_lstm_cell_435_matmul_readvariableop_resource:	?J
7lstm_537_lstm_cell_435_matmul_1_readvariableop_resource:	d?E
6lstm_537_lstm_cell_435_biasadd_readvariableop_resource:	?H
5lstm_538_lstm_cell_436_matmul_readvariableop_resource:	d?J
7lstm_538_lstm_cell_436_matmul_1_readvariableop_resource:	2?E
6lstm_538_lstm_cell_436_biasadd_readvariableop_resource:	?G
5lstm_539_lstm_cell_437_matmul_readvariableop_resource:2(I
7lstm_539_lstm_cell_437_matmul_1_readvariableop_resource:
(D
6lstm_539_lstm_cell_437_biasadd_readvariableop_resource:(:
(dense_179_matmul_readvariableop_resource:
7
)dense_179_biasadd_readvariableop_resource:
identity?? dense_179/BiasAdd/ReadVariableOp?dense_179/MatMul/ReadVariableOp?-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp?,lstm_537/lstm_cell_435/MatMul/ReadVariableOp?.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp?lstm_537/while?-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp?,lstm_538/lstm_cell_436/MatMul/ReadVariableOp?.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp?lstm_538/while?-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp?,lstm_539/lstm_cell_437/MatMul/ReadVariableOp?.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp?lstm_539/whileD
lstm_537/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_537/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_537/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_537/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_sliceStridedSlicelstm_537/Shape:output:0%lstm_537/strided_slice/stack:output:0'lstm_537/strided_slice/stack_1:output:0'lstm_537/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_537/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_537/zeros/packedPacklstm_537/strided_slice:output:0 lstm_537/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_537/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_537/zerosFilllstm_537/zeros/packed:output:0lstm_537/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_537/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_537/zeros_1/packedPacklstm_537/strided_slice:output:0"lstm_537/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_537/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_537/zeros_1Fill lstm_537/zeros_1/packed:output:0lstm_537/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_537/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_537/transpose	Transposeinputs lstm_537/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_537/Shape_1Shapelstm_537/transpose:y:0*
T0*
_output_shapes
:h
lstm_537/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_537/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_537/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_slice_1StridedSlicelstm_537/Shape_1:output:0'lstm_537/strided_slice_1/stack:output:0)lstm_537/strided_slice_1/stack_1:output:0)lstm_537/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_537/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_537/TensorArrayV2TensorListReserve-lstm_537/TensorArrayV2/element_shape:output:0!lstm_537/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_537/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_537/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_537/transpose:y:0Glstm_537/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_537/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_537/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_537/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_slice_2StridedSlicelstm_537/transpose:y:0'lstm_537/strided_slice_2/stack:output:0)lstm_537/strided_slice_2/stack_1:output:0)lstm_537/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_537/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp5lstm_537_lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_537/lstm_cell_435/MatMulMatMul!lstm_537/strided_slice_2:output:04lstm_537/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp7lstm_537_lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_537/lstm_cell_435/MatMul_1MatMullstm_537/zeros:output:06lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_537/lstm_cell_435/addAddV2'lstm_537/lstm_cell_435/MatMul:product:0)lstm_537/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp6lstm_537_lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_537/lstm_cell_435/BiasAddBiasAddlstm_537/lstm_cell_435/add:z:05lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_537/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_537/lstm_cell_435/splitSplit/lstm_537/lstm_cell_435/split/split_dim:output:0'lstm_537/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_537/lstm_cell_435/SigmoidSigmoid%lstm_537/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_537/lstm_cell_435/Sigmoid_1Sigmoid%lstm_537/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/mulMul$lstm_537/lstm_cell_435/Sigmoid_1:y:0lstm_537/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_537/lstm_cell_435/ReluRelu%lstm_537/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/mul_1Mul"lstm_537/lstm_cell_435/Sigmoid:y:0)lstm_537/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/add_1AddV2lstm_537/lstm_cell_435/mul:z:0 lstm_537/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_537/lstm_cell_435/Sigmoid_2Sigmoid%lstm_537/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_537/lstm_cell_435/Relu_1Relu lstm_537/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/mul_2Mul$lstm_537/lstm_cell_435/Sigmoid_2:y:0+lstm_537/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_537/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_537/TensorArrayV2_1TensorListReserve/lstm_537/TensorArrayV2_1/element_shape:output:0!lstm_537/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_537/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_537/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_537/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_537/whileWhile$lstm_537/while/loop_counter:output:0*lstm_537/while/maximum_iterations:output:0lstm_537/time:output:0!lstm_537/TensorArrayV2_1:handle:0lstm_537/zeros:output:0lstm_537/zeros_1:output:0!lstm_537/strided_slice_1:output:0@lstm_537/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_537_lstm_cell_435_matmul_readvariableop_resource7lstm_537_lstm_cell_435_matmul_1_readvariableop_resource6lstm_537_lstm_cell_435_biasadd_readvariableop_resource*
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
lstm_537_while_body_2644390*'
condR
lstm_537_while_cond_2644389*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_537/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_537/TensorArrayV2Stack/TensorListStackTensorListStacklstm_537/while:output:3Blstm_537/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_537/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_537/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_537/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_slice_3StridedSlice4lstm_537/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_537/strided_slice_3/stack:output:0)lstm_537/strided_slice_3/stack_1:output:0)lstm_537/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_537/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_537/transpose_1	Transpose4lstm_537/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_537/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_537/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_538/ShapeShapelstm_537/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_sliceStridedSlicelstm_538/Shape:output:0%lstm_538/strided_slice/stack:output:0'lstm_538/strided_slice/stack_1:output:0'lstm_538/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_538/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_538/zeros/packedPacklstm_538/strided_slice:output:0 lstm_538/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_538/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_538/zerosFilllstm_538/zeros/packed:output:0lstm_538/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_538/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_538/zeros_1/packedPacklstm_538/strided_slice:output:0"lstm_538/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_538/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_538/zeros_1Fill lstm_538/zeros_1/packed:output:0lstm_538/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_538/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_538/transpose	Transposelstm_537/transpose_1:y:0 lstm_538/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_538/Shape_1Shapelstm_538/transpose:y:0*
T0*
_output_shapes
:h
lstm_538/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_538/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_538/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_slice_1StridedSlicelstm_538/Shape_1:output:0'lstm_538/strided_slice_1/stack:output:0)lstm_538/strided_slice_1/stack_1:output:0)lstm_538/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_538/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_538/TensorArrayV2TensorListReserve-lstm_538/TensorArrayV2/element_shape:output:0!lstm_538/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_538/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_538/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_538/transpose:y:0Glstm_538/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_538/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_538/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_538/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_slice_2StridedSlicelstm_538/transpose:y:0'lstm_538/strided_slice_2/stack:output:0)lstm_538/strided_slice_2/stack_1:output:0)lstm_538/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_538/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp5lstm_538_lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_538/lstm_cell_436/MatMulMatMul!lstm_538/strided_slice_2:output:04lstm_538/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp7lstm_538_lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_538/lstm_cell_436/MatMul_1MatMullstm_538/zeros:output:06lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_538/lstm_cell_436/addAddV2'lstm_538/lstm_cell_436/MatMul:product:0)lstm_538/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp6lstm_538_lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_538/lstm_cell_436/BiasAddBiasAddlstm_538/lstm_cell_436/add:z:05lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_538/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_538/lstm_cell_436/splitSplit/lstm_538/lstm_cell_436/split/split_dim:output:0'lstm_538/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_538/lstm_cell_436/SigmoidSigmoid%lstm_538/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_538/lstm_cell_436/Sigmoid_1Sigmoid%lstm_538/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/mulMul$lstm_538/lstm_cell_436/Sigmoid_1:y:0lstm_538/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_538/lstm_cell_436/ReluRelu%lstm_538/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/mul_1Mul"lstm_538/lstm_cell_436/Sigmoid:y:0)lstm_538/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/add_1AddV2lstm_538/lstm_cell_436/mul:z:0 lstm_538/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_538/lstm_cell_436/Sigmoid_2Sigmoid%lstm_538/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_538/lstm_cell_436/Relu_1Relu lstm_538/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/mul_2Mul$lstm_538/lstm_cell_436/Sigmoid_2:y:0+lstm_538/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_538/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_538/TensorArrayV2_1TensorListReserve/lstm_538/TensorArrayV2_1/element_shape:output:0!lstm_538/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_538/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_538/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_538/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_538/whileWhile$lstm_538/while/loop_counter:output:0*lstm_538/while/maximum_iterations:output:0lstm_538/time:output:0!lstm_538/TensorArrayV2_1:handle:0lstm_538/zeros:output:0lstm_538/zeros_1:output:0!lstm_538/strided_slice_1:output:0@lstm_538/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_538_lstm_cell_436_matmul_readvariableop_resource7lstm_538_lstm_cell_436_matmul_1_readvariableop_resource6lstm_538_lstm_cell_436_biasadd_readvariableop_resource*
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
lstm_538_while_body_2644529*'
condR
lstm_538_while_cond_2644528*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_538/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_538/TensorArrayV2Stack/TensorListStackTensorListStacklstm_538/while:output:3Blstm_538/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_538/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_538/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_538/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_slice_3StridedSlice4lstm_538/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_538/strided_slice_3/stack:output:0)lstm_538/strided_slice_3/stack_1:output:0)lstm_538/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_538/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_538/transpose_1	Transpose4lstm_538/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_538/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_538/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_539/ShapeShapelstm_538/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_sliceStridedSlicelstm_539/Shape:output:0%lstm_539/strided_slice/stack:output:0'lstm_539/strided_slice/stack_1:output:0'lstm_539/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_539/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_539/zeros/packedPacklstm_539/strided_slice:output:0 lstm_539/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_539/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_539/zerosFilllstm_539/zeros/packed:output:0lstm_539/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_539/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_539/zeros_1/packedPacklstm_539/strided_slice:output:0"lstm_539/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_539/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_539/zeros_1Fill lstm_539/zeros_1/packed:output:0lstm_539/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_539/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_539/transpose	Transposelstm_538/transpose_1:y:0 lstm_539/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_539/Shape_1Shapelstm_539/transpose:y:0*
T0*
_output_shapes
:h
lstm_539/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_539/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_539/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_slice_1StridedSlicelstm_539/Shape_1:output:0'lstm_539/strided_slice_1/stack:output:0)lstm_539/strided_slice_1/stack_1:output:0)lstm_539/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_539/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_539/TensorArrayV2TensorListReserve-lstm_539/TensorArrayV2/element_shape:output:0!lstm_539/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_539/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_539/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_539/transpose:y:0Glstm_539/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_539/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_539/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_539/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_slice_2StridedSlicelstm_539/transpose:y:0'lstm_539/strided_slice_2/stack:output:0)lstm_539/strided_slice_2/stack_1:output:0)lstm_539/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_539/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp5lstm_539_lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_539/lstm_cell_437/MatMulMatMul!lstm_539/strided_slice_2:output:04lstm_539/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp7lstm_539_lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_539/lstm_cell_437/MatMul_1MatMullstm_539/zeros:output:06lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_539/lstm_cell_437/addAddV2'lstm_539/lstm_cell_437/MatMul:product:0)lstm_539/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp6lstm_539_lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_539/lstm_cell_437/BiasAddBiasAddlstm_539/lstm_cell_437/add:z:05lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_539/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_539/lstm_cell_437/splitSplit/lstm_539/lstm_cell_437/split/split_dim:output:0'lstm_539/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_539/lstm_cell_437/SigmoidSigmoid%lstm_539/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_539/lstm_cell_437/Sigmoid_1Sigmoid%lstm_539/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/mulMul$lstm_539/lstm_cell_437/Sigmoid_1:y:0lstm_539/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_539/lstm_cell_437/ReluRelu%lstm_539/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/mul_1Mul"lstm_539/lstm_cell_437/Sigmoid:y:0)lstm_539/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/add_1AddV2lstm_539/lstm_cell_437/mul:z:0 lstm_539/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_539/lstm_cell_437/Sigmoid_2Sigmoid%lstm_539/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_539/lstm_cell_437/Relu_1Relu lstm_539/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/mul_2Mul$lstm_539/lstm_cell_437/Sigmoid_2:y:0+lstm_539/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_539/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_539/TensorArrayV2_1TensorListReserve/lstm_539/TensorArrayV2_1/element_shape:output:0!lstm_539/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_539/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_539/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_539/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_539/whileWhile$lstm_539/while/loop_counter:output:0*lstm_539/while/maximum_iterations:output:0lstm_539/time:output:0!lstm_539/TensorArrayV2_1:handle:0lstm_539/zeros:output:0lstm_539/zeros_1:output:0!lstm_539/strided_slice_1:output:0@lstm_539/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_539_lstm_cell_437_matmul_readvariableop_resource7lstm_539_lstm_cell_437_matmul_1_readvariableop_resource6lstm_539_lstm_cell_437_biasadd_readvariableop_resource*
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
lstm_539_while_body_2644668*'
condR
lstm_539_while_cond_2644667*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_539/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_539/TensorArrayV2Stack/TensorListStackTensorListStacklstm_539/while:output:3Blstm_539/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_539/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_539/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_539/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_slice_3StridedSlice4lstm_539/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_539/strided_slice_3/stack:output:0)lstm_539/strided_slice_3/stack_1:output:0)lstm_539/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_539/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_539/transpose_1	Transpose4lstm_539/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_539/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_539/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_179/MatMul/ReadVariableOpReadVariableOp(dense_179_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_179/MatMulMatMul!lstm_539/strided_slice_3:output:0'dense_179/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_179/BiasAdd/ReadVariableOpReadVariableOp)dense_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_179/BiasAddBiasAdddense_179/MatMul:product:0(dense_179/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_179/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_179/BiasAdd/ReadVariableOp ^dense_179/MatMul/ReadVariableOp.^lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp-^lstm_537/lstm_cell_435/MatMul/ReadVariableOp/^lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp^lstm_537/while.^lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp-^lstm_538/lstm_cell_436/MatMul/ReadVariableOp/^lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp^lstm_538/while.^lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp-^lstm_539/lstm_cell_437/MatMul/ReadVariableOp/^lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp^lstm_539/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_179/BiasAdd/ReadVariableOp dense_179/BiasAdd/ReadVariableOp2B
dense_179/MatMul/ReadVariableOpdense_179/MatMul/ReadVariableOp2^
-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp2\
,lstm_537/lstm_cell_435/MatMul/ReadVariableOp,lstm_537/lstm_cell_435/MatMul/ReadVariableOp2`
.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp2 
lstm_537/whilelstm_537/while2^
-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp2\
,lstm_538/lstm_cell_436/MatMul/ReadVariableOp,lstm_538/lstm_cell_436/MatMul/ReadVariableOp2`
.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp2 
lstm_538/whilelstm_538/while2^
-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp2\
,lstm_539/lstm_cell_437/MatMul/ReadVariableOp,lstm_539/lstm_cell_437/MatMul/ReadVariableOp2`
.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp2 
lstm_539/whilelstm_539/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_179_lstm_538_while_body_2641361L
Hsequential_179_lstm_538_while_sequential_179_lstm_538_while_loop_counterR
Nsequential_179_lstm_538_while_sequential_179_lstm_538_while_maximum_iterations-
)sequential_179_lstm_538_while_placeholder/
+sequential_179_lstm_538_while_placeholder_1/
+sequential_179_lstm_538_while_placeholder_2/
+sequential_179_lstm_538_while_placeholder_3K
Gsequential_179_lstm_538_while_sequential_179_lstm_538_strided_slice_1_0?
?sequential_179_lstm_538_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_538_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_179_lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0:	d?a
Nsequential_179_lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?\
Msequential_179_lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0:	?*
&sequential_179_lstm_538_while_identity,
(sequential_179_lstm_538_while_identity_1,
(sequential_179_lstm_538_while_identity_2,
(sequential_179_lstm_538_while_identity_3,
(sequential_179_lstm_538_while_identity_4,
(sequential_179_lstm_538_while_identity_5I
Esequential_179_lstm_538_while_sequential_179_lstm_538_strided_slice_1?
?sequential_179_lstm_538_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_538_tensorarrayunstack_tensorlistfromtensor]
Jsequential_179_lstm_538_while_lstm_cell_436_matmul_readvariableop_resource:	d?_
Lsequential_179_lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource:	2?Z
Ksequential_179_lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource:	???Bsequential_179/lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp?Asequential_179/lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp?Csequential_179/lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp?
Osequential_179/lstm_538/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_179/lstm_538/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_179_lstm_538_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_538_tensorarrayunstack_tensorlistfromtensor_0)sequential_179_lstm_538_while_placeholderXsequential_179/lstm_538/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_179/lstm_538/while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOpLsequential_179_lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_179/lstm_538/while/lstm_cell_436/MatMulMatMulHsequential_179/lstm_538/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_179/lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_179/lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOpNsequential_179_lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_179/lstm_538/while/lstm_cell_436/MatMul_1MatMul+sequential_179_lstm_538_while_placeholder_2Ksequential_179/lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_179/lstm_538/while/lstm_cell_436/addAddV2<sequential_179/lstm_538/while/lstm_cell_436/MatMul:product:0>sequential_179/lstm_538/while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_179/lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOpMsequential_179_lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_179/lstm_538/while/lstm_cell_436/BiasAddBiasAdd3sequential_179/lstm_538/while/lstm_cell_436/add:z:0Jsequential_179/lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_179/lstm_538/while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_179/lstm_538/while/lstm_cell_436/splitSplitDsequential_179/lstm_538/while/lstm_cell_436/split/split_dim:output:0<sequential_179/lstm_538/while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_179/lstm_538/while/lstm_cell_436/SigmoidSigmoid:sequential_179/lstm_538/while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_179/lstm_538/while/lstm_cell_436/Sigmoid_1Sigmoid:sequential_179/lstm_538/while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_179/lstm_538/while/lstm_cell_436/mulMul9sequential_179/lstm_538/while/lstm_cell_436/Sigmoid_1:y:0+sequential_179_lstm_538_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_179/lstm_538/while/lstm_cell_436/ReluRelu:sequential_179/lstm_538/while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_179/lstm_538/while/lstm_cell_436/mul_1Mul7sequential_179/lstm_538/while/lstm_cell_436/Sigmoid:y:0>sequential_179/lstm_538/while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_179/lstm_538/while/lstm_cell_436/add_1AddV23sequential_179/lstm_538/while/lstm_cell_436/mul:z:05sequential_179/lstm_538/while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_179/lstm_538/while/lstm_cell_436/Sigmoid_2Sigmoid:sequential_179/lstm_538/while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_179/lstm_538/while/lstm_cell_436/Relu_1Relu5sequential_179/lstm_538/while/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_179/lstm_538/while/lstm_cell_436/mul_2Mul9sequential_179/lstm_538/while/lstm_cell_436/Sigmoid_2:y:0@sequential_179/lstm_538/while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_179/lstm_538/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_179_lstm_538_while_placeholder_1)sequential_179_lstm_538_while_placeholder5sequential_179/lstm_538/while/lstm_cell_436/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_179/lstm_538/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_179/lstm_538/while/addAddV2)sequential_179_lstm_538_while_placeholder,sequential_179/lstm_538/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_179/lstm_538/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_179/lstm_538/while/add_1AddV2Hsequential_179_lstm_538_while_sequential_179_lstm_538_while_loop_counter.sequential_179/lstm_538/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_179/lstm_538/while/IdentityIdentity'sequential_179/lstm_538/while/add_1:z:0#^sequential_179/lstm_538/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_538/while/Identity_1IdentityNsequential_179_lstm_538_while_sequential_179_lstm_538_while_maximum_iterations#^sequential_179/lstm_538/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_538/while/Identity_2Identity%sequential_179/lstm_538/while/add:z:0#^sequential_179/lstm_538/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_538/while/Identity_3IdentityRsequential_179/lstm_538/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_179/lstm_538/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_538/while/Identity_4Identity5sequential_179/lstm_538/while/lstm_cell_436/mul_2:z:0#^sequential_179/lstm_538/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_179/lstm_538/while/Identity_5Identity5sequential_179/lstm_538/while/lstm_cell_436/add_1:z:0#^sequential_179/lstm_538/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_179/lstm_538/while/NoOpNoOpC^sequential_179/lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOpB^sequential_179/lstm_538/while/lstm_cell_436/MatMul/ReadVariableOpD^sequential_179/lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_179_lstm_538_while_identity/sequential_179/lstm_538/while/Identity:output:0"]
(sequential_179_lstm_538_while_identity_11sequential_179/lstm_538/while/Identity_1:output:0"]
(sequential_179_lstm_538_while_identity_21sequential_179/lstm_538/while/Identity_2:output:0"]
(sequential_179_lstm_538_while_identity_31sequential_179/lstm_538/while/Identity_3:output:0"]
(sequential_179_lstm_538_while_identity_41sequential_179/lstm_538/while/Identity_4:output:0"]
(sequential_179_lstm_538_while_identity_51sequential_179/lstm_538/while/Identity_5:output:0"?
Ksequential_179_lstm_538_while_lstm_cell_436_biasadd_readvariableop_resourceMsequential_179_lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0"?
Lsequential_179_lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resourceNsequential_179_lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0"?
Jsequential_179_lstm_538_while_lstm_cell_436_matmul_readvariableop_resourceLsequential_179_lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0"?
Esequential_179_lstm_538_while_sequential_179_lstm_538_strided_slice_1Gsequential_179_lstm_538_while_sequential_179_lstm_538_strided_slice_1_0"?
?sequential_179_lstm_538_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_538_tensorarrayunstack_tensorlistfromtensor?sequential_179_lstm_538_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_538_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_179/lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOpBsequential_179/lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp2?
Asequential_179/lstm_538/while/lstm_cell_436/MatMul/ReadVariableOpAsequential_179/lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp2?
Csequential_179/lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOpCsequential_179/lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2643551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_435_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_435_matmul_readvariableop_resource:	?G
4while_lstm_cell_435_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_435_biasadd_readvariableop_resource:	???*while/lstm_cell_435/BiasAdd/ReadVariableOp?)while/lstm_cell_435/MatMul/ReadVariableOp?+while/lstm_cell_435/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_435/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_435/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_435/addAddV2$while/lstm_cell_435/MatMul:product:0&while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_435/BiasAddBiasAddwhile/lstm_cell_435/add:z:02while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_435/splitSplit,while/lstm_cell_435/split/split_dim:output:0$while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_435/SigmoidSigmoid"while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_1Sigmoid"while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mulMul!while/lstm_cell_435/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_435/ReluRelu"while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_1Mulwhile/lstm_cell_435/Sigmoid:y:0&while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/add_1AddV2while/lstm_cell_435/mul:z:0while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_2Sigmoid"while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_435/Relu_1Reluwhile/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_2Mul!while/lstm_cell_435/Sigmoid_2:y:0(while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_435/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_435/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_435/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_435/BiasAdd/ReadVariableOp*^while/lstm_cell_435/MatMul/ReadVariableOp,^while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_435_biasadd_readvariableop_resource5while_lstm_cell_435_biasadd_readvariableop_resource_0"n
4while_lstm_cell_435_matmul_1_readvariableop_resource6while_lstm_cell_435_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_435_matmul_readvariableop_resource4while_lstm_cell_435_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_435/BiasAdd/ReadVariableOp*while/lstm_cell_435/BiasAdd/ReadVariableOp2V
)while/lstm_cell_435/MatMul/ReadVariableOp)while/lstm_cell_435/MatMul/ReadVariableOp2Z
+while/lstm_cell_435/MatMul_1/ReadVariableOp+while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642503

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
while_cond_2645146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645146___redundant_placeholder05
1while_while_cond_2645146___redundant_placeholder15
1while_while_cond_2645146___redundant_placeholder25
1while_while_cond_2645146___redundant_placeholder3
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
*__inference_lstm_537_layer_call_fn_2644791

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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2642789s
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2643470

inputs?
,lstm_cell_436_matmul_readvariableop_resource:	d?A
.lstm_cell_436_matmul_1_readvariableop_resource:	2?<
-lstm_cell_436_biasadd_readvariableop_resource:	?
identity??$lstm_cell_436/BiasAdd/ReadVariableOp?#lstm_cell_436/MatMul/ReadVariableOp?%lstm_cell_436/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_436/MatMul/ReadVariableOpReadVariableOp,lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_436/MatMulMatMulstrided_slice_2:output:0+lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_436/MatMul_1MatMulzeros:output:0-lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_436/addAddV2lstm_cell_436/MatMul:product:0 lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_436/BiasAddBiasAddlstm_cell_436/add:z:0,lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_436/splitSplit&lstm_cell_436/split/split_dim:output:0lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_436/SigmoidSigmoidlstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_1Sigmoidlstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_436/mulMullstm_cell_436/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_436/ReluRelulstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_1Mullstm_cell_436/Sigmoid:y:0 lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_436/add_1AddV2lstm_cell_436/mul:z:0lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_2Sigmoidlstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_436/Relu_1Relulstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_2Mullstm_cell_436/Sigmoid_2:y:0"lstm_cell_436/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_436_matmul_readvariableop_resource.lstm_cell_436_matmul_1_readvariableop_resource-lstm_cell_436_biasadd_readvariableop_resource*
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
while_body_2643386*
condR
while_cond_2643385*K
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
NoOpNoOp%^lstm_cell_436/BiasAdd/ReadVariableOp$^lstm_cell_436/MatMul/ReadVariableOp&^lstm_cell_436/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_436/BiasAdd/ReadVariableOp$lstm_cell_436/BiasAdd/ReadVariableOp2J
#lstm_cell_436/MatMul/ReadVariableOp#lstm_cell_436/MatMul/ReadVariableOp2N
%lstm_cell_436/MatMul_1/ReadVariableOp%lstm_cell_436/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643703

inputs#
lstm_537_2643676:	?#
lstm_537_2643678:	d?
lstm_537_2643680:	?#
lstm_538_2643683:	d?#
lstm_538_2643685:	2?
lstm_538_2643687:	?"
lstm_539_2643690:2("
lstm_539_2643692:
(
lstm_539_2643694:(#
dense_179_2643697:

dense_179_2643699:
identity??!dense_179/StatefulPartitionedCall? lstm_537/StatefulPartitionedCall? lstm_538/StatefulPartitionedCall? lstm_539/StatefulPartitionedCall?
 lstm_537/StatefulPartitionedCallStatefulPartitionedCallinputslstm_537_2643676lstm_537_2643678lstm_537_2643680*
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2643635?
 lstm_538/StatefulPartitionedCallStatefulPartitionedCall)lstm_537/StatefulPartitionedCall:output:0lstm_538_2643683lstm_538_2643685lstm_538_2643687*
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2643470?
 lstm_539/StatefulPartitionedCallStatefulPartitionedCall)lstm_538/StatefulPartitionedCall:output:0lstm_539_2643690lstm_539_2643692lstm_539_2643694*
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643305?
!dense_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_539/StatefulPartitionedCall:output:0dense_179_2643697dense_179_2643699*
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
GPU 2J 8? *O
fJRH
F__inference_dense_179_layer_call_and_return_conditional_losses_2643107y
IdentityIdentity*dense_179/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_179/StatefulPartitionedCall!^lstm_537/StatefulPartitionedCall!^lstm_538/StatefulPartitionedCall!^lstm_539/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_179/StatefulPartitionedCall!dense_179/StatefulPartitionedCall2D
 lstm_537/StatefulPartitionedCall lstm_537/StatefulPartitionedCall2D
 lstm_538/StatefulPartitionedCall lstm_538/StatefulPartitionedCall2D
 lstm_539/StatefulPartitionedCall lstm_539/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643785
lstm_537_input#
lstm_537_2643758:	?#
lstm_537_2643760:	d?
lstm_537_2643762:	?#
lstm_538_2643765:	d?#
lstm_538_2643767:	2?
lstm_538_2643769:	?"
lstm_539_2643772:2("
lstm_539_2643774:
(
lstm_539_2643776:(#
dense_179_2643779:

dense_179_2643781:
identity??!dense_179/StatefulPartitionedCall? lstm_537/StatefulPartitionedCall? lstm_538/StatefulPartitionedCall? lstm_539/StatefulPartitionedCall?
 lstm_537/StatefulPartitionedCallStatefulPartitionedCalllstm_537_inputlstm_537_2643758lstm_537_2643760lstm_537_2643762*
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2642789?
 lstm_538/StatefulPartitionedCallStatefulPartitionedCall)lstm_537/StatefulPartitionedCall:output:0lstm_538_2643765lstm_538_2643767lstm_538_2643769*
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642939?
 lstm_539/StatefulPartitionedCallStatefulPartitionedCall)lstm_538/StatefulPartitionedCall:output:0lstm_539_2643772lstm_539_2643774lstm_539_2643776*
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643089?
!dense_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_539/StatefulPartitionedCall:output:0dense_179_2643779dense_179_2643781*
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
GPU 2J 8? *O
fJRH
F__inference_dense_179_layer_call_and_return_conditional_losses_2643107y
IdentityIdentity*dense_179/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_179/StatefulPartitionedCall!^lstm_537/StatefulPartitionedCall!^lstm_538/StatefulPartitionedCall!^lstm_539/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_179/StatefulPartitionedCall!dense_179/StatefulPartitionedCall2D
 lstm_537/StatefulPartitionedCall lstm_537/StatefulPartitionedCall2D
 lstm_538/StatefulPartitionedCall lstm_538/StatefulPartitionedCall2D
 lstm_539/StatefulPartitionedCall lstm_539/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_537_input
?8
?
while_body_2642855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_436_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_436_matmul_readvariableop_resource:	d?G
4while_lstm_cell_436_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_436_biasadd_readvariableop_resource:	???*while/lstm_cell_436/BiasAdd/ReadVariableOp?)while/lstm_cell_436/MatMul/ReadVariableOp?+while/lstm_cell_436/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_436/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_436/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_436/addAddV2$while/lstm_cell_436/MatMul:product:0&while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_436/BiasAddBiasAddwhile/lstm_cell_436/add:z:02while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_436/splitSplit,while/lstm_cell_436/split/split_dim:output:0$while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_436/SigmoidSigmoid"while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_1Sigmoid"while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mulMul!while/lstm_cell_436/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_436/ReluRelu"while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_1Mulwhile/lstm_cell_436/Sigmoid:y:0&while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/add_1AddV2while/lstm_cell_436/mul:z:0while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_2Sigmoid"while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_436/Relu_1Reluwhile/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_2Mul!while/lstm_cell_436/Sigmoid_2:y:0(while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_436/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_436/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_436/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_436/BiasAdd/ReadVariableOp*^while/lstm_cell_436/MatMul/ReadVariableOp,^while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_436_biasadd_readvariableop_resource5while_lstm_cell_436_biasadd_readvariableop_resource_0"n
4while_lstm_cell_436_matmul_1_readvariableop_resource6while_lstm_cell_436_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_436_matmul_readvariableop_resource4while_lstm_cell_436_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_436/BiasAdd/ReadVariableOp*while/lstm_cell_436/BiasAdd/ReadVariableOp2V
)while/lstm_cell_436/MatMul/ReadVariableOp)while/lstm_cell_436/MatMul/ReadVariableOp2Z
+while/lstm_cell_436/MatMul_1/ReadVariableOp+while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_537_while_body_2644390.
*lstm_537_while_lstm_537_while_loop_counter4
0lstm_537_while_lstm_537_while_maximum_iterations
lstm_537_while_placeholder 
lstm_537_while_placeholder_1 
lstm_537_while_placeholder_2 
lstm_537_while_placeholder_3-
)lstm_537_while_lstm_537_strided_slice_1_0i
elstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0:	?R
?lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?M
>lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
lstm_537_while_identity
lstm_537_while_identity_1
lstm_537_while_identity_2
lstm_537_while_identity_3
lstm_537_while_identity_4
lstm_537_while_identity_5+
'lstm_537_while_lstm_537_strided_slice_1g
clstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensorN
;lstm_537_while_lstm_cell_435_matmul_readvariableop_resource:	?P
=lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource:	d?K
<lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource:	???3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp?2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp?4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp?
@lstm_537/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_537/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensor_0lstm_537_while_placeholderIlstm_537/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp=lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_537/while/lstm_cell_435/MatMulMatMul9lstm_537/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp?lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_537/while/lstm_cell_435/MatMul_1MatMullstm_537_while_placeholder_2<lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_537/while/lstm_cell_435/addAddV2-lstm_537/while/lstm_cell_435/MatMul:product:0/lstm_537/while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp>lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_537/while/lstm_cell_435/BiasAddBiasAdd$lstm_537/while/lstm_cell_435/add:z:0;lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_537/while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_537/while/lstm_cell_435/splitSplit5lstm_537/while/lstm_cell_435/split/split_dim:output:0-lstm_537/while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_537/while/lstm_cell_435/SigmoidSigmoid+lstm_537/while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_537/while/lstm_cell_435/Sigmoid_1Sigmoid+lstm_537/while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_537/while/lstm_cell_435/mulMul*lstm_537/while/lstm_cell_435/Sigmoid_1:y:0lstm_537_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_537/while/lstm_cell_435/ReluRelu+lstm_537/while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_537/while/lstm_cell_435/mul_1Mul(lstm_537/while/lstm_cell_435/Sigmoid:y:0/lstm_537/while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_537/while/lstm_cell_435/add_1AddV2$lstm_537/while/lstm_cell_435/mul:z:0&lstm_537/while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_537/while/lstm_cell_435/Sigmoid_2Sigmoid+lstm_537/while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_537/while/lstm_cell_435/Relu_1Relu&lstm_537/while/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_537/while/lstm_cell_435/mul_2Mul*lstm_537/while/lstm_cell_435/Sigmoid_2:y:01lstm_537/while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_537/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_537_while_placeholder_1lstm_537_while_placeholder&lstm_537/while/lstm_cell_435/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_537/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_537/while/addAddV2lstm_537_while_placeholderlstm_537/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_537/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_537/while/add_1AddV2*lstm_537_while_lstm_537_while_loop_counterlstm_537/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_537/while/IdentityIdentitylstm_537/while/add_1:z:0^lstm_537/while/NoOp*
T0*
_output_shapes
: ?
lstm_537/while/Identity_1Identity0lstm_537_while_lstm_537_while_maximum_iterations^lstm_537/while/NoOp*
T0*
_output_shapes
: t
lstm_537/while/Identity_2Identitylstm_537/while/add:z:0^lstm_537/while/NoOp*
T0*
_output_shapes
: ?
lstm_537/while/Identity_3IdentityClstm_537/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_537/while/NoOp*
T0*
_output_shapes
: ?
lstm_537/while/Identity_4Identity&lstm_537/while/lstm_cell_435/mul_2:z:0^lstm_537/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_537/while/Identity_5Identity&lstm_537/while/lstm_cell_435/add_1:z:0^lstm_537/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_537/while/NoOpNoOp4^lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp3^lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp5^lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_537_while_identity lstm_537/while/Identity:output:0"?
lstm_537_while_identity_1"lstm_537/while/Identity_1:output:0"?
lstm_537_while_identity_2"lstm_537/while/Identity_2:output:0"?
lstm_537_while_identity_3"lstm_537/while/Identity_3:output:0"?
lstm_537_while_identity_4"lstm_537/while/Identity_4:output:0"?
lstm_537_while_identity_5"lstm_537/while/Identity_5:output:0"T
'lstm_537_while_lstm_537_strided_slice_1)lstm_537_while_lstm_537_strided_slice_1_0"~
<lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource>lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0"?
=lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource?lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0"|
;lstm_537_while_lstm_cell_435_matmul_readvariableop_resource=lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0"?
clstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensorelstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp2h
2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp2l
4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_539_while_cond_2644240.
*lstm_539_while_lstm_539_while_loop_counter4
0lstm_539_while_lstm_539_while_maximum_iterations
lstm_539_while_placeholder 
lstm_539_while_placeholder_1 
lstm_539_while_placeholder_2 
lstm_539_while_placeholder_30
,lstm_539_while_less_lstm_539_strided_slice_1G
Clstm_539_while_lstm_539_while_cond_2644240___redundant_placeholder0G
Clstm_539_while_lstm_539_while_cond_2644240___redundant_placeholder1G
Clstm_539_while_lstm_539_while_cond_2644240___redundant_placeholder2G
Clstm_539_while_lstm_539_while_cond_2644240___redundant_placeholder3
lstm_539_while_identity
?
lstm_539/while/LessLesslstm_539_while_placeholder,lstm_539_while_less_lstm_539_strided_slice_1*
T0*
_output_shapes
: ]
lstm_539/while/IdentityIdentitylstm_539/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_539_while_identity lstm_539/while/Identity:output:0*(
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
while_cond_2642704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2642704___redundant_placeholder05
1while_while_cond_2642704___redundant_placeholder15
1while_while_cond_2642704___redundant_placeholder25
1while_while_cond_2642704___redundant_placeholder3
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
while_cond_2643220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2643220___redundant_placeholder05
1while_while_cond_2643220___redundant_placeholder15
1while_while_cond_2643220___redundant_placeholder25
1while_while_cond_2643220___redundant_placeholder3
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
while_body_2644861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_435_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_435_matmul_readvariableop_resource:	?G
4while_lstm_cell_435_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_435_biasadd_readvariableop_resource:	???*while/lstm_cell_435/BiasAdd/ReadVariableOp?)while/lstm_cell_435/MatMul/ReadVariableOp?+while/lstm_cell_435/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_435/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_435/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_435/addAddV2$while/lstm_cell_435/MatMul:product:0&while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_435/BiasAddBiasAddwhile/lstm_cell_435/add:z:02while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_435/splitSplit,while/lstm_cell_435/split/split_dim:output:0$while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_435/SigmoidSigmoid"while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_1Sigmoid"while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mulMul!while/lstm_cell_435/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_435/ReluRelu"while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_1Mulwhile/lstm_cell_435/Sigmoid:y:0&while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/add_1AddV2while/lstm_cell_435/mul:z:0while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_2Sigmoid"while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_435/Relu_1Reluwhile/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_2Mul!while/lstm_cell_435/Sigmoid_2:y:0(while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_435/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_435/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_435/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_435/BiasAdd/ReadVariableOp*^while/lstm_cell_435/MatMul/ReadVariableOp,^while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_435_biasadd_readvariableop_resource5while_lstm_cell_435_biasadd_readvariableop_resource_0"n
4while_lstm_cell_435_matmul_1_readvariableop_resource6while_lstm_cell_435_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_435_matmul_readvariableop_resource4while_lstm_cell_435_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_435/BiasAdd/ReadVariableOp*while/lstm_cell_435/BiasAdd/ReadVariableOp2V
)while/lstm_cell_435/MatMul/ReadVariableOp)while/lstm_cell_435/MatMul/ReadVariableOp2Z
+while/lstm_cell_435/MatMul_1/ReadVariableOp+while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2642371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_437_2642395_0:2(/
while_lstm_cell_437_2642397_0:
(+
while_lstm_cell_437_2642399_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_437_2642395:2(-
while_lstm_cell_437_2642397:
()
while_lstm_cell_437_2642399:(??+while/lstm_cell_437/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_437/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_437_2642395_0while_lstm_cell_437_2642397_0while_lstm_cell_437_2642399_0*
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642357?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_437/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_437/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_437/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_437/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_437_2642395while_lstm_cell_437_2642395_0"<
while_lstm_cell_437_2642397while_lstm_cell_437_2642397_0"<
while_lstm_cell_437_2642399while_lstm_cell_437_2642399_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_437/StatefulPartitionedCall+while/lstm_cell_437/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645990

inputs?
,lstm_cell_436_matmul_readvariableop_resource:	d?A
.lstm_cell_436_matmul_1_readvariableop_resource:	2?<
-lstm_cell_436_biasadd_readvariableop_resource:	?
identity??$lstm_cell_436/BiasAdd/ReadVariableOp?#lstm_cell_436/MatMul/ReadVariableOp?%lstm_cell_436/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_436/MatMul/ReadVariableOpReadVariableOp,lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_436/MatMulMatMulstrided_slice_2:output:0+lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_436/MatMul_1MatMulzeros:output:0-lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_436/addAddV2lstm_cell_436/MatMul:product:0 lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_436/BiasAddBiasAddlstm_cell_436/add:z:0,lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_436/splitSplit&lstm_cell_436/split/split_dim:output:0lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_436/SigmoidSigmoidlstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_1Sigmoidlstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_436/mulMullstm_cell_436/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_436/ReluRelulstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_1Mullstm_cell_436/Sigmoid:y:0 lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_436/add_1AddV2lstm_cell_436/mul:z:0lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_2Sigmoidlstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_436/Relu_1Relulstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_2Mullstm_cell_436/Sigmoid_2:y:0"lstm_cell_436/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_436_matmul_readvariableop_resource.lstm_cell_436_matmul_1_readvariableop_resource-lstm_cell_436_biasadd_readvariableop_resource*
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
while_body_2645906*
condR
while_cond_2645905*K
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
NoOpNoOp%^lstm_cell_436/BiasAdd/ReadVariableOp$^lstm_cell_436/MatMul/ReadVariableOp&^lstm_cell_436/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_436/BiasAdd/ReadVariableOp$lstm_cell_436/BiasAdd/ReadVariableOp2J
#lstm_cell_436/MatMul/ReadVariableOp#lstm_cell_436/MatMul/ReadVariableOp2N
%lstm_cell_436/MatMul_1/ReadVariableOp%lstm_cell_436/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_539_while_body_2644241.
*lstm_539_while_lstm_539_while_loop_counter4
0lstm_539_while_lstm_539_while_maximum_iterations
lstm_539_while_placeholder 
lstm_539_while_placeholder_1 
lstm_539_while_placeholder_2 
lstm_539_while_placeholder_3-
)lstm_539_while_lstm_539_strided_slice_1_0i
elstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0:2(Q
?lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(L
>lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0:(
lstm_539_while_identity
lstm_539_while_identity_1
lstm_539_while_identity_2
lstm_539_while_identity_3
lstm_539_while_identity_4
lstm_539_while_identity_5+
'lstm_539_while_lstm_539_strided_slice_1g
clstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensorM
;lstm_539_while_lstm_cell_437_matmul_readvariableop_resource:2(O
=lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource:
(J
<lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource:(??3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp?2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp?4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp?
@lstm_539/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_539/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensor_0lstm_539_while_placeholderIlstm_539/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp=lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_539/while/lstm_cell_437/MatMulMatMul9lstm_539/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp?lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_539/while/lstm_cell_437/MatMul_1MatMullstm_539_while_placeholder_2<lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_539/while/lstm_cell_437/addAddV2-lstm_539/while/lstm_cell_437/MatMul:product:0/lstm_539/while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp>lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_539/while/lstm_cell_437/BiasAddBiasAdd$lstm_539/while/lstm_cell_437/add:z:0;lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_539/while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_539/while/lstm_cell_437/splitSplit5lstm_539/while/lstm_cell_437/split/split_dim:output:0-lstm_539/while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_539/while/lstm_cell_437/SigmoidSigmoid+lstm_539/while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_539/while/lstm_cell_437/Sigmoid_1Sigmoid+lstm_539/while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_539/while/lstm_cell_437/mulMul*lstm_539/while/lstm_cell_437/Sigmoid_1:y:0lstm_539_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_539/while/lstm_cell_437/ReluRelu+lstm_539/while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_539/while/lstm_cell_437/mul_1Mul(lstm_539/while/lstm_cell_437/Sigmoid:y:0/lstm_539/while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_539/while/lstm_cell_437/add_1AddV2$lstm_539/while/lstm_cell_437/mul:z:0&lstm_539/while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_539/while/lstm_cell_437/Sigmoid_2Sigmoid+lstm_539/while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_539/while/lstm_cell_437/Relu_1Relu&lstm_539/while/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_539/while/lstm_cell_437/mul_2Mul*lstm_539/while/lstm_cell_437/Sigmoid_2:y:01lstm_539/while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_539/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_539_while_placeholder_1lstm_539_while_placeholder&lstm_539/while/lstm_cell_437/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_539/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_539/while/addAddV2lstm_539_while_placeholderlstm_539/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_539/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_539/while/add_1AddV2*lstm_539_while_lstm_539_while_loop_counterlstm_539/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_539/while/IdentityIdentitylstm_539/while/add_1:z:0^lstm_539/while/NoOp*
T0*
_output_shapes
: ?
lstm_539/while/Identity_1Identity0lstm_539_while_lstm_539_while_maximum_iterations^lstm_539/while/NoOp*
T0*
_output_shapes
: t
lstm_539/while/Identity_2Identitylstm_539/while/add:z:0^lstm_539/while/NoOp*
T0*
_output_shapes
: ?
lstm_539/while/Identity_3IdentityClstm_539/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_539/while/NoOp*
T0*
_output_shapes
: ?
lstm_539/while/Identity_4Identity&lstm_539/while/lstm_cell_437/mul_2:z:0^lstm_539/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_539/while/Identity_5Identity&lstm_539/while/lstm_cell_437/add_1:z:0^lstm_539/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_539/while/NoOpNoOp4^lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp3^lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp5^lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_539_while_identity lstm_539/while/Identity:output:0"?
lstm_539_while_identity_1"lstm_539/while/Identity_1:output:0"?
lstm_539_while_identity_2"lstm_539/while/Identity_2:output:0"?
lstm_539_while_identity_3"lstm_539/while/Identity_3:output:0"?
lstm_539_while_identity_4"lstm_539/while/Identity_4:output:0"?
lstm_539_while_identity_5"lstm_539/while/Identity_5:output:0"T
'lstm_539_while_lstm_539_strided_slice_1)lstm_539_while_lstm_539_strided_slice_1_0"~
<lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource>lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0"?
=lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource?lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0"|
;lstm_539_while_lstm_cell_437_matmul_readvariableop_resource=lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0"?
clstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensorelstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp2h
2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp2l
4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2643004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2643004___redundant_placeholder05
1while_while_cond_2643004___redundant_placeholder15
1while_while_cond_2643004___redundant_placeholder25
1while_while_cond_2643004___redundant_placeholder3
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
while_body_2642562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_437_2642586_0:2(/
while_lstm_cell_437_2642588_0:
(+
while_lstm_cell_437_2642590_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_437_2642586:2(-
while_lstm_cell_437_2642588:
()
while_lstm_cell_437_2642590:(??+while/lstm_cell_437/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_437/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_437_2642586_0while_lstm_cell_437_2642588_0while_lstm_cell_437_2642590_0*
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642503?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_437/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_437/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_437/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_437/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_437_2642586while_lstm_cell_437_2642586_0"<
while_lstm_cell_437_2642588while_lstm_cell_437_2642588_0"<
while_lstm_cell_437_2642590while_lstm_cell_437_2642590_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_437/StatefulPartitionedCall+while/lstm_cell_437/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2646887

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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643089

inputs>
,lstm_cell_437_matmul_readvariableop_resource:2(@
.lstm_cell_437_matmul_1_readvariableop_resource:
(;
-lstm_cell_437_biasadd_readvariableop_resource:(
identity??$lstm_cell_437/BiasAdd/ReadVariableOp?#lstm_cell_437/MatMul/ReadVariableOp?%lstm_cell_437/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_437/MatMul/ReadVariableOpReadVariableOp,lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_437/MatMulMatMulstrided_slice_2:output:0+lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_437/MatMul_1MatMulzeros:output:0-lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_437/addAddV2lstm_cell_437/MatMul:product:0 lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_437/BiasAddBiasAddlstm_cell_437/add:z:0,lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_437/splitSplit&lstm_cell_437/split/split_dim:output:0lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_437/SigmoidSigmoidlstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_1Sigmoidlstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_437/mulMullstm_cell_437/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_437/ReluRelulstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_1Mullstm_cell_437/Sigmoid:y:0 lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_437/add_1AddV2lstm_cell_437/mul:z:0lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_2Sigmoidlstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_437/Relu_1Relulstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_2Mullstm_cell_437/Sigmoid_2:y:0"lstm_cell_437/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_437_matmul_readvariableop_resource.lstm_cell_437_matmul_1_readvariableop_resource-lstm_cell_437_biasadd_readvariableop_resource*
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
while_body_2643005*
condR
while_cond_2643004*K
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
NoOpNoOp%^lstm_cell_437/BiasAdd/ReadVariableOp$^lstm_cell_437/MatMul/ReadVariableOp&^lstm_cell_437/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_437/BiasAdd/ReadVariableOp$lstm_cell_437/BiasAdd/ReadVariableOp2J
#lstm_cell_437/MatMul/ReadVariableOp#lstm_cell_437/MatMul/ReadVariableOp2N
%lstm_cell_437/MatMul_1/ReadVariableOp%lstm_cell_437/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645561
inputs_0?
,lstm_cell_436_matmul_readvariableop_resource:	d?A
.lstm_cell_436_matmul_1_readvariableop_resource:	2?<
-lstm_cell_436_biasadd_readvariableop_resource:	?
identity??$lstm_cell_436/BiasAdd/ReadVariableOp?#lstm_cell_436/MatMul/ReadVariableOp?%lstm_cell_436/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_436/MatMul/ReadVariableOpReadVariableOp,lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_436/MatMulMatMulstrided_slice_2:output:0+lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_436/MatMul_1MatMulzeros:output:0-lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_436/addAddV2lstm_cell_436/MatMul:product:0 lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_436/BiasAddBiasAddlstm_cell_436/add:z:0,lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_436/splitSplit&lstm_cell_436/split/split_dim:output:0lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_436/SigmoidSigmoidlstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_1Sigmoidlstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_436/mulMullstm_cell_436/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_436/ReluRelulstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_1Mullstm_cell_436/Sigmoid:y:0 lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_436/add_1AddV2lstm_cell_436/mul:z:0lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_2Sigmoidlstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_436/Relu_1Relulstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_2Mullstm_cell_436/Sigmoid_2:y:0"lstm_cell_436/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_436_matmul_readvariableop_resource.lstm_cell_436_matmul_1_readvariableop_resource-lstm_cell_436_biasadd_readvariableop_resource*
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
while_body_2645477*
condR
while_cond_2645476*K
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
NoOpNoOp%^lstm_cell_436/BiasAdd/ReadVariableOp$^lstm_cell_436/MatMul/ReadVariableOp&^lstm_cell_436/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_436/BiasAdd/ReadVariableOp$lstm_cell_436/BiasAdd/ReadVariableOp2J
#lstm_cell_436/MatMul/ReadVariableOp#lstm_cell_436/MatMul/ReadVariableOp2N
%lstm_cell_436/MatMul_1/ReadVariableOp%lstm_cell_436/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?T
?
*sequential_179_lstm_537_while_body_2641222L
Hsequential_179_lstm_537_while_sequential_179_lstm_537_while_loop_counterR
Nsequential_179_lstm_537_while_sequential_179_lstm_537_while_maximum_iterations-
)sequential_179_lstm_537_while_placeholder/
+sequential_179_lstm_537_while_placeholder_1/
+sequential_179_lstm_537_while_placeholder_2/
+sequential_179_lstm_537_while_placeholder_3K
Gsequential_179_lstm_537_while_sequential_179_lstm_537_strided_slice_1_0?
?sequential_179_lstm_537_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_537_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_179_lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0:	?a
Nsequential_179_lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?\
Msequential_179_lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0:	?*
&sequential_179_lstm_537_while_identity,
(sequential_179_lstm_537_while_identity_1,
(sequential_179_lstm_537_while_identity_2,
(sequential_179_lstm_537_while_identity_3,
(sequential_179_lstm_537_while_identity_4,
(sequential_179_lstm_537_while_identity_5I
Esequential_179_lstm_537_while_sequential_179_lstm_537_strided_slice_1?
?sequential_179_lstm_537_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_537_tensorarrayunstack_tensorlistfromtensor]
Jsequential_179_lstm_537_while_lstm_cell_435_matmul_readvariableop_resource:	?_
Lsequential_179_lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource:	d?Z
Ksequential_179_lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource:	???Bsequential_179/lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp?Asequential_179/lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp?Csequential_179/lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp?
Osequential_179/lstm_537/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_179/lstm_537/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_179_lstm_537_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_537_tensorarrayunstack_tensorlistfromtensor_0)sequential_179_lstm_537_while_placeholderXsequential_179/lstm_537/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_179/lstm_537/while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOpLsequential_179_lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_179/lstm_537/while/lstm_cell_435/MatMulMatMulHsequential_179/lstm_537/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_179/lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_179/lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOpNsequential_179_lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_179/lstm_537/while/lstm_cell_435/MatMul_1MatMul+sequential_179_lstm_537_while_placeholder_2Ksequential_179/lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_179/lstm_537/while/lstm_cell_435/addAddV2<sequential_179/lstm_537/while/lstm_cell_435/MatMul:product:0>sequential_179/lstm_537/while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_179/lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOpMsequential_179_lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_179/lstm_537/while/lstm_cell_435/BiasAddBiasAdd3sequential_179/lstm_537/while/lstm_cell_435/add:z:0Jsequential_179/lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_179/lstm_537/while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_179/lstm_537/while/lstm_cell_435/splitSplitDsequential_179/lstm_537/while/lstm_cell_435/split/split_dim:output:0<sequential_179/lstm_537/while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_179/lstm_537/while/lstm_cell_435/SigmoidSigmoid:sequential_179/lstm_537/while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_179/lstm_537/while/lstm_cell_435/Sigmoid_1Sigmoid:sequential_179/lstm_537/while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_179/lstm_537/while/lstm_cell_435/mulMul9sequential_179/lstm_537/while/lstm_cell_435/Sigmoid_1:y:0+sequential_179_lstm_537_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_179/lstm_537/while/lstm_cell_435/ReluRelu:sequential_179/lstm_537/while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_179/lstm_537/while/lstm_cell_435/mul_1Mul7sequential_179/lstm_537/while/lstm_cell_435/Sigmoid:y:0>sequential_179/lstm_537/while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_179/lstm_537/while/lstm_cell_435/add_1AddV23sequential_179/lstm_537/while/lstm_cell_435/mul:z:05sequential_179/lstm_537/while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_179/lstm_537/while/lstm_cell_435/Sigmoid_2Sigmoid:sequential_179/lstm_537/while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_179/lstm_537/while/lstm_cell_435/Relu_1Relu5sequential_179/lstm_537/while/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_179/lstm_537/while/lstm_cell_435/mul_2Mul9sequential_179/lstm_537/while/lstm_cell_435/Sigmoid_2:y:0@sequential_179/lstm_537/while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_179/lstm_537/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_179_lstm_537_while_placeholder_1)sequential_179_lstm_537_while_placeholder5sequential_179/lstm_537/while/lstm_cell_435/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_179/lstm_537/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_179/lstm_537/while/addAddV2)sequential_179_lstm_537_while_placeholder,sequential_179/lstm_537/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_179/lstm_537/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_179/lstm_537/while/add_1AddV2Hsequential_179_lstm_537_while_sequential_179_lstm_537_while_loop_counter.sequential_179/lstm_537/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_179/lstm_537/while/IdentityIdentity'sequential_179/lstm_537/while/add_1:z:0#^sequential_179/lstm_537/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_537/while/Identity_1IdentityNsequential_179_lstm_537_while_sequential_179_lstm_537_while_maximum_iterations#^sequential_179/lstm_537/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_537/while/Identity_2Identity%sequential_179/lstm_537/while/add:z:0#^sequential_179/lstm_537/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_537/while/Identity_3IdentityRsequential_179/lstm_537/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_179/lstm_537/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_537/while/Identity_4Identity5sequential_179/lstm_537/while/lstm_cell_435/mul_2:z:0#^sequential_179/lstm_537/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_179/lstm_537/while/Identity_5Identity5sequential_179/lstm_537/while/lstm_cell_435/add_1:z:0#^sequential_179/lstm_537/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_179/lstm_537/while/NoOpNoOpC^sequential_179/lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOpB^sequential_179/lstm_537/while/lstm_cell_435/MatMul/ReadVariableOpD^sequential_179/lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_179_lstm_537_while_identity/sequential_179/lstm_537/while/Identity:output:0"]
(sequential_179_lstm_537_while_identity_11sequential_179/lstm_537/while/Identity_1:output:0"]
(sequential_179_lstm_537_while_identity_21sequential_179/lstm_537/while/Identity_2:output:0"]
(sequential_179_lstm_537_while_identity_31sequential_179/lstm_537/while/Identity_3:output:0"]
(sequential_179_lstm_537_while_identity_41sequential_179/lstm_537/while/Identity_4:output:0"]
(sequential_179_lstm_537_while_identity_51sequential_179/lstm_537/while/Identity_5:output:0"?
Ksequential_179_lstm_537_while_lstm_cell_435_biasadd_readvariableop_resourceMsequential_179_lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0"?
Lsequential_179_lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resourceNsequential_179_lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0"?
Jsequential_179_lstm_537_while_lstm_cell_435_matmul_readvariableop_resourceLsequential_179_lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0"?
Esequential_179_lstm_537_while_sequential_179_lstm_537_strided_slice_1Gsequential_179_lstm_537_while_sequential_179_lstm_537_strided_slice_1_0"?
?sequential_179_lstm_537_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_537_tensorarrayunstack_tensorlistfromtensor?sequential_179_lstm_537_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_537_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_179/lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOpBsequential_179/lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp2?
Asequential_179/lstm_537/while/lstm_cell_435/MatMul/ReadVariableOpAsequential_179/lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp2?
Csequential_179/lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOpCsequential_179/lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2642854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2642854___redundant_placeholder05
1while_while_cond_2642854___redundant_placeholder15
1while_while_cond_2642854___redundant_placeholder25
1while_while_cond_2642854___redundant_placeholder3
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
*__inference_lstm_539_layer_call_fn_2646001
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2642440o
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
F__inference_dense_179_layer_call_and_return_conditional_losses_2646625

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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645704
inputs_0?
,lstm_cell_436_matmul_readvariableop_resource:	d?A
.lstm_cell_436_matmul_1_readvariableop_resource:	2?<
-lstm_cell_436_biasadd_readvariableop_resource:	?
identity??$lstm_cell_436/BiasAdd/ReadVariableOp?#lstm_cell_436/MatMul/ReadVariableOp?%lstm_cell_436/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_436/MatMul/ReadVariableOpReadVariableOp,lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_436/MatMulMatMulstrided_slice_2:output:0+lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_436/MatMul_1MatMulzeros:output:0-lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_436/addAddV2lstm_cell_436/MatMul:product:0 lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_436/BiasAddBiasAddlstm_cell_436/add:z:0,lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_436/splitSplit&lstm_cell_436/split/split_dim:output:0lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_436/SigmoidSigmoidlstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_1Sigmoidlstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_436/mulMullstm_cell_436/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_436/ReluRelulstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_1Mullstm_cell_436/Sigmoid:y:0 lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_436/add_1AddV2lstm_cell_436/mul:z:0lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_2Sigmoidlstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_436/Relu_1Relulstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_2Mullstm_cell_436/Sigmoid_2:y:0"lstm_cell_436/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_436_matmul_readvariableop_resource.lstm_cell_436_matmul_1_readvariableop_resource-lstm_cell_436_biasadd_readvariableop_resource*
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
while_body_2645620*
condR
while_cond_2645619*K
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
NoOpNoOp%^lstm_cell_436/BiasAdd/ReadVariableOp$^lstm_cell_436/MatMul/ReadVariableOp&^lstm_cell_436/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_436/BiasAdd/ReadVariableOp$lstm_cell_436/BiasAdd/ReadVariableOp2J
#lstm_cell_436/MatMul/ReadVariableOp#lstm_cell_436/MatMul/ReadVariableOp2N
%lstm_cell_436/MatMul_1/ReadVariableOp%lstm_cell_436/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2645763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_436_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_436_matmul_readvariableop_resource:	d?G
4while_lstm_cell_436_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_436_biasadd_readvariableop_resource:	???*while/lstm_cell_436/BiasAdd/ReadVariableOp?)while/lstm_cell_436/MatMul/ReadVariableOp?+while/lstm_cell_436/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_436/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_436/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_436/addAddV2$while/lstm_cell_436/MatMul:product:0&while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_436/BiasAddBiasAddwhile/lstm_cell_436/add:z:02while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_436/splitSplit,while/lstm_cell_436/split/split_dim:output:0$while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_436/SigmoidSigmoid"while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_1Sigmoid"while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mulMul!while/lstm_cell_436/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_436/ReluRelu"while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_1Mulwhile/lstm_cell_436/Sigmoid:y:0&while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/add_1AddV2while/lstm_cell_436/mul:z:0while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_2Sigmoid"while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_436/Relu_1Reluwhile/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_2Mul!while/lstm_cell_436/Sigmoid_2:y:0(while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_436/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_436/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_436/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_436/BiasAdd/ReadVariableOp*^while/lstm_cell_436/MatMul/ReadVariableOp,^while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_436_biasadd_readvariableop_resource5while_lstm_cell_436_biasadd_readvariableop_resource_0"n
4while_lstm_cell_436_matmul_1_readvariableop_resource6while_lstm_cell_436_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_436_matmul_readvariableop_resource4while_lstm_cell_436_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_436/BiasAdd/ReadVariableOp*while/lstm_cell_436/BiasAdd/ReadVariableOp2V
)while/lstm_cell_436/MatMul/ReadVariableOp)while/lstm_cell_436/MatMul/ReadVariableOp2Z
+while/lstm_cell_436/MatMul_1/ReadVariableOp+while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2646236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_437_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_437_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_437_matmul_readvariableop_resource:2(F
4while_lstm_cell_437_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_437_biasadd_readvariableop_resource:(??*while/lstm_cell_437/BiasAdd/ReadVariableOp?)while/lstm_cell_437/MatMul/ReadVariableOp?+while/lstm_cell_437/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_437/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_437/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_437/addAddV2$while/lstm_cell_437/MatMul:product:0&while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_437/BiasAddBiasAddwhile/lstm_cell_437/add:z:02while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_437/splitSplit,while/lstm_cell_437/split/split_dim:output:0$while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_437/SigmoidSigmoid"while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_1Sigmoid"while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mulMul!while/lstm_cell_437/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_437/ReluRelu"while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_1Mulwhile/lstm_cell_437/Sigmoid:y:0&while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/add_1AddV2while/lstm_cell_437/mul:z:0while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_2Sigmoid"while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_437/Relu_1Reluwhile/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_2Mul!while/lstm_cell_437/Sigmoid_2:y:0(while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_437/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_437/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_437/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_437/BiasAdd/ReadVariableOp*^while/lstm_cell_437/MatMul/ReadVariableOp,^while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_437_biasadd_readvariableop_resource5while_lstm_cell_437_biasadd_readvariableop_resource_0"n
4while_lstm_cell_437_matmul_1_readvariableop_resource6while_lstm_cell_437_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_437_matmul_readvariableop_resource4while_lstm_cell_437_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_437/BiasAdd/ReadVariableOp*while/lstm_cell_437/BiasAdd/ReadVariableOp2V
)while/lstm_cell_437/MatMul/ReadVariableOp)while/lstm_cell_437/MatMul/ReadVariableOp2Z
+while/lstm_cell_437/MatMul_1/ReadVariableOp+while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2645620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_436_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_436_matmul_readvariableop_resource:	d?G
4while_lstm_cell_436_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_436_biasadd_readvariableop_resource:	???*while/lstm_cell_436/BiasAdd/ReadVariableOp?)while/lstm_cell_436/MatMul/ReadVariableOp?+while/lstm_cell_436/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_436/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_436/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_436/addAddV2$while/lstm_cell_436/MatMul:product:0&while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_436/BiasAddBiasAddwhile/lstm_cell_436/add:z:02while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_436/splitSplit,while/lstm_cell_436/split/split_dim:output:0$while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_436/SigmoidSigmoid"while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_1Sigmoid"while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mulMul!while/lstm_cell_436/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_436/ReluRelu"while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_1Mulwhile/lstm_cell_436/Sigmoid:y:0&while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/add_1AddV2while/lstm_cell_436/mul:z:0while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_2Sigmoid"while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_436/Relu_1Reluwhile/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_2Mul!while/lstm_cell_436/Sigmoid_2:y:0(while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_436/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_436/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_436/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_436/BiasAdd/ReadVariableOp*^while/lstm_cell_436/MatMul/ReadVariableOp,^while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_436_biasadd_readvariableop_resource5while_lstm_cell_436_biasadd_readvariableop_resource_0"n
4while_lstm_cell_436_matmul_1_readvariableop_resource6while_lstm_cell_436_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_436_matmul_readvariableop_resource4while_lstm_cell_436_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_436/BiasAdd/ReadVariableOp*while/lstm_cell_436/BiasAdd/ReadVariableOp2V
)while/lstm_cell_436/MatMul/ReadVariableOp)while/lstm_cell_436/MatMul/ReadVariableOp2Z
+while/lstm_cell_436/MatMul_1/ReadVariableOp+while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641657

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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646463

inputs>
,lstm_cell_437_matmul_readvariableop_resource:2(@
.lstm_cell_437_matmul_1_readvariableop_resource:
(;
-lstm_cell_437_biasadd_readvariableop_resource:(
identity??$lstm_cell_437/BiasAdd/ReadVariableOp?#lstm_cell_437/MatMul/ReadVariableOp?%lstm_cell_437/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_437/MatMul/ReadVariableOpReadVariableOp,lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_437/MatMulMatMulstrided_slice_2:output:0+lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_437/MatMul_1MatMulzeros:output:0-lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_437/addAddV2lstm_cell_437/MatMul:product:0 lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_437/BiasAddBiasAddlstm_cell_437/add:z:0,lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_437/splitSplit&lstm_cell_437/split/split_dim:output:0lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_437/SigmoidSigmoidlstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_1Sigmoidlstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_437/mulMullstm_cell_437/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_437/ReluRelulstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_1Mullstm_cell_437/Sigmoid:y:0 lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_437/add_1AddV2lstm_cell_437/mul:z:0lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_2Sigmoidlstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_437/Relu_1Relulstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_2Mullstm_cell_437/Sigmoid_2:y:0"lstm_cell_437/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_437_matmul_readvariableop_resource.lstm_cell_437_matmul_1_readvariableop_resource-lstm_cell_437_biasadd_readvariableop_resource*
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
while_body_2646379*
condR
while_cond_2646378*K
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
NoOpNoOp%^lstm_cell_437/BiasAdd/ReadVariableOp$^lstm_cell_437/MatMul/ReadVariableOp&^lstm_cell_437/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_437/BiasAdd/ReadVariableOp$lstm_cell_437/BiasAdd/ReadVariableOp2J
#lstm_cell_437/MatMul/ReadVariableOp#lstm_cell_437/MatMul/ReadVariableOp2N
%lstm_cell_437/MatMul_1/ReadVariableOp%lstm_cell_437/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2643221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_437_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_437_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_437_matmul_readvariableop_resource:2(F
4while_lstm_cell_437_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_437_biasadd_readvariableop_resource:(??*while/lstm_cell_437/BiasAdd/ReadVariableOp?)while/lstm_cell_437/MatMul/ReadVariableOp?+while/lstm_cell_437/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_437/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_437/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_437/addAddV2$while/lstm_cell_437/MatMul:product:0&while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_437/BiasAddBiasAddwhile/lstm_cell_437/add:z:02while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_437/splitSplit,while/lstm_cell_437/split/split_dim:output:0$while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_437/SigmoidSigmoid"while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_1Sigmoid"while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mulMul!while/lstm_cell_437/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_437/ReluRelu"while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_1Mulwhile/lstm_cell_437/Sigmoid:y:0&while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/add_1AddV2while/lstm_cell_437/mul:z:0while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_2Sigmoid"while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_437/Relu_1Reluwhile/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_2Mul!while/lstm_cell_437/Sigmoid_2:y:0(while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_437/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_437/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_437/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_437/BiasAdd/ReadVariableOp*^while/lstm_cell_437/MatMul/ReadVariableOp,^while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_437_biasadd_readvariableop_resource5while_lstm_cell_437_biasadd_readvariableop_resource_0"n
4while_lstm_cell_437_matmul_1_readvariableop_resource6while_lstm_cell_437_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_437_matmul_readvariableop_resource4while_lstm_cell_437_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_437/BiasAdd/ReadVariableOp*while/lstm_cell_437/BiasAdd/ReadVariableOp2V
)while/lstm_cell_437/MatMul/ReadVariableOp)while/lstm_cell_437/MatMul/ReadVariableOp2Z
+while/lstm_cell_437/MatMul_1/ReadVariableOp+while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_538_layer_call_fn_2645418

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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2643470s
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
*__inference_lstm_539_layer_call_fn_2646034

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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643305o
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
while_body_2641862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_435_2641886_0:	?0
while_lstm_cell_435_2641888_0:	d?,
while_lstm_cell_435_2641890_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_435_2641886:	?.
while_lstm_cell_435_2641888:	d?*
while_lstm_cell_435_2641890:	???+while/lstm_cell_435/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_435/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_435_2641886_0while_lstm_cell_435_2641888_0while_lstm_cell_435_2641890_0*
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641803?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_435/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_435/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_435/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_435/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_435_2641886while_lstm_cell_435_2641886_0"<
while_lstm_cell_435_2641888while_lstm_cell_435_2641888_0"<
while_lstm_cell_435_2641890while_lstm_cell_435_2641890_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_435/StatefulPartitionedCall+while/lstm_cell_435/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646606

inputs>
,lstm_cell_437_matmul_readvariableop_resource:2(@
.lstm_cell_437_matmul_1_readvariableop_resource:
(;
-lstm_cell_437_biasadd_readvariableop_resource:(
identity??$lstm_cell_437/BiasAdd/ReadVariableOp?#lstm_cell_437/MatMul/ReadVariableOp?%lstm_cell_437/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_437/MatMul/ReadVariableOpReadVariableOp,lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_437/MatMulMatMulstrided_slice_2:output:0+lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_437/MatMul_1MatMulzeros:output:0-lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_437/addAddV2lstm_cell_437/MatMul:product:0 lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_437/BiasAddBiasAddlstm_cell_437/add:z:0,lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_437/splitSplit&lstm_cell_437/split/split_dim:output:0lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_437/SigmoidSigmoidlstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_1Sigmoidlstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_437/mulMullstm_cell_437/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_437/ReluRelulstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_1Mullstm_cell_437/Sigmoid:y:0 lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_437/add_1AddV2lstm_cell_437/mul:z:0lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_2Sigmoidlstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_437/Relu_1Relulstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_2Mullstm_cell_437/Sigmoid_2:y:0"lstm_cell_437/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_437_matmul_readvariableop_resource.lstm_cell_437_matmul_1_readvariableop_resource-lstm_cell_437_biasadd_readvariableop_resource*
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
while_body_2646522*
condR
while_cond_2646521*K
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
NoOpNoOp%^lstm_cell_437/BiasAdd/ReadVariableOp$^lstm_cell_437/MatMul/ReadVariableOp&^lstm_cell_437/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_437/BiasAdd/ReadVariableOp$lstm_cell_437/BiasAdd/ReadVariableOp2J
#lstm_cell_437/MatMul/ReadVariableOp#lstm_cell_437/MatMul/ReadVariableOp2N
%lstm_cell_437/MatMul_1/ReadVariableOp%lstm_cell_437/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643305

inputs>
,lstm_cell_437_matmul_readvariableop_resource:2(@
.lstm_cell_437_matmul_1_readvariableop_resource:
(;
-lstm_cell_437_biasadd_readvariableop_resource:(
identity??$lstm_cell_437/BiasAdd/ReadVariableOp?#lstm_cell_437/MatMul/ReadVariableOp?%lstm_cell_437/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_437/MatMul/ReadVariableOpReadVariableOp,lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_437/MatMulMatMulstrided_slice_2:output:0+lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_437/MatMul_1MatMulzeros:output:0-lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_437/addAddV2lstm_cell_437/MatMul:product:0 lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_437/BiasAddBiasAddlstm_cell_437/add:z:0,lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_437/splitSplit&lstm_cell_437/split/split_dim:output:0lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_437/SigmoidSigmoidlstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_1Sigmoidlstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_437/mulMullstm_cell_437/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_437/ReluRelulstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_1Mullstm_cell_437/Sigmoid:y:0 lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_437/add_1AddV2lstm_cell_437/mul:z:0lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_2Sigmoidlstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_437/Relu_1Relulstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_2Mullstm_cell_437/Sigmoid_2:y:0"lstm_cell_437/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_437_matmul_readvariableop_resource.lstm_cell_437_matmul_1_readvariableop_resource-lstm_cell_437_biasadd_readvariableop_resource*
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
while_body_2643221*
condR
while_cond_2643220*K
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
NoOpNoOp%^lstm_cell_437/BiasAdd/ReadVariableOp$^lstm_cell_437/MatMul/ReadVariableOp&^lstm_cell_437/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_437/BiasAdd/ReadVariableOp$lstm_cell_437/BiasAdd/ReadVariableOp2J
#lstm_cell_437/MatMul/ReadVariableOp#lstm_cell_437/MatMul/ReadVariableOp2N
%lstm_cell_437/MatMul_1/ReadVariableOp%lstm_cell_437/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_537_layer_call_and_return_conditional_losses_2644945
inputs_0?
,lstm_cell_435_matmul_readvariableop_resource:	?A
.lstm_cell_435_matmul_1_readvariableop_resource:	d?<
-lstm_cell_435_biasadd_readvariableop_resource:	?
identity??$lstm_cell_435/BiasAdd/ReadVariableOp?#lstm_cell_435/MatMul/ReadVariableOp?%lstm_cell_435/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_435/MatMul/ReadVariableOpReadVariableOp,lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_435/MatMulMatMulstrided_slice_2:output:0+lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_435/MatMul_1MatMulzeros:output:0-lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_435/addAddV2lstm_cell_435/MatMul:product:0 lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_435/BiasAddBiasAddlstm_cell_435/add:z:0,lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_435/splitSplit&lstm_cell_435/split/split_dim:output:0lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_435/SigmoidSigmoidlstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_1Sigmoidlstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_435/mulMullstm_cell_435/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_435/ReluRelulstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_1Mullstm_cell_435/Sigmoid:y:0 lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_435/add_1AddV2lstm_cell_435/mul:z:0lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_2Sigmoidlstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_435/Relu_1Relulstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_2Mullstm_cell_435/Sigmoid_2:y:0"lstm_cell_435/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_435_matmul_readvariableop_resource.lstm_cell_435_matmul_1_readvariableop_resource-lstm_cell_435_biasadd_readvariableop_resource*
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
while_body_2644861*
condR
while_cond_2644860*K
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
NoOpNoOp%^lstm_cell_435/BiasAdd/ReadVariableOp$^lstm_cell_435/MatMul/ReadVariableOp&^lstm_cell_435/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_435/BiasAdd/ReadVariableOp$lstm_cell_435/BiasAdd/ReadVariableOp2J
#lstm_cell_435/MatMul/ReadVariableOp#lstm_cell_435/MatMul/ReadVariableOp2N
%lstm_cell_435/MatMul_1/ReadVariableOp%lstm_cell_435/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_437_layer_call_fn_2646838

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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642357o
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
%__inference_signature_wrapper_2643850
lstm_537_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_537_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2641590o
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
_user_specified_namelstm_537_input
?
?
while_cond_2644860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2644860___redundant_placeholder05
1while_while_cond_2644860___redundant_placeholder15
1while_while_cond_2644860___redundant_placeholder25
1while_while_cond_2644860___redundant_placeholder3
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
?
*sequential_179_lstm_537_while_cond_2641221L
Hsequential_179_lstm_537_while_sequential_179_lstm_537_while_loop_counterR
Nsequential_179_lstm_537_while_sequential_179_lstm_537_while_maximum_iterations-
)sequential_179_lstm_537_while_placeholder/
+sequential_179_lstm_537_while_placeholder_1/
+sequential_179_lstm_537_while_placeholder_2/
+sequential_179_lstm_537_while_placeholder_3N
Jsequential_179_lstm_537_while_less_sequential_179_lstm_537_strided_slice_1e
asequential_179_lstm_537_while_sequential_179_lstm_537_while_cond_2641221___redundant_placeholder0e
asequential_179_lstm_537_while_sequential_179_lstm_537_while_cond_2641221___redundant_placeholder1e
asequential_179_lstm_537_while_sequential_179_lstm_537_while_cond_2641221___redundant_placeholder2e
asequential_179_lstm_537_while_sequential_179_lstm_537_while_cond_2641221___redundant_placeholder3*
&sequential_179_lstm_537_while_identity
?
"sequential_179/lstm_537/while/LessLess)sequential_179_lstm_537_while_placeholderJsequential_179_lstm_537_while_less_sequential_179_lstm_537_strided_slice_1*
T0*
_output_shapes
: {
&sequential_179/lstm_537/while/IdentityIdentity&sequential_179/lstm_537/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_179_lstm_537_while_identity/sequential_179/lstm_537/while/Identity:output:0*(
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
*__inference_lstm_539_layer_call_fn_2646023

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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643089o
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
?
?
+__inference_dense_179_layer_call_fn_2646615

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
GPU 2J 8? *O
fJRH
F__inference_dense_179_layer_call_and_return_conditional_losses_2643107o
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
/__inference_lstm_cell_435_layer_call_fn_2646642

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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641657o
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
?K
?
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646320
inputs_0>
,lstm_cell_437_matmul_readvariableop_resource:2(@
.lstm_cell_437_matmul_1_readvariableop_resource:
(;
-lstm_cell_437_biasadd_readvariableop_resource:(
identity??$lstm_cell_437/BiasAdd/ReadVariableOp?#lstm_cell_437/MatMul/ReadVariableOp?%lstm_cell_437/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_437/MatMul/ReadVariableOpReadVariableOp,lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_437/MatMulMatMulstrided_slice_2:output:0+lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_437/MatMul_1MatMulzeros:output:0-lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_437/addAddV2lstm_cell_437/MatMul:product:0 lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_437/BiasAddBiasAddlstm_cell_437/add:z:0,lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_437/splitSplit&lstm_cell_437/split/split_dim:output:0lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_437/SigmoidSigmoidlstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_1Sigmoidlstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_437/mulMullstm_cell_437/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_437/ReluRelulstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_1Mullstm_cell_437/Sigmoid:y:0 lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_437/add_1AddV2lstm_cell_437/mul:z:0lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_2Sigmoidlstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_437/Relu_1Relulstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_2Mullstm_cell_437/Sigmoid_2:y:0"lstm_cell_437/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_437_matmul_readvariableop_resource.lstm_cell_437_matmul_1_readvariableop_resource-lstm_cell_437_biasadd_readvariableop_resource*
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
while_body_2646236*
condR
while_cond_2646235*K
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
NoOpNoOp%^lstm_cell_437/BiasAdd/ReadVariableOp$^lstm_cell_437/MatMul/ReadVariableOp&^lstm_cell_437/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_437/BiasAdd/ReadVariableOp$lstm_cell_437/BiasAdd/ReadVariableOp2J
#lstm_cell_437/MatMul/ReadVariableOp#lstm_cell_437/MatMul/ReadVariableOp2N
%lstm_cell_437/MatMul_1/ReadVariableOp%lstm_cell_437/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_537_while_cond_2644389.
*lstm_537_while_lstm_537_while_loop_counter4
0lstm_537_while_lstm_537_while_maximum_iterations
lstm_537_while_placeholder 
lstm_537_while_placeholder_1 
lstm_537_while_placeholder_2 
lstm_537_while_placeholder_30
,lstm_537_while_less_lstm_537_strided_slice_1G
Clstm_537_while_lstm_537_while_cond_2644389___redundant_placeholder0G
Clstm_537_while_lstm_537_while_cond_2644389___redundant_placeholder1G
Clstm_537_while_lstm_537_while_cond_2644389___redundant_placeholder2G
Clstm_537_while_lstm_537_while_cond_2644389___redundant_placeholder3
lstm_537_while_identity
?
lstm_537/while/LessLesslstm_537_while_placeholder,lstm_537_while_less_lstm_537_strided_slice_1*
T0*
_output_shapes
: ]
lstm_537/while/IdentityIdentitylstm_537/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_537_while_identity lstm_537/while/Identity:output:0*(
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642007

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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642281

inputs(
lstm_cell_436_2642199:	d?(
lstm_cell_436_2642201:	2?$
lstm_cell_436_2642203:	?
identity??%lstm_cell_436/StatefulPartitionedCall?while;
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
%lstm_cell_436/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_436_2642199lstm_cell_436_2642201lstm_cell_436_2642203*
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642153n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_436_2642199lstm_cell_436_2642201lstm_cell_436_2642203*
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
while_body_2642212*
condR
while_cond_2642211*K
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
NoOpNoOp&^lstm_cell_436/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_436/StatefulPartitionedCall%lstm_cell_436/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645231

inputs?
,lstm_cell_435_matmul_readvariableop_resource:	?A
.lstm_cell_435_matmul_1_readvariableop_resource:	d?<
-lstm_cell_435_biasadd_readvariableop_resource:	?
identity??$lstm_cell_435/BiasAdd/ReadVariableOp?#lstm_cell_435/MatMul/ReadVariableOp?%lstm_cell_435/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_435/MatMul/ReadVariableOpReadVariableOp,lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_435/MatMulMatMulstrided_slice_2:output:0+lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_435/MatMul_1MatMulzeros:output:0-lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_435/addAddV2lstm_cell_435/MatMul:product:0 lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_435/BiasAddBiasAddlstm_cell_435/add:z:0,lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_435/splitSplit&lstm_cell_435/split/split_dim:output:0lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_435/SigmoidSigmoidlstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_1Sigmoidlstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_435/mulMullstm_cell_435/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_435/ReluRelulstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_1Mullstm_cell_435/Sigmoid:y:0 lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_435/add_1AddV2lstm_cell_435/mul:z:0lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_2Sigmoidlstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_435/Relu_1Relulstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_2Mullstm_cell_435/Sigmoid_2:y:0"lstm_cell_435/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_435_matmul_readvariableop_resource.lstm_cell_435_matmul_1_readvariableop_resource-lstm_cell_435_biasadd_readvariableop_resource*
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
while_body_2645147*
condR
while_cond_2645146*K
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
NoOpNoOp%^lstm_cell_435/BiasAdd/ReadVariableOp$^lstm_cell_435/MatMul/ReadVariableOp&^lstm_cell_435/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_435/BiasAdd/ReadVariableOp$lstm_cell_435/BiasAdd/ReadVariableOp2J
#lstm_cell_435/MatMul/ReadVariableOp#lstm_cell_435/MatMul/ReadVariableOp2N
%lstm_cell_435/MatMul_1/ReadVariableOp%lstm_cell_435/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_537_layer_call_and_return_conditional_losses_2641740

inputs(
lstm_cell_435_2641658:	?(
lstm_cell_435_2641660:	d?$
lstm_cell_435_2641662:	?
identity??%lstm_cell_435/StatefulPartitionedCall?while;
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
%lstm_cell_435/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_435_2641658lstm_cell_435_2641660lstm_cell_435_2641662*
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641657n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_435_2641658lstm_cell_435_2641660lstm_cell_435_2641662*
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
while_body_2641671*
condR
while_cond_2641670*K
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
NoOpNoOp&^lstm_cell_435/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_435/StatefulPartitionedCall%lstm_cell_435/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2645619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645619___redundant_placeholder05
1while_while_cond_2645619___redundant_placeholder15
1while_while_cond_2645619___redundant_placeholder25
1while_while_cond_2645619___redundant_placeholder3
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2646789

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
?
E__inference_lstm_539_layer_call_and_return_conditional_losses_2642440

inputs'
lstm_cell_437_2642358:2('
lstm_cell_437_2642360:
(#
lstm_cell_437_2642362:(
identity??%lstm_cell_437/StatefulPartitionedCall?while;
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
%lstm_cell_437/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_437_2642358lstm_cell_437_2642360lstm_cell_437_2642362*
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642357n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_437_2642358lstm_cell_437_2642360lstm_cell_437_2642362*
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
while_body_2642371*
condR
while_cond_2642370*K
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
NoOpNoOp&^lstm_cell_437/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_437/StatefulPartitionedCall%lstm_cell_437/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_537_layer_call_fn_2644780
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2641931|
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

lstm_537_while_body_2643963.
*lstm_537_while_lstm_537_while_loop_counter4
0lstm_537_while_lstm_537_while_maximum_iterations
lstm_537_while_placeholder 
lstm_537_while_placeholder_1 
lstm_537_while_placeholder_2 
lstm_537_while_placeholder_3-
)lstm_537_while_lstm_537_strided_slice_1_0i
elstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0:	?R
?lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?M
>lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
lstm_537_while_identity
lstm_537_while_identity_1
lstm_537_while_identity_2
lstm_537_while_identity_3
lstm_537_while_identity_4
lstm_537_while_identity_5+
'lstm_537_while_lstm_537_strided_slice_1g
clstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensorN
;lstm_537_while_lstm_cell_435_matmul_readvariableop_resource:	?P
=lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource:	d?K
<lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource:	???3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp?2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp?4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp?
@lstm_537/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_537/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensor_0lstm_537_while_placeholderIlstm_537/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp=lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_537/while/lstm_cell_435/MatMulMatMul9lstm_537/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp?lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_537/while/lstm_cell_435/MatMul_1MatMullstm_537_while_placeholder_2<lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_537/while/lstm_cell_435/addAddV2-lstm_537/while/lstm_cell_435/MatMul:product:0/lstm_537/while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp>lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_537/while/lstm_cell_435/BiasAddBiasAdd$lstm_537/while/lstm_cell_435/add:z:0;lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_537/while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_537/while/lstm_cell_435/splitSplit5lstm_537/while/lstm_cell_435/split/split_dim:output:0-lstm_537/while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_537/while/lstm_cell_435/SigmoidSigmoid+lstm_537/while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_537/while/lstm_cell_435/Sigmoid_1Sigmoid+lstm_537/while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_537/while/lstm_cell_435/mulMul*lstm_537/while/lstm_cell_435/Sigmoid_1:y:0lstm_537_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_537/while/lstm_cell_435/ReluRelu+lstm_537/while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_537/while/lstm_cell_435/mul_1Mul(lstm_537/while/lstm_cell_435/Sigmoid:y:0/lstm_537/while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_537/while/lstm_cell_435/add_1AddV2$lstm_537/while/lstm_cell_435/mul:z:0&lstm_537/while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_537/while/lstm_cell_435/Sigmoid_2Sigmoid+lstm_537/while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_537/while/lstm_cell_435/Relu_1Relu&lstm_537/while/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_537/while/lstm_cell_435/mul_2Mul*lstm_537/while/lstm_cell_435/Sigmoid_2:y:01lstm_537/while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_537/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_537_while_placeholder_1lstm_537_while_placeholder&lstm_537/while/lstm_cell_435/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_537/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_537/while/addAddV2lstm_537_while_placeholderlstm_537/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_537/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_537/while/add_1AddV2*lstm_537_while_lstm_537_while_loop_counterlstm_537/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_537/while/IdentityIdentitylstm_537/while/add_1:z:0^lstm_537/while/NoOp*
T0*
_output_shapes
: ?
lstm_537/while/Identity_1Identity0lstm_537_while_lstm_537_while_maximum_iterations^lstm_537/while/NoOp*
T0*
_output_shapes
: t
lstm_537/while/Identity_2Identitylstm_537/while/add:z:0^lstm_537/while/NoOp*
T0*
_output_shapes
: ?
lstm_537/while/Identity_3IdentityClstm_537/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_537/while/NoOp*
T0*
_output_shapes
: ?
lstm_537/while/Identity_4Identity&lstm_537/while/lstm_cell_435/mul_2:z:0^lstm_537/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_537/while/Identity_5Identity&lstm_537/while/lstm_cell_435/add_1:z:0^lstm_537/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_537/while/NoOpNoOp4^lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp3^lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp5^lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_537_while_identity lstm_537/while/Identity:output:0"?
lstm_537_while_identity_1"lstm_537/while/Identity_1:output:0"?
lstm_537_while_identity_2"lstm_537/while/Identity_2:output:0"?
lstm_537_while_identity_3"lstm_537/while/Identity_3:output:0"?
lstm_537_while_identity_4"lstm_537/while/Identity_4:output:0"?
lstm_537_while_identity_5"lstm_537/while/Identity_5:output:0"T
'lstm_537_while_lstm_537_strided_slice_1)lstm_537_while_lstm_537_strided_slice_1_0"~
<lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource>lstm_537_while_lstm_cell_435_biasadd_readvariableop_resource_0"?
=lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource?lstm_537_while_lstm_cell_435_matmul_1_readvariableop_resource_0"|
;lstm_537_while_lstm_cell_435_matmul_readvariableop_resource=lstm_537_while_lstm_cell_435_matmul_readvariableop_resource_0"?
clstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensorelstm_537_while_tensorarrayv2read_tensorlistgetitem_lstm_537_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp3lstm_537/while/lstm_cell_435/BiasAdd/ReadVariableOp2h
2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp2lstm_537/while/lstm_cell_435/MatMul/ReadVariableOp2l
4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp4lstm_537/while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2645477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_436_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_436_matmul_readvariableop_resource:	d?G
4while_lstm_cell_436_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_436_biasadd_readvariableop_resource:	???*while/lstm_cell_436/BiasAdd/ReadVariableOp?)while/lstm_cell_436/MatMul/ReadVariableOp?+while/lstm_cell_436/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_436/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_436/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_436/addAddV2$while/lstm_cell_436/MatMul:product:0&while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_436/BiasAddBiasAddwhile/lstm_cell_436/add:z:02while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_436/splitSplit,while/lstm_cell_436/split/split_dim:output:0$while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_436/SigmoidSigmoid"while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_1Sigmoid"while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mulMul!while/lstm_cell_436/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_436/ReluRelu"while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_1Mulwhile/lstm_cell_436/Sigmoid:y:0&while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/add_1AddV2while/lstm_cell_436/mul:z:0while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_2Sigmoid"while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_436/Relu_1Reluwhile/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_2Mul!while/lstm_cell_436/Sigmoid_2:y:0(while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_436/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_436/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_436/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_436/BiasAdd/ReadVariableOp*^while/lstm_cell_436/MatMul/ReadVariableOp,^while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_436_biasadd_readvariableop_resource5while_lstm_cell_436_biasadd_readvariableop_resource_0"n
4while_lstm_cell_436_matmul_1_readvariableop_resource6while_lstm_cell_436_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_436_matmul_readvariableop_resource4while_lstm_cell_436_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_436/BiasAdd/ReadVariableOp*while/lstm_cell_436/BiasAdd/ReadVariableOp2V
)while/lstm_cell_436/MatMul/ReadVariableOp)while/lstm_cell_436/MatMul/ReadVariableOp2Z
+while/lstm_cell_436/MatMul_1/ReadVariableOp+while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2643635

inputs?
,lstm_cell_435_matmul_readvariableop_resource:	?A
.lstm_cell_435_matmul_1_readvariableop_resource:	d?<
-lstm_cell_435_biasadd_readvariableop_resource:	?
identity??$lstm_cell_435/BiasAdd/ReadVariableOp?#lstm_cell_435/MatMul/ReadVariableOp?%lstm_cell_435/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_435/MatMul/ReadVariableOpReadVariableOp,lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_435/MatMulMatMulstrided_slice_2:output:0+lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_435/MatMul_1MatMulzeros:output:0-lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_435/addAddV2lstm_cell_435/MatMul:product:0 lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_435/BiasAddBiasAddlstm_cell_435/add:z:0,lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_435/splitSplit&lstm_cell_435/split/split_dim:output:0lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_435/SigmoidSigmoidlstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_1Sigmoidlstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_435/mulMullstm_cell_435/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_435/ReluRelulstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_1Mullstm_cell_435/Sigmoid:y:0 lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_435/add_1AddV2lstm_cell_435/mul:z:0lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_2Sigmoidlstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_435/Relu_1Relulstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_2Mullstm_cell_435/Sigmoid_2:y:0"lstm_cell_435/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_435_matmul_readvariableop_resource.lstm_cell_435_matmul_1_readvariableop_resource-lstm_cell_435_biasadd_readvariableop_resource*
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
while_body_2643551*
condR
while_cond_2643550*K
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
NoOpNoOp%^lstm_cell_435/BiasAdd/ReadVariableOp$^lstm_cell_435/MatMul/ReadVariableOp&^lstm_cell_435/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_435/BiasAdd/ReadVariableOp$lstm_cell_435/BiasAdd/ReadVariableOp2J
#lstm_cell_435/MatMul/ReadVariableOp#lstm_cell_435/MatMul/ReadVariableOp2N
%lstm_cell_435/MatMul_1/ReadVariableOp%lstm_cell_435/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2642357

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
?T
?
*sequential_179_lstm_539_while_body_2641500L
Hsequential_179_lstm_539_while_sequential_179_lstm_539_while_loop_counterR
Nsequential_179_lstm_539_while_sequential_179_lstm_539_while_maximum_iterations-
)sequential_179_lstm_539_while_placeholder/
+sequential_179_lstm_539_while_placeholder_1/
+sequential_179_lstm_539_while_placeholder_2/
+sequential_179_lstm_539_while_placeholder_3K
Gsequential_179_lstm_539_while_sequential_179_lstm_539_strided_slice_1_0?
?sequential_179_lstm_539_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_539_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_179_lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0:2(`
Nsequential_179_lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0:
([
Msequential_179_lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0:(*
&sequential_179_lstm_539_while_identity,
(sequential_179_lstm_539_while_identity_1,
(sequential_179_lstm_539_while_identity_2,
(sequential_179_lstm_539_while_identity_3,
(sequential_179_lstm_539_while_identity_4,
(sequential_179_lstm_539_while_identity_5I
Esequential_179_lstm_539_while_sequential_179_lstm_539_strided_slice_1?
?sequential_179_lstm_539_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_539_tensorarrayunstack_tensorlistfromtensor\
Jsequential_179_lstm_539_while_lstm_cell_437_matmul_readvariableop_resource:2(^
Lsequential_179_lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource:
(Y
Ksequential_179_lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource:(??Bsequential_179/lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp?Asequential_179/lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp?Csequential_179/lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp?
Osequential_179/lstm_539/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_179/lstm_539/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_179_lstm_539_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_539_tensorarrayunstack_tensorlistfromtensor_0)sequential_179_lstm_539_while_placeholderXsequential_179/lstm_539/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_179/lstm_539/while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOpLsequential_179_lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_179/lstm_539/while/lstm_cell_437/MatMulMatMulHsequential_179/lstm_539/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_179/lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_179/lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOpNsequential_179_lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_179/lstm_539/while/lstm_cell_437/MatMul_1MatMul+sequential_179_lstm_539_while_placeholder_2Ksequential_179/lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_179/lstm_539/while/lstm_cell_437/addAddV2<sequential_179/lstm_539/while/lstm_cell_437/MatMul:product:0>sequential_179/lstm_539/while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_179/lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOpMsequential_179_lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_179/lstm_539/while/lstm_cell_437/BiasAddBiasAdd3sequential_179/lstm_539/while/lstm_cell_437/add:z:0Jsequential_179/lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_179/lstm_539/while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_179/lstm_539/while/lstm_cell_437/splitSplitDsequential_179/lstm_539/while/lstm_cell_437/split/split_dim:output:0<sequential_179/lstm_539/while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_179/lstm_539/while/lstm_cell_437/SigmoidSigmoid:sequential_179/lstm_539/while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_179/lstm_539/while/lstm_cell_437/Sigmoid_1Sigmoid:sequential_179/lstm_539/while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_179/lstm_539/while/lstm_cell_437/mulMul9sequential_179/lstm_539/while/lstm_cell_437/Sigmoid_1:y:0+sequential_179_lstm_539_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_179/lstm_539/while/lstm_cell_437/ReluRelu:sequential_179/lstm_539/while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_179/lstm_539/while/lstm_cell_437/mul_1Mul7sequential_179/lstm_539/while/lstm_cell_437/Sigmoid:y:0>sequential_179/lstm_539/while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_179/lstm_539/while/lstm_cell_437/add_1AddV23sequential_179/lstm_539/while/lstm_cell_437/mul:z:05sequential_179/lstm_539/while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_179/lstm_539/while/lstm_cell_437/Sigmoid_2Sigmoid:sequential_179/lstm_539/while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_179/lstm_539/while/lstm_cell_437/Relu_1Relu5sequential_179/lstm_539/while/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_179/lstm_539/while/lstm_cell_437/mul_2Mul9sequential_179/lstm_539/while/lstm_cell_437/Sigmoid_2:y:0@sequential_179/lstm_539/while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_179/lstm_539/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_179_lstm_539_while_placeholder_1)sequential_179_lstm_539_while_placeholder5sequential_179/lstm_539/while/lstm_cell_437/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_179/lstm_539/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_179/lstm_539/while/addAddV2)sequential_179_lstm_539_while_placeholder,sequential_179/lstm_539/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_179/lstm_539/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_179/lstm_539/while/add_1AddV2Hsequential_179_lstm_539_while_sequential_179_lstm_539_while_loop_counter.sequential_179/lstm_539/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_179/lstm_539/while/IdentityIdentity'sequential_179/lstm_539/while/add_1:z:0#^sequential_179/lstm_539/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_539/while/Identity_1IdentityNsequential_179_lstm_539_while_sequential_179_lstm_539_while_maximum_iterations#^sequential_179/lstm_539/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_539/while/Identity_2Identity%sequential_179/lstm_539/while/add:z:0#^sequential_179/lstm_539/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_539/while/Identity_3IdentityRsequential_179/lstm_539/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_179/lstm_539/while/NoOp*
T0*
_output_shapes
: ?
(sequential_179/lstm_539/while/Identity_4Identity5sequential_179/lstm_539/while/lstm_cell_437/mul_2:z:0#^sequential_179/lstm_539/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_179/lstm_539/while/Identity_5Identity5sequential_179/lstm_539/while/lstm_cell_437/add_1:z:0#^sequential_179/lstm_539/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_179/lstm_539/while/NoOpNoOpC^sequential_179/lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOpB^sequential_179/lstm_539/while/lstm_cell_437/MatMul/ReadVariableOpD^sequential_179/lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_179_lstm_539_while_identity/sequential_179/lstm_539/while/Identity:output:0"]
(sequential_179_lstm_539_while_identity_11sequential_179/lstm_539/while/Identity_1:output:0"]
(sequential_179_lstm_539_while_identity_21sequential_179/lstm_539/while/Identity_2:output:0"]
(sequential_179_lstm_539_while_identity_31sequential_179/lstm_539/while/Identity_3:output:0"]
(sequential_179_lstm_539_while_identity_41sequential_179/lstm_539/while/Identity_4:output:0"]
(sequential_179_lstm_539_while_identity_51sequential_179/lstm_539/while/Identity_5:output:0"?
Ksequential_179_lstm_539_while_lstm_cell_437_biasadd_readvariableop_resourceMsequential_179_lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0"?
Lsequential_179_lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resourceNsequential_179_lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0"?
Jsequential_179_lstm_539_while_lstm_cell_437_matmul_readvariableop_resourceLsequential_179_lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0"?
Esequential_179_lstm_539_while_sequential_179_lstm_539_strided_slice_1Gsequential_179_lstm_539_while_sequential_179_lstm_539_strided_slice_1_0"?
?sequential_179_lstm_539_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_539_tensorarrayunstack_tensorlistfromtensor?sequential_179_lstm_539_while_tensorarrayv2read_tensorlistgetitem_sequential_179_lstm_539_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_179/lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOpBsequential_179/lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp2?
Asequential_179/lstm_539/while/lstm_cell_437/MatMul/ReadVariableOpAsequential_179/lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp2?
Csequential_179/lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOpCsequential_179/lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2642561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2642561___redundant_placeholder05
1while_while_cond_2642561___redundant_placeholder15
1while_while_cond_2642561___redundant_placeholder25
1while_while_cond_2642561___redundant_placeholder3
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

lstm_539_while_body_2644668.
*lstm_539_while_lstm_539_while_loop_counter4
0lstm_539_while_lstm_539_while_maximum_iterations
lstm_539_while_placeholder 
lstm_539_while_placeholder_1 
lstm_539_while_placeholder_2 
lstm_539_while_placeholder_3-
)lstm_539_while_lstm_539_strided_slice_1_0i
elstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0:2(Q
?lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(L
>lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0:(
lstm_539_while_identity
lstm_539_while_identity_1
lstm_539_while_identity_2
lstm_539_while_identity_3
lstm_539_while_identity_4
lstm_539_while_identity_5+
'lstm_539_while_lstm_539_strided_slice_1g
clstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensorM
;lstm_539_while_lstm_cell_437_matmul_readvariableop_resource:2(O
=lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource:
(J
<lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource:(??3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp?2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp?4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp?
@lstm_539/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_539/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensor_0lstm_539_while_placeholderIlstm_539/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp=lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_539/while/lstm_cell_437/MatMulMatMul9lstm_539/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp?lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_539/while/lstm_cell_437/MatMul_1MatMullstm_539_while_placeholder_2<lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_539/while/lstm_cell_437/addAddV2-lstm_539/while/lstm_cell_437/MatMul:product:0/lstm_539/while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp>lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_539/while/lstm_cell_437/BiasAddBiasAdd$lstm_539/while/lstm_cell_437/add:z:0;lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_539/while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_539/while/lstm_cell_437/splitSplit5lstm_539/while/lstm_cell_437/split/split_dim:output:0-lstm_539/while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_539/while/lstm_cell_437/SigmoidSigmoid+lstm_539/while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_539/while/lstm_cell_437/Sigmoid_1Sigmoid+lstm_539/while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_539/while/lstm_cell_437/mulMul*lstm_539/while/lstm_cell_437/Sigmoid_1:y:0lstm_539_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_539/while/lstm_cell_437/ReluRelu+lstm_539/while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_539/while/lstm_cell_437/mul_1Mul(lstm_539/while/lstm_cell_437/Sigmoid:y:0/lstm_539/while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_539/while/lstm_cell_437/add_1AddV2$lstm_539/while/lstm_cell_437/mul:z:0&lstm_539/while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_539/while/lstm_cell_437/Sigmoid_2Sigmoid+lstm_539/while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_539/while/lstm_cell_437/Relu_1Relu&lstm_539/while/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_539/while/lstm_cell_437/mul_2Mul*lstm_539/while/lstm_cell_437/Sigmoid_2:y:01lstm_539/while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_539/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_539_while_placeholder_1lstm_539_while_placeholder&lstm_539/while/lstm_cell_437/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_539/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_539/while/addAddV2lstm_539_while_placeholderlstm_539/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_539/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_539/while/add_1AddV2*lstm_539_while_lstm_539_while_loop_counterlstm_539/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_539/while/IdentityIdentitylstm_539/while/add_1:z:0^lstm_539/while/NoOp*
T0*
_output_shapes
: ?
lstm_539/while/Identity_1Identity0lstm_539_while_lstm_539_while_maximum_iterations^lstm_539/while/NoOp*
T0*
_output_shapes
: t
lstm_539/while/Identity_2Identitylstm_539/while/add:z:0^lstm_539/while/NoOp*
T0*
_output_shapes
: ?
lstm_539/while/Identity_3IdentityClstm_539/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_539/while/NoOp*
T0*
_output_shapes
: ?
lstm_539/while/Identity_4Identity&lstm_539/while/lstm_cell_437/mul_2:z:0^lstm_539/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_539/while/Identity_5Identity&lstm_539/while/lstm_cell_437/add_1:z:0^lstm_539/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_539/while/NoOpNoOp4^lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp3^lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp5^lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_539_while_identity lstm_539/while/Identity:output:0"?
lstm_539_while_identity_1"lstm_539/while/Identity_1:output:0"?
lstm_539_while_identity_2"lstm_539/while/Identity_2:output:0"?
lstm_539_while_identity_3"lstm_539/while/Identity_3:output:0"?
lstm_539_while_identity_4"lstm_539/while/Identity_4:output:0"?
lstm_539_while_identity_5"lstm_539/while/Identity_5:output:0"T
'lstm_539_while_lstm_539_strided_slice_1)lstm_539_while_lstm_539_strided_slice_1_0"~
<lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource>lstm_539_while_lstm_cell_437_biasadd_readvariableop_resource_0"?
=lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource?lstm_539_while_lstm_cell_437_matmul_1_readvariableop_resource_0"|
;lstm_539_while_lstm_cell_437_matmul_readvariableop_resource=lstm_539_while_lstm_cell_437_matmul_readvariableop_resource_0"?
clstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensorelstm_539_while_tensorarrayv2read_tensorlistgetitem_lstm_539_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp3lstm_539/while/lstm_cell_437/BiasAdd/ReadVariableOp2h
2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp2lstm_539/while/lstm_cell_437/MatMul/ReadVariableOp2l
4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp4lstm_539/while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2646521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2646521___redundant_placeholder05
1while_while_cond_2646521___redundant_placeholder15
1while_while_cond_2646521___redundant_placeholder25
1while_while_cond_2646521___redundant_placeholder3
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
while_cond_2646378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2646378___redundant_placeholder05
1while_while_cond_2646378___redundant_placeholder15
1while_while_cond_2646378___redundant_placeholder25
1while_while_cond_2646378___redundant_placeholder3
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
lstm_537_while_cond_2643962.
*lstm_537_while_lstm_537_while_loop_counter4
0lstm_537_while_lstm_537_while_maximum_iterations
lstm_537_while_placeholder 
lstm_537_while_placeholder_1 
lstm_537_while_placeholder_2 
lstm_537_while_placeholder_30
,lstm_537_while_less_lstm_537_strided_slice_1G
Clstm_537_while_lstm_537_while_cond_2643962___redundant_placeholder0G
Clstm_537_while_lstm_537_while_cond_2643962___redundant_placeholder1G
Clstm_537_while_lstm_537_while_cond_2643962___redundant_placeholder2G
Clstm_537_while_lstm_537_while_cond_2643962___redundant_placeholder3
lstm_537_while_identity
?
lstm_537/while/LessLesslstm_537_while_placeholder,lstm_537_while_less_lstm_537_strided_slice_1*
T0*
_output_shapes
: ]
lstm_537/while/IdentityIdentitylstm_537/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_537_while_identity lstm_537/while/Identity:output:0*(
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645088
inputs_0?
,lstm_cell_435_matmul_readvariableop_resource:	?A
.lstm_cell_435_matmul_1_readvariableop_resource:	d?<
-lstm_cell_435_biasadd_readvariableop_resource:	?
identity??$lstm_cell_435/BiasAdd/ReadVariableOp?#lstm_cell_435/MatMul/ReadVariableOp?%lstm_cell_435/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_435/MatMul/ReadVariableOpReadVariableOp,lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_435/MatMulMatMulstrided_slice_2:output:0+lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_435/MatMul_1MatMulzeros:output:0-lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_435/addAddV2lstm_cell_435/MatMul:product:0 lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_435/BiasAddBiasAddlstm_cell_435/add:z:0,lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_435/splitSplit&lstm_cell_435/split/split_dim:output:0lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_435/SigmoidSigmoidlstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_1Sigmoidlstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_435/mulMullstm_cell_435/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_435/ReluRelulstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_1Mullstm_cell_435/Sigmoid:y:0 lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_435/add_1AddV2lstm_cell_435/mul:z:0lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_2Sigmoidlstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_435/Relu_1Relulstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_2Mullstm_cell_435/Sigmoid_2:y:0"lstm_cell_435/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_435_matmul_readvariableop_resource.lstm_cell_435_matmul_1_readvariableop_resource-lstm_cell_435_biasadd_readvariableop_resource*
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
while_body_2645004*
condR
while_cond_2645003*K
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
NoOpNoOp%^lstm_cell_435/BiasAdd/ReadVariableOp$^lstm_cell_435/MatMul/ReadVariableOp&^lstm_cell_435/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_435/BiasAdd/ReadVariableOp$lstm_cell_435/BiasAdd/ReadVariableOp2J
#lstm_cell_435/MatMul/ReadVariableOp#lstm_cell_435/MatMul/ReadVariableOp2N
%lstm_cell_435/MatMul_1/ReadVariableOp%lstm_cell_435/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642090

inputs(
lstm_cell_436_2642008:	d?(
lstm_cell_436_2642010:	2?$
lstm_cell_436_2642012:	?
identity??%lstm_cell_436/StatefulPartitionedCall?while;
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
%lstm_cell_436/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_436_2642008lstm_cell_436_2642010lstm_cell_436_2642012*
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642007n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_436_2642008lstm_cell_436_2642010lstm_cell_436_2642012*
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
while_body_2642021*
condR
while_cond_2642020*K
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
NoOpNoOp&^lstm_cell_436/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_436/StatefulPartitionedCall%lstm_cell_436/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_2645147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_435_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_435_matmul_readvariableop_resource:	?G
4while_lstm_cell_435_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_435_biasadd_readvariableop_resource:	???*while/lstm_cell_435/BiasAdd/ReadVariableOp?)while/lstm_cell_435/MatMul/ReadVariableOp?+while/lstm_cell_435/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_435/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_435/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_435/addAddV2$while/lstm_cell_435/MatMul:product:0&while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_435/BiasAddBiasAddwhile/lstm_cell_435/add:z:02while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_435/splitSplit,while/lstm_cell_435/split/split_dim:output:0$while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_435/SigmoidSigmoid"while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_1Sigmoid"while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mulMul!while/lstm_cell_435/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_435/ReluRelu"while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_1Mulwhile/lstm_cell_435/Sigmoid:y:0&while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/add_1AddV2while/lstm_cell_435/mul:z:0while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_2Sigmoid"while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_435/Relu_1Reluwhile/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_2Mul!while/lstm_cell_435/Sigmoid_2:y:0(while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_435/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_435/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_435/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_435/BiasAdd/ReadVariableOp*^while/lstm_cell_435/MatMul/ReadVariableOp,^while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_435_biasadd_readvariableop_resource5while_lstm_cell_435_biasadd_readvariableop_resource_0"n
4while_lstm_cell_435_matmul_1_readvariableop_resource6while_lstm_cell_435_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_435_matmul_readvariableop_resource4while_lstm_cell_435_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_435/BiasAdd/ReadVariableOp*while/lstm_cell_435/BiasAdd/ReadVariableOp2V
)while/lstm_cell_435/MatMul/ReadVariableOp)while/lstm_cell_435/MatMul/ReadVariableOp2Z
+while/lstm_cell_435/MatMul_1/ReadVariableOp+while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_538_while_body_2644529.
*lstm_538_while_lstm_538_while_loop_counter4
0lstm_538_while_lstm_538_while_maximum_iterations
lstm_538_while_placeholder 
lstm_538_while_placeholder_1 
lstm_538_while_placeholder_2 
lstm_538_while_placeholder_3-
)lstm_538_while_lstm_538_strided_slice_1_0i
elstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0:	d?R
?lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?M
>lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
lstm_538_while_identity
lstm_538_while_identity_1
lstm_538_while_identity_2
lstm_538_while_identity_3
lstm_538_while_identity_4
lstm_538_while_identity_5+
'lstm_538_while_lstm_538_strided_slice_1g
clstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensorN
;lstm_538_while_lstm_cell_436_matmul_readvariableop_resource:	d?P
=lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource:	2?K
<lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource:	???3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp?2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp?4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp?
@lstm_538/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_538/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensor_0lstm_538_while_placeholderIlstm_538/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp=lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_538/while/lstm_cell_436/MatMulMatMul9lstm_538/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp?lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_538/while/lstm_cell_436/MatMul_1MatMullstm_538_while_placeholder_2<lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_538/while/lstm_cell_436/addAddV2-lstm_538/while/lstm_cell_436/MatMul:product:0/lstm_538/while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp>lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_538/while/lstm_cell_436/BiasAddBiasAdd$lstm_538/while/lstm_cell_436/add:z:0;lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_538/while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_538/while/lstm_cell_436/splitSplit5lstm_538/while/lstm_cell_436/split/split_dim:output:0-lstm_538/while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_538/while/lstm_cell_436/SigmoidSigmoid+lstm_538/while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_538/while/lstm_cell_436/Sigmoid_1Sigmoid+lstm_538/while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_538/while/lstm_cell_436/mulMul*lstm_538/while/lstm_cell_436/Sigmoid_1:y:0lstm_538_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_538/while/lstm_cell_436/ReluRelu+lstm_538/while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_538/while/lstm_cell_436/mul_1Mul(lstm_538/while/lstm_cell_436/Sigmoid:y:0/lstm_538/while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_538/while/lstm_cell_436/add_1AddV2$lstm_538/while/lstm_cell_436/mul:z:0&lstm_538/while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_538/while/lstm_cell_436/Sigmoid_2Sigmoid+lstm_538/while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_538/while/lstm_cell_436/Relu_1Relu&lstm_538/while/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_538/while/lstm_cell_436/mul_2Mul*lstm_538/while/lstm_cell_436/Sigmoid_2:y:01lstm_538/while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_538/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_538_while_placeholder_1lstm_538_while_placeholder&lstm_538/while/lstm_cell_436/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_538/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_538/while/addAddV2lstm_538_while_placeholderlstm_538/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_538/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_538/while/add_1AddV2*lstm_538_while_lstm_538_while_loop_counterlstm_538/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_538/while/IdentityIdentitylstm_538/while/add_1:z:0^lstm_538/while/NoOp*
T0*
_output_shapes
: ?
lstm_538/while/Identity_1Identity0lstm_538_while_lstm_538_while_maximum_iterations^lstm_538/while/NoOp*
T0*
_output_shapes
: t
lstm_538/while/Identity_2Identitylstm_538/while/add:z:0^lstm_538/while/NoOp*
T0*
_output_shapes
: ?
lstm_538/while/Identity_3IdentityClstm_538/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_538/while/NoOp*
T0*
_output_shapes
: ?
lstm_538/while/Identity_4Identity&lstm_538/while/lstm_cell_436/mul_2:z:0^lstm_538/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_538/while/Identity_5Identity&lstm_538/while/lstm_cell_436/add_1:z:0^lstm_538/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_538/while/NoOpNoOp4^lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp3^lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp5^lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_538_while_identity lstm_538/while/Identity:output:0"?
lstm_538_while_identity_1"lstm_538/while/Identity_1:output:0"?
lstm_538_while_identity_2"lstm_538/while/Identity_2:output:0"?
lstm_538_while_identity_3"lstm_538/while/Identity_3:output:0"?
lstm_538_while_identity_4"lstm_538/while/Identity_4:output:0"?
lstm_538_while_identity_5"lstm_538/while/Identity_5:output:0"T
'lstm_538_while_lstm_538_strided_slice_1)lstm_538_while_lstm_538_strided_slice_1_0"~
<lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource>lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0"?
=lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource?lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0"|
;lstm_538_while_lstm_cell_436_matmul_readvariableop_resource=lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0"?
clstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensorelstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp2h
2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp2l
4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_538_while_body_2644102.
*lstm_538_while_lstm_538_while_loop_counter4
0lstm_538_while_lstm_538_while_maximum_iterations
lstm_538_while_placeholder 
lstm_538_while_placeholder_1 
lstm_538_while_placeholder_2 
lstm_538_while_placeholder_3-
)lstm_538_while_lstm_538_strided_slice_1_0i
elstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0:	d?R
?lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?M
>lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
lstm_538_while_identity
lstm_538_while_identity_1
lstm_538_while_identity_2
lstm_538_while_identity_3
lstm_538_while_identity_4
lstm_538_while_identity_5+
'lstm_538_while_lstm_538_strided_slice_1g
clstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensorN
;lstm_538_while_lstm_cell_436_matmul_readvariableop_resource:	d?P
=lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource:	2?K
<lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource:	???3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp?2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp?4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp?
@lstm_538/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_538/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensor_0lstm_538_while_placeholderIlstm_538/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp=lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_538/while/lstm_cell_436/MatMulMatMul9lstm_538/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp?lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_538/while/lstm_cell_436/MatMul_1MatMullstm_538_while_placeholder_2<lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_538/while/lstm_cell_436/addAddV2-lstm_538/while/lstm_cell_436/MatMul:product:0/lstm_538/while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp>lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_538/while/lstm_cell_436/BiasAddBiasAdd$lstm_538/while/lstm_cell_436/add:z:0;lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_538/while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_538/while/lstm_cell_436/splitSplit5lstm_538/while/lstm_cell_436/split/split_dim:output:0-lstm_538/while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_538/while/lstm_cell_436/SigmoidSigmoid+lstm_538/while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_538/while/lstm_cell_436/Sigmoid_1Sigmoid+lstm_538/while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_538/while/lstm_cell_436/mulMul*lstm_538/while/lstm_cell_436/Sigmoid_1:y:0lstm_538_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_538/while/lstm_cell_436/ReluRelu+lstm_538/while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_538/while/lstm_cell_436/mul_1Mul(lstm_538/while/lstm_cell_436/Sigmoid:y:0/lstm_538/while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_538/while/lstm_cell_436/add_1AddV2$lstm_538/while/lstm_cell_436/mul:z:0&lstm_538/while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_538/while/lstm_cell_436/Sigmoid_2Sigmoid+lstm_538/while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_538/while/lstm_cell_436/Relu_1Relu&lstm_538/while/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_538/while/lstm_cell_436/mul_2Mul*lstm_538/while/lstm_cell_436/Sigmoid_2:y:01lstm_538/while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_538/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_538_while_placeholder_1lstm_538_while_placeholder&lstm_538/while/lstm_cell_436/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_538/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_538/while/addAddV2lstm_538_while_placeholderlstm_538/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_538/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_538/while/add_1AddV2*lstm_538_while_lstm_538_while_loop_counterlstm_538/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_538/while/IdentityIdentitylstm_538/while/add_1:z:0^lstm_538/while/NoOp*
T0*
_output_shapes
: ?
lstm_538/while/Identity_1Identity0lstm_538_while_lstm_538_while_maximum_iterations^lstm_538/while/NoOp*
T0*
_output_shapes
: t
lstm_538/while/Identity_2Identitylstm_538/while/add:z:0^lstm_538/while/NoOp*
T0*
_output_shapes
: ?
lstm_538/while/Identity_3IdentityClstm_538/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_538/while/NoOp*
T0*
_output_shapes
: ?
lstm_538/while/Identity_4Identity&lstm_538/while/lstm_cell_436/mul_2:z:0^lstm_538/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_538/while/Identity_5Identity&lstm_538/while/lstm_cell_436/add_1:z:0^lstm_538/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_538/while/NoOpNoOp4^lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp3^lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp5^lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_538_while_identity lstm_538/while/Identity:output:0"?
lstm_538_while_identity_1"lstm_538/while/Identity_1:output:0"?
lstm_538_while_identity_2"lstm_538/while/Identity_2:output:0"?
lstm_538_while_identity_3"lstm_538/while/Identity_3:output:0"?
lstm_538_while_identity_4"lstm_538/while/Identity_4:output:0"?
lstm_538_while_identity_5"lstm_538/while/Identity_5:output:0"T
'lstm_538_while_lstm_538_strided_slice_1)lstm_538_while_lstm_538_strided_slice_1_0"~
<lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource>lstm_538_while_lstm_cell_436_biasadd_readvariableop_resource_0"?
=lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource?lstm_538_while_lstm_cell_436_matmul_1_readvariableop_resource_0"|
;lstm_538_while_lstm_cell_436_matmul_readvariableop_resource=lstm_538_while_lstm_cell_436_matmul_readvariableop_resource_0"?
clstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensorelstm_538_while_tensorarrayv2read_tensorlistgetitem_lstm_538_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp3lstm_538/while/lstm_cell_436/BiasAdd/ReadVariableOp2h
2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp2lstm_538/while/lstm_cell_436/MatMul/ReadVariableOp2l
4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp4lstm_538/while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_179_layer_call_and_return_conditional_losses_2644331

inputsH
5lstm_537_lstm_cell_435_matmul_readvariableop_resource:	?J
7lstm_537_lstm_cell_435_matmul_1_readvariableop_resource:	d?E
6lstm_537_lstm_cell_435_biasadd_readvariableop_resource:	?H
5lstm_538_lstm_cell_436_matmul_readvariableop_resource:	d?J
7lstm_538_lstm_cell_436_matmul_1_readvariableop_resource:	2?E
6lstm_538_lstm_cell_436_biasadd_readvariableop_resource:	?G
5lstm_539_lstm_cell_437_matmul_readvariableop_resource:2(I
7lstm_539_lstm_cell_437_matmul_1_readvariableop_resource:
(D
6lstm_539_lstm_cell_437_biasadd_readvariableop_resource:(:
(dense_179_matmul_readvariableop_resource:
7
)dense_179_biasadd_readvariableop_resource:
identity?? dense_179/BiasAdd/ReadVariableOp?dense_179/MatMul/ReadVariableOp?-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp?,lstm_537/lstm_cell_435/MatMul/ReadVariableOp?.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp?lstm_537/while?-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp?,lstm_538/lstm_cell_436/MatMul/ReadVariableOp?.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp?lstm_538/while?-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp?,lstm_539/lstm_cell_437/MatMul/ReadVariableOp?.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp?lstm_539/whileD
lstm_537/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_537/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_537/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_537/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_sliceStridedSlicelstm_537/Shape:output:0%lstm_537/strided_slice/stack:output:0'lstm_537/strided_slice/stack_1:output:0'lstm_537/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_537/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_537/zeros/packedPacklstm_537/strided_slice:output:0 lstm_537/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_537/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_537/zerosFilllstm_537/zeros/packed:output:0lstm_537/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_537/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_537/zeros_1/packedPacklstm_537/strided_slice:output:0"lstm_537/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_537/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_537/zeros_1Fill lstm_537/zeros_1/packed:output:0lstm_537/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_537/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_537/transpose	Transposeinputs lstm_537/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_537/Shape_1Shapelstm_537/transpose:y:0*
T0*
_output_shapes
:h
lstm_537/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_537/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_537/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_slice_1StridedSlicelstm_537/Shape_1:output:0'lstm_537/strided_slice_1/stack:output:0)lstm_537/strided_slice_1/stack_1:output:0)lstm_537/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_537/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_537/TensorArrayV2TensorListReserve-lstm_537/TensorArrayV2/element_shape:output:0!lstm_537/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_537/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_537/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_537/transpose:y:0Glstm_537/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_537/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_537/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_537/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_slice_2StridedSlicelstm_537/transpose:y:0'lstm_537/strided_slice_2/stack:output:0)lstm_537/strided_slice_2/stack_1:output:0)lstm_537/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_537/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp5lstm_537_lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_537/lstm_cell_435/MatMulMatMul!lstm_537/strided_slice_2:output:04lstm_537/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp7lstm_537_lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_537/lstm_cell_435/MatMul_1MatMullstm_537/zeros:output:06lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_537/lstm_cell_435/addAddV2'lstm_537/lstm_cell_435/MatMul:product:0)lstm_537/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp6lstm_537_lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_537/lstm_cell_435/BiasAddBiasAddlstm_537/lstm_cell_435/add:z:05lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_537/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_537/lstm_cell_435/splitSplit/lstm_537/lstm_cell_435/split/split_dim:output:0'lstm_537/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_537/lstm_cell_435/SigmoidSigmoid%lstm_537/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_537/lstm_cell_435/Sigmoid_1Sigmoid%lstm_537/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/mulMul$lstm_537/lstm_cell_435/Sigmoid_1:y:0lstm_537/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_537/lstm_cell_435/ReluRelu%lstm_537/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/mul_1Mul"lstm_537/lstm_cell_435/Sigmoid:y:0)lstm_537/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/add_1AddV2lstm_537/lstm_cell_435/mul:z:0 lstm_537/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_537/lstm_cell_435/Sigmoid_2Sigmoid%lstm_537/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_537/lstm_cell_435/Relu_1Relu lstm_537/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_537/lstm_cell_435/mul_2Mul$lstm_537/lstm_cell_435/Sigmoid_2:y:0+lstm_537/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_537/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_537/TensorArrayV2_1TensorListReserve/lstm_537/TensorArrayV2_1/element_shape:output:0!lstm_537/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_537/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_537/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_537/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_537/whileWhile$lstm_537/while/loop_counter:output:0*lstm_537/while/maximum_iterations:output:0lstm_537/time:output:0!lstm_537/TensorArrayV2_1:handle:0lstm_537/zeros:output:0lstm_537/zeros_1:output:0!lstm_537/strided_slice_1:output:0@lstm_537/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_537_lstm_cell_435_matmul_readvariableop_resource7lstm_537_lstm_cell_435_matmul_1_readvariableop_resource6lstm_537_lstm_cell_435_biasadd_readvariableop_resource*
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
lstm_537_while_body_2643963*'
condR
lstm_537_while_cond_2643962*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_537/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_537/TensorArrayV2Stack/TensorListStackTensorListStacklstm_537/while:output:3Blstm_537/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_537/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_537/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_537/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_537/strided_slice_3StridedSlice4lstm_537/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_537/strided_slice_3/stack:output:0)lstm_537/strided_slice_3/stack_1:output:0)lstm_537/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_537/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_537/transpose_1	Transpose4lstm_537/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_537/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_537/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_538/ShapeShapelstm_537/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_sliceStridedSlicelstm_538/Shape:output:0%lstm_538/strided_slice/stack:output:0'lstm_538/strided_slice/stack_1:output:0'lstm_538/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_538/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_538/zeros/packedPacklstm_538/strided_slice:output:0 lstm_538/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_538/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_538/zerosFilllstm_538/zeros/packed:output:0lstm_538/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_538/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_538/zeros_1/packedPacklstm_538/strided_slice:output:0"lstm_538/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_538/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_538/zeros_1Fill lstm_538/zeros_1/packed:output:0lstm_538/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_538/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_538/transpose	Transposelstm_537/transpose_1:y:0 lstm_538/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_538/Shape_1Shapelstm_538/transpose:y:0*
T0*
_output_shapes
:h
lstm_538/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_538/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_538/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_slice_1StridedSlicelstm_538/Shape_1:output:0'lstm_538/strided_slice_1/stack:output:0)lstm_538/strided_slice_1/stack_1:output:0)lstm_538/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_538/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_538/TensorArrayV2TensorListReserve-lstm_538/TensorArrayV2/element_shape:output:0!lstm_538/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_538/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_538/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_538/transpose:y:0Glstm_538/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_538/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_538/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_538/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_slice_2StridedSlicelstm_538/transpose:y:0'lstm_538/strided_slice_2/stack:output:0)lstm_538/strided_slice_2/stack_1:output:0)lstm_538/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_538/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp5lstm_538_lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_538/lstm_cell_436/MatMulMatMul!lstm_538/strided_slice_2:output:04lstm_538/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp7lstm_538_lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_538/lstm_cell_436/MatMul_1MatMullstm_538/zeros:output:06lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_538/lstm_cell_436/addAddV2'lstm_538/lstm_cell_436/MatMul:product:0)lstm_538/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp6lstm_538_lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_538/lstm_cell_436/BiasAddBiasAddlstm_538/lstm_cell_436/add:z:05lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_538/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_538/lstm_cell_436/splitSplit/lstm_538/lstm_cell_436/split/split_dim:output:0'lstm_538/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_538/lstm_cell_436/SigmoidSigmoid%lstm_538/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_538/lstm_cell_436/Sigmoid_1Sigmoid%lstm_538/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/mulMul$lstm_538/lstm_cell_436/Sigmoid_1:y:0lstm_538/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_538/lstm_cell_436/ReluRelu%lstm_538/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/mul_1Mul"lstm_538/lstm_cell_436/Sigmoid:y:0)lstm_538/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/add_1AddV2lstm_538/lstm_cell_436/mul:z:0 lstm_538/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_538/lstm_cell_436/Sigmoid_2Sigmoid%lstm_538/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_538/lstm_cell_436/Relu_1Relu lstm_538/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_538/lstm_cell_436/mul_2Mul$lstm_538/lstm_cell_436/Sigmoid_2:y:0+lstm_538/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_538/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_538/TensorArrayV2_1TensorListReserve/lstm_538/TensorArrayV2_1/element_shape:output:0!lstm_538/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_538/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_538/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_538/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_538/whileWhile$lstm_538/while/loop_counter:output:0*lstm_538/while/maximum_iterations:output:0lstm_538/time:output:0!lstm_538/TensorArrayV2_1:handle:0lstm_538/zeros:output:0lstm_538/zeros_1:output:0!lstm_538/strided_slice_1:output:0@lstm_538/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_538_lstm_cell_436_matmul_readvariableop_resource7lstm_538_lstm_cell_436_matmul_1_readvariableop_resource6lstm_538_lstm_cell_436_biasadd_readvariableop_resource*
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
lstm_538_while_body_2644102*'
condR
lstm_538_while_cond_2644101*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_538/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_538/TensorArrayV2Stack/TensorListStackTensorListStacklstm_538/while:output:3Blstm_538/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_538/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_538/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_538/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_538/strided_slice_3StridedSlice4lstm_538/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_538/strided_slice_3/stack:output:0)lstm_538/strided_slice_3/stack_1:output:0)lstm_538/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_538/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_538/transpose_1	Transpose4lstm_538/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_538/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_538/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_539/ShapeShapelstm_538/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_sliceStridedSlicelstm_539/Shape:output:0%lstm_539/strided_slice/stack:output:0'lstm_539/strided_slice/stack_1:output:0'lstm_539/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_539/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_539/zeros/packedPacklstm_539/strided_slice:output:0 lstm_539/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_539/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_539/zerosFilllstm_539/zeros/packed:output:0lstm_539/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_539/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_539/zeros_1/packedPacklstm_539/strided_slice:output:0"lstm_539/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_539/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_539/zeros_1Fill lstm_539/zeros_1/packed:output:0lstm_539/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_539/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_539/transpose	Transposelstm_538/transpose_1:y:0 lstm_539/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_539/Shape_1Shapelstm_539/transpose:y:0*
T0*
_output_shapes
:h
lstm_539/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_539/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_539/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_slice_1StridedSlicelstm_539/Shape_1:output:0'lstm_539/strided_slice_1/stack:output:0)lstm_539/strided_slice_1/stack_1:output:0)lstm_539/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_539/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_539/TensorArrayV2TensorListReserve-lstm_539/TensorArrayV2/element_shape:output:0!lstm_539/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_539/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_539/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_539/transpose:y:0Glstm_539/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_539/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_539/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_539/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_slice_2StridedSlicelstm_539/transpose:y:0'lstm_539/strided_slice_2/stack:output:0)lstm_539/strided_slice_2/stack_1:output:0)lstm_539/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_539/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp5lstm_539_lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_539/lstm_cell_437/MatMulMatMul!lstm_539/strided_slice_2:output:04lstm_539/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp7lstm_539_lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_539/lstm_cell_437/MatMul_1MatMullstm_539/zeros:output:06lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_539/lstm_cell_437/addAddV2'lstm_539/lstm_cell_437/MatMul:product:0)lstm_539/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp6lstm_539_lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_539/lstm_cell_437/BiasAddBiasAddlstm_539/lstm_cell_437/add:z:05lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_539/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_539/lstm_cell_437/splitSplit/lstm_539/lstm_cell_437/split/split_dim:output:0'lstm_539/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_539/lstm_cell_437/SigmoidSigmoid%lstm_539/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_539/lstm_cell_437/Sigmoid_1Sigmoid%lstm_539/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/mulMul$lstm_539/lstm_cell_437/Sigmoid_1:y:0lstm_539/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_539/lstm_cell_437/ReluRelu%lstm_539/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/mul_1Mul"lstm_539/lstm_cell_437/Sigmoid:y:0)lstm_539/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/add_1AddV2lstm_539/lstm_cell_437/mul:z:0 lstm_539/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_539/lstm_cell_437/Sigmoid_2Sigmoid%lstm_539/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_539/lstm_cell_437/Relu_1Relu lstm_539/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_539/lstm_cell_437/mul_2Mul$lstm_539/lstm_cell_437/Sigmoid_2:y:0+lstm_539/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_539/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_539/TensorArrayV2_1TensorListReserve/lstm_539/TensorArrayV2_1/element_shape:output:0!lstm_539/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_539/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_539/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_539/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_539/whileWhile$lstm_539/while/loop_counter:output:0*lstm_539/while/maximum_iterations:output:0lstm_539/time:output:0!lstm_539/TensorArrayV2_1:handle:0lstm_539/zeros:output:0lstm_539/zeros_1:output:0!lstm_539/strided_slice_1:output:0@lstm_539/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_539_lstm_cell_437_matmul_readvariableop_resource7lstm_539_lstm_cell_437_matmul_1_readvariableop_resource6lstm_539_lstm_cell_437_biasadd_readvariableop_resource*
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
lstm_539_while_body_2644241*'
condR
lstm_539_while_cond_2644240*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_539/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_539/TensorArrayV2Stack/TensorListStackTensorListStacklstm_539/while:output:3Blstm_539/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_539/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_539/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_539/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_539/strided_slice_3StridedSlice4lstm_539/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_539/strided_slice_3/stack:output:0)lstm_539/strided_slice_3/stack_1:output:0)lstm_539/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_539/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_539/transpose_1	Transpose4lstm_539/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_539/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_539/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_179/MatMul/ReadVariableOpReadVariableOp(dense_179_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_179/MatMulMatMul!lstm_539/strided_slice_3:output:0'dense_179/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_179/BiasAdd/ReadVariableOpReadVariableOp)dense_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_179/BiasAddBiasAdddense_179/MatMul:product:0(dense_179/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_179/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_179/BiasAdd/ReadVariableOp ^dense_179/MatMul/ReadVariableOp.^lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp-^lstm_537/lstm_cell_435/MatMul/ReadVariableOp/^lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp^lstm_537/while.^lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp-^lstm_538/lstm_cell_436/MatMul/ReadVariableOp/^lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp^lstm_538/while.^lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp-^lstm_539/lstm_cell_437/MatMul/ReadVariableOp/^lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp^lstm_539/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_179/BiasAdd/ReadVariableOp dense_179/BiasAdd/ReadVariableOp2B
dense_179/MatMul/ReadVariableOpdense_179/MatMul/ReadVariableOp2^
-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp-lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp2\
,lstm_537/lstm_cell_435/MatMul/ReadVariableOp,lstm_537/lstm_cell_435/MatMul/ReadVariableOp2`
.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp.lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp2 
lstm_537/whilelstm_537/while2^
-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp-lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp2\
,lstm_538/lstm_cell_436/MatMul/ReadVariableOp,lstm_538/lstm_cell_436/MatMul/ReadVariableOp2`
.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp.lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp2 
lstm_538/whilelstm_538/while2^
-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp-lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp2\
,lstm_539/lstm_cell_437/MatMul/ReadVariableOp,lstm_539/lstm_cell_437/MatMul/ReadVariableOp2`
.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp.lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp2 
lstm_539/whilelstm_539/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2645004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_435_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_435_matmul_readvariableop_resource:	?G
4while_lstm_cell_435_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_435_biasadd_readvariableop_resource:	???*while/lstm_cell_435/BiasAdd/ReadVariableOp?)while/lstm_cell_435/MatMul/ReadVariableOp?+while/lstm_cell_435/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_435/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_435/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_435/addAddV2$while/lstm_cell_435/MatMul:product:0&while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_435/BiasAddBiasAddwhile/lstm_cell_435/add:z:02while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_435/splitSplit,while/lstm_cell_435/split/split_dim:output:0$while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_435/SigmoidSigmoid"while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_1Sigmoid"while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mulMul!while/lstm_cell_435/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_435/ReluRelu"while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_1Mulwhile/lstm_cell_435/Sigmoid:y:0&while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/add_1AddV2while/lstm_cell_435/mul:z:0while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_2Sigmoid"while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_435/Relu_1Reluwhile/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_2Mul!while/lstm_cell_435/Sigmoid_2:y:0(while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_435/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_435/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_435/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_435/BiasAdd/ReadVariableOp*^while/lstm_cell_435/MatMul/ReadVariableOp,^while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_435_biasadd_readvariableop_resource5while_lstm_cell_435_biasadd_readvariableop_resource_0"n
4while_lstm_cell_435_matmul_1_readvariableop_resource6while_lstm_cell_435_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_435_matmul_readvariableop_resource4while_lstm_cell_435_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_435/BiasAdd/ReadVariableOp*while/lstm_cell_435/BiasAdd/ReadVariableOp2V
)while/lstm_cell_435/MatMul/ReadVariableOp)while/lstm_cell_435/MatMul/ReadVariableOp2Z
+while/lstm_cell_435/MatMul_1/ReadVariableOp+while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_538_while_cond_2644528.
*lstm_538_while_lstm_538_while_loop_counter4
0lstm_538_while_lstm_538_while_maximum_iterations
lstm_538_while_placeholder 
lstm_538_while_placeholder_1 
lstm_538_while_placeholder_2 
lstm_538_while_placeholder_30
,lstm_538_while_less_lstm_538_strided_slice_1G
Clstm_538_while_lstm_538_while_cond_2644528___redundant_placeholder0G
Clstm_538_while_lstm_538_while_cond_2644528___redundant_placeholder1G
Clstm_538_while_lstm_538_while_cond_2644528___redundant_placeholder2G
Clstm_538_while_lstm_538_while_cond_2644528___redundant_placeholder3
lstm_538_while_identity
?
lstm_538/while/LessLesslstm_538_while_placeholder,lstm_538_while_less_lstm_538_strided_slice_1*
T0*
_output_shapes
: ]
lstm_538/while/IdentityIdentitylstm_538/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_538_while_identity lstm_538/while/Identity:output:0*(
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
while_cond_2646092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2646092___redundant_placeholder05
1while_while_cond_2646092___redundant_placeholder15
1while_while_cond_2646092___redundant_placeholder25
1while_while_cond_2646092___redundant_placeholder3
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
while_cond_2646235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2646235___redundant_placeholder05
1while_while_cond_2646235___redundant_placeholder15
1while_while_cond_2646235___redundant_placeholder25
1while_while_cond_2646235___redundant_placeholder3
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2642789

inputs?
,lstm_cell_435_matmul_readvariableop_resource:	?A
.lstm_cell_435_matmul_1_readvariableop_resource:	d?<
-lstm_cell_435_biasadd_readvariableop_resource:	?
identity??$lstm_cell_435/BiasAdd/ReadVariableOp?#lstm_cell_435/MatMul/ReadVariableOp?%lstm_cell_435/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_435/MatMul/ReadVariableOpReadVariableOp,lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_435/MatMulMatMulstrided_slice_2:output:0+lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_435/MatMul_1MatMulzeros:output:0-lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_435/addAddV2lstm_cell_435/MatMul:product:0 lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_435/BiasAddBiasAddlstm_cell_435/add:z:0,lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_435/splitSplit&lstm_cell_435/split/split_dim:output:0lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_435/SigmoidSigmoidlstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_1Sigmoidlstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_435/mulMullstm_cell_435/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_435/ReluRelulstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_1Mullstm_cell_435/Sigmoid:y:0 lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_435/add_1AddV2lstm_cell_435/mul:z:0lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_2Sigmoidlstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_435/Relu_1Relulstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_2Mullstm_cell_435/Sigmoid_2:y:0"lstm_cell_435/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_435_matmul_readvariableop_resource.lstm_cell_435_matmul_1_readvariableop_resource-lstm_cell_435_biasadd_readvariableop_resource*
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
while_body_2642705*
condR
while_cond_2642704*K
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
NoOpNoOp%^lstm_cell_435/BiasAdd/ReadVariableOp$^lstm_cell_435/MatMul/ReadVariableOp&^lstm_cell_435/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_435/BiasAdd/ReadVariableOp$lstm_cell_435/BiasAdd/ReadVariableOp2J
#lstm_cell_435/MatMul/ReadVariableOp#lstm_cell_435/MatMul/ReadVariableOp2N
%lstm_cell_435/MatMul_1/ReadVariableOp%lstm_cell_435/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_537_layer_call_and_return_conditional_losses_2641931

inputs(
lstm_cell_435_2641849:	?(
lstm_cell_435_2641851:	d?$
lstm_cell_435_2641853:	?
identity??%lstm_cell_435/StatefulPartitionedCall?while;
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
%lstm_cell_435/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_435_2641849lstm_cell_435_2641851lstm_cell_435_2641853*
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641803n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_435_2641849lstm_cell_435_2641851lstm_cell_435_2641853*
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
while_body_2641862*
condR
while_cond_2641861*K
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
NoOpNoOp&^lstm_cell_435/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_435/StatefulPartitionedCall%lstm_cell_435/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2645476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645476___redundant_placeholder05
1while_while_cond_2645476___redundant_placeholder15
1while_while_cond_2645476___redundant_placeholder25
1while_while_cond_2645476___redundant_placeholder3
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
while_cond_2645905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645905___redundant_placeholder05
1while_while_cond_2645905___redundant_placeholder15
1while_while_cond_2645905___redundant_placeholder25
1while_while_cond_2645905___redundant_placeholder3
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
while_cond_2641861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2641861___redundant_placeholder05
1while_while_cond_2641861___redundant_placeholder15
1while_while_cond_2641861___redundant_placeholder25
1while_while_cond_2641861___redundant_placeholder3
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
while_body_2645290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_435_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_435_matmul_readvariableop_resource:	?G
4while_lstm_cell_435_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_435_biasadd_readvariableop_resource:	???*while/lstm_cell_435/BiasAdd/ReadVariableOp?)while/lstm_cell_435/MatMul/ReadVariableOp?+while/lstm_cell_435/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_435/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_435/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_435/addAddV2$while/lstm_cell_435/MatMul:product:0&while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_435/BiasAddBiasAddwhile/lstm_cell_435/add:z:02while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_435/splitSplit,while/lstm_cell_435/split/split_dim:output:0$while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_435/SigmoidSigmoid"while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_1Sigmoid"while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mulMul!while/lstm_cell_435/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_435/ReluRelu"while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_1Mulwhile/lstm_cell_435/Sigmoid:y:0&while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/add_1AddV2while/lstm_cell_435/mul:z:0while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_2Sigmoid"while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_435/Relu_1Reluwhile/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_2Mul!while/lstm_cell_435/Sigmoid_2:y:0(while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_435/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_435/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_435/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_435/BiasAdd/ReadVariableOp*^while/lstm_cell_435/MatMul/ReadVariableOp,^while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_435_biasadd_readvariableop_resource5while_lstm_cell_435_biasadd_readvariableop_resource_0"n
4while_lstm_cell_435_matmul_1_readvariableop_resource6while_lstm_cell_435_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_435_matmul_readvariableop_resource4while_lstm_cell_435_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_435/BiasAdd/ReadVariableOp*while/lstm_cell_435/BiasAdd/ReadVariableOp2V
)while/lstm_cell_435/MatMul/ReadVariableOp)while/lstm_cell_435/MatMul/ReadVariableOp2Z
+while/lstm_cell_435/MatMul_1/ReadVariableOp+while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2643550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2643550___redundant_placeholder05
1while_while_cond_2643550___redundant_placeholder15
1while_while_cond_2643550___redundant_placeholder25
1while_while_cond_2643550___redundant_placeholder3
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
while_body_2645906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_436_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_436_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_436_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_436_matmul_readvariableop_resource:	d?G
4while_lstm_cell_436_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_436_biasadd_readvariableop_resource:	???*while/lstm_cell_436/BiasAdd/ReadVariableOp?)while/lstm_cell_436/MatMul/ReadVariableOp?+while/lstm_cell_436/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_436/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_436_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_436/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_436_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_436/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_436/addAddV2$while/lstm_cell_436/MatMul:product:0&while/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_436_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_436/BiasAddBiasAddwhile/lstm_cell_436/add:z:02while/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_436/splitSplit,while/lstm_cell_436/split/split_dim:output:0$while/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_436/SigmoidSigmoid"while/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_1Sigmoid"while/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mulMul!while/lstm_cell_436/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_436/ReluRelu"while/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_1Mulwhile/lstm_cell_436/Sigmoid:y:0&while/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/add_1AddV2while/lstm_cell_436/mul:z:0while/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_436/Sigmoid_2Sigmoid"while/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_436/Relu_1Reluwhile/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_436/mul_2Mul!while/lstm_cell_436/Sigmoid_2:y:0(while/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_436/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_436/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_436/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_436/BiasAdd/ReadVariableOp*^while/lstm_cell_436/MatMul/ReadVariableOp,^while/lstm_cell_436/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_436_biasadd_readvariableop_resource5while_lstm_cell_436_biasadd_readvariableop_resource_0"n
4while_lstm_cell_436_matmul_1_readvariableop_resource6while_lstm_cell_436_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_436_matmul_readvariableop_resource4while_lstm_cell_436_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_436/BiasAdd/ReadVariableOp*while/lstm_cell_436/BiasAdd/ReadVariableOp2V
)while/lstm_cell_436/MatMul/ReadVariableOp)while/lstm_cell_436/MatMul/ReadVariableOp2Z
+while/lstm_cell_436/MatMul_1/ReadVariableOp+while/lstm_cell_436/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2641671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_435_2641695_0:	?0
while_lstm_cell_435_2641697_0:	d?,
while_lstm_cell_435_2641699_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_435_2641695:	?.
while_lstm_cell_435_2641697:	d?*
while_lstm_cell_435_2641699:	???+while/lstm_cell_435/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_435/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_435_2641695_0while_lstm_cell_435_2641697_0while_lstm_cell_435_2641699_0*
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2641657?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_435/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_435/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_435/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_435/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_435_2641695while_lstm_cell_435_2641695_0"<
while_lstm_cell_435_2641697while_lstm_cell_435_2641697_0"<
while_lstm_cell_435_2641699while_lstm_cell_435_2641699_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_435/StatefulPartitionedCall+while/lstm_cell_435/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_537_layer_call_fn_2644802

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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2643635s
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
?
while_cond_2645289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645289___redundant_placeholder05
1while_while_cond_2645289___redundant_placeholder15
1while_while_cond_2645289___redundant_placeholder25
1while_while_cond_2645289___redundant_placeholder3
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645374

inputs?
,lstm_cell_435_matmul_readvariableop_resource:	?A
.lstm_cell_435_matmul_1_readvariableop_resource:	d?<
-lstm_cell_435_biasadd_readvariableop_resource:	?
identity??$lstm_cell_435/BiasAdd/ReadVariableOp?#lstm_cell_435/MatMul/ReadVariableOp?%lstm_cell_435/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_435/MatMul/ReadVariableOpReadVariableOp,lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_435/MatMulMatMulstrided_slice_2:output:0+lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_435/MatMul_1MatMulzeros:output:0-lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_435/addAddV2lstm_cell_435/MatMul:product:0 lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_435/BiasAddBiasAddlstm_cell_435/add:z:0,lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_435/splitSplit&lstm_cell_435/split/split_dim:output:0lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_435/SigmoidSigmoidlstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_1Sigmoidlstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_435/mulMullstm_cell_435/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_435/ReluRelulstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_1Mullstm_cell_435/Sigmoid:y:0 lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_435/add_1AddV2lstm_cell_435/mul:z:0lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_435/Sigmoid_2Sigmoidlstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_435/Relu_1Relulstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_435/mul_2Mullstm_cell_435/Sigmoid_2:y:0"lstm_cell_435/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_435_matmul_readvariableop_resource.lstm_cell_435_matmul_1_readvariableop_resource-lstm_cell_435_biasadd_readvariableop_resource*
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
while_body_2645290*
condR
while_cond_2645289*K
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
NoOpNoOp%^lstm_cell_435/BiasAdd/ReadVariableOp$^lstm_cell_435/MatMul/ReadVariableOp&^lstm_cell_435/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_435/BiasAdd/ReadVariableOp$lstm_cell_435/BiasAdd/ReadVariableOp2J
#lstm_cell_435/MatMul/ReadVariableOp#lstm_cell_435/MatMul/ReadVariableOp2N
%lstm_cell_435/MatMul_1/ReadVariableOp%lstm_cell_435/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_538_layer_call_fn_2645407

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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642939s
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646177
inputs_0>
,lstm_cell_437_matmul_readvariableop_resource:2(@
.lstm_cell_437_matmul_1_readvariableop_resource:
(;
-lstm_cell_437_biasadd_readvariableop_resource:(
identity??$lstm_cell_437/BiasAdd/ReadVariableOp?#lstm_cell_437/MatMul/ReadVariableOp?%lstm_cell_437/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_437/MatMul/ReadVariableOpReadVariableOp,lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_437/MatMulMatMulstrided_slice_2:output:0+lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_437/MatMul_1MatMulzeros:output:0-lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_437/addAddV2lstm_cell_437/MatMul:product:0 lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_437/BiasAddBiasAddlstm_cell_437/add:z:0,lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_437/splitSplit&lstm_cell_437/split/split_dim:output:0lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_437/SigmoidSigmoidlstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_1Sigmoidlstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_437/mulMullstm_cell_437/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_437/ReluRelulstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_1Mullstm_cell_437/Sigmoid:y:0 lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_437/add_1AddV2lstm_cell_437/mul:z:0lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_437/Sigmoid_2Sigmoidlstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_437/Relu_1Relulstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_437/mul_2Mullstm_cell_437/Sigmoid_2:y:0"lstm_cell_437/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_437_matmul_readvariableop_resource.lstm_cell_437_matmul_1_readvariableop_resource-lstm_cell_437_biasadd_readvariableop_resource*
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
while_body_2646093*
condR
while_cond_2646092*K
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
NoOpNoOp%^lstm_cell_437/BiasAdd/ReadVariableOp$^lstm_cell_437/MatMul/ReadVariableOp&^lstm_cell_437/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_437/BiasAdd/ReadVariableOp$lstm_cell_437/BiasAdd/ReadVariableOp2J
#lstm_cell_437/MatMul/ReadVariableOp#lstm_cell_437/MatMul/ReadVariableOp2N
%lstm_cell_437/MatMul_1/ReadVariableOp%lstm_cell_437/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2642370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2642370___redundant_placeholder05
1while_while_cond_2642370___redundant_placeholder15
1while_while_cond_2642370___redundant_placeholder25
1while_while_cond_2642370___redundant_placeholder3
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642939

inputs?
,lstm_cell_436_matmul_readvariableop_resource:	d?A
.lstm_cell_436_matmul_1_readvariableop_resource:	2?<
-lstm_cell_436_biasadd_readvariableop_resource:	?
identity??$lstm_cell_436/BiasAdd/ReadVariableOp?#lstm_cell_436/MatMul/ReadVariableOp?%lstm_cell_436/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_436/MatMul/ReadVariableOpReadVariableOp,lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_436/MatMulMatMulstrided_slice_2:output:0+lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_436/MatMul_1MatMulzeros:output:0-lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_436/addAddV2lstm_cell_436/MatMul:product:0 lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_436/BiasAddBiasAddlstm_cell_436/add:z:0,lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_436/splitSplit&lstm_cell_436/split/split_dim:output:0lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_436/SigmoidSigmoidlstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_1Sigmoidlstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_436/mulMullstm_cell_436/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_436/ReluRelulstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_1Mullstm_cell_436/Sigmoid:y:0 lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_436/add_1AddV2lstm_cell_436/mul:z:0lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_2Sigmoidlstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_436/Relu_1Relulstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_2Mullstm_cell_436/Sigmoid_2:y:0"lstm_cell_436/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_436_matmul_readvariableop_resource.lstm_cell_436_matmul_1_readvariableop_resource-lstm_cell_436_biasadd_readvariableop_resource*
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
while_body_2642855*
condR
while_cond_2642854*K
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
NoOpNoOp%^lstm_cell_436/BiasAdd/ReadVariableOp$^lstm_cell_436/MatMul/ReadVariableOp&^lstm_cell_436/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_436/BiasAdd/ReadVariableOp$lstm_cell_436/BiasAdd/ReadVariableOp2J
#lstm_cell_436/MatMul/ReadVariableOp#lstm_cell_436/MatMul/ReadVariableOp2N
%lstm_cell_436/MatMul_1/ReadVariableOp%lstm_cell_436/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643815
lstm_537_input#
lstm_537_2643788:	?#
lstm_537_2643790:	d?
lstm_537_2643792:	?#
lstm_538_2643795:	d?#
lstm_538_2643797:	2?
lstm_538_2643799:	?"
lstm_539_2643802:2("
lstm_539_2643804:
(
lstm_539_2643806:(#
dense_179_2643809:

dense_179_2643811:
identity??!dense_179/StatefulPartitionedCall? lstm_537/StatefulPartitionedCall? lstm_538/StatefulPartitionedCall? lstm_539/StatefulPartitionedCall?
 lstm_537/StatefulPartitionedCallStatefulPartitionedCalllstm_537_inputlstm_537_2643788lstm_537_2643790lstm_537_2643792*
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2643635?
 lstm_538/StatefulPartitionedCallStatefulPartitionedCall)lstm_537/StatefulPartitionedCall:output:0lstm_538_2643795lstm_538_2643797lstm_538_2643799*
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2643470?
 lstm_539/StatefulPartitionedCallStatefulPartitionedCall)lstm_538/StatefulPartitionedCall:output:0lstm_539_2643802lstm_539_2643804lstm_539_2643806*
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2643305?
!dense_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_539/StatefulPartitionedCall:output:0dense_179_2643809dense_179_2643811*
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
GPU 2J 8? *O
fJRH
F__inference_dense_179_layer_call_and_return_conditional_losses_2643107y
IdentityIdentity*dense_179/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_179/StatefulPartitionedCall!^lstm_537/StatefulPartitionedCall!^lstm_538/StatefulPartitionedCall!^lstm_539/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_179/StatefulPartitionedCall!dense_179/StatefulPartitionedCall2D
 lstm_537/StatefulPartitionedCall lstm_537/StatefulPartitionedCall2D
 lstm_538/StatefulPartitionedCall lstm_538/StatefulPartitionedCall2D
 lstm_539/StatefulPartitionedCall lstm_539/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_537_input
?8
?
while_body_2646379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_437_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_437_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_437_matmul_readvariableop_resource:2(F
4while_lstm_cell_437_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_437_biasadd_readvariableop_resource:(??*while/lstm_cell_437/BiasAdd/ReadVariableOp?)while/lstm_cell_437/MatMul/ReadVariableOp?+while/lstm_cell_437/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_437/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_437/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_437/addAddV2$while/lstm_cell_437/MatMul:product:0&while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_437/BiasAddBiasAddwhile/lstm_cell_437/add:z:02while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_437/splitSplit,while/lstm_cell_437/split/split_dim:output:0$while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_437/SigmoidSigmoid"while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_1Sigmoid"while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mulMul!while/lstm_cell_437/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_437/ReluRelu"while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_1Mulwhile/lstm_cell_437/Sigmoid:y:0&while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/add_1AddV2while/lstm_cell_437/mul:z:0while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_2Sigmoid"while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_437/Relu_1Reluwhile/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_2Mul!while/lstm_cell_437/Sigmoid_2:y:0(while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_437/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_437/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_437/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_437/BiasAdd/ReadVariableOp*^while/lstm_cell_437/MatMul/ReadVariableOp,^while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_437_biasadd_readvariableop_resource5while_lstm_cell_437_biasadd_readvariableop_resource_0"n
4while_lstm_cell_437_matmul_1_readvariableop_resource6while_lstm_cell_437_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_437_matmul_readvariableop_resource4while_lstm_cell_437_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_437/BiasAdd/ReadVariableOp*while/lstm_cell_437/BiasAdd/ReadVariableOp2V
)while/lstm_cell_437/MatMul/ReadVariableOp)while/lstm_cell_437/MatMul/ReadVariableOp2Z
+while/lstm_cell_437/MatMul_1/ReadVariableOp+while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_179_layer_call_fn_2643904

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
GPU 2J 8? *T
fORM
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643703o
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
??
?
"__inference__wrapped_model_2641590
lstm_537_inputW
Dsequential_179_lstm_537_lstm_cell_435_matmul_readvariableop_resource:	?Y
Fsequential_179_lstm_537_lstm_cell_435_matmul_1_readvariableop_resource:	d?T
Esequential_179_lstm_537_lstm_cell_435_biasadd_readvariableop_resource:	?W
Dsequential_179_lstm_538_lstm_cell_436_matmul_readvariableop_resource:	d?Y
Fsequential_179_lstm_538_lstm_cell_436_matmul_1_readvariableop_resource:	2?T
Esequential_179_lstm_538_lstm_cell_436_biasadd_readvariableop_resource:	?V
Dsequential_179_lstm_539_lstm_cell_437_matmul_readvariableop_resource:2(X
Fsequential_179_lstm_539_lstm_cell_437_matmul_1_readvariableop_resource:
(S
Esequential_179_lstm_539_lstm_cell_437_biasadd_readvariableop_resource:(I
7sequential_179_dense_179_matmul_readvariableop_resource:
F
8sequential_179_dense_179_biasadd_readvariableop_resource:
identity??/sequential_179/dense_179/BiasAdd/ReadVariableOp?.sequential_179/dense_179/MatMul/ReadVariableOp?<sequential_179/lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp?;sequential_179/lstm_537/lstm_cell_435/MatMul/ReadVariableOp?=sequential_179/lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp?sequential_179/lstm_537/while?<sequential_179/lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp?;sequential_179/lstm_538/lstm_cell_436/MatMul/ReadVariableOp?=sequential_179/lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp?sequential_179/lstm_538/while?<sequential_179/lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp?;sequential_179/lstm_539/lstm_cell_437/MatMul/ReadVariableOp?=sequential_179/lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp?sequential_179/lstm_539/while[
sequential_179/lstm_537/ShapeShapelstm_537_input*
T0*
_output_shapes
:u
+sequential_179/lstm_537/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_179/lstm_537/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_179/lstm_537/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_179/lstm_537/strided_sliceStridedSlice&sequential_179/lstm_537/Shape:output:04sequential_179/lstm_537/strided_slice/stack:output:06sequential_179/lstm_537/strided_slice/stack_1:output:06sequential_179/lstm_537/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_179/lstm_537/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_179/lstm_537/zeros/packedPack.sequential_179/lstm_537/strided_slice:output:0/sequential_179/lstm_537/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_179/lstm_537/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_179/lstm_537/zerosFill-sequential_179/lstm_537/zeros/packed:output:0,sequential_179/lstm_537/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_179/lstm_537/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_179/lstm_537/zeros_1/packedPack.sequential_179/lstm_537/strided_slice:output:01sequential_179/lstm_537/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_179/lstm_537/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_179/lstm_537/zeros_1Fill/sequential_179/lstm_537/zeros_1/packed:output:0.sequential_179/lstm_537/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_179/lstm_537/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_179/lstm_537/transpose	Transposelstm_537_input/sequential_179/lstm_537/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_179/lstm_537/Shape_1Shape%sequential_179/lstm_537/transpose:y:0*
T0*
_output_shapes
:w
-sequential_179/lstm_537/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_537/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_179/lstm_537/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_537/strided_slice_1StridedSlice(sequential_179/lstm_537/Shape_1:output:06sequential_179/lstm_537/strided_slice_1/stack:output:08sequential_179/lstm_537/strided_slice_1/stack_1:output:08sequential_179/lstm_537/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_179/lstm_537/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_179/lstm_537/TensorArrayV2TensorListReserve<sequential_179/lstm_537/TensorArrayV2/element_shape:output:00sequential_179/lstm_537/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_179/lstm_537/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_179/lstm_537/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_179/lstm_537/transpose:y:0Vsequential_179/lstm_537/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_179/lstm_537/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_537/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_179/lstm_537/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_537/strided_slice_2StridedSlice%sequential_179/lstm_537/transpose:y:06sequential_179/lstm_537/strided_slice_2/stack:output:08sequential_179/lstm_537/strided_slice_2/stack_1:output:08sequential_179/lstm_537/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_179/lstm_537/lstm_cell_435/MatMul/ReadVariableOpReadVariableOpDsequential_179_lstm_537_lstm_cell_435_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_179/lstm_537/lstm_cell_435/MatMulMatMul0sequential_179/lstm_537/strided_slice_2:output:0Csequential_179/lstm_537/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_179/lstm_537/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOpFsequential_179_lstm_537_lstm_cell_435_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_179/lstm_537/lstm_cell_435/MatMul_1MatMul&sequential_179/lstm_537/zeros:output:0Esequential_179/lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_179/lstm_537/lstm_cell_435/addAddV26sequential_179/lstm_537/lstm_cell_435/MatMul:product:08sequential_179/lstm_537/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_179/lstm_537/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOpEsequential_179_lstm_537_lstm_cell_435_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_179/lstm_537/lstm_cell_435/BiasAddBiasAdd-sequential_179/lstm_537/lstm_cell_435/add:z:0Dsequential_179/lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_179/lstm_537/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_179/lstm_537/lstm_cell_435/splitSplit>sequential_179/lstm_537/lstm_cell_435/split/split_dim:output:06sequential_179/lstm_537/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_179/lstm_537/lstm_cell_435/SigmoidSigmoid4sequential_179/lstm_537/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_179/lstm_537/lstm_cell_435/Sigmoid_1Sigmoid4sequential_179/lstm_537/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_179/lstm_537/lstm_cell_435/mulMul3sequential_179/lstm_537/lstm_cell_435/Sigmoid_1:y:0(sequential_179/lstm_537/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_179/lstm_537/lstm_cell_435/ReluRelu4sequential_179/lstm_537/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_179/lstm_537/lstm_cell_435/mul_1Mul1sequential_179/lstm_537/lstm_cell_435/Sigmoid:y:08sequential_179/lstm_537/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_179/lstm_537/lstm_cell_435/add_1AddV2-sequential_179/lstm_537/lstm_cell_435/mul:z:0/sequential_179/lstm_537/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_179/lstm_537/lstm_cell_435/Sigmoid_2Sigmoid4sequential_179/lstm_537/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_179/lstm_537/lstm_cell_435/Relu_1Relu/sequential_179/lstm_537/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_179/lstm_537/lstm_cell_435/mul_2Mul3sequential_179/lstm_537/lstm_cell_435/Sigmoid_2:y:0:sequential_179/lstm_537/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_179/lstm_537/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_179/lstm_537/TensorArrayV2_1TensorListReserve>sequential_179/lstm_537/TensorArrayV2_1/element_shape:output:00sequential_179/lstm_537/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_179/lstm_537/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_179/lstm_537/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_179/lstm_537/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_179/lstm_537/whileWhile3sequential_179/lstm_537/while/loop_counter:output:09sequential_179/lstm_537/while/maximum_iterations:output:0%sequential_179/lstm_537/time:output:00sequential_179/lstm_537/TensorArrayV2_1:handle:0&sequential_179/lstm_537/zeros:output:0(sequential_179/lstm_537/zeros_1:output:00sequential_179/lstm_537/strided_slice_1:output:0Osequential_179/lstm_537/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_179_lstm_537_lstm_cell_435_matmul_readvariableop_resourceFsequential_179_lstm_537_lstm_cell_435_matmul_1_readvariableop_resourceEsequential_179_lstm_537_lstm_cell_435_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_179_lstm_537_while_body_2641222*6
cond.R,
*sequential_179_lstm_537_while_cond_2641221*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_179/lstm_537/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_179/lstm_537/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_179/lstm_537/while:output:3Qsequential_179/lstm_537/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_179/lstm_537/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_179/lstm_537/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_537/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_537/strided_slice_3StridedSliceCsequential_179/lstm_537/TensorArrayV2Stack/TensorListStack:tensor:06sequential_179/lstm_537/strided_slice_3/stack:output:08sequential_179/lstm_537/strided_slice_3/stack_1:output:08sequential_179/lstm_537/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_179/lstm_537/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_179/lstm_537/transpose_1	TransposeCsequential_179/lstm_537/TensorArrayV2Stack/TensorListStack:tensor:01sequential_179/lstm_537/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_179/lstm_537/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_179/lstm_538/ShapeShape'sequential_179/lstm_537/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_179/lstm_538/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_179/lstm_538/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_179/lstm_538/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_179/lstm_538/strided_sliceStridedSlice&sequential_179/lstm_538/Shape:output:04sequential_179/lstm_538/strided_slice/stack:output:06sequential_179/lstm_538/strided_slice/stack_1:output:06sequential_179/lstm_538/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_179/lstm_538/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_179/lstm_538/zeros/packedPack.sequential_179/lstm_538/strided_slice:output:0/sequential_179/lstm_538/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_179/lstm_538/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_179/lstm_538/zerosFill-sequential_179/lstm_538/zeros/packed:output:0,sequential_179/lstm_538/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_179/lstm_538/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_179/lstm_538/zeros_1/packedPack.sequential_179/lstm_538/strided_slice:output:01sequential_179/lstm_538/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_179/lstm_538/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_179/lstm_538/zeros_1Fill/sequential_179/lstm_538/zeros_1/packed:output:0.sequential_179/lstm_538/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_179/lstm_538/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_179/lstm_538/transpose	Transpose'sequential_179/lstm_537/transpose_1:y:0/sequential_179/lstm_538/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_179/lstm_538/Shape_1Shape%sequential_179/lstm_538/transpose:y:0*
T0*
_output_shapes
:w
-sequential_179/lstm_538/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_538/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_179/lstm_538/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_538/strided_slice_1StridedSlice(sequential_179/lstm_538/Shape_1:output:06sequential_179/lstm_538/strided_slice_1/stack:output:08sequential_179/lstm_538/strided_slice_1/stack_1:output:08sequential_179/lstm_538/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_179/lstm_538/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_179/lstm_538/TensorArrayV2TensorListReserve<sequential_179/lstm_538/TensorArrayV2/element_shape:output:00sequential_179/lstm_538/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_179/lstm_538/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_179/lstm_538/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_179/lstm_538/transpose:y:0Vsequential_179/lstm_538/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_179/lstm_538/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_538/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_179/lstm_538/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_538/strided_slice_2StridedSlice%sequential_179/lstm_538/transpose:y:06sequential_179/lstm_538/strided_slice_2/stack:output:08sequential_179/lstm_538/strided_slice_2/stack_1:output:08sequential_179/lstm_538/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_179/lstm_538/lstm_cell_436/MatMul/ReadVariableOpReadVariableOpDsequential_179_lstm_538_lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_179/lstm_538/lstm_cell_436/MatMulMatMul0sequential_179/lstm_538/strided_slice_2:output:0Csequential_179/lstm_538/lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_179/lstm_538/lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOpFsequential_179_lstm_538_lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_179/lstm_538/lstm_cell_436/MatMul_1MatMul&sequential_179/lstm_538/zeros:output:0Esequential_179/lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_179/lstm_538/lstm_cell_436/addAddV26sequential_179/lstm_538/lstm_cell_436/MatMul:product:08sequential_179/lstm_538/lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_179/lstm_538/lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOpEsequential_179_lstm_538_lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_179/lstm_538/lstm_cell_436/BiasAddBiasAdd-sequential_179/lstm_538/lstm_cell_436/add:z:0Dsequential_179/lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_179/lstm_538/lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_179/lstm_538/lstm_cell_436/splitSplit>sequential_179/lstm_538/lstm_cell_436/split/split_dim:output:06sequential_179/lstm_538/lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_179/lstm_538/lstm_cell_436/SigmoidSigmoid4sequential_179/lstm_538/lstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_179/lstm_538/lstm_cell_436/Sigmoid_1Sigmoid4sequential_179/lstm_538/lstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_179/lstm_538/lstm_cell_436/mulMul3sequential_179/lstm_538/lstm_cell_436/Sigmoid_1:y:0(sequential_179/lstm_538/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_179/lstm_538/lstm_cell_436/ReluRelu4sequential_179/lstm_538/lstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_179/lstm_538/lstm_cell_436/mul_1Mul1sequential_179/lstm_538/lstm_cell_436/Sigmoid:y:08sequential_179/lstm_538/lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_179/lstm_538/lstm_cell_436/add_1AddV2-sequential_179/lstm_538/lstm_cell_436/mul:z:0/sequential_179/lstm_538/lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_179/lstm_538/lstm_cell_436/Sigmoid_2Sigmoid4sequential_179/lstm_538/lstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_179/lstm_538/lstm_cell_436/Relu_1Relu/sequential_179/lstm_538/lstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_179/lstm_538/lstm_cell_436/mul_2Mul3sequential_179/lstm_538/lstm_cell_436/Sigmoid_2:y:0:sequential_179/lstm_538/lstm_cell_436/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_179/lstm_538/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_179/lstm_538/TensorArrayV2_1TensorListReserve>sequential_179/lstm_538/TensorArrayV2_1/element_shape:output:00sequential_179/lstm_538/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_179/lstm_538/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_179/lstm_538/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_179/lstm_538/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_179/lstm_538/whileWhile3sequential_179/lstm_538/while/loop_counter:output:09sequential_179/lstm_538/while/maximum_iterations:output:0%sequential_179/lstm_538/time:output:00sequential_179/lstm_538/TensorArrayV2_1:handle:0&sequential_179/lstm_538/zeros:output:0(sequential_179/lstm_538/zeros_1:output:00sequential_179/lstm_538/strided_slice_1:output:0Osequential_179/lstm_538/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_179_lstm_538_lstm_cell_436_matmul_readvariableop_resourceFsequential_179_lstm_538_lstm_cell_436_matmul_1_readvariableop_resourceEsequential_179_lstm_538_lstm_cell_436_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_179_lstm_538_while_body_2641361*6
cond.R,
*sequential_179_lstm_538_while_cond_2641360*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_179/lstm_538/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_179/lstm_538/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_179/lstm_538/while:output:3Qsequential_179/lstm_538/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_179/lstm_538/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_179/lstm_538/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_538/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_538/strided_slice_3StridedSliceCsequential_179/lstm_538/TensorArrayV2Stack/TensorListStack:tensor:06sequential_179/lstm_538/strided_slice_3/stack:output:08sequential_179/lstm_538/strided_slice_3/stack_1:output:08sequential_179/lstm_538/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_179/lstm_538/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_179/lstm_538/transpose_1	TransposeCsequential_179/lstm_538/TensorArrayV2Stack/TensorListStack:tensor:01sequential_179/lstm_538/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_179/lstm_538/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_179/lstm_539/ShapeShape'sequential_179/lstm_538/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_179/lstm_539/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_179/lstm_539/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_179/lstm_539/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_179/lstm_539/strided_sliceStridedSlice&sequential_179/lstm_539/Shape:output:04sequential_179/lstm_539/strided_slice/stack:output:06sequential_179/lstm_539/strided_slice/stack_1:output:06sequential_179/lstm_539/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_179/lstm_539/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_179/lstm_539/zeros/packedPack.sequential_179/lstm_539/strided_slice:output:0/sequential_179/lstm_539/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_179/lstm_539/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_179/lstm_539/zerosFill-sequential_179/lstm_539/zeros/packed:output:0,sequential_179/lstm_539/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_179/lstm_539/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_179/lstm_539/zeros_1/packedPack.sequential_179/lstm_539/strided_slice:output:01sequential_179/lstm_539/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_179/lstm_539/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_179/lstm_539/zeros_1Fill/sequential_179/lstm_539/zeros_1/packed:output:0.sequential_179/lstm_539/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_179/lstm_539/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_179/lstm_539/transpose	Transpose'sequential_179/lstm_538/transpose_1:y:0/sequential_179/lstm_539/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_179/lstm_539/Shape_1Shape%sequential_179/lstm_539/transpose:y:0*
T0*
_output_shapes
:w
-sequential_179/lstm_539/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_539/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_179/lstm_539/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_539/strided_slice_1StridedSlice(sequential_179/lstm_539/Shape_1:output:06sequential_179/lstm_539/strided_slice_1/stack:output:08sequential_179/lstm_539/strided_slice_1/stack_1:output:08sequential_179/lstm_539/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_179/lstm_539/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_179/lstm_539/TensorArrayV2TensorListReserve<sequential_179/lstm_539/TensorArrayV2/element_shape:output:00sequential_179/lstm_539/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_179/lstm_539/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_179/lstm_539/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_179/lstm_539/transpose:y:0Vsequential_179/lstm_539/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_179/lstm_539/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_539/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_179/lstm_539/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_539/strided_slice_2StridedSlice%sequential_179/lstm_539/transpose:y:06sequential_179/lstm_539/strided_slice_2/stack:output:08sequential_179/lstm_539/strided_slice_2/stack_1:output:08sequential_179/lstm_539/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_179/lstm_539/lstm_cell_437/MatMul/ReadVariableOpReadVariableOpDsequential_179_lstm_539_lstm_cell_437_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_179/lstm_539/lstm_cell_437/MatMulMatMul0sequential_179/lstm_539/strided_slice_2:output:0Csequential_179/lstm_539/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_179/lstm_539/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOpFsequential_179_lstm_539_lstm_cell_437_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_179/lstm_539/lstm_cell_437/MatMul_1MatMul&sequential_179/lstm_539/zeros:output:0Esequential_179/lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_179/lstm_539/lstm_cell_437/addAddV26sequential_179/lstm_539/lstm_cell_437/MatMul:product:08sequential_179/lstm_539/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_179/lstm_539/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOpEsequential_179_lstm_539_lstm_cell_437_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_179/lstm_539/lstm_cell_437/BiasAddBiasAdd-sequential_179/lstm_539/lstm_cell_437/add:z:0Dsequential_179/lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_179/lstm_539/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_179/lstm_539/lstm_cell_437/splitSplit>sequential_179/lstm_539/lstm_cell_437/split/split_dim:output:06sequential_179/lstm_539/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_179/lstm_539/lstm_cell_437/SigmoidSigmoid4sequential_179/lstm_539/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_179/lstm_539/lstm_cell_437/Sigmoid_1Sigmoid4sequential_179/lstm_539/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_179/lstm_539/lstm_cell_437/mulMul3sequential_179/lstm_539/lstm_cell_437/Sigmoid_1:y:0(sequential_179/lstm_539/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_179/lstm_539/lstm_cell_437/ReluRelu4sequential_179/lstm_539/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_179/lstm_539/lstm_cell_437/mul_1Mul1sequential_179/lstm_539/lstm_cell_437/Sigmoid:y:08sequential_179/lstm_539/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_179/lstm_539/lstm_cell_437/add_1AddV2-sequential_179/lstm_539/lstm_cell_437/mul:z:0/sequential_179/lstm_539/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_179/lstm_539/lstm_cell_437/Sigmoid_2Sigmoid4sequential_179/lstm_539/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_179/lstm_539/lstm_cell_437/Relu_1Relu/sequential_179/lstm_539/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_179/lstm_539/lstm_cell_437/mul_2Mul3sequential_179/lstm_539/lstm_cell_437/Sigmoid_2:y:0:sequential_179/lstm_539/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_179/lstm_539/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_179/lstm_539/TensorArrayV2_1TensorListReserve>sequential_179/lstm_539/TensorArrayV2_1/element_shape:output:00sequential_179/lstm_539/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_179/lstm_539/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_179/lstm_539/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_179/lstm_539/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_179/lstm_539/whileWhile3sequential_179/lstm_539/while/loop_counter:output:09sequential_179/lstm_539/while/maximum_iterations:output:0%sequential_179/lstm_539/time:output:00sequential_179/lstm_539/TensorArrayV2_1:handle:0&sequential_179/lstm_539/zeros:output:0(sequential_179/lstm_539/zeros_1:output:00sequential_179/lstm_539/strided_slice_1:output:0Osequential_179/lstm_539/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_179_lstm_539_lstm_cell_437_matmul_readvariableop_resourceFsequential_179_lstm_539_lstm_cell_437_matmul_1_readvariableop_resourceEsequential_179_lstm_539_lstm_cell_437_biasadd_readvariableop_resource*
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
_stateful_parallelism( *6
body.R,
*sequential_179_lstm_539_while_body_2641500*6
cond.R,
*sequential_179_lstm_539_while_cond_2641499*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_179/lstm_539/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_179/lstm_539/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_179/lstm_539/while:output:3Qsequential_179/lstm_539/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_179/lstm_539/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_179/lstm_539/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_179/lstm_539/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_179/lstm_539/strided_slice_3StridedSliceCsequential_179/lstm_539/TensorArrayV2Stack/TensorListStack:tensor:06sequential_179/lstm_539/strided_slice_3/stack:output:08sequential_179/lstm_539/strided_slice_3/stack_1:output:08sequential_179/lstm_539/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_179/lstm_539/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_179/lstm_539/transpose_1	TransposeCsequential_179/lstm_539/TensorArrayV2Stack/TensorListStack:tensor:01sequential_179/lstm_539/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_179/lstm_539/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_179/dense_179/MatMul/ReadVariableOpReadVariableOp7sequential_179_dense_179_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_179/dense_179/MatMulMatMul0sequential_179/lstm_539/strided_slice_3:output:06sequential_179/dense_179/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_179/dense_179/BiasAdd/ReadVariableOpReadVariableOp8sequential_179_dense_179_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_179/dense_179/BiasAddBiasAdd)sequential_179/dense_179/MatMul:product:07sequential_179/dense_179/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_179/dense_179/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_179/dense_179/BiasAdd/ReadVariableOp/^sequential_179/dense_179/MatMul/ReadVariableOp=^sequential_179/lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp<^sequential_179/lstm_537/lstm_cell_435/MatMul/ReadVariableOp>^sequential_179/lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp^sequential_179/lstm_537/while=^sequential_179/lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp<^sequential_179/lstm_538/lstm_cell_436/MatMul/ReadVariableOp>^sequential_179/lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp^sequential_179/lstm_538/while=^sequential_179/lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp<^sequential_179/lstm_539/lstm_cell_437/MatMul/ReadVariableOp>^sequential_179/lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp^sequential_179/lstm_539/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_179/dense_179/BiasAdd/ReadVariableOp/sequential_179/dense_179/BiasAdd/ReadVariableOp2`
.sequential_179/dense_179/MatMul/ReadVariableOp.sequential_179/dense_179/MatMul/ReadVariableOp2|
<sequential_179/lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp<sequential_179/lstm_537/lstm_cell_435/BiasAdd/ReadVariableOp2z
;sequential_179/lstm_537/lstm_cell_435/MatMul/ReadVariableOp;sequential_179/lstm_537/lstm_cell_435/MatMul/ReadVariableOp2~
=sequential_179/lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp=sequential_179/lstm_537/lstm_cell_435/MatMul_1/ReadVariableOp2>
sequential_179/lstm_537/whilesequential_179/lstm_537/while2|
<sequential_179/lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp<sequential_179/lstm_538/lstm_cell_436/BiasAdd/ReadVariableOp2z
;sequential_179/lstm_538/lstm_cell_436/MatMul/ReadVariableOp;sequential_179/lstm_538/lstm_cell_436/MatMul/ReadVariableOp2~
=sequential_179/lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp=sequential_179/lstm_538/lstm_cell_436/MatMul_1/ReadVariableOp2>
sequential_179/lstm_538/whilesequential_179/lstm_538/while2|
<sequential_179/lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp<sequential_179/lstm_539/lstm_cell_437/BiasAdd/ReadVariableOp2z
;sequential_179/lstm_539/lstm_cell_437/MatMul/ReadVariableOp;sequential_179/lstm_539/lstm_cell_437/MatMul/ReadVariableOp2~
=sequential_179/lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp=sequential_179/lstm_539/lstm_cell_437/MatMul_1/ReadVariableOp2>
sequential_179/lstm_539/whilesequential_179/lstm_539/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_537_input
?#
?
while_body_2642212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_436_2642236_0:	d?0
while_lstm_cell_436_2642238_0:	2?,
while_lstm_cell_436_2642240_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_436_2642236:	d?.
while_lstm_cell_436_2642238:	2?*
while_lstm_cell_436_2642240:	???+while/lstm_cell_436/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_436/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_436_2642236_0while_lstm_cell_436_2642238_0while_lstm_cell_436_2642240_0*
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642153?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_436/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_436/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_436/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_436/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_436_2642236while_lstm_cell_436_2642236_0"<
while_lstm_cell_436_2642238while_lstm_cell_436_2642238_0"<
while_lstm_cell_436_2642240while_lstm_cell_436_2642240_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_436/StatefulPartitionedCall+while/lstm_cell_436/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645847

inputs?
,lstm_cell_436_matmul_readvariableop_resource:	d?A
.lstm_cell_436_matmul_1_readvariableop_resource:	2?<
-lstm_cell_436_biasadd_readvariableop_resource:	?
identity??$lstm_cell_436/BiasAdd/ReadVariableOp?#lstm_cell_436/MatMul/ReadVariableOp?%lstm_cell_436/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_436/MatMul/ReadVariableOpReadVariableOp,lstm_cell_436_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_436/MatMulMatMulstrided_slice_2:output:0+lstm_cell_436/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_436/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_436_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_436/MatMul_1MatMulzeros:output:0-lstm_cell_436/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_436/addAddV2lstm_cell_436/MatMul:product:0 lstm_cell_436/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_436/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_436_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_436/BiasAddBiasAddlstm_cell_436/add:z:0,lstm_cell_436/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_436/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_436/splitSplit&lstm_cell_436/split/split_dim:output:0lstm_cell_436/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_436/SigmoidSigmoidlstm_cell_436/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_1Sigmoidlstm_cell_436/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_436/mulMullstm_cell_436/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_436/ReluRelulstm_cell_436/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_1Mullstm_cell_436/Sigmoid:y:0 lstm_cell_436/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_436/add_1AddV2lstm_cell_436/mul:z:0lstm_cell_436/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_436/Sigmoid_2Sigmoidlstm_cell_436/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_436/Relu_1Relulstm_cell_436/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_436/mul_2Mullstm_cell_436/Sigmoid_2:y:0"lstm_cell_436/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_436_matmul_readvariableop_resource.lstm_cell_436_matmul_1_readvariableop_resource-lstm_cell_436_biasadd_readvariableop_resource*
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
while_body_2645763*
condR
while_cond_2645762*K
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
NoOpNoOp%^lstm_cell_436/BiasAdd/ReadVariableOp$^lstm_cell_436/MatMul/ReadVariableOp&^lstm_cell_436/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_436/BiasAdd/ReadVariableOp$lstm_cell_436/BiasAdd/ReadVariableOp2J
#lstm_cell_436/MatMul/ReadVariableOp#lstm_cell_436/MatMul/ReadVariableOp2N
%lstm_cell_436/MatMul_1/ReadVariableOp%lstm_cell_436/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_179_layer_call_and_return_conditional_losses_2643107

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
*__inference_lstm_538_layer_call_fn_2645396
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2642281|
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
while_cond_2643385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2643385___redundant_placeholder05
1while_while_cond_2643385___redundant_placeholder15
1while_while_cond_2643385___redundant_placeholder25
1while_while_cond_2643385___redundant_placeholder3
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
while_body_2646522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_437_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_437_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_437_matmul_readvariableop_resource:2(F
4while_lstm_cell_437_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_437_biasadd_readvariableop_resource:(??*while/lstm_cell_437/BiasAdd/ReadVariableOp?)while/lstm_cell_437/MatMul/ReadVariableOp?+while/lstm_cell_437/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_437/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_437/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_437/addAddV2$while/lstm_cell_437/MatMul:product:0&while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_437/BiasAddBiasAddwhile/lstm_cell_437/add:z:02while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_437/splitSplit,while/lstm_cell_437/split/split_dim:output:0$while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_437/SigmoidSigmoid"while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_1Sigmoid"while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mulMul!while/lstm_cell_437/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_437/ReluRelu"while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_1Mulwhile/lstm_cell_437/Sigmoid:y:0&while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/add_1AddV2while/lstm_cell_437/mul:z:0while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_2Sigmoid"while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_437/Relu_1Reluwhile/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_2Mul!while/lstm_cell_437/Sigmoid_2:y:0(while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_437/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_437/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_437/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_437/BiasAdd/ReadVariableOp*^while/lstm_cell_437/MatMul/ReadVariableOp,^while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_437_biasadd_readvariableop_resource5while_lstm_cell_437_biasadd_readvariableop_resource_0"n
4while_lstm_cell_437_matmul_1_readvariableop_resource6while_lstm_cell_437_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_437_matmul_readvariableop_resource4while_lstm_cell_437_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_437/BiasAdd/ReadVariableOp*while/lstm_cell_437/BiasAdd/ReadVariableOp2V
)while/lstm_cell_437/MatMul/ReadVariableOp)while/lstm_cell_437/MatMul/ReadVariableOp2Z
+while/lstm_cell_437/MatMul_1/ReadVariableOp+while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_537_layer_call_fn_2644769
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2641740|
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
?
/__inference_lstm_cell_436_layer_call_fn_2646740

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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2642007o
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
?
*sequential_179_lstm_538_while_cond_2641360L
Hsequential_179_lstm_538_while_sequential_179_lstm_538_while_loop_counterR
Nsequential_179_lstm_538_while_sequential_179_lstm_538_while_maximum_iterations-
)sequential_179_lstm_538_while_placeholder/
+sequential_179_lstm_538_while_placeholder_1/
+sequential_179_lstm_538_while_placeholder_2/
+sequential_179_lstm_538_while_placeholder_3N
Jsequential_179_lstm_538_while_less_sequential_179_lstm_538_strided_slice_1e
asequential_179_lstm_538_while_sequential_179_lstm_538_while_cond_2641360___redundant_placeholder0e
asequential_179_lstm_538_while_sequential_179_lstm_538_while_cond_2641360___redundant_placeholder1e
asequential_179_lstm_538_while_sequential_179_lstm_538_while_cond_2641360___redundant_placeholder2e
asequential_179_lstm_538_while_sequential_179_lstm_538_while_cond_2641360___redundant_placeholder3*
&sequential_179_lstm_538_while_identity
?
"sequential_179/lstm_538/while/LessLess)sequential_179_lstm_538_while_placeholderJsequential_179_lstm_538_while_less_sequential_179_lstm_538_strided_slice_1*
T0*
_output_shapes
: {
&sequential_179/lstm_538/while/IdentityIdentity&sequential_179/lstm_538/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_179_lstm_538_while_identity/sequential_179/lstm_538/while/Identity:output:0*(
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
while_body_2642705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_435_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_435_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_435_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_435_matmul_readvariableop_resource:	?G
4while_lstm_cell_435_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_435_biasadd_readvariableop_resource:	???*while/lstm_cell_435/BiasAdd/ReadVariableOp?)while/lstm_cell_435/MatMul/ReadVariableOp?+while/lstm_cell_435/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_435/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_435_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_435/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_435/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_435/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_435_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_435/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_435/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_435/addAddV2$while/lstm_cell_435/MatMul:product:0&while/lstm_cell_435/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_435/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_435_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_435/BiasAddBiasAddwhile/lstm_cell_435/add:z:02while/lstm_cell_435/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_435/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_435/splitSplit,while/lstm_cell_435/split/split_dim:output:0$while/lstm_cell_435/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_435/SigmoidSigmoid"while/lstm_cell_435/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_1Sigmoid"while/lstm_cell_435/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mulMul!while/lstm_cell_435/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_435/ReluRelu"while/lstm_cell_435/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_1Mulwhile/lstm_cell_435/Sigmoid:y:0&while/lstm_cell_435/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/add_1AddV2while/lstm_cell_435/mul:z:0while/lstm_cell_435/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_435/Sigmoid_2Sigmoid"while/lstm_cell_435/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_435/Relu_1Reluwhile/lstm_cell_435/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_435/mul_2Mul!while/lstm_cell_435/Sigmoid_2:y:0(while/lstm_cell_435/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_435/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_435/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_435/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_435/BiasAdd/ReadVariableOp*^while/lstm_cell_435/MatMul/ReadVariableOp,^while/lstm_cell_435/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_435_biasadd_readvariableop_resource5while_lstm_cell_435_biasadd_readvariableop_resource_0"n
4while_lstm_cell_435_matmul_1_readvariableop_resource6while_lstm_cell_435_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_435_matmul_readvariableop_resource4while_lstm_cell_435_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_435/BiasAdd/ReadVariableOp*while/lstm_cell_435/BiasAdd/ReadVariableOp2V
)while/lstm_cell_435/MatMul/ReadVariableOp)while/lstm_cell_435/MatMul/ReadVariableOp2Z
+while/lstm_cell_435/MatMul_1/ReadVariableOp+while/lstm_cell_435/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2642020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2642020___redundant_placeholder05
1while_while_cond_2642020___redundant_placeholder15
1while_while_cond_2642020___redundant_placeholder25
1while_while_cond_2642020___redundant_placeholder3
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
while_cond_2645762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645762___redundant_placeholder05
1while_while_cond_2645762___redundant_placeholder15
1while_while_cond_2645762___redundant_placeholder25
1while_while_cond_2645762___redundant_placeholder3
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
??
?
#__inference__traced_restore_2647192
file_prefix3
!assignvariableop_dense_179_kernel:
/
!assignvariableop_1_dense_179_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_537_lstm_cell_537_kernel:	?M
:assignvariableop_8_lstm_537_lstm_cell_537_recurrent_kernel:	d?=
.assignvariableop_9_lstm_537_lstm_cell_537_bias:	?D
1assignvariableop_10_lstm_538_lstm_cell_538_kernel:	d?N
;assignvariableop_11_lstm_538_lstm_cell_538_recurrent_kernel:	2?>
/assignvariableop_12_lstm_538_lstm_cell_538_bias:	?C
1assignvariableop_13_lstm_539_lstm_cell_539_kernel:2(M
;assignvariableop_14_lstm_539_lstm_cell_539_recurrent_kernel:
(=
/assignvariableop_15_lstm_539_lstm_cell_539_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_179_kernel_m:
7
)assignvariableop_19_adam_dense_179_bias_m:K
8assignvariableop_20_adam_lstm_537_lstm_cell_537_kernel_m:	?U
Bassignvariableop_21_adam_lstm_537_lstm_cell_537_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_537_lstm_cell_537_bias_m:	?K
8assignvariableop_23_adam_lstm_538_lstm_cell_538_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_538_lstm_cell_538_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_538_lstm_cell_538_bias_m:	?J
8assignvariableop_26_adam_lstm_539_lstm_cell_539_kernel_m:2(T
Bassignvariableop_27_adam_lstm_539_lstm_cell_539_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_539_lstm_cell_539_bias_m:(=
+assignvariableop_29_adam_dense_179_kernel_v:
7
)assignvariableop_30_adam_dense_179_bias_v:K
8assignvariableop_31_adam_lstm_537_lstm_cell_537_kernel_v:	?U
Bassignvariableop_32_adam_lstm_537_lstm_cell_537_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_537_lstm_cell_537_bias_v:	?K
8assignvariableop_34_adam_lstm_538_lstm_cell_538_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_538_lstm_cell_538_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_538_lstm_cell_538_bias_v:	?J
8assignvariableop_37_adam_lstm_539_lstm_cell_539_kernel_v:2(T
Bassignvariableop_38_adam_lstm_539_lstm_cell_539_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_539_lstm_cell_539_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_179_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_179_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_537_lstm_cell_537_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_537_lstm_cell_537_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_537_lstm_cell_537_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_538_lstm_cell_538_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_538_lstm_cell_538_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_538_lstm_cell_538_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_539_lstm_cell_539_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_539_lstm_cell_539_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_539_lstm_cell_539_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_179_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_179_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_537_lstm_cell_537_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_537_lstm_cell_537_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_537_lstm_cell_537_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_538_lstm_cell_538_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_538_lstm_cell_538_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_538_lstm_cell_538_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_539_lstm_cell_539_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_539_lstm_cell_539_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_539_lstm_cell_539_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_179_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_179_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_537_lstm_cell_537_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_537_lstm_cell_537_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_537_lstm_cell_537_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_538_lstm_cell_538_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_538_lstm_cell_538_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_538_lstm_cell_538_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_539_lstm_cell_539_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_539_lstm_cell_539_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_539_lstm_cell_539_bias_vIdentity_39:output:0"/device:CPU:0*
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
?W
?
 __inference__traced_save_2647062
file_prefix/
+savev2_dense_179_kernel_read_readvariableop-
)savev2_dense_179_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_537_lstm_cell_537_kernel_read_readvariableopF
Bsavev2_lstm_537_lstm_cell_537_recurrent_kernel_read_readvariableop:
6savev2_lstm_537_lstm_cell_537_bias_read_readvariableop<
8savev2_lstm_538_lstm_cell_538_kernel_read_readvariableopF
Bsavev2_lstm_538_lstm_cell_538_recurrent_kernel_read_readvariableop:
6savev2_lstm_538_lstm_cell_538_bias_read_readvariableop<
8savev2_lstm_539_lstm_cell_539_kernel_read_readvariableopF
Bsavev2_lstm_539_lstm_cell_539_recurrent_kernel_read_readvariableop:
6savev2_lstm_539_lstm_cell_539_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_179_kernel_m_read_readvariableop4
0savev2_adam_dense_179_bias_m_read_readvariableopC
?savev2_adam_lstm_537_lstm_cell_537_kernel_m_read_readvariableopM
Isavev2_adam_lstm_537_lstm_cell_537_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_537_lstm_cell_537_bias_m_read_readvariableopC
?savev2_adam_lstm_538_lstm_cell_538_kernel_m_read_readvariableopM
Isavev2_adam_lstm_538_lstm_cell_538_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_538_lstm_cell_538_bias_m_read_readvariableopC
?savev2_adam_lstm_539_lstm_cell_539_kernel_m_read_readvariableopM
Isavev2_adam_lstm_539_lstm_cell_539_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_539_lstm_cell_539_bias_m_read_readvariableop6
2savev2_adam_dense_179_kernel_v_read_readvariableop4
0savev2_adam_dense_179_bias_v_read_readvariableopC
?savev2_adam_lstm_537_lstm_cell_537_kernel_v_read_readvariableopM
Isavev2_adam_lstm_537_lstm_cell_537_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_537_lstm_cell_537_bias_v_read_readvariableopC
?savev2_adam_lstm_538_lstm_cell_538_kernel_v_read_readvariableopM
Isavev2_adam_lstm_538_lstm_cell_538_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_538_lstm_cell_538_bias_v_read_readvariableopC
?savev2_adam_lstm_539_lstm_cell_539_kernel_v_read_readvariableopM
Isavev2_adam_lstm_539_lstm_cell_539_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_539_lstm_cell_539_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_179_kernel_read_readvariableop)savev2_dense_179_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_537_lstm_cell_537_kernel_read_readvariableopBsavev2_lstm_537_lstm_cell_537_recurrent_kernel_read_readvariableop6savev2_lstm_537_lstm_cell_537_bias_read_readvariableop8savev2_lstm_538_lstm_cell_538_kernel_read_readvariableopBsavev2_lstm_538_lstm_cell_538_recurrent_kernel_read_readvariableop6savev2_lstm_538_lstm_cell_538_bias_read_readvariableop8savev2_lstm_539_lstm_cell_539_kernel_read_readvariableopBsavev2_lstm_539_lstm_cell_539_recurrent_kernel_read_readvariableop6savev2_lstm_539_lstm_cell_539_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_179_kernel_m_read_readvariableop0savev2_adam_dense_179_bias_m_read_readvariableop?savev2_adam_lstm_537_lstm_cell_537_kernel_m_read_readvariableopIsavev2_adam_lstm_537_lstm_cell_537_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_537_lstm_cell_537_bias_m_read_readvariableop?savev2_adam_lstm_538_lstm_cell_538_kernel_m_read_readvariableopIsavev2_adam_lstm_538_lstm_cell_538_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_538_lstm_cell_538_bias_m_read_readvariableop?savev2_adam_lstm_539_lstm_cell_539_kernel_m_read_readvariableopIsavev2_adam_lstm_539_lstm_cell_539_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_539_lstm_cell_539_bias_m_read_readvariableop2savev2_adam_dense_179_kernel_v_read_readvariableop0savev2_adam_dense_179_bias_v_read_readvariableop?savev2_adam_lstm_537_lstm_cell_537_kernel_v_read_readvariableopIsavev2_adam_lstm_537_lstm_cell_537_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_537_lstm_cell_537_bias_v_read_readvariableop?savev2_adam_lstm_538_lstm_cell_538_kernel_v_read_readvariableopIsavev2_adam_lstm_538_lstm_cell_538_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_538_lstm_cell_538_bias_v_read_readvariableop?savev2_adam_lstm_539_lstm_cell_539_kernel_v_read_readvariableopIsavev2_adam_lstm_539_lstm_cell_539_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_539_lstm_cell_539_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_2643005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_437_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_437_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_437_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_437_matmul_readvariableop_resource:2(F
4while_lstm_cell_437_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_437_biasadd_readvariableop_resource:(??*while/lstm_cell_437/BiasAdd/ReadVariableOp?)while/lstm_cell_437/MatMul/ReadVariableOp?+while/lstm_cell_437/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_437/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_437_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_437/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_437/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_437/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_437_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_437/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_437/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_437/addAddV2$while/lstm_cell_437/MatMul:product:0&while/lstm_cell_437/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_437/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_437_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_437/BiasAddBiasAddwhile/lstm_cell_437/add:z:02while/lstm_cell_437/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_437/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_437/splitSplit,while/lstm_cell_437/split/split_dim:output:0$while/lstm_cell_437/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_437/SigmoidSigmoid"while/lstm_cell_437/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_1Sigmoid"while/lstm_cell_437/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mulMul!while/lstm_cell_437/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_437/ReluRelu"while/lstm_cell_437/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_1Mulwhile/lstm_cell_437/Sigmoid:y:0&while/lstm_cell_437/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/add_1AddV2while/lstm_cell_437/mul:z:0while/lstm_cell_437/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_437/Sigmoid_2Sigmoid"while/lstm_cell_437/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_437/Relu_1Reluwhile/lstm_cell_437/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_437/mul_2Mul!while/lstm_cell_437/Sigmoid_2:y:0(while/lstm_cell_437/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_437/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_437/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_437/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_437/BiasAdd/ReadVariableOp*^while/lstm_cell_437/MatMul/ReadVariableOp,^while/lstm_cell_437/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_437_biasadd_readvariableop_resource5while_lstm_cell_437_biasadd_readvariableop_resource_0"n
4while_lstm_cell_437_matmul_1_readvariableop_resource6while_lstm_cell_437_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_437_matmul_readvariableop_resource4while_lstm_cell_437_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_437/BiasAdd/ReadVariableOp*while/lstm_cell_437/BiasAdd/ReadVariableOp2V
)while/lstm_cell_437/MatMul/ReadVariableOp)while/lstm_cell_437/MatMul/ReadVariableOp2Z
+while/lstm_cell_437/MatMul_1/ReadVariableOp+while/lstm_cell_437/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_539_layer_call_fn_2646012
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2642631o
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
lstm_537_input;
 serving_default_lstm_537_input:0?????????=
	dense_1790
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
": 
2dense_179/kernel
:2dense_179/bias
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
0:.	?2lstm_537/lstm_cell_537/kernel
::8	d?2'lstm_537/lstm_cell_537/recurrent_kernel
*:(?2lstm_537/lstm_cell_537/bias
0:.	d?2lstm_538/lstm_cell_538/kernel
::8	2?2'lstm_538/lstm_cell_538/recurrent_kernel
*:(?2lstm_538/lstm_cell_538/bias
/:-2(2lstm_539/lstm_cell_539/kernel
9:7
(2'lstm_539/lstm_cell_539/recurrent_kernel
):'(2lstm_539/lstm_cell_539/bias
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
':%
2Adam/dense_179/kernel/m
!:2Adam/dense_179/bias/m
5:3	?2$Adam/lstm_537/lstm_cell_537/kernel/m
?:=	d?2.Adam/lstm_537/lstm_cell_537/recurrent_kernel/m
/:-?2"Adam/lstm_537/lstm_cell_537/bias/m
5:3	d?2$Adam/lstm_538/lstm_cell_538/kernel/m
?:=	2?2.Adam/lstm_538/lstm_cell_538/recurrent_kernel/m
/:-?2"Adam/lstm_538/lstm_cell_538/bias/m
4:22(2$Adam/lstm_539/lstm_cell_539/kernel/m
>:<
(2.Adam/lstm_539/lstm_cell_539/recurrent_kernel/m
.:,(2"Adam/lstm_539/lstm_cell_539/bias/m
':%
2Adam/dense_179/kernel/v
!:2Adam/dense_179/bias/v
5:3	?2$Adam/lstm_537/lstm_cell_537/kernel/v
?:=	d?2.Adam/lstm_537/lstm_cell_537/recurrent_kernel/v
/:-?2"Adam/lstm_537/lstm_cell_537/bias/v
5:3	d?2$Adam/lstm_538/lstm_cell_538/kernel/v
?:=	2?2.Adam/lstm_538/lstm_cell_538/recurrent_kernel/v
/:-?2"Adam/lstm_538/lstm_cell_538/bias/v
4:22(2$Adam/lstm_539/lstm_cell_539/kernel/v
>:<
(2.Adam/lstm_539/lstm_cell_539/recurrent_kernel/v
.:,(2"Adam/lstm_539/lstm_cell_539/bias/v
?2?
0__inference_sequential_179_layer_call_fn_2643139
0__inference_sequential_179_layer_call_fn_2643877
0__inference_sequential_179_layer_call_fn_2643904
0__inference_sequential_179_layer_call_fn_2643755?
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
K__inference_sequential_179_layer_call_and_return_conditional_losses_2644331
K__inference_sequential_179_layer_call_and_return_conditional_losses_2644758
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643785
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643815?
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
"__inference__wrapped_model_2641590lstm_537_input"?
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
*__inference_lstm_537_layer_call_fn_2644769
*__inference_lstm_537_layer_call_fn_2644780
*__inference_lstm_537_layer_call_fn_2644791
*__inference_lstm_537_layer_call_fn_2644802?
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2644945
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645088
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645231
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645374?
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
*__inference_lstm_538_layer_call_fn_2645385
*__inference_lstm_538_layer_call_fn_2645396
*__inference_lstm_538_layer_call_fn_2645407
*__inference_lstm_538_layer_call_fn_2645418?
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645561
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645704
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645847
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645990?
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
*__inference_lstm_539_layer_call_fn_2646001
*__inference_lstm_539_layer_call_fn_2646012
*__inference_lstm_539_layer_call_fn_2646023
*__inference_lstm_539_layer_call_fn_2646034?
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646177
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646320
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646463
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646606?
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
+__inference_dense_179_layer_call_fn_2646615?
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
F__inference_dense_179_layer_call_and_return_conditional_losses_2646625?
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
%__inference_signature_wrapper_2643850lstm_537_input"?
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
/__inference_lstm_cell_435_layer_call_fn_2646642
/__inference_lstm_cell_435_layer_call_fn_2646659?
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2646691
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2646723?
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
/__inference_lstm_cell_436_layer_call_fn_2646740
/__inference_lstm_cell_436_layer_call_fn_2646757?
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2646789
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2646821?
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
/__inference_lstm_cell_437_layer_call_fn_2646838
/__inference_lstm_cell_437_layer_call_fn_2646855?
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2646887
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2646919?
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
"__inference__wrapped_model_2641590?-./012345!";?8
1?.
,?)
lstm_537_input?????????
? "5?2
0
	dense_179#? 
	dense_179??????????
F__inference_dense_179_layer_call_and_return_conditional_losses_2646625\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_179_layer_call_fn_2646615O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_537_layer_call_and_return_conditional_losses_2644945?-./O?L
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645088?-./O?L
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645231q-./??<
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
E__inference_lstm_537_layer_call_and_return_conditional_losses_2645374q-./??<
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
*__inference_lstm_537_layer_call_fn_2644769}-./O?L
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
*__inference_lstm_537_layer_call_fn_2644780}-./O?L
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
*__inference_lstm_537_layer_call_fn_2644791d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_537_layer_call_fn_2644802d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645561?012O?L
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645704?012O?L
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645847q012??<
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
E__inference_lstm_538_layer_call_and_return_conditional_losses_2645990q012??<
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
*__inference_lstm_538_layer_call_fn_2645385}012O?L
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
*__inference_lstm_538_layer_call_fn_2645396}012O?L
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
*__inference_lstm_538_layer_call_fn_2645407d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_538_layer_call_fn_2645418d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646177}345O?L
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646320}345O?L
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646463m345??<
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
E__inference_lstm_539_layer_call_and_return_conditional_losses_2646606m345??<
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
*__inference_lstm_539_layer_call_fn_2646001p345O?L
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
*__inference_lstm_539_layer_call_fn_2646012p345O?L
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
*__inference_lstm_539_layer_call_fn_2646023`345??<
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
*__inference_lstm_539_layer_call_fn_2646034`345??<
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2646691?-./??}
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
J__inference_lstm_cell_435_layer_call_and_return_conditional_losses_2646723?-./??}
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
/__inference_lstm_cell_435_layer_call_fn_2646642?-./??}
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
/__inference_lstm_cell_435_layer_call_fn_2646659?-./??}
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2646789?012??}
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
J__inference_lstm_cell_436_layer_call_and_return_conditional_losses_2646821?012??}
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
/__inference_lstm_cell_436_layer_call_fn_2646740?012??}
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
/__inference_lstm_cell_436_layer_call_fn_2646757?012??}
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2646887?345??}
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
J__inference_lstm_cell_437_layer_call_and_return_conditional_losses_2646919?345??}
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
/__inference_lstm_cell_437_layer_call_fn_2646838?345??}
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
/__inference_lstm_cell_437_layer_call_fn_2646855?345??}
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
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643785y-./012345!"C?@
9?6
,?)
lstm_537_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_179_layer_call_and_return_conditional_losses_2643815y-./012345!"C?@
9?6
,?)
lstm_537_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_179_layer_call_and_return_conditional_losses_2644331q-./012345!";?8
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
K__inference_sequential_179_layer_call_and_return_conditional_losses_2644758q-./012345!";?8
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
0__inference_sequential_179_layer_call_fn_2643139l-./012345!"C?@
9?6
,?)
lstm_537_input?????????
p 

 
? "???????????
0__inference_sequential_179_layer_call_fn_2643755l-./012345!"C?@
9?6
,?)
lstm_537_input?????????
p

 
? "???????????
0__inference_sequential_179_layer_call_fn_2643877d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_179_layer_call_fn_2643904d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2643850?-./012345!"M?J
? 
C?@
>
lstm_537_input,?)
lstm_537_input?????????"5?2
0
	dense_179#? 
	dense_179?????????