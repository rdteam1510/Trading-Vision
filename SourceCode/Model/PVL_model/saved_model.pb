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
dense_165/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_165/kernel
u
$dense_165/kernel/Read/ReadVariableOpReadVariableOpdense_165/kernel*
_output_shapes

:
*
dtype0
t
dense_165/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_165/bias
m
"dense_165/bias/Read/ReadVariableOpReadVariableOpdense_165/bias*
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
lstm_495/lstm_cell_495/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_495/lstm_cell_495/kernel
?
1lstm_495/lstm_cell_495/kernel/Read/ReadVariableOpReadVariableOplstm_495/lstm_cell_495/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_495/lstm_cell_495/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_495/lstm_cell_495/recurrent_kernel
?
;lstm_495/lstm_cell_495/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_495/lstm_cell_495/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_495/lstm_cell_495/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_495/lstm_cell_495/bias
?
/lstm_495/lstm_cell_495/bias/Read/ReadVariableOpReadVariableOplstm_495/lstm_cell_495/bias*
_output_shapes	
:?*
dtype0
?
lstm_496/lstm_cell_496/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_496/lstm_cell_496/kernel
?
1lstm_496/lstm_cell_496/kernel/Read/ReadVariableOpReadVariableOplstm_496/lstm_cell_496/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_496/lstm_cell_496/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_496/lstm_cell_496/recurrent_kernel
?
;lstm_496/lstm_cell_496/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_496/lstm_cell_496/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_496/lstm_cell_496/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_496/lstm_cell_496/bias
?
/lstm_496/lstm_cell_496/bias/Read/ReadVariableOpReadVariableOplstm_496/lstm_cell_496/bias*
_output_shapes	
:?*
dtype0
?
lstm_497/lstm_cell_497/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_497/lstm_cell_497/kernel
?
1lstm_497/lstm_cell_497/kernel/Read/ReadVariableOpReadVariableOplstm_497/lstm_cell_497/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_497/lstm_cell_497/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_497/lstm_cell_497/recurrent_kernel
?
;lstm_497/lstm_cell_497/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_497/lstm_cell_497/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_497/lstm_cell_497/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_497/lstm_cell_497/bias
?
/lstm_497/lstm_cell_497/bias/Read/ReadVariableOpReadVariableOplstm_497/lstm_cell_497/bias*
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
Adam/dense_165/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_165/kernel/m
?
+Adam/dense_165/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_165/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_165/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_165/bias/m
{
)Adam/dense_165/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_165/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_495/lstm_cell_495/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_495/lstm_cell_495/kernel/m
?
8Adam/lstm_495/lstm_cell_495/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_495/lstm_cell_495/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_495/lstm_cell_495/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_495/lstm_cell_495/recurrent_kernel/m
?
BAdam/lstm_495/lstm_cell_495/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_495/lstm_cell_495/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_495/lstm_cell_495/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_495/lstm_cell_495/bias/m
?
6Adam/lstm_495/lstm_cell_495/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_495/lstm_cell_495/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_496/lstm_cell_496/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_496/lstm_cell_496/kernel/m
?
8Adam/lstm_496/lstm_cell_496/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_496/lstm_cell_496/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_496/lstm_cell_496/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_496/lstm_cell_496/recurrent_kernel/m
?
BAdam/lstm_496/lstm_cell_496/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_496/lstm_cell_496/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_496/lstm_cell_496/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_496/lstm_cell_496/bias/m
?
6Adam/lstm_496/lstm_cell_496/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_496/lstm_cell_496/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_497/lstm_cell_497/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_497/lstm_cell_497/kernel/m
?
8Adam/lstm_497/lstm_cell_497/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_497/lstm_cell_497/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_497/lstm_cell_497/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_497/lstm_cell_497/recurrent_kernel/m
?
BAdam/lstm_497/lstm_cell_497/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_497/lstm_cell_497/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_497/lstm_cell_497/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_497/lstm_cell_497/bias/m
?
6Adam/lstm_497/lstm_cell_497/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_497/lstm_cell_497/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_165/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_165/kernel/v
?
+Adam/dense_165/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_165/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_165/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_165/bias/v
{
)Adam/dense_165/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_165/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_495/lstm_cell_495/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_495/lstm_cell_495/kernel/v
?
8Adam/lstm_495/lstm_cell_495/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_495/lstm_cell_495/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_495/lstm_cell_495/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_495/lstm_cell_495/recurrent_kernel/v
?
BAdam/lstm_495/lstm_cell_495/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_495/lstm_cell_495/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_495/lstm_cell_495/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_495/lstm_cell_495/bias/v
?
6Adam/lstm_495/lstm_cell_495/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_495/lstm_cell_495/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_496/lstm_cell_496/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_496/lstm_cell_496/kernel/v
?
8Adam/lstm_496/lstm_cell_496/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_496/lstm_cell_496/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_496/lstm_cell_496/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_496/lstm_cell_496/recurrent_kernel/v
?
BAdam/lstm_496/lstm_cell_496/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_496/lstm_cell_496/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_496/lstm_cell_496/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_496/lstm_cell_496/bias/v
?
6Adam/lstm_496/lstm_cell_496/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_496/lstm_cell_496/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_497/lstm_cell_497/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_497/lstm_cell_497/kernel/v
?
8Adam/lstm_497/lstm_cell_497/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_497/lstm_cell_497/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_497/lstm_cell_497/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_497/lstm_cell_497/recurrent_kernel/v
?
BAdam/lstm_497/lstm_cell_497/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_497/lstm_cell_497/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_497/lstm_cell_497/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_497/lstm_cell_497/bias/v
?
6Adam/lstm_497/lstm_cell_497/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_497/lstm_cell_497/bias/v*
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
VARIABLE_VALUEdense_165/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_165/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_495/lstm_cell_495/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_495/lstm_cell_495/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_495/lstm_cell_495/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_496/lstm_cell_496/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_496/lstm_cell_496/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_496/lstm_cell_496/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_497/lstm_cell_497/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_497/lstm_cell_497/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_497/lstm_cell_497/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_165/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_165/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_495/lstm_cell_495/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_495/lstm_cell_495/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_495/lstm_cell_495/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_496/lstm_cell_496/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_496/lstm_cell_496/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_496/lstm_cell_496/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_497/lstm_cell_497/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_497/lstm_cell_497/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_497/lstm_cell_497/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_165/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_165/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_495/lstm_cell_495/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_495/lstm_cell_495/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_495/lstm_cell_495/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_496/lstm_cell_496/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_496/lstm_cell_496/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_496/lstm_cell_496/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_497/lstm_cell_497/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_497/lstm_cell_497/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_497/lstm_cell_497/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_495_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_495_inputlstm_495/lstm_cell_495/kernel'lstm_495/lstm_cell_495/recurrent_kernellstm_495/lstm_cell_495/biaslstm_496/lstm_cell_496/kernel'lstm_496/lstm_cell_496/recurrent_kernellstm_496/lstm_cell_496/biaslstm_497/lstm_cell_497/kernel'lstm_497/lstm_cell_497/recurrent_kernellstm_497/lstm_cell_497/biasdense_165/kerneldense_165/bias*
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
%__inference_signature_wrapper_1847677
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_165/kernel/Read/ReadVariableOp"dense_165/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_495/lstm_cell_495/kernel/Read/ReadVariableOp;lstm_495/lstm_cell_495/recurrent_kernel/Read/ReadVariableOp/lstm_495/lstm_cell_495/bias/Read/ReadVariableOp1lstm_496/lstm_cell_496/kernel/Read/ReadVariableOp;lstm_496/lstm_cell_496/recurrent_kernel/Read/ReadVariableOp/lstm_496/lstm_cell_496/bias/Read/ReadVariableOp1lstm_497/lstm_cell_497/kernel/Read/ReadVariableOp;lstm_497/lstm_cell_497/recurrent_kernel/Read/ReadVariableOp/lstm_497/lstm_cell_497/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_165/kernel/m/Read/ReadVariableOp)Adam/dense_165/bias/m/Read/ReadVariableOp8Adam/lstm_495/lstm_cell_495/kernel/m/Read/ReadVariableOpBAdam/lstm_495/lstm_cell_495/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_495/lstm_cell_495/bias/m/Read/ReadVariableOp8Adam/lstm_496/lstm_cell_496/kernel/m/Read/ReadVariableOpBAdam/lstm_496/lstm_cell_496/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_496/lstm_cell_496/bias/m/Read/ReadVariableOp8Adam/lstm_497/lstm_cell_497/kernel/m/Read/ReadVariableOpBAdam/lstm_497/lstm_cell_497/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_497/lstm_cell_497/bias/m/Read/ReadVariableOp+Adam/dense_165/kernel/v/Read/ReadVariableOp)Adam/dense_165/bias/v/Read/ReadVariableOp8Adam/lstm_495/lstm_cell_495/kernel/v/Read/ReadVariableOpBAdam/lstm_495/lstm_cell_495/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_495/lstm_cell_495/bias/v/Read/ReadVariableOp8Adam/lstm_496/lstm_cell_496/kernel/v/Read/ReadVariableOpBAdam/lstm_496/lstm_cell_496/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_496/lstm_cell_496/bias/v/Read/ReadVariableOp8Adam/lstm_497/lstm_cell_497/kernel/v/Read/ReadVariableOpBAdam/lstm_497/lstm_cell_497/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_497/lstm_cell_497/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1850889
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_165/kerneldense_165/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_495/lstm_cell_495/kernel'lstm_495/lstm_cell_495/recurrent_kernellstm_495/lstm_cell_495/biaslstm_496/lstm_cell_496/kernel'lstm_496/lstm_cell_496/recurrent_kernellstm_496/lstm_cell_496/biaslstm_497/lstm_cell_497/kernel'lstm_497/lstm_cell_497/recurrent_kernellstm_497/lstm_cell_497/biastotalcountAdam/dense_165/kernel/mAdam/dense_165/bias/m$Adam/lstm_495/lstm_cell_495/kernel/m.Adam/lstm_495/lstm_cell_495/recurrent_kernel/m"Adam/lstm_495/lstm_cell_495/bias/m$Adam/lstm_496/lstm_cell_496/kernel/m.Adam/lstm_496/lstm_cell_496/recurrent_kernel/m"Adam/lstm_496/lstm_cell_496/bias/m$Adam/lstm_497/lstm_cell_497/kernel/m.Adam/lstm_497/lstm_cell_497/recurrent_kernel/m"Adam/lstm_497/lstm_cell_497/bias/mAdam/dense_165/kernel/vAdam/dense_165/bias/v$Adam/lstm_495/lstm_cell_495/kernel/v.Adam/lstm_495/lstm_cell_495/recurrent_kernel/v"Adam/lstm_495/lstm_cell_495/bias/v$Adam/lstm_496/lstm_cell_496/kernel/v.Adam/lstm_496/lstm_cell_496/recurrent_kernel/v"Adam/lstm_496/lstm_cell_496/bias/v$Adam/lstm_497/lstm_cell_497/kernel/v.Adam/lstm_497/lstm_cell_497/recurrent_kernel/v"Adam/lstm_497/lstm_cell_497/bias/v*4
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
#__inference__traced_restore_1851019??+
?
?
while_cond_1849589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1849589___redundant_placeholder05
1while_while_cond_1849589___redundant_placeholder15
1while_while_cond_1849589___redundant_placeholder25
1while_while_cond_1849589___redundant_placeholder3
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
/__inference_lstm_cell_305_layer_call_fn_1850682

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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846330o
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

?
lstm_496_while_cond_1847928.
*lstm_496_while_lstm_496_while_loop_counter4
0lstm_496_while_lstm_496_while_maximum_iterations
lstm_496_while_placeholder 
lstm_496_while_placeholder_1 
lstm_496_while_placeholder_2 
lstm_496_while_placeholder_30
,lstm_496_while_less_lstm_496_strided_slice_1G
Clstm_496_while_lstm_496_while_cond_1847928___redundant_placeholder0G
Clstm_496_while_lstm_496_while_cond_1847928___redundant_placeholder1G
Clstm_496_while_lstm_496_while_cond_1847928___redundant_placeholder2G
Clstm_496_while_lstm_496_while_cond_1847928___redundant_placeholder3
lstm_496_while_identity
?
lstm_496/while/LessLesslstm_496_while_placeholder,lstm_496_while_less_lstm_496_strided_slice_1*
T0*
_output_shapes
: ]
lstm_496/while/IdentityIdentitylstm_496/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_496_while_identity lstm_496/while/Identity:output:0*(
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1850616

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
while_cond_1846038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1846038___redundant_placeholder05
1while_while_cond_1846038___redundant_placeholder15
1while_while_cond_1846038___redundant_placeholder25
1while_while_cond_1846038___redundant_placeholder3
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
*sequential_165_lstm_496_while_cond_1845187L
Hsequential_165_lstm_496_while_sequential_165_lstm_496_while_loop_counterR
Nsequential_165_lstm_496_while_sequential_165_lstm_496_while_maximum_iterations-
)sequential_165_lstm_496_while_placeholder/
+sequential_165_lstm_496_while_placeholder_1/
+sequential_165_lstm_496_while_placeholder_2/
+sequential_165_lstm_496_while_placeholder_3N
Jsequential_165_lstm_496_while_less_sequential_165_lstm_496_strided_slice_1e
asequential_165_lstm_496_while_sequential_165_lstm_496_while_cond_1845187___redundant_placeholder0e
asequential_165_lstm_496_while_sequential_165_lstm_496_while_cond_1845187___redundant_placeholder1e
asequential_165_lstm_496_while_sequential_165_lstm_496_while_cond_1845187___redundant_placeholder2e
asequential_165_lstm_496_while_sequential_165_lstm_496_while_cond_1845187___redundant_placeholder3*
&sequential_165_lstm_496_while_identity
?
"sequential_165/lstm_496/while/LessLess)sequential_165_lstm_496_while_placeholderJsequential_165_lstm_496_while_less_sequential_165_lstm_496_strided_slice_1*
T0*
_output_shapes
: {
&sequential_165/lstm_496/while/IdentityIdentity&sequential_165/lstm_496/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_165_lstm_496_while_identity/sequential_165/lstm_496/while/Identity:output:0*(
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

lstm_496_while_body_1848356.
*lstm_496_while_lstm_496_while_loop_counter4
0lstm_496_while_lstm_496_while_maximum_iterations
lstm_496_while_placeholder 
lstm_496_while_placeholder_1 
lstm_496_while_placeholder_2 
lstm_496_while_placeholder_3-
)lstm_496_while_lstm_496_strided_slice_1_0i
elstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0:	d?R
?lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?M
>lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
lstm_496_while_identity
lstm_496_while_identity_1
lstm_496_while_identity_2
lstm_496_while_identity_3
lstm_496_while_identity_4
lstm_496_while_identity_5+
'lstm_496_while_lstm_496_strided_slice_1g
clstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensorN
;lstm_496_while_lstm_cell_304_matmul_readvariableop_resource:	d?P
=lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource:	2?K
<lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource:	???3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp?2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp?4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp?
@lstm_496/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_496/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensor_0lstm_496_while_placeholderIlstm_496/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp=lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_496/while/lstm_cell_304/MatMulMatMul9lstm_496/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp?lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_496/while/lstm_cell_304/MatMul_1MatMullstm_496_while_placeholder_2<lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_496/while/lstm_cell_304/addAddV2-lstm_496/while/lstm_cell_304/MatMul:product:0/lstm_496/while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp>lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_496/while/lstm_cell_304/BiasAddBiasAdd$lstm_496/while/lstm_cell_304/add:z:0;lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_496/while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_496/while/lstm_cell_304/splitSplit5lstm_496/while/lstm_cell_304/split/split_dim:output:0-lstm_496/while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_496/while/lstm_cell_304/SigmoidSigmoid+lstm_496/while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_496/while/lstm_cell_304/Sigmoid_1Sigmoid+lstm_496/while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_496/while/lstm_cell_304/mulMul*lstm_496/while/lstm_cell_304/Sigmoid_1:y:0lstm_496_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_496/while/lstm_cell_304/ReluRelu+lstm_496/while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_496/while/lstm_cell_304/mul_1Mul(lstm_496/while/lstm_cell_304/Sigmoid:y:0/lstm_496/while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_496/while/lstm_cell_304/add_1AddV2$lstm_496/while/lstm_cell_304/mul:z:0&lstm_496/while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_496/while/lstm_cell_304/Sigmoid_2Sigmoid+lstm_496/while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_496/while/lstm_cell_304/Relu_1Relu&lstm_496/while/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_496/while/lstm_cell_304/mul_2Mul*lstm_496/while/lstm_cell_304/Sigmoid_2:y:01lstm_496/while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_496/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_496_while_placeholder_1lstm_496_while_placeholder&lstm_496/while/lstm_cell_304/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_496/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_496/while/addAddV2lstm_496_while_placeholderlstm_496/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_496/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_496/while/add_1AddV2*lstm_496_while_lstm_496_while_loop_counterlstm_496/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_496/while/IdentityIdentitylstm_496/while/add_1:z:0^lstm_496/while/NoOp*
T0*
_output_shapes
: ?
lstm_496/while/Identity_1Identity0lstm_496_while_lstm_496_while_maximum_iterations^lstm_496/while/NoOp*
T0*
_output_shapes
: t
lstm_496/while/Identity_2Identitylstm_496/while/add:z:0^lstm_496/while/NoOp*
T0*
_output_shapes
: ?
lstm_496/while/Identity_3IdentityClstm_496/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_496/while/NoOp*
T0*
_output_shapes
: ?
lstm_496/while/Identity_4Identity&lstm_496/while/lstm_cell_304/mul_2:z:0^lstm_496/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_496/while/Identity_5Identity&lstm_496/while/lstm_cell_304/add_1:z:0^lstm_496/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_496/while/NoOpNoOp4^lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp3^lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp5^lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_496_while_identity lstm_496/while/Identity:output:0"?
lstm_496_while_identity_1"lstm_496/while/Identity_1:output:0"?
lstm_496_while_identity_2"lstm_496/while/Identity_2:output:0"?
lstm_496_while_identity_3"lstm_496/while/Identity_3:output:0"?
lstm_496_while_identity_4"lstm_496/while/Identity_4:output:0"?
lstm_496_while_identity_5"lstm_496/while/Identity_5:output:0"T
'lstm_496_while_lstm_496_strided_slice_1)lstm_496_while_lstm_496_strided_slice_1_0"~
<lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource>lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0"?
=lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource?lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0"|
;lstm_496_while_lstm_cell_304_matmul_readvariableop_resource=lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0"?
clstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensorelstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp2h
2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp2l
4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_1851019
file_prefix3
!assignvariableop_dense_165_kernel:
/
!assignvariableop_1_dense_165_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_495_lstm_cell_495_kernel:	?M
:assignvariableop_8_lstm_495_lstm_cell_495_recurrent_kernel:	d?=
.assignvariableop_9_lstm_495_lstm_cell_495_bias:	?D
1assignvariableop_10_lstm_496_lstm_cell_496_kernel:	d?N
;assignvariableop_11_lstm_496_lstm_cell_496_recurrent_kernel:	2?>
/assignvariableop_12_lstm_496_lstm_cell_496_bias:	?C
1assignvariableop_13_lstm_497_lstm_cell_497_kernel:2(M
;assignvariableop_14_lstm_497_lstm_cell_497_recurrent_kernel:
(=
/assignvariableop_15_lstm_497_lstm_cell_497_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_165_kernel_m:
7
)assignvariableop_19_adam_dense_165_bias_m:K
8assignvariableop_20_adam_lstm_495_lstm_cell_495_kernel_m:	?U
Bassignvariableop_21_adam_lstm_495_lstm_cell_495_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_495_lstm_cell_495_bias_m:	?K
8assignvariableop_23_adam_lstm_496_lstm_cell_496_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_496_lstm_cell_496_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_496_lstm_cell_496_bias_m:	?J
8assignvariableop_26_adam_lstm_497_lstm_cell_497_kernel_m:2(T
Bassignvariableop_27_adam_lstm_497_lstm_cell_497_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_497_lstm_cell_497_bias_m:(=
+assignvariableop_29_adam_dense_165_kernel_v:
7
)assignvariableop_30_adam_dense_165_bias_v:K
8assignvariableop_31_adam_lstm_495_lstm_cell_495_kernel_v:	?U
Bassignvariableop_32_adam_lstm_495_lstm_cell_495_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_495_lstm_cell_495_bias_v:	?K
8assignvariableop_34_adam_lstm_496_lstm_cell_496_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_496_lstm_cell_496_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_496_lstm_cell_496_bias_v:	?J
8assignvariableop_37_adam_lstm_497_lstm_cell_497_kernel_v:2(T
Bassignvariableop_38_adam_lstm_497_lstm_cell_497_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_497_lstm_cell_497_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_165_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_165_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_495_lstm_cell_495_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_495_lstm_cell_495_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_495_lstm_cell_495_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_496_lstm_cell_496_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_496_lstm_cell_496_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_496_lstm_cell_496_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_497_lstm_cell_497_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_497_lstm_cell_497_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_497_lstm_cell_497_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_165_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_165_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_495_lstm_cell_495_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_495_lstm_cell_495_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_495_lstm_cell_495_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_496_lstm_cell_496_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_496_lstm_cell_496_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_496_lstm_cell_496_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_497_lstm_cell_497_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_497_lstm_cell_497_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_497_lstm_cell_497_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_165_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_165_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_495_lstm_cell_495_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_495_lstm_cell_495_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_495_lstm_cell_495_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_496_lstm_cell_496_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_496_lstm_cell_496_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_496_lstm_cell_496_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_497_lstm_cell_497_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_497_lstm_cell_497_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_497_lstm_cell_497_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
/__inference_lstm_cell_305_layer_call_fn_1850665

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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846184o
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
?T
?
*sequential_165_lstm_495_while_body_1845049L
Hsequential_165_lstm_495_while_sequential_165_lstm_495_while_loop_counterR
Nsequential_165_lstm_495_while_sequential_165_lstm_495_while_maximum_iterations-
)sequential_165_lstm_495_while_placeholder/
+sequential_165_lstm_495_while_placeholder_1/
+sequential_165_lstm_495_while_placeholder_2/
+sequential_165_lstm_495_while_placeholder_3K
Gsequential_165_lstm_495_while_sequential_165_lstm_495_strided_slice_1_0?
?sequential_165_lstm_495_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_495_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_165_lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0:	?a
Nsequential_165_lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?\
Msequential_165_lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0:	?*
&sequential_165_lstm_495_while_identity,
(sequential_165_lstm_495_while_identity_1,
(sequential_165_lstm_495_while_identity_2,
(sequential_165_lstm_495_while_identity_3,
(sequential_165_lstm_495_while_identity_4,
(sequential_165_lstm_495_while_identity_5I
Esequential_165_lstm_495_while_sequential_165_lstm_495_strided_slice_1?
?sequential_165_lstm_495_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_495_tensorarrayunstack_tensorlistfromtensor]
Jsequential_165_lstm_495_while_lstm_cell_303_matmul_readvariableop_resource:	?_
Lsequential_165_lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource:	d?Z
Ksequential_165_lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource:	???Bsequential_165/lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp?Asequential_165/lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp?Csequential_165/lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp?
Osequential_165/lstm_495/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_165/lstm_495/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_165_lstm_495_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_495_tensorarrayunstack_tensorlistfromtensor_0)sequential_165_lstm_495_while_placeholderXsequential_165/lstm_495/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_165/lstm_495/while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOpLsequential_165_lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_165/lstm_495/while/lstm_cell_303/MatMulMatMulHsequential_165/lstm_495/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_165/lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_165/lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOpNsequential_165_lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_165/lstm_495/while/lstm_cell_303/MatMul_1MatMul+sequential_165_lstm_495_while_placeholder_2Ksequential_165/lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_165/lstm_495/while/lstm_cell_303/addAddV2<sequential_165/lstm_495/while/lstm_cell_303/MatMul:product:0>sequential_165/lstm_495/while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_165/lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOpMsequential_165_lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_165/lstm_495/while/lstm_cell_303/BiasAddBiasAdd3sequential_165/lstm_495/while/lstm_cell_303/add:z:0Jsequential_165/lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_165/lstm_495/while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_165/lstm_495/while/lstm_cell_303/splitSplitDsequential_165/lstm_495/while/lstm_cell_303/split/split_dim:output:0<sequential_165/lstm_495/while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_165/lstm_495/while/lstm_cell_303/SigmoidSigmoid:sequential_165/lstm_495/while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_165/lstm_495/while/lstm_cell_303/Sigmoid_1Sigmoid:sequential_165/lstm_495/while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_165/lstm_495/while/lstm_cell_303/mulMul9sequential_165/lstm_495/while/lstm_cell_303/Sigmoid_1:y:0+sequential_165_lstm_495_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_165/lstm_495/while/lstm_cell_303/ReluRelu:sequential_165/lstm_495/while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_165/lstm_495/while/lstm_cell_303/mul_1Mul7sequential_165/lstm_495/while/lstm_cell_303/Sigmoid:y:0>sequential_165/lstm_495/while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_165/lstm_495/while/lstm_cell_303/add_1AddV23sequential_165/lstm_495/while/lstm_cell_303/mul:z:05sequential_165/lstm_495/while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_165/lstm_495/while/lstm_cell_303/Sigmoid_2Sigmoid:sequential_165/lstm_495/while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_165/lstm_495/while/lstm_cell_303/Relu_1Relu5sequential_165/lstm_495/while/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_165/lstm_495/while/lstm_cell_303/mul_2Mul9sequential_165/lstm_495/while/lstm_cell_303/Sigmoid_2:y:0@sequential_165/lstm_495/while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_165/lstm_495/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_165_lstm_495_while_placeholder_1)sequential_165_lstm_495_while_placeholder5sequential_165/lstm_495/while/lstm_cell_303/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_165/lstm_495/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_165/lstm_495/while/addAddV2)sequential_165_lstm_495_while_placeholder,sequential_165/lstm_495/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_165/lstm_495/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_165/lstm_495/while/add_1AddV2Hsequential_165_lstm_495_while_sequential_165_lstm_495_while_loop_counter.sequential_165/lstm_495/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_165/lstm_495/while/IdentityIdentity'sequential_165/lstm_495/while/add_1:z:0#^sequential_165/lstm_495/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_495/while/Identity_1IdentityNsequential_165_lstm_495_while_sequential_165_lstm_495_while_maximum_iterations#^sequential_165/lstm_495/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_495/while/Identity_2Identity%sequential_165/lstm_495/while/add:z:0#^sequential_165/lstm_495/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_495/while/Identity_3IdentityRsequential_165/lstm_495/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_165/lstm_495/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_495/while/Identity_4Identity5sequential_165/lstm_495/while/lstm_cell_303/mul_2:z:0#^sequential_165/lstm_495/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_165/lstm_495/while/Identity_5Identity5sequential_165/lstm_495/while/lstm_cell_303/add_1:z:0#^sequential_165/lstm_495/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_165/lstm_495/while/NoOpNoOpC^sequential_165/lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOpB^sequential_165/lstm_495/while/lstm_cell_303/MatMul/ReadVariableOpD^sequential_165/lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_165_lstm_495_while_identity/sequential_165/lstm_495/while/Identity:output:0"]
(sequential_165_lstm_495_while_identity_11sequential_165/lstm_495/while/Identity_1:output:0"]
(sequential_165_lstm_495_while_identity_21sequential_165/lstm_495/while/Identity_2:output:0"]
(sequential_165_lstm_495_while_identity_31sequential_165/lstm_495/while/Identity_3:output:0"]
(sequential_165_lstm_495_while_identity_41sequential_165/lstm_495/while/Identity_4:output:0"]
(sequential_165_lstm_495_while_identity_51sequential_165/lstm_495/while/Identity_5:output:0"?
Ksequential_165_lstm_495_while_lstm_cell_303_biasadd_readvariableop_resourceMsequential_165_lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0"?
Lsequential_165_lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resourceNsequential_165_lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0"?
Jsequential_165_lstm_495_while_lstm_cell_303_matmul_readvariableop_resourceLsequential_165_lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0"?
Esequential_165_lstm_495_while_sequential_165_lstm_495_strided_slice_1Gsequential_165_lstm_495_while_sequential_165_lstm_495_strided_slice_1_0"?
?sequential_165_lstm_495_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_495_tensorarrayunstack_tensorlistfromtensor?sequential_165_lstm_495_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_495_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_165/lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOpBsequential_165/lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp2?
Asequential_165/lstm_495/while/lstm_cell_303/MatMul/ReadVariableOpAsequential_165/lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp2?
Csequential_165/lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOpCsequential_165/lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847612
lstm_495_input#
lstm_495_1847585:	?#
lstm_495_1847587:	d?
lstm_495_1847589:	?#
lstm_496_1847592:	d?#
lstm_496_1847594:	2?
lstm_496_1847596:	?"
lstm_497_1847599:2("
lstm_497_1847601:
(
lstm_497_1847603:(#
dense_165_1847606:

dense_165_1847608:
identity??!dense_165/StatefulPartitionedCall? lstm_495/StatefulPartitionedCall? lstm_496/StatefulPartitionedCall? lstm_497/StatefulPartitionedCall?
 lstm_495/StatefulPartitionedCallStatefulPartitionedCalllstm_495_inputlstm_495_1847585lstm_495_1847587lstm_495_1847589*
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1846616?
 lstm_496/StatefulPartitionedCallStatefulPartitionedCall)lstm_495/StatefulPartitionedCall:output:0lstm_496_1847592lstm_496_1847594lstm_496_1847596*
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1846766?
 lstm_497/StatefulPartitionedCallStatefulPartitionedCall)lstm_496/StatefulPartitionedCall:output:0lstm_497_1847599lstm_497_1847601lstm_497_1847603*
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846916?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall)lstm_497/StatefulPartitionedCall:output:0dense_165_1847606dense_165_1847608*
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
F__inference_dense_165_layer_call_and_return_conditional_losses_1846934y
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_165/StatefulPartitionedCall!^lstm_495/StatefulPartitionedCall!^lstm_496/StatefulPartitionedCall!^lstm_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2D
 lstm_495/StatefulPartitionedCall lstm_495/StatefulPartitionedCall2D
 lstm_496/StatefulPartitionedCall lstm_496/StatefulPartitionedCall2D
 lstm_497/StatefulPartitionedCall lstm_497/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_495_input
?

?
lstm_496_while_cond_1848355.
*lstm_496_while_lstm_496_while_loop_counter4
0lstm_496_while_lstm_496_while_maximum_iterations
lstm_496_while_placeholder 
lstm_496_while_placeholder_1 
lstm_496_while_placeholder_2 
lstm_496_while_placeholder_30
,lstm_496_while_less_lstm_496_strided_slice_1G
Clstm_496_while_lstm_496_while_cond_1848355___redundant_placeholder0G
Clstm_496_while_lstm_496_while_cond_1848355___redundant_placeholder1G
Clstm_496_while_lstm_496_while_cond_1848355___redundant_placeholder2G
Clstm_496_while_lstm_496_while_cond_1848355___redundant_placeholder3
lstm_496_while_identity
?
lstm_496/while/LessLesslstm_496_while_placeholder,lstm_496_while_less_lstm_496_strided_slice_1*
T0*
_output_shapes
: ]
lstm_496/while/IdentityIdentitylstm_496/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_496_while_identity lstm_496/while/Identity:output:0*(
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
while_cond_1845497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1845497___redundant_placeholder05
1while_while_cond_1845497___redundant_placeholder15
1while_while_cond_1845497___redundant_placeholder25
1while_while_cond_1845497___redundant_placeholder3
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
while_cond_1848973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1848973___redundant_placeholder05
1while_while_cond_1848973___redundant_placeholder15
1while_while_cond_1848973___redundant_placeholder25
1while_while_cond_1848973___redundant_placeholder3
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849817

inputs?
,lstm_cell_304_matmul_readvariableop_resource:	d?A
.lstm_cell_304_matmul_1_readvariableop_resource:	2?<
-lstm_cell_304_biasadd_readvariableop_resource:	?
identity??$lstm_cell_304/BiasAdd/ReadVariableOp?#lstm_cell_304/MatMul/ReadVariableOp?%lstm_cell_304/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_304/MatMul/ReadVariableOpReadVariableOp,lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_304/MatMulMatMulstrided_slice_2:output:0+lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_304/MatMul_1MatMulzeros:output:0-lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_304/addAddV2lstm_cell_304/MatMul:product:0 lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_304/BiasAddBiasAddlstm_cell_304/add:z:0,lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_304/splitSplit&lstm_cell_304/split/split_dim:output:0lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_304/SigmoidSigmoidlstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_1Sigmoidlstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_304/mulMullstm_cell_304/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_304/ReluRelulstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_1Mullstm_cell_304/Sigmoid:y:0 lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_304/add_1AddV2lstm_cell_304/mul:z:0lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_2Sigmoidlstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_304/Relu_1Relulstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_2Mullstm_cell_304/Sigmoid_2:y:0"lstm_cell_304/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_304_matmul_readvariableop_resource.lstm_cell_304_matmul_1_readvariableop_resource-lstm_cell_304_biasadd_readvariableop_resource*
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
while_body_1849733*
condR
while_cond_1849732*K
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
NoOpNoOp%^lstm_cell_304/BiasAdd/ReadVariableOp$^lstm_cell_304/MatMul/ReadVariableOp&^lstm_cell_304/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_304/BiasAdd/ReadVariableOp$lstm_cell_304/BiasAdd/ReadVariableOp2J
#lstm_cell_304/MatMul/ReadVariableOp#lstm_cell_304/MatMul/ReadVariableOp2N
%lstm_cell_304/MatMul_1/ReadVariableOp%lstm_cell_304/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_495_layer_call_and_return_conditional_losses_1847462

inputs?
,lstm_cell_303_matmul_readvariableop_resource:	?A
.lstm_cell_303_matmul_1_readvariableop_resource:	d?<
-lstm_cell_303_biasadd_readvariableop_resource:	?
identity??$lstm_cell_303/BiasAdd/ReadVariableOp?#lstm_cell_303/MatMul/ReadVariableOp?%lstm_cell_303/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_303/MatMul/ReadVariableOpReadVariableOp,lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_303/MatMulMatMulstrided_slice_2:output:0+lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_303/MatMul_1MatMulzeros:output:0-lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_303/addAddV2lstm_cell_303/MatMul:product:0 lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_303/BiasAddBiasAddlstm_cell_303/add:z:0,lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_303/splitSplit&lstm_cell_303/split/split_dim:output:0lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_303/SigmoidSigmoidlstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_1Sigmoidlstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_303/mulMullstm_cell_303/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_303/ReluRelulstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_1Mullstm_cell_303/Sigmoid:y:0 lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_303/add_1AddV2lstm_cell_303/mul:z:0lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_2Sigmoidlstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_303/Relu_1Relulstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_2Mullstm_cell_303/Sigmoid_2:y:0"lstm_cell_303/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_303_matmul_readvariableop_resource.lstm_cell_303_matmul_1_readvariableop_resource-lstm_cell_303_biasadd_readvariableop_resource*
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
while_body_1847378*
condR
while_cond_1847377*K
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
NoOpNoOp%^lstm_cell_303/BiasAdd/ReadVariableOp$^lstm_cell_303/MatMul/ReadVariableOp&^lstm_cell_303/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_303/BiasAdd/ReadVariableOp$lstm_cell_303/BiasAdd/ReadVariableOp2J
#lstm_cell_303/MatMul/ReadVariableOp#lstm_cell_303/MatMul/ReadVariableOp2N
%lstm_cell_303/MatMul_1/ReadVariableOp%lstm_cell_303/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1850648

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
while_body_1848831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_303_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_303_matmul_readvariableop_resource:	?G
4while_lstm_cell_303_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_303_biasadd_readvariableop_resource:	???*while/lstm_cell_303/BiasAdd/ReadVariableOp?)while/lstm_cell_303/MatMul/ReadVariableOp?+while/lstm_cell_303/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_303/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_303/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_303/addAddV2$while/lstm_cell_303/MatMul:product:0&while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_303/BiasAddBiasAddwhile/lstm_cell_303/add:z:02while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_303/splitSplit,while/lstm_cell_303/split/split_dim:output:0$while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_303/SigmoidSigmoid"while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_1Sigmoid"while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mulMul!while/lstm_cell_303/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_303/ReluRelu"while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_1Mulwhile/lstm_cell_303/Sigmoid:y:0&while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/add_1AddV2while/lstm_cell_303/mul:z:0while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_2Sigmoid"while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_303/Relu_1Reluwhile/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_2Mul!while/lstm_cell_303/Sigmoid_2:y:0(while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_303/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_303/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_303/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_303/BiasAdd/ReadVariableOp*^while/lstm_cell_303/MatMul/ReadVariableOp,^while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_303_biasadd_readvariableop_resource5while_lstm_cell_303_biasadd_readvariableop_resource_0"n
4while_lstm_cell_303_matmul_1_readvariableop_resource6while_lstm_cell_303_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_303_matmul_readvariableop_resource4while_lstm_cell_303_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_303/BiasAdd/ReadVariableOp*while/lstm_cell_303/BiasAdd/ReadVariableOp2V
)while/lstm_cell_303/MatMul/ReadVariableOp)while/lstm_cell_303/MatMul/ReadVariableOp2Z
+while/lstm_cell_303/MatMul_1/ReadVariableOp+while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1848974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_303_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_303_matmul_readvariableop_resource:	?G
4while_lstm_cell_303_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_303_biasadd_readvariableop_resource:	???*while/lstm_cell_303/BiasAdd/ReadVariableOp?)while/lstm_cell_303/MatMul/ReadVariableOp?+while/lstm_cell_303/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_303/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_303/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_303/addAddV2$while/lstm_cell_303/MatMul:product:0&while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_303/BiasAddBiasAddwhile/lstm_cell_303/add:z:02while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_303/splitSplit,while/lstm_cell_303/split/split_dim:output:0$while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_303/SigmoidSigmoid"while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_1Sigmoid"while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mulMul!while/lstm_cell_303/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_303/ReluRelu"while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_1Mulwhile/lstm_cell_303/Sigmoid:y:0&while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/add_1AddV2while/lstm_cell_303/mul:z:0while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_2Sigmoid"while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_303/Relu_1Reluwhile/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_2Mul!while/lstm_cell_303/Sigmoid_2:y:0(while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_303/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_303/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_303/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_303/BiasAdd/ReadVariableOp*^while/lstm_cell_303/MatMul/ReadVariableOp,^while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_303_biasadd_readvariableop_resource5while_lstm_cell_303_biasadd_readvariableop_resource_0"n
4while_lstm_cell_303_matmul_1_readvariableop_resource6while_lstm_cell_303_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_303_matmul_readvariableop_resource4while_lstm_cell_303_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_303/BiasAdd/ReadVariableOp*while/lstm_cell_303/BiasAdd/ReadVariableOp2V
)while/lstm_cell_303/MatMul/ReadVariableOp)while/lstm_cell_303/MatMul/ReadVariableOp2Z
+while/lstm_cell_303/MatMul_1/ReadVariableOp+while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850433

inputs>
,lstm_cell_305_matmul_readvariableop_resource:2(@
.lstm_cell_305_matmul_1_readvariableop_resource:
(;
-lstm_cell_305_biasadd_readvariableop_resource:(
identity??$lstm_cell_305/BiasAdd/ReadVariableOp?#lstm_cell_305/MatMul/ReadVariableOp?%lstm_cell_305/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_305/MatMul/ReadVariableOpReadVariableOp,lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_305/MatMulMatMulstrided_slice_2:output:0+lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_305/MatMul_1MatMulzeros:output:0-lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_305/addAddV2lstm_cell_305/MatMul:product:0 lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_305/BiasAddBiasAddlstm_cell_305/add:z:0,lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_305/splitSplit&lstm_cell_305/split/split_dim:output:0lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_305/SigmoidSigmoidlstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_1Sigmoidlstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_305/mulMullstm_cell_305/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_305/ReluRelulstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_1Mullstm_cell_305/Sigmoid:y:0 lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_305/add_1AddV2lstm_cell_305/mul:z:0lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_2Sigmoidlstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_305/Relu_1Relulstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_2Mullstm_cell_305/Sigmoid_2:y:0"lstm_cell_305/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_305_matmul_readvariableop_resource.lstm_cell_305_matmul_1_readvariableop_resource-lstm_cell_305_biasadd_readvariableop_resource*
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
while_body_1850349*
condR
while_cond_1850348*K
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
NoOpNoOp%^lstm_cell_305/BiasAdd/ReadVariableOp$^lstm_cell_305/MatMul/ReadVariableOp&^lstm_cell_305/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_305/BiasAdd/ReadVariableOp$lstm_cell_305/BiasAdd/ReadVariableOp2J
#lstm_cell_305/MatMul/ReadVariableOp#lstm_cell_305/MatMul/ReadVariableOp2N
%lstm_cell_305/MatMul_1/ReadVariableOp%lstm_cell_305/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846916

inputs>
,lstm_cell_305_matmul_readvariableop_resource:2(@
.lstm_cell_305_matmul_1_readvariableop_resource:
(;
-lstm_cell_305_biasadd_readvariableop_resource:(
identity??$lstm_cell_305/BiasAdd/ReadVariableOp?#lstm_cell_305/MatMul/ReadVariableOp?%lstm_cell_305/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_305/MatMul/ReadVariableOpReadVariableOp,lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_305/MatMulMatMulstrided_slice_2:output:0+lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_305/MatMul_1MatMulzeros:output:0-lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_305/addAddV2lstm_cell_305/MatMul:product:0 lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_305/BiasAddBiasAddlstm_cell_305/add:z:0,lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_305/splitSplit&lstm_cell_305/split/split_dim:output:0lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_305/SigmoidSigmoidlstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_1Sigmoidlstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_305/mulMullstm_cell_305/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_305/ReluRelulstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_1Mullstm_cell_305/Sigmoid:y:0 lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_305/add_1AddV2lstm_cell_305/mul:z:0lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_2Sigmoidlstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_305/Relu_1Relulstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_2Mullstm_cell_305/Sigmoid_2:y:0"lstm_cell_305/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_305_matmul_readvariableop_resource.lstm_cell_305_matmul_1_readvariableop_resource-lstm_cell_305_biasadd_readvariableop_resource*
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
while_body_1846832*
condR
while_cond_1846831*K
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
NoOpNoOp%^lstm_cell_305/BiasAdd/ReadVariableOp$^lstm_cell_305/MatMul/ReadVariableOp&^lstm_cell_305/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_305/BiasAdd/ReadVariableOp$lstm_cell_305/BiasAdd/ReadVariableOp2J
#lstm_cell_305/MatMul/ReadVariableOp#lstm_cell_305/MatMul/ReadVariableOp2N
%lstm_cell_305/MatMul_1/ReadVariableOp%lstm_cell_305/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1850349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_305_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_305_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_305_matmul_readvariableop_resource:2(F
4while_lstm_cell_305_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_305_biasadd_readvariableop_resource:(??*while/lstm_cell_305/BiasAdd/ReadVariableOp?)while/lstm_cell_305/MatMul/ReadVariableOp?+while/lstm_cell_305/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_305/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_305/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_305/addAddV2$while/lstm_cell_305/MatMul:product:0&while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_305/BiasAddBiasAddwhile/lstm_cell_305/add:z:02while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_305/splitSplit,while/lstm_cell_305/split/split_dim:output:0$while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_305/SigmoidSigmoid"while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_1Sigmoid"while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mulMul!while/lstm_cell_305/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_305/ReluRelu"while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_1Mulwhile/lstm_cell_305/Sigmoid:y:0&while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/add_1AddV2while/lstm_cell_305/mul:z:0while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_2Sigmoid"while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_305/Relu_1Reluwhile/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_2Mul!while/lstm_cell_305/Sigmoid_2:y:0(while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_305/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_305/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_305/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_305/BiasAdd/ReadVariableOp*^while/lstm_cell_305/MatMul/ReadVariableOp,^while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_305_biasadd_readvariableop_resource5while_lstm_cell_305_biasadd_readvariableop_resource_0"n
4while_lstm_cell_305_matmul_1_readvariableop_resource6while_lstm_cell_305_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_305_matmul_readvariableop_resource4while_lstm_cell_305_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_305/BiasAdd/ReadVariableOp*while/lstm_cell_305/BiasAdd/ReadVariableOp2V
)while/lstm_cell_305/MatMul/ReadVariableOp)while/lstm_cell_305/MatMul/ReadVariableOp2Z
+while/lstm_cell_305/MatMul_1/ReadVariableOp+while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_303_layer_call_fn_1850486

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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845630o
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
*__inference_lstm_497_layer_call_fn_1849828
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846267o
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
?J
?
E__inference_lstm_496_layer_call_and_return_conditional_losses_1847297

inputs?
,lstm_cell_304_matmul_readvariableop_resource:	d?A
.lstm_cell_304_matmul_1_readvariableop_resource:	2?<
-lstm_cell_304_biasadd_readvariableop_resource:	?
identity??$lstm_cell_304/BiasAdd/ReadVariableOp?#lstm_cell_304/MatMul/ReadVariableOp?%lstm_cell_304/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_304/MatMul/ReadVariableOpReadVariableOp,lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_304/MatMulMatMulstrided_slice_2:output:0+lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_304/MatMul_1MatMulzeros:output:0-lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_304/addAddV2lstm_cell_304/MatMul:product:0 lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_304/BiasAddBiasAddlstm_cell_304/add:z:0,lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_304/splitSplit&lstm_cell_304/split/split_dim:output:0lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_304/SigmoidSigmoidlstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_1Sigmoidlstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_304/mulMullstm_cell_304/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_304/ReluRelulstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_1Mullstm_cell_304/Sigmoid:y:0 lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_304/add_1AddV2lstm_cell_304/mul:z:0lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_2Sigmoidlstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_304/Relu_1Relulstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_2Mullstm_cell_304/Sigmoid_2:y:0"lstm_cell_304/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_304_matmul_readvariableop_resource.lstm_cell_304_matmul_1_readvariableop_resource-lstm_cell_304_biasadd_readvariableop_resource*
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
while_body_1847213*
condR
while_cond_1847212*K
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
NoOpNoOp%^lstm_cell_304/BiasAdd/ReadVariableOp$^lstm_cell_304/MatMul/ReadVariableOp&^lstm_cell_304/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_304/BiasAdd/ReadVariableOp$lstm_cell_304/BiasAdd/ReadVariableOp2J
#lstm_cell_304/MatMul/ReadVariableOp#lstm_cell_304/MatMul/ReadVariableOp2N
%lstm_cell_304/MatMul_1/ReadVariableOp%lstm_cell_304/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1850348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1850348___redundant_placeholder05
1while_while_cond_1850348___redundant_placeholder15
1while_while_cond_1850348___redundant_placeholder25
1while_while_cond_1850348___redundant_placeholder3
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
?T
?
*sequential_165_lstm_496_while_body_1845188L
Hsequential_165_lstm_496_while_sequential_165_lstm_496_while_loop_counterR
Nsequential_165_lstm_496_while_sequential_165_lstm_496_while_maximum_iterations-
)sequential_165_lstm_496_while_placeholder/
+sequential_165_lstm_496_while_placeholder_1/
+sequential_165_lstm_496_while_placeholder_2/
+sequential_165_lstm_496_while_placeholder_3K
Gsequential_165_lstm_496_while_sequential_165_lstm_496_strided_slice_1_0?
?sequential_165_lstm_496_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_496_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_165_lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0:	d?a
Nsequential_165_lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?\
Msequential_165_lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0:	?*
&sequential_165_lstm_496_while_identity,
(sequential_165_lstm_496_while_identity_1,
(sequential_165_lstm_496_while_identity_2,
(sequential_165_lstm_496_while_identity_3,
(sequential_165_lstm_496_while_identity_4,
(sequential_165_lstm_496_while_identity_5I
Esequential_165_lstm_496_while_sequential_165_lstm_496_strided_slice_1?
?sequential_165_lstm_496_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_496_tensorarrayunstack_tensorlistfromtensor]
Jsequential_165_lstm_496_while_lstm_cell_304_matmul_readvariableop_resource:	d?_
Lsequential_165_lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource:	2?Z
Ksequential_165_lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource:	???Bsequential_165/lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp?Asequential_165/lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp?Csequential_165/lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp?
Osequential_165/lstm_496/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_165/lstm_496/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_165_lstm_496_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_496_tensorarrayunstack_tensorlistfromtensor_0)sequential_165_lstm_496_while_placeholderXsequential_165/lstm_496/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_165/lstm_496/while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOpLsequential_165_lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_165/lstm_496/while/lstm_cell_304/MatMulMatMulHsequential_165/lstm_496/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_165/lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_165/lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOpNsequential_165_lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_165/lstm_496/while/lstm_cell_304/MatMul_1MatMul+sequential_165_lstm_496_while_placeholder_2Ksequential_165/lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_165/lstm_496/while/lstm_cell_304/addAddV2<sequential_165/lstm_496/while/lstm_cell_304/MatMul:product:0>sequential_165/lstm_496/while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_165/lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOpMsequential_165_lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_165/lstm_496/while/lstm_cell_304/BiasAddBiasAdd3sequential_165/lstm_496/while/lstm_cell_304/add:z:0Jsequential_165/lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_165/lstm_496/while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_165/lstm_496/while/lstm_cell_304/splitSplitDsequential_165/lstm_496/while/lstm_cell_304/split/split_dim:output:0<sequential_165/lstm_496/while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_165/lstm_496/while/lstm_cell_304/SigmoidSigmoid:sequential_165/lstm_496/while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_165/lstm_496/while/lstm_cell_304/Sigmoid_1Sigmoid:sequential_165/lstm_496/while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_165/lstm_496/while/lstm_cell_304/mulMul9sequential_165/lstm_496/while/lstm_cell_304/Sigmoid_1:y:0+sequential_165_lstm_496_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_165/lstm_496/while/lstm_cell_304/ReluRelu:sequential_165/lstm_496/while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_165/lstm_496/while/lstm_cell_304/mul_1Mul7sequential_165/lstm_496/while/lstm_cell_304/Sigmoid:y:0>sequential_165/lstm_496/while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_165/lstm_496/while/lstm_cell_304/add_1AddV23sequential_165/lstm_496/while/lstm_cell_304/mul:z:05sequential_165/lstm_496/while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_165/lstm_496/while/lstm_cell_304/Sigmoid_2Sigmoid:sequential_165/lstm_496/while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_165/lstm_496/while/lstm_cell_304/Relu_1Relu5sequential_165/lstm_496/while/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_165/lstm_496/while/lstm_cell_304/mul_2Mul9sequential_165/lstm_496/while/lstm_cell_304/Sigmoid_2:y:0@sequential_165/lstm_496/while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_165/lstm_496/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_165_lstm_496_while_placeholder_1)sequential_165_lstm_496_while_placeholder5sequential_165/lstm_496/while/lstm_cell_304/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_165/lstm_496/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_165/lstm_496/while/addAddV2)sequential_165_lstm_496_while_placeholder,sequential_165/lstm_496/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_165/lstm_496/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_165/lstm_496/while/add_1AddV2Hsequential_165_lstm_496_while_sequential_165_lstm_496_while_loop_counter.sequential_165/lstm_496/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_165/lstm_496/while/IdentityIdentity'sequential_165/lstm_496/while/add_1:z:0#^sequential_165/lstm_496/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_496/while/Identity_1IdentityNsequential_165_lstm_496_while_sequential_165_lstm_496_while_maximum_iterations#^sequential_165/lstm_496/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_496/while/Identity_2Identity%sequential_165/lstm_496/while/add:z:0#^sequential_165/lstm_496/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_496/while/Identity_3IdentityRsequential_165/lstm_496/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_165/lstm_496/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_496/while/Identity_4Identity5sequential_165/lstm_496/while/lstm_cell_304/mul_2:z:0#^sequential_165/lstm_496/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_165/lstm_496/while/Identity_5Identity5sequential_165/lstm_496/while/lstm_cell_304/add_1:z:0#^sequential_165/lstm_496/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_165/lstm_496/while/NoOpNoOpC^sequential_165/lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOpB^sequential_165/lstm_496/while/lstm_cell_304/MatMul/ReadVariableOpD^sequential_165/lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_165_lstm_496_while_identity/sequential_165/lstm_496/while/Identity:output:0"]
(sequential_165_lstm_496_while_identity_11sequential_165/lstm_496/while/Identity_1:output:0"]
(sequential_165_lstm_496_while_identity_21sequential_165/lstm_496/while/Identity_2:output:0"]
(sequential_165_lstm_496_while_identity_31sequential_165/lstm_496/while/Identity_3:output:0"]
(sequential_165_lstm_496_while_identity_41sequential_165/lstm_496/while/Identity_4:output:0"]
(sequential_165_lstm_496_while_identity_51sequential_165/lstm_496/while/Identity_5:output:0"?
Ksequential_165_lstm_496_while_lstm_cell_304_biasadd_readvariableop_resourceMsequential_165_lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0"?
Lsequential_165_lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resourceNsequential_165_lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0"?
Jsequential_165_lstm_496_while_lstm_cell_304_matmul_readvariableop_resourceLsequential_165_lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0"?
Esequential_165_lstm_496_while_sequential_165_lstm_496_strided_slice_1Gsequential_165_lstm_496_while_sequential_165_lstm_496_strided_slice_1_0"?
?sequential_165_lstm_496_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_496_tensorarrayunstack_tensorlistfromtensor?sequential_165_lstm_496_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_496_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_165/lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOpBsequential_165/lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp2?
Asequential_165/lstm_496/while/lstm_cell_304/MatMul/ReadVariableOpAsequential_165/lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp2?
Csequential_165/lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOpCsequential_165/lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_497_while_cond_1848067.
*lstm_497_while_lstm_497_while_loop_counter4
0lstm_497_while_lstm_497_while_maximum_iterations
lstm_497_while_placeholder 
lstm_497_while_placeholder_1 
lstm_497_while_placeholder_2 
lstm_497_while_placeholder_30
,lstm_497_while_less_lstm_497_strided_slice_1G
Clstm_497_while_lstm_497_while_cond_1848067___redundant_placeholder0G
Clstm_497_while_lstm_497_while_cond_1848067___redundant_placeholder1G
Clstm_497_while_lstm_497_while_cond_1848067___redundant_placeholder2G
Clstm_497_while_lstm_497_while_cond_1848067___redundant_placeholder3
lstm_497_while_identity
?
lstm_497/while/LessLesslstm_497_while_placeholder,lstm_497_while_less_lstm_497_strided_slice_1*
T0*
_output_shapes
: ]
lstm_497/while/IdentityIdentitylstm_497/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_497_while_identity lstm_497/while/Identity:output:0*(
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
while_cond_1849303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1849303___redundant_placeholder05
1while_while_cond_1849303___redundant_placeholder15
1while_while_cond_1849303___redundant_placeholder25
1while_while_cond_1849303___redundant_placeholder3
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
while_body_1847378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_303_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_303_matmul_readvariableop_resource:	?G
4while_lstm_cell_303_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_303_biasadd_readvariableop_resource:	???*while/lstm_cell_303/BiasAdd/ReadVariableOp?)while/lstm_cell_303/MatMul/ReadVariableOp?+while/lstm_cell_303/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_303/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_303/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_303/addAddV2$while/lstm_cell_303/MatMul:product:0&while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_303/BiasAddBiasAddwhile/lstm_cell_303/add:z:02while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_303/splitSplit,while/lstm_cell_303/split/split_dim:output:0$while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_303/SigmoidSigmoid"while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_1Sigmoid"while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mulMul!while/lstm_cell_303/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_303/ReluRelu"while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_1Mulwhile/lstm_cell_303/Sigmoid:y:0&while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/add_1AddV2while/lstm_cell_303/mul:z:0while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_2Sigmoid"while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_303/Relu_1Reluwhile/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_2Mul!while/lstm_cell_303/Sigmoid_2:y:0(while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_303/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_303/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_303/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_303/BiasAdd/ReadVariableOp*^while/lstm_cell_303/MatMul/ReadVariableOp,^while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_303_biasadd_readvariableop_resource5while_lstm_cell_303_biasadd_readvariableop_resource_0"n
4while_lstm_cell_303_matmul_1_readvariableop_resource6while_lstm_cell_303_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_303_matmul_readvariableop_resource4while_lstm_cell_303_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_303/BiasAdd/ReadVariableOp*while/lstm_cell_303/BiasAdd/ReadVariableOp2V
)while/lstm_cell_303/MatMul/ReadVariableOp)while/lstm_cell_303/MatMul/ReadVariableOp2Z
+while/lstm_cell_303/MatMul_1/ReadVariableOp+while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850004
inputs_0>
,lstm_cell_305_matmul_readvariableop_resource:2(@
.lstm_cell_305_matmul_1_readvariableop_resource:
(;
-lstm_cell_305_biasadd_readvariableop_resource:(
identity??$lstm_cell_305/BiasAdd/ReadVariableOp?#lstm_cell_305/MatMul/ReadVariableOp?%lstm_cell_305/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_305/MatMul/ReadVariableOpReadVariableOp,lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_305/MatMulMatMulstrided_slice_2:output:0+lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_305/MatMul_1MatMulzeros:output:0-lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_305/addAddV2lstm_cell_305/MatMul:product:0 lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_305/BiasAddBiasAddlstm_cell_305/add:z:0,lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_305/splitSplit&lstm_cell_305/split/split_dim:output:0lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_305/SigmoidSigmoidlstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_1Sigmoidlstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_305/mulMullstm_cell_305/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_305/ReluRelulstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_1Mullstm_cell_305/Sigmoid:y:0 lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_305/add_1AddV2lstm_cell_305/mul:z:0lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_2Sigmoidlstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_305/Relu_1Relulstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_2Mullstm_cell_305/Sigmoid_2:y:0"lstm_cell_305/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_305_matmul_readvariableop_resource.lstm_cell_305_matmul_1_readvariableop_resource-lstm_cell_305_biasadd_readvariableop_resource*
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
while_body_1849920*
condR
while_cond_1849919*K
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
NoOpNoOp%^lstm_cell_305/BiasAdd/ReadVariableOp$^lstm_cell_305/MatMul/ReadVariableOp&^lstm_cell_305/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_305/BiasAdd/ReadVariableOp$lstm_cell_305/BiasAdd/ReadVariableOp2J
#lstm_cell_305/MatMul/ReadVariableOp#lstm_cell_305/MatMul/ReadVariableOp2N
%lstm_cell_305/MatMul_1/ReadVariableOp%lstm_cell_305/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_497_layer_call_fn_1849861

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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1847132o
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
?
while_cond_1848830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1848830___redundant_placeholder05
1while_while_cond_1848830___redundant_placeholder15
1while_while_cond_1848830___redundant_placeholder25
1while_while_cond_1848830___redundant_placeholder3
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
0__inference_sequential_165_layer_call_fn_1847582
lstm_495_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847530o
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
_user_specified_namelstm_495_input
?
?
while_cond_1848687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1848687___redundant_placeholder05
1while_while_cond_1848687___redundant_placeholder15
1while_while_cond_1848687___redundant_placeholder25
1while_while_cond_1848687___redundant_placeholder3
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845834

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
while_cond_1847212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1847212___redundant_placeholder05
1while_while_cond_1847212___redundant_placeholder15
1while_while_cond_1847212___redundant_placeholder25
1while_while_cond_1847212___redundant_placeholder3
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1848772
inputs_0?
,lstm_cell_303_matmul_readvariableop_resource:	?A
.lstm_cell_303_matmul_1_readvariableop_resource:	d?<
-lstm_cell_303_biasadd_readvariableop_resource:	?
identity??$lstm_cell_303/BiasAdd/ReadVariableOp?#lstm_cell_303/MatMul/ReadVariableOp?%lstm_cell_303/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_303/MatMul/ReadVariableOpReadVariableOp,lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_303/MatMulMatMulstrided_slice_2:output:0+lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_303/MatMul_1MatMulzeros:output:0-lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_303/addAddV2lstm_cell_303/MatMul:product:0 lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_303/BiasAddBiasAddlstm_cell_303/add:z:0,lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_303/splitSplit&lstm_cell_303/split/split_dim:output:0lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_303/SigmoidSigmoidlstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_1Sigmoidlstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_303/mulMullstm_cell_303/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_303/ReluRelulstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_1Mullstm_cell_303/Sigmoid:y:0 lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_303/add_1AddV2lstm_cell_303/mul:z:0lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_2Sigmoidlstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_303/Relu_1Relulstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_2Mullstm_cell_303/Sigmoid_2:y:0"lstm_cell_303/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_303_matmul_readvariableop_resource.lstm_cell_303_matmul_1_readvariableop_resource-lstm_cell_303_biasadd_readvariableop_resource*
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
while_body_1848688*
condR
while_cond_1848687*K
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
NoOpNoOp%^lstm_cell_303/BiasAdd/ReadVariableOp$^lstm_cell_303/MatMul/ReadVariableOp&^lstm_cell_303/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_303/BiasAdd/ReadVariableOp$lstm_cell_303/BiasAdd/ReadVariableOp2J
#lstm_cell_303/MatMul/ReadVariableOp#lstm_cell_303/MatMul/ReadVariableOp2N
%lstm_cell_303/MatMul_1/ReadVariableOp%lstm_cell_303/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
0__inference_sequential_165_layer_call_fn_1847704

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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1846941o
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
while_body_1848688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_303_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_303_matmul_readvariableop_resource:	?G
4while_lstm_cell_303_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_303_biasadd_readvariableop_resource:	???*while/lstm_cell_303/BiasAdd/ReadVariableOp?)while/lstm_cell_303/MatMul/ReadVariableOp?+while/lstm_cell_303/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_303/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_303/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_303/addAddV2$while/lstm_cell_303/MatMul:product:0&while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_303/BiasAddBiasAddwhile/lstm_cell_303/add:z:02while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_303/splitSplit,while/lstm_cell_303/split/split_dim:output:0$while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_303/SigmoidSigmoid"while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_1Sigmoid"while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mulMul!while/lstm_cell_303/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_303/ReluRelu"while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_1Mulwhile/lstm_cell_303/Sigmoid:y:0&while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/add_1AddV2while/lstm_cell_303/mul:z:0while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_2Sigmoid"while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_303/Relu_1Reluwhile/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_2Mul!while/lstm_cell_303/Sigmoid_2:y:0(while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_303/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_303/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_303/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_303/BiasAdd/ReadVariableOp*^while/lstm_cell_303/MatMul/ReadVariableOp,^while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_303_biasadd_readvariableop_resource5while_lstm_cell_303_biasadd_readvariableop_resource_0"n
4while_lstm_cell_303_matmul_1_readvariableop_resource6while_lstm_cell_303_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_303_matmul_readvariableop_resource4while_lstm_cell_303_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_303/BiasAdd/ReadVariableOp*while/lstm_cell_303/BiasAdd/ReadVariableOp2V
)while/lstm_cell_303/MatMul/ReadVariableOp)while/lstm_cell_303/MatMul/ReadVariableOp2Z
+while/lstm_cell_303/MatMul_1/ReadVariableOp+while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1849920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_305_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_305_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_305_matmul_readvariableop_resource:2(F
4while_lstm_cell_305_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_305_biasadd_readvariableop_resource:(??*while/lstm_cell_305/BiasAdd/ReadVariableOp?)while/lstm_cell_305/MatMul/ReadVariableOp?+while/lstm_cell_305/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_305/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_305/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_305/addAddV2$while/lstm_cell_305/MatMul:product:0&while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_305/BiasAddBiasAddwhile/lstm_cell_305/add:z:02while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_305/splitSplit,while/lstm_cell_305/split/split_dim:output:0$while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_305/SigmoidSigmoid"while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_1Sigmoid"while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mulMul!while/lstm_cell_305/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_305/ReluRelu"while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_1Mulwhile/lstm_cell_305/Sigmoid:y:0&while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/add_1AddV2while/lstm_cell_305/mul:z:0while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_2Sigmoid"while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_305/Relu_1Reluwhile/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_2Mul!while/lstm_cell_305/Sigmoid_2:y:0(while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_305/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_305/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_305/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_305/BiasAdd/ReadVariableOp*^while/lstm_cell_305/MatMul/ReadVariableOp,^while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_305_biasadd_readvariableop_resource5while_lstm_cell_305_biasadd_readvariableop_resource_0"n
4while_lstm_cell_305_matmul_1_readvariableop_resource6while_lstm_cell_305_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_305_matmul_readvariableop_resource4while_lstm_cell_305_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_305/BiasAdd/ReadVariableOp*while/lstm_cell_305/BiasAdd/ReadVariableOp2V
)while/lstm_cell_305/MatMul/ReadVariableOp)while/lstm_cell_305/MatMul/ReadVariableOp2Z
+while/lstm_cell_305/MatMul_1/ReadVariableOp+while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1846831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1846831___redundant_placeholder05
1while_while_cond_1846831___redundant_placeholder15
1while_while_cond_1846831___redundant_placeholder25
1while_while_cond_1846831___redundant_placeholder3
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1845567

inputs(
lstm_cell_303_1845485:	?(
lstm_cell_303_1845487:	d?$
lstm_cell_303_1845489:	?
identity??%lstm_cell_303/StatefulPartitionedCall?while;
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
%lstm_cell_303/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_303_1845485lstm_cell_303_1845487lstm_cell_303_1845489*
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845484n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_303_1845485lstm_cell_303_1845487lstm_cell_303_1845489*
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
while_body_1845498*
condR
while_cond_1845497*K
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
NoOpNoOp&^lstm_cell_303/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_303/StatefulPartitionedCall%lstm_cell_303/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1849116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1849116___redundant_placeholder05
1while_while_cond_1849116___redundant_placeholder15
1while_while_cond_1849116___redundant_placeholder25
1while_while_cond_1849116___redundant_placeholder3
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849388
inputs_0?
,lstm_cell_304_matmul_readvariableop_resource:	d?A
.lstm_cell_304_matmul_1_readvariableop_resource:	2?<
-lstm_cell_304_biasadd_readvariableop_resource:	?
identity??$lstm_cell_304/BiasAdd/ReadVariableOp?#lstm_cell_304/MatMul/ReadVariableOp?%lstm_cell_304/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_304/MatMul/ReadVariableOpReadVariableOp,lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_304/MatMulMatMulstrided_slice_2:output:0+lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_304/MatMul_1MatMulzeros:output:0-lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_304/addAddV2lstm_cell_304/MatMul:product:0 lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_304/BiasAddBiasAddlstm_cell_304/add:z:0,lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_304/splitSplit&lstm_cell_304/split/split_dim:output:0lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_304/SigmoidSigmoidlstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_1Sigmoidlstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_304/mulMullstm_cell_304/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_304/ReluRelulstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_1Mullstm_cell_304/Sigmoid:y:0 lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_304/add_1AddV2lstm_cell_304/mul:z:0lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_2Sigmoidlstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_304/Relu_1Relulstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_2Mullstm_cell_304/Sigmoid_2:y:0"lstm_cell_304/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_304_matmul_readvariableop_resource.lstm_cell_304_matmul_1_readvariableop_resource-lstm_cell_304_biasadd_readvariableop_resource*
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
while_body_1849304*
condR
while_cond_1849303*K
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
NoOpNoOp%^lstm_cell_304/BiasAdd/ReadVariableOp$^lstm_cell_304/MatMul/ReadVariableOp&^lstm_cell_304/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_304/BiasAdd/ReadVariableOp$lstm_cell_304/BiasAdd/ReadVariableOp2J
#lstm_cell_304/MatMul/ReadVariableOp#lstm_cell_304/MatMul/ReadVariableOp2N
%lstm_cell_304/MatMul_1/ReadVariableOp%lstm_cell_304/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1849733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_304_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_304_matmul_readvariableop_resource:	d?G
4while_lstm_cell_304_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_304_biasadd_readvariableop_resource:	???*while/lstm_cell_304/BiasAdd/ReadVariableOp?)while/lstm_cell_304/MatMul/ReadVariableOp?+while/lstm_cell_304/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_304/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_304/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_304/addAddV2$while/lstm_cell_304/MatMul:product:0&while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_304/BiasAddBiasAddwhile/lstm_cell_304/add:z:02while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_304/splitSplit,while/lstm_cell_304/split/split_dim:output:0$while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_304/SigmoidSigmoid"while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_1Sigmoid"while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mulMul!while/lstm_cell_304/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_304/ReluRelu"while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_1Mulwhile/lstm_cell_304/Sigmoid:y:0&while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/add_1AddV2while/lstm_cell_304/mul:z:0while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_2Sigmoid"while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_304/Relu_1Reluwhile/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_2Mul!while/lstm_cell_304/Sigmoid_2:y:0(while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_304/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_304/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_304/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_304/BiasAdd/ReadVariableOp*^while/lstm_cell_304/MatMul/ReadVariableOp,^while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_304_biasadd_readvariableop_resource5while_lstm_cell_304_biasadd_readvariableop_resource_0"n
4while_lstm_cell_304_matmul_1_readvariableop_resource6while_lstm_cell_304_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_304_matmul_readvariableop_resource4while_lstm_cell_304_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_304/BiasAdd/ReadVariableOp*while/lstm_cell_304/BiasAdd/ReadVariableOp2V
)while/lstm_cell_304/MatMul/ReadVariableOp)while/lstm_cell_304/MatMul/ReadVariableOp2Z
+while/lstm_cell_304/MatMul_1/ReadVariableOp+while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_497_layer_call_fn_1849850

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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846916o
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
while_body_1847213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_304_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_304_matmul_readvariableop_resource:	d?G
4while_lstm_cell_304_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_304_biasadd_readvariableop_resource:	???*while/lstm_cell_304/BiasAdd/ReadVariableOp?)while/lstm_cell_304/MatMul/ReadVariableOp?+while/lstm_cell_304/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_304/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_304/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_304/addAddV2$while/lstm_cell_304/MatMul:product:0&while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_304/BiasAddBiasAddwhile/lstm_cell_304/add:z:02while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_304/splitSplit,while/lstm_cell_304/split/split_dim:output:0$while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_304/SigmoidSigmoid"while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_1Sigmoid"while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mulMul!while/lstm_cell_304/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_304/ReluRelu"while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_1Mulwhile/lstm_cell_304/Sigmoid:y:0&while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/add_1AddV2while/lstm_cell_304/mul:z:0while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_2Sigmoid"while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_304/Relu_1Reluwhile/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_2Mul!while/lstm_cell_304/Sigmoid_2:y:0(while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_304/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_304/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_304/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_304/BiasAdd/ReadVariableOp*^while/lstm_cell_304/MatMul/ReadVariableOp,^while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_304_biasadd_readvariableop_resource5while_lstm_cell_304_biasadd_readvariableop_resource_0"n
4while_lstm_cell_304_matmul_1_readvariableop_resource6while_lstm_cell_304_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_304_matmul_readvariableop_resource4while_lstm_cell_304_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_304/BiasAdd/ReadVariableOp*while/lstm_cell_304/BiasAdd/ReadVariableOp2V
)while/lstm_cell_304/MatMul/ReadVariableOp)while/lstm_cell_304/MatMul/ReadVariableOp2Z
+while/lstm_cell_304/MatMul_1/ReadVariableOp+while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1848585

inputsH
5lstm_495_lstm_cell_303_matmul_readvariableop_resource:	?J
7lstm_495_lstm_cell_303_matmul_1_readvariableop_resource:	d?E
6lstm_495_lstm_cell_303_biasadd_readvariableop_resource:	?H
5lstm_496_lstm_cell_304_matmul_readvariableop_resource:	d?J
7lstm_496_lstm_cell_304_matmul_1_readvariableop_resource:	2?E
6lstm_496_lstm_cell_304_biasadd_readvariableop_resource:	?G
5lstm_497_lstm_cell_305_matmul_readvariableop_resource:2(I
7lstm_497_lstm_cell_305_matmul_1_readvariableop_resource:
(D
6lstm_497_lstm_cell_305_biasadd_readvariableop_resource:(:
(dense_165_matmul_readvariableop_resource:
7
)dense_165_biasadd_readvariableop_resource:
identity?? dense_165/BiasAdd/ReadVariableOp?dense_165/MatMul/ReadVariableOp?-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp?,lstm_495/lstm_cell_303/MatMul/ReadVariableOp?.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp?lstm_495/while?-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp?,lstm_496/lstm_cell_304/MatMul/ReadVariableOp?.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp?lstm_496/while?-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp?,lstm_497/lstm_cell_305/MatMul/ReadVariableOp?.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp?lstm_497/whileD
lstm_495/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_495/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_495/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_495/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_sliceStridedSlicelstm_495/Shape:output:0%lstm_495/strided_slice/stack:output:0'lstm_495/strided_slice/stack_1:output:0'lstm_495/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_495/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_495/zeros/packedPacklstm_495/strided_slice:output:0 lstm_495/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_495/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_495/zerosFilllstm_495/zeros/packed:output:0lstm_495/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_495/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_495/zeros_1/packedPacklstm_495/strided_slice:output:0"lstm_495/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_495/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_495/zeros_1Fill lstm_495/zeros_1/packed:output:0lstm_495/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_495/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_495/transpose	Transposeinputs lstm_495/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_495/Shape_1Shapelstm_495/transpose:y:0*
T0*
_output_shapes
:h
lstm_495/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_495/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_495/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_slice_1StridedSlicelstm_495/Shape_1:output:0'lstm_495/strided_slice_1/stack:output:0)lstm_495/strided_slice_1/stack_1:output:0)lstm_495/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_495/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_495/TensorArrayV2TensorListReserve-lstm_495/TensorArrayV2/element_shape:output:0!lstm_495/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_495/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_495/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_495/transpose:y:0Glstm_495/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_495/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_495/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_495/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_slice_2StridedSlicelstm_495/transpose:y:0'lstm_495/strided_slice_2/stack:output:0)lstm_495/strided_slice_2/stack_1:output:0)lstm_495/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_495/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp5lstm_495_lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_495/lstm_cell_303/MatMulMatMul!lstm_495/strided_slice_2:output:04lstm_495/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp7lstm_495_lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_495/lstm_cell_303/MatMul_1MatMullstm_495/zeros:output:06lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_495/lstm_cell_303/addAddV2'lstm_495/lstm_cell_303/MatMul:product:0)lstm_495/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp6lstm_495_lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_495/lstm_cell_303/BiasAddBiasAddlstm_495/lstm_cell_303/add:z:05lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_495/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_495/lstm_cell_303/splitSplit/lstm_495/lstm_cell_303/split/split_dim:output:0'lstm_495/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_495/lstm_cell_303/SigmoidSigmoid%lstm_495/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_495/lstm_cell_303/Sigmoid_1Sigmoid%lstm_495/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/mulMul$lstm_495/lstm_cell_303/Sigmoid_1:y:0lstm_495/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_495/lstm_cell_303/ReluRelu%lstm_495/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/mul_1Mul"lstm_495/lstm_cell_303/Sigmoid:y:0)lstm_495/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/add_1AddV2lstm_495/lstm_cell_303/mul:z:0 lstm_495/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_495/lstm_cell_303/Sigmoid_2Sigmoid%lstm_495/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_495/lstm_cell_303/Relu_1Relu lstm_495/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/mul_2Mul$lstm_495/lstm_cell_303/Sigmoid_2:y:0+lstm_495/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_495/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_495/TensorArrayV2_1TensorListReserve/lstm_495/TensorArrayV2_1/element_shape:output:0!lstm_495/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_495/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_495/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_495/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_495/whileWhile$lstm_495/while/loop_counter:output:0*lstm_495/while/maximum_iterations:output:0lstm_495/time:output:0!lstm_495/TensorArrayV2_1:handle:0lstm_495/zeros:output:0lstm_495/zeros_1:output:0!lstm_495/strided_slice_1:output:0@lstm_495/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_495_lstm_cell_303_matmul_readvariableop_resource7lstm_495_lstm_cell_303_matmul_1_readvariableop_resource6lstm_495_lstm_cell_303_biasadd_readvariableop_resource*
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
lstm_495_while_body_1848217*'
condR
lstm_495_while_cond_1848216*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_495/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_495/TensorArrayV2Stack/TensorListStackTensorListStacklstm_495/while:output:3Blstm_495/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_495/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_495/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_495/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_slice_3StridedSlice4lstm_495/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_495/strided_slice_3/stack:output:0)lstm_495/strided_slice_3/stack_1:output:0)lstm_495/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_495/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_495/transpose_1	Transpose4lstm_495/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_495/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_495/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_496/ShapeShapelstm_495/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_496/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_496/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_496/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_sliceStridedSlicelstm_496/Shape:output:0%lstm_496/strided_slice/stack:output:0'lstm_496/strided_slice/stack_1:output:0'lstm_496/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_496/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_496/zeros/packedPacklstm_496/strided_slice:output:0 lstm_496/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_496/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_496/zerosFilllstm_496/zeros/packed:output:0lstm_496/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_496/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_496/zeros_1/packedPacklstm_496/strided_slice:output:0"lstm_496/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_496/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_496/zeros_1Fill lstm_496/zeros_1/packed:output:0lstm_496/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_496/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_496/transpose	Transposelstm_495/transpose_1:y:0 lstm_496/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_496/Shape_1Shapelstm_496/transpose:y:0*
T0*
_output_shapes
:h
lstm_496/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_496/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_496/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_slice_1StridedSlicelstm_496/Shape_1:output:0'lstm_496/strided_slice_1/stack:output:0)lstm_496/strided_slice_1/stack_1:output:0)lstm_496/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_496/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_496/TensorArrayV2TensorListReserve-lstm_496/TensorArrayV2/element_shape:output:0!lstm_496/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_496/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_496/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_496/transpose:y:0Glstm_496/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_496/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_496/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_496/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_slice_2StridedSlicelstm_496/transpose:y:0'lstm_496/strided_slice_2/stack:output:0)lstm_496/strided_slice_2/stack_1:output:0)lstm_496/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_496/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp5lstm_496_lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_496/lstm_cell_304/MatMulMatMul!lstm_496/strided_slice_2:output:04lstm_496/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp7lstm_496_lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_496/lstm_cell_304/MatMul_1MatMullstm_496/zeros:output:06lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_496/lstm_cell_304/addAddV2'lstm_496/lstm_cell_304/MatMul:product:0)lstm_496/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp6lstm_496_lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_496/lstm_cell_304/BiasAddBiasAddlstm_496/lstm_cell_304/add:z:05lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_496/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_496/lstm_cell_304/splitSplit/lstm_496/lstm_cell_304/split/split_dim:output:0'lstm_496/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_496/lstm_cell_304/SigmoidSigmoid%lstm_496/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_496/lstm_cell_304/Sigmoid_1Sigmoid%lstm_496/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/mulMul$lstm_496/lstm_cell_304/Sigmoid_1:y:0lstm_496/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_496/lstm_cell_304/ReluRelu%lstm_496/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/mul_1Mul"lstm_496/lstm_cell_304/Sigmoid:y:0)lstm_496/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/add_1AddV2lstm_496/lstm_cell_304/mul:z:0 lstm_496/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_496/lstm_cell_304/Sigmoid_2Sigmoid%lstm_496/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_496/lstm_cell_304/Relu_1Relu lstm_496/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/mul_2Mul$lstm_496/lstm_cell_304/Sigmoid_2:y:0+lstm_496/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_496/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_496/TensorArrayV2_1TensorListReserve/lstm_496/TensorArrayV2_1/element_shape:output:0!lstm_496/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_496/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_496/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_496/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_496/whileWhile$lstm_496/while/loop_counter:output:0*lstm_496/while/maximum_iterations:output:0lstm_496/time:output:0!lstm_496/TensorArrayV2_1:handle:0lstm_496/zeros:output:0lstm_496/zeros_1:output:0!lstm_496/strided_slice_1:output:0@lstm_496/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_496_lstm_cell_304_matmul_readvariableop_resource7lstm_496_lstm_cell_304_matmul_1_readvariableop_resource6lstm_496_lstm_cell_304_biasadd_readvariableop_resource*
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
lstm_496_while_body_1848356*'
condR
lstm_496_while_cond_1848355*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_496/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_496/TensorArrayV2Stack/TensorListStackTensorListStacklstm_496/while:output:3Blstm_496/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_496/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_496/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_496/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_slice_3StridedSlice4lstm_496/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_496/strided_slice_3/stack:output:0)lstm_496/strided_slice_3/stack_1:output:0)lstm_496/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_496/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_496/transpose_1	Transpose4lstm_496/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_496/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_496/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_497/ShapeShapelstm_496/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_497/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_497/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_497/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_sliceStridedSlicelstm_497/Shape:output:0%lstm_497/strided_slice/stack:output:0'lstm_497/strided_slice/stack_1:output:0'lstm_497/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_497/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_497/zeros/packedPacklstm_497/strided_slice:output:0 lstm_497/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_497/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_497/zerosFilllstm_497/zeros/packed:output:0lstm_497/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_497/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_497/zeros_1/packedPacklstm_497/strided_slice:output:0"lstm_497/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_497/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_497/zeros_1Fill lstm_497/zeros_1/packed:output:0lstm_497/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_497/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_497/transpose	Transposelstm_496/transpose_1:y:0 lstm_497/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_497/Shape_1Shapelstm_497/transpose:y:0*
T0*
_output_shapes
:h
lstm_497/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_497/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_497/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_slice_1StridedSlicelstm_497/Shape_1:output:0'lstm_497/strided_slice_1/stack:output:0)lstm_497/strided_slice_1/stack_1:output:0)lstm_497/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_497/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_497/TensorArrayV2TensorListReserve-lstm_497/TensorArrayV2/element_shape:output:0!lstm_497/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_497/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_497/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_497/transpose:y:0Glstm_497/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_497/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_497/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_497/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_slice_2StridedSlicelstm_497/transpose:y:0'lstm_497/strided_slice_2/stack:output:0)lstm_497/strided_slice_2/stack_1:output:0)lstm_497/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_497/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp5lstm_497_lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_497/lstm_cell_305/MatMulMatMul!lstm_497/strided_slice_2:output:04lstm_497/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp7lstm_497_lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_497/lstm_cell_305/MatMul_1MatMullstm_497/zeros:output:06lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_497/lstm_cell_305/addAddV2'lstm_497/lstm_cell_305/MatMul:product:0)lstm_497/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp6lstm_497_lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_497/lstm_cell_305/BiasAddBiasAddlstm_497/lstm_cell_305/add:z:05lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_497/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_497/lstm_cell_305/splitSplit/lstm_497/lstm_cell_305/split/split_dim:output:0'lstm_497/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_497/lstm_cell_305/SigmoidSigmoid%lstm_497/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_497/lstm_cell_305/Sigmoid_1Sigmoid%lstm_497/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/mulMul$lstm_497/lstm_cell_305/Sigmoid_1:y:0lstm_497/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_497/lstm_cell_305/ReluRelu%lstm_497/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/mul_1Mul"lstm_497/lstm_cell_305/Sigmoid:y:0)lstm_497/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/add_1AddV2lstm_497/lstm_cell_305/mul:z:0 lstm_497/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_497/lstm_cell_305/Sigmoid_2Sigmoid%lstm_497/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_497/lstm_cell_305/Relu_1Relu lstm_497/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/mul_2Mul$lstm_497/lstm_cell_305/Sigmoid_2:y:0+lstm_497/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_497/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_497/TensorArrayV2_1TensorListReserve/lstm_497/TensorArrayV2_1/element_shape:output:0!lstm_497/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_497/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_497/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_497/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_497/whileWhile$lstm_497/while/loop_counter:output:0*lstm_497/while/maximum_iterations:output:0lstm_497/time:output:0!lstm_497/TensorArrayV2_1:handle:0lstm_497/zeros:output:0lstm_497/zeros_1:output:0!lstm_497/strided_slice_1:output:0@lstm_497/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_497_lstm_cell_305_matmul_readvariableop_resource7lstm_497_lstm_cell_305_matmul_1_readvariableop_resource6lstm_497_lstm_cell_305_biasadd_readvariableop_resource*
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
lstm_497_while_body_1848495*'
condR
lstm_497_while_cond_1848494*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_497/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_497/TensorArrayV2Stack/TensorListStackTensorListStacklstm_497/while:output:3Blstm_497/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_497/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_497/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_497/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_slice_3StridedSlice4lstm_497/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_497/strided_slice_3/stack:output:0)lstm_497/strided_slice_3/stack_1:output:0)lstm_497/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_497/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_497/transpose_1	Transpose4lstm_497/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_497/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_497/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_165/MatMul/ReadVariableOpReadVariableOp(dense_165_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_165/MatMulMatMul!lstm_497/strided_slice_3:output:0'dense_165/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_165/BiasAdd/ReadVariableOpReadVariableOp)dense_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_165/BiasAddBiasAdddense_165/MatMul:product:0(dense_165/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_165/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_165/BiasAdd/ReadVariableOp ^dense_165/MatMul/ReadVariableOp.^lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp-^lstm_495/lstm_cell_303/MatMul/ReadVariableOp/^lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp^lstm_495/while.^lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp-^lstm_496/lstm_cell_304/MatMul/ReadVariableOp/^lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp^lstm_496/while.^lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp-^lstm_497/lstm_cell_305/MatMul/ReadVariableOp/^lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp^lstm_497/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_165/BiasAdd/ReadVariableOp dense_165/BiasAdd/ReadVariableOp2B
dense_165/MatMul/ReadVariableOpdense_165/MatMul/ReadVariableOp2^
-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp2\
,lstm_495/lstm_cell_303/MatMul/ReadVariableOp,lstm_495/lstm_cell_303/MatMul/ReadVariableOp2`
.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp2 
lstm_495/whilelstm_495/while2^
-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp2\
,lstm_496/lstm_cell_304/MatMul/ReadVariableOp,lstm_496/lstm_cell_304/MatMul/ReadVariableOp2`
.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp2 
lstm_496/whilelstm_496/while2^
-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp2\
,lstm_497/lstm_cell_305/MatMul/ReadVariableOp,lstm_497/lstm_cell_305/MatMul/ReadVariableOp2`
.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp2 
lstm_497/whilelstm_497/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1850518

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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847530

inputs#
lstm_495_1847503:	?#
lstm_495_1847505:	d?
lstm_495_1847507:	?#
lstm_496_1847510:	d?#
lstm_496_1847512:	2?
lstm_496_1847514:	?"
lstm_497_1847517:2("
lstm_497_1847519:
(
lstm_497_1847521:(#
dense_165_1847524:

dense_165_1847526:
identity??!dense_165/StatefulPartitionedCall? lstm_495/StatefulPartitionedCall? lstm_496/StatefulPartitionedCall? lstm_497/StatefulPartitionedCall?
 lstm_495/StatefulPartitionedCallStatefulPartitionedCallinputslstm_495_1847503lstm_495_1847505lstm_495_1847507*
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1847462?
 lstm_496/StatefulPartitionedCallStatefulPartitionedCall)lstm_495/StatefulPartitionedCall:output:0lstm_496_1847510lstm_496_1847512lstm_496_1847514*
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1847297?
 lstm_497/StatefulPartitionedCallStatefulPartitionedCall)lstm_496/StatefulPartitionedCall:output:0lstm_497_1847517lstm_497_1847519lstm_497_1847521*
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1847132?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall)lstm_497/StatefulPartitionedCall:output:0dense_165_1847524dense_165_1847526*
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
F__inference_dense_165_layer_call_and_return_conditional_losses_1846934y
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_165/StatefulPartitionedCall!^lstm_495/StatefulPartitionedCall!^lstm_496/StatefulPartitionedCall!^lstm_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2D
 lstm_495/StatefulPartitionedCall lstm_495/StatefulPartitionedCall2D
 lstm_496/StatefulPartitionedCall lstm_496/StatefulPartitionedCall2D
 lstm_497/StatefulPartitionedCall lstm_497/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_165_layer_call_fn_1850442

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
F__inference_dense_165_layer_call_and_return_conditional_losses_1846934o
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
while_body_1849447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_304_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_304_matmul_readvariableop_resource:	d?G
4while_lstm_cell_304_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_304_biasadd_readvariableop_resource:	???*while/lstm_cell_304/BiasAdd/ReadVariableOp?)while/lstm_cell_304/MatMul/ReadVariableOp?+while/lstm_cell_304/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_304/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_304/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_304/addAddV2$while/lstm_cell_304/MatMul:product:0&while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_304/BiasAddBiasAddwhile/lstm_cell_304/add:z:02while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_304/splitSplit,while/lstm_cell_304/split/split_dim:output:0$while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_304/SigmoidSigmoid"while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_1Sigmoid"while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mulMul!while/lstm_cell_304/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_304/ReluRelu"while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_1Mulwhile/lstm_cell_304/Sigmoid:y:0&while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/add_1AddV2while/lstm_cell_304/mul:z:0while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_2Sigmoid"while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_304/Relu_1Reluwhile/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_2Mul!while/lstm_cell_304/Sigmoid_2:y:0(while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_304/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_304/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_304/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_304/BiasAdd/ReadVariableOp*^while/lstm_cell_304/MatMul/ReadVariableOp,^while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_304_biasadd_readvariableop_resource5while_lstm_cell_304_biasadd_readvariableop_resource_0"n
4while_lstm_cell_304_matmul_1_readvariableop_resource6while_lstm_cell_304_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_304_matmul_readvariableop_resource4while_lstm_cell_304_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_304/BiasAdd/ReadVariableOp*while/lstm_cell_304/BiasAdd/ReadVariableOp2V
)while/lstm_cell_304/MatMul/ReadVariableOp)while/lstm_cell_304/MatMul/ReadVariableOp2Z
+while/lstm_cell_304/MatMul_1/ReadVariableOp+while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1846531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1846531___redundant_placeholder05
1while_while_cond_1846531___redundant_placeholder15
1while_while_cond_1846531___redundant_placeholder25
1while_while_cond_1846531___redundant_placeholder3
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
*__inference_lstm_496_layer_call_fn_1849245

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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1847297s
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
while_cond_1849446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1849446___redundant_placeholder05
1while_while_cond_1849446___redundant_placeholder15
1while_while_cond_1849446___redundant_placeholder25
1while_while_cond_1849446___redundant_placeholder3
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
while_body_1846389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_305_1846413_0:2(/
while_lstm_cell_305_1846415_0:
(+
while_lstm_cell_305_1846417_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_305_1846413:2(-
while_lstm_cell_305_1846415:
()
while_lstm_cell_305_1846417:(??+while/lstm_cell_305/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_305/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_305_1846413_0while_lstm_cell_305_1846415_0while_lstm_cell_305_1846417_0*
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846330?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_305/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_305/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_305/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_305/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_305_1846413while_lstm_cell_305_1846413_0"<
while_lstm_cell_305_1846415while_lstm_cell_305_1846415_0"<
while_lstm_cell_305_1846417while_lstm_cell_305_1846417_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_305/StatefulPartitionedCall+while/lstm_cell_305/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845630

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
while_body_1845848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_304_1845872_0:	d?0
while_lstm_cell_304_1845874_0:	2?,
while_lstm_cell_304_1845876_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_304_1845872:	d?.
while_lstm_cell_304_1845874:	2?*
while_lstm_cell_304_1845876:	???+while/lstm_cell_304/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_304/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_304_1845872_0while_lstm_cell_304_1845874_0while_lstm_cell_304_1845876_0*
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845834?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_304/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_304/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_304/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_304/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_304_1845872while_lstm_cell_304_1845872_0"<
while_lstm_cell_304_1845874while_lstm_cell_304_1845874_0"<
while_lstm_cell_304_1845876while_lstm_cell_304_1845876_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_304/StatefulPartitionedCall+while/lstm_cell_304/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1846198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_305_1846222_0:2(/
while_lstm_cell_305_1846224_0:
(+
while_lstm_cell_305_1846226_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_305_1846222:2(-
while_lstm_cell_305_1846224:
()
while_lstm_cell_305_1846226:(??+while/lstm_cell_305/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_305/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_305_1846222_0while_lstm_cell_305_1846224_0while_lstm_cell_305_1846226_0*
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846184?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_305/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_305/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_305/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_305/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_305_1846222while_lstm_cell_305_1846222_0"<
while_lstm_cell_305_1846224while_lstm_cell_305_1846224_0"<
while_lstm_cell_305_1846226while_lstm_cell_305_1846226_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_305/StatefulPartitionedCall+while/lstm_cell_305/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_497_while_body_1848495.
*lstm_497_while_lstm_497_while_loop_counter4
0lstm_497_while_lstm_497_while_maximum_iterations
lstm_497_while_placeholder 
lstm_497_while_placeholder_1 
lstm_497_while_placeholder_2 
lstm_497_while_placeholder_3-
)lstm_497_while_lstm_497_strided_slice_1_0i
elstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0:2(Q
?lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(L
>lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0:(
lstm_497_while_identity
lstm_497_while_identity_1
lstm_497_while_identity_2
lstm_497_while_identity_3
lstm_497_while_identity_4
lstm_497_while_identity_5+
'lstm_497_while_lstm_497_strided_slice_1g
clstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensorM
;lstm_497_while_lstm_cell_305_matmul_readvariableop_resource:2(O
=lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource:
(J
<lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource:(??3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp?2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp?4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp?
@lstm_497/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_497/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensor_0lstm_497_while_placeholderIlstm_497/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp=lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_497/while/lstm_cell_305/MatMulMatMul9lstm_497/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp?lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_497/while/lstm_cell_305/MatMul_1MatMullstm_497_while_placeholder_2<lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_497/while/lstm_cell_305/addAddV2-lstm_497/while/lstm_cell_305/MatMul:product:0/lstm_497/while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp>lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_497/while/lstm_cell_305/BiasAddBiasAdd$lstm_497/while/lstm_cell_305/add:z:0;lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_497/while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_497/while/lstm_cell_305/splitSplit5lstm_497/while/lstm_cell_305/split/split_dim:output:0-lstm_497/while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_497/while/lstm_cell_305/SigmoidSigmoid+lstm_497/while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_497/while/lstm_cell_305/Sigmoid_1Sigmoid+lstm_497/while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_497/while/lstm_cell_305/mulMul*lstm_497/while/lstm_cell_305/Sigmoid_1:y:0lstm_497_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_497/while/lstm_cell_305/ReluRelu+lstm_497/while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_497/while/lstm_cell_305/mul_1Mul(lstm_497/while/lstm_cell_305/Sigmoid:y:0/lstm_497/while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_497/while/lstm_cell_305/add_1AddV2$lstm_497/while/lstm_cell_305/mul:z:0&lstm_497/while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_497/while/lstm_cell_305/Sigmoid_2Sigmoid+lstm_497/while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_497/while/lstm_cell_305/Relu_1Relu&lstm_497/while/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_497/while/lstm_cell_305/mul_2Mul*lstm_497/while/lstm_cell_305/Sigmoid_2:y:01lstm_497/while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_497/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_497_while_placeholder_1lstm_497_while_placeholder&lstm_497/while/lstm_cell_305/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_497/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_497/while/addAddV2lstm_497_while_placeholderlstm_497/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_497/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_497/while/add_1AddV2*lstm_497_while_lstm_497_while_loop_counterlstm_497/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_497/while/IdentityIdentitylstm_497/while/add_1:z:0^lstm_497/while/NoOp*
T0*
_output_shapes
: ?
lstm_497/while/Identity_1Identity0lstm_497_while_lstm_497_while_maximum_iterations^lstm_497/while/NoOp*
T0*
_output_shapes
: t
lstm_497/while/Identity_2Identitylstm_497/while/add:z:0^lstm_497/while/NoOp*
T0*
_output_shapes
: ?
lstm_497/while/Identity_3IdentityClstm_497/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_497/while/NoOp*
T0*
_output_shapes
: ?
lstm_497/while/Identity_4Identity&lstm_497/while/lstm_cell_305/mul_2:z:0^lstm_497/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_497/while/Identity_5Identity&lstm_497/while/lstm_cell_305/add_1:z:0^lstm_497/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_497/while/NoOpNoOp4^lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp3^lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp5^lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_497_while_identity lstm_497/while/Identity:output:0"?
lstm_497_while_identity_1"lstm_497/while/Identity_1:output:0"?
lstm_497_while_identity_2"lstm_497/while/Identity_2:output:0"?
lstm_497_while_identity_3"lstm_497/while/Identity_3:output:0"?
lstm_497_while_identity_4"lstm_497/while/Identity_4:output:0"?
lstm_497_while_identity_5"lstm_497/while/Identity_5:output:0"T
'lstm_497_while_lstm_497_strided_slice_1)lstm_497_while_lstm_497_strided_slice_1_0"~
<lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource>lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0"?
=lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource?lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0"|
;lstm_497_while_lstm_cell_305_matmul_readvariableop_resource=lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0"?
clstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensorelstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp2h
2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp2l
4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1849201

inputs?
,lstm_cell_303_matmul_readvariableop_resource:	?A
.lstm_cell_303_matmul_1_readvariableop_resource:	d?<
-lstm_cell_303_biasadd_readvariableop_resource:	?
identity??$lstm_cell_303/BiasAdd/ReadVariableOp?#lstm_cell_303/MatMul/ReadVariableOp?%lstm_cell_303/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_303/MatMul/ReadVariableOpReadVariableOp,lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_303/MatMulMatMulstrided_slice_2:output:0+lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_303/MatMul_1MatMulzeros:output:0-lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_303/addAddV2lstm_cell_303/MatMul:product:0 lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_303/BiasAddBiasAddlstm_cell_303/add:z:0,lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_303/splitSplit&lstm_cell_303/split/split_dim:output:0lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_303/SigmoidSigmoidlstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_1Sigmoidlstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_303/mulMullstm_cell_303/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_303/ReluRelulstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_1Mullstm_cell_303/Sigmoid:y:0 lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_303/add_1AddV2lstm_cell_303/mul:z:0lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_2Sigmoidlstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_303/Relu_1Relulstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_2Mullstm_cell_303/Sigmoid_2:y:0"lstm_cell_303/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_303_matmul_readvariableop_resource.lstm_cell_303_matmul_1_readvariableop_resource-lstm_cell_303_biasadd_readvariableop_resource*
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
while_body_1849117*
condR
while_cond_1849116*K
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
NoOpNoOp%^lstm_cell_303/BiasAdd/ReadVariableOp$^lstm_cell_303/MatMul/ReadVariableOp&^lstm_cell_303/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_303/BiasAdd/ReadVariableOp$lstm_cell_303/BiasAdd/ReadVariableOp2J
#lstm_cell_303/MatMul/ReadVariableOp#lstm_cell_303/MatMul/ReadVariableOp2N
%lstm_cell_303/MatMul_1/ReadVariableOp%lstm_cell_303/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1849919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1849919___redundant_placeholder05
1while_while_cond_1849919___redundant_placeholder15
1while_while_cond_1849919___redundant_placeholder25
1while_while_cond_1849919___redundant_placeholder3
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
0__inference_sequential_165_layer_call_fn_1846966
lstm_495_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1846941o
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
_user_specified_namelstm_495_input
??
?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1848158

inputsH
5lstm_495_lstm_cell_303_matmul_readvariableop_resource:	?J
7lstm_495_lstm_cell_303_matmul_1_readvariableop_resource:	d?E
6lstm_495_lstm_cell_303_biasadd_readvariableop_resource:	?H
5lstm_496_lstm_cell_304_matmul_readvariableop_resource:	d?J
7lstm_496_lstm_cell_304_matmul_1_readvariableop_resource:	2?E
6lstm_496_lstm_cell_304_biasadd_readvariableop_resource:	?G
5lstm_497_lstm_cell_305_matmul_readvariableop_resource:2(I
7lstm_497_lstm_cell_305_matmul_1_readvariableop_resource:
(D
6lstm_497_lstm_cell_305_biasadd_readvariableop_resource:(:
(dense_165_matmul_readvariableop_resource:
7
)dense_165_biasadd_readvariableop_resource:
identity?? dense_165/BiasAdd/ReadVariableOp?dense_165/MatMul/ReadVariableOp?-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp?,lstm_495/lstm_cell_303/MatMul/ReadVariableOp?.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp?lstm_495/while?-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp?,lstm_496/lstm_cell_304/MatMul/ReadVariableOp?.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp?lstm_496/while?-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp?,lstm_497/lstm_cell_305/MatMul/ReadVariableOp?.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp?lstm_497/whileD
lstm_495/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_495/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_495/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_495/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_sliceStridedSlicelstm_495/Shape:output:0%lstm_495/strided_slice/stack:output:0'lstm_495/strided_slice/stack_1:output:0'lstm_495/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_495/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_495/zeros/packedPacklstm_495/strided_slice:output:0 lstm_495/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_495/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_495/zerosFilllstm_495/zeros/packed:output:0lstm_495/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_495/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_495/zeros_1/packedPacklstm_495/strided_slice:output:0"lstm_495/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_495/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_495/zeros_1Fill lstm_495/zeros_1/packed:output:0lstm_495/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_495/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_495/transpose	Transposeinputs lstm_495/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_495/Shape_1Shapelstm_495/transpose:y:0*
T0*
_output_shapes
:h
lstm_495/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_495/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_495/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_slice_1StridedSlicelstm_495/Shape_1:output:0'lstm_495/strided_slice_1/stack:output:0)lstm_495/strided_slice_1/stack_1:output:0)lstm_495/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_495/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_495/TensorArrayV2TensorListReserve-lstm_495/TensorArrayV2/element_shape:output:0!lstm_495/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_495/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_495/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_495/transpose:y:0Glstm_495/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_495/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_495/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_495/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_slice_2StridedSlicelstm_495/transpose:y:0'lstm_495/strided_slice_2/stack:output:0)lstm_495/strided_slice_2/stack_1:output:0)lstm_495/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_495/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp5lstm_495_lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_495/lstm_cell_303/MatMulMatMul!lstm_495/strided_slice_2:output:04lstm_495/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp7lstm_495_lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_495/lstm_cell_303/MatMul_1MatMullstm_495/zeros:output:06lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_495/lstm_cell_303/addAddV2'lstm_495/lstm_cell_303/MatMul:product:0)lstm_495/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp6lstm_495_lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_495/lstm_cell_303/BiasAddBiasAddlstm_495/lstm_cell_303/add:z:05lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_495/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_495/lstm_cell_303/splitSplit/lstm_495/lstm_cell_303/split/split_dim:output:0'lstm_495/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_495/lstm_cell_303/SigmoidSigmoid%lstm_495/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_495/lstm_cell_303/Sigmoid_1Sigmoid%lstm_495/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/mulMul$lstm_495/lstm_cell_303/Sigmoid_1:y:0lstm_495/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_495/lstm_cell_303/ReluRelu%lstm_495/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/mul_1Mul"lstm_495/lstm_cell_303/Sigmoid:y:0)lstm_495/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/add_1AddV2lstm_495/lstm_cell_303/mul:z:0 lstm_495/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_495/lstm_cell_303/Sigmoid_2Sigmoid%lstm_495/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_495/lstm_cell_303/Relu_1Relu lstm_495/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_495/lstm_cell_303/mul_2Mul$lstm_495/lstm_cell_303/Sigmoid_2:y:0+lstm_495/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_495/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_495/TensorArrayV2_1TensorListReserve/lstm_495/TensorArrayV2_1/element_shape:output:0!lstm_495/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_495/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_495/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_495/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_495/whileWhile$lstm_495/while/loop_counter:output:0*lstm_495/while/maximum_iterations:output:0lstm_495/time:output:0!lstm_495/TensorArrayV2_1:handle:0lstm_495/zeros:output:0lstm_495/zeros_1:output:0!lstm_495/strided_slice_1:output:0@lstm_495/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_495_lstm_cell_303_matmul_readvariableop_resource7lstm_495_lstm_cell_303_matmul_1_readvariableop_resource6lstm_495_lstm_cell_303_biasadd_readvariableop_resource*
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
lstm_495_while_body_1847790*'
condR
lstm_495_while_cond_1847789*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_495/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_495/TensorArrayV2Stack/TensorListStackTensorListStacklstm_495/while:output:3Blstm_495/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_495/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_495/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_495/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_495/strided_slice_3StridedSlice4lstm_495/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_495/strided_slice_3/stack:output:0)lstm_495/strided_slice_3/stack_1:output:0)lstm_495/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_495/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_495/transpose_1	Transpose4lstm_495/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_495/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_495/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_496/ShapeShapelstm_495/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_496/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_496/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_496/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_sliceStridedSlicelstm_496/Shape:output:0%lstm_496/strided_slice/stack:output:0'lstm_496/strided_slice/stack_1:output:0'lstm_496/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_496/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_496/zeros/packedPacklstm_496/strided_slice:output:0 lstm_496/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_496/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_496/zerosFilllstm_496/zeros/packed:output:0lstm_496/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_496/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_496/zeros_1/packedPacklstm_496/strided_slice:output:0"lstm_496/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_496/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_496/zeros_1Fill lstm_496/zeros_1/packed:output:0lstm_496/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_496/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_496/transpose	Transposelstm_495/transpose_1:y:0 lstm_496/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_496/Shape_1Shapelstm_496/transpose:y:0*
T0*
_output_shapes
:h
lstm_496/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_496/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_496/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_slice_1StridedSlicelstm_496/Shape_1:output:0'lstm_496/strided_slice_1/stack:output:0)lstm_496/strided_slice_1/stack_1:output:0)lstm_496/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_496/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_496/TensorArrayV2TensorListReserve-lstm_496/TensorArrayV2/element_shape:output:0!lstm_496/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_496/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_496/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_496/transpose:y:0Glstm_496/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_496/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_496/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_496/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_slice_2StridedSlicelstm_496/transpose:y:0'lstm_496/strided_slice_2/stack:output:0)lstm_496/strided_slice_2/stack_1:output:0)lstm_496/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_496/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp5lstm_496_lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_496/lstm_cell_304/MatMulMatMul!lstm_496/strided_slice_2:output:04lstm_496/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp7lstm_496_lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_496/lstm_cell_304/MatMul_1MatMullstm_496/zeros:output:06lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_496/lstm_cell_304/addAddV2'lstm_496/lstm_cell_304/MatMul:product:0)lstm_496/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp6lstm_496_lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_496/lstm_cell_304/BiasAddBiasAddlstm_496/lstm_cell_304/add:z:05lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_496/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_496/lstm_cell_304/splitSplit/lstm_496/lstm_cell_304/split/split_dim:output:0'lstm_496/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_496/lstm_cell_304/SigmoidSigmoid%lstm_496/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_496/lstm_cell_304/Sigmoid_1Sigmoid%lstm_496/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/mulMul$lstm_496/lstm_cell_304/Sigmoid_1:y:0lstm_496/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_496/lstm_cell_304/ReluRelu%lstm_496/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/mul_1Mul"lstm_496/lstm_cell_304/Sigmoid:y:0)lstm_496/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/add_1AddV2lstm_496/lstm_cell_304/mul:z:0 lstm_496/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_496/lstm_cell_304/Sigmoid_2Sigmoid%lstm_496/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_496/lstm_cell_304/Relu_1Relu lstm_496/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_496/lstm_cell_304/mul_2Mul$lstm_496/lstm_cell_304/Sigmoid_2:y:0+lstm_496/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_496/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_496/TensorArrayV2_1TensorListReserve/lstm_496/TensorArrayV2_1/element_shape:output:0!lstm_496/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_496/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_496/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_496/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_496/whileWhile$lstm_496/while/loop_counter:output:0*lstm_496/while/maximum_iterations:output:0lstm_496/time:output:0!lstm_496/TensorArrayV2_1:handle:0lstm_496/zeros:output:0lstm_496/zeros_1:output:0!lstm_496/strided_slice_1:output:0@lstm_496/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_496_lstm_cell_304_matmul_readvariableop_resource7lstm_496_lstm_cell_304_matmul_1_readvariableop_resource6lstm_496_lstm_cell_304_biasadd_readvariableop_resource*
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
lstm_496_while_body_1847929*'
condR
lstm_496_while_cond_1847928*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_496/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_496/TensorArrayV2Stack/TensorListStackTensorListStacklstm_496/while:output:3Blstm_496/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_496/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_496/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_496/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_496/strided_slice_3StridedSlice4lstm_496/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_496/strided_slice_3/stack:output:0)lstm_496/strided_slice_3/stack_1:output:0)lstm_496/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_496/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_496/transpose_1	Transpose4lstm_496/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_496/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_496/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_497/ShapeShapelstm_496/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_497/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_497/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_497/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_sliceStridedSlicelstm_497/Shape:output:0%lstm_497/strided_slice/stack:output:0'lstm_497/strided_slice/stack_1:output:0'lstm_497/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_497/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_497/zeros/packedPacklstm_497/strided_slice:output:0 lstm_497/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_497/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_497/zerosFilllstm_497/zeros/packed:output:0lstm_497/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_497/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_497/zeros_1/packedPacklstm_497/strided_slice:output:0"lstm_497/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_497/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_497/zeros_1Fill lstm_497/zeros_1/packed:output:0lstm_497/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_497/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_497/transpose	Transposelstm_496/transpose_1:y:0 lstm_497/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_497/Shape_1Shapelstm_497/transpose:y:0*
T0*
_output_shapes
:h
lstm_497/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_497/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_497/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_slice_1StridedSlicelstm_497/Shape_1:output:0'lstm_497/strided_slice_1/stack:output:0)lstm_497/strided_slice_1/stack_1:output:0)lstm_497/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_497/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_497/TensorArrayV2TensorListReserve-lstm_497/TensorArrayV2/element_shape:output:0!lstm_497/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_497/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_497/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_497/transpose:y:0Glstm_497/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_497/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_497/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_497/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_slice_2StridedSlicelstm_497/transpose:y:0'lstm_497/strided_slice_2/stack:output:0)lstm_497/strided_slice_2/stack_1:output:0)lstm_497/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_497/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp5lstm_497_lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_497/lstm_cell_305/MatMulMatMul!lstm_497/strided_slice_2:output:04lstm_497/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp7lstm_497_lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_497/lstm_cell_305/MatMul_1MatMullstm_497/zeros:output:06lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_497/lstm_cell_305/addAddV2'lstm_497/lstm_cell_305/MatMul:product:0)lstm_497/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp6lstm_497_lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_497/lstm_cell_305/BiasAddBiasAddlstm_497/lstm_cell_305/add:z:05lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_497/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_497/lstm_cell_305/splitSplit/lstm_497/lstm_cell_305/split/split_dim:output:0'lstm_497/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_497/lstm_cell_305/SigmoidSigmoid%lstm_497/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_497/lstm_cell_305/Sigmoid_1Sigmoid%lstm_497/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/mulMul$lstm_497/lstm_cell_305/Sigmoid_1:y:0lstm_497/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_497/lstm_cell_305/ReluRelu%lstm_497/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/mul_1Mul"lstm_497/lstm_cell_305/Sigmoid:y:0)lstm_497/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/add_1AddV2lstm_497/lstm_cell_305/mul:z:0 lstm_497/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_497/lstm_cell_305/Sigmoid_2Sigmoid%lstm_497/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_497/lstm_cell_305/Relu_1Relu lstm_497/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_497/lstm_cell_305/mul_2Mul$lstm_497/lstm_cell_305/Sigmoid_2:y:0+lstm_497/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_497/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_497/TensorArrayV2_1TensorListReserve/lstm_497/TensorArrayV2_1/element_shape:output:0!lstm_497/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_497/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_497/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_497/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_497/whileWhile$lstm_497/while/loop_counter:output:0*lstm_497/while/maximum_iterations:output:0lstm_497/time:output:0!lstm_497/TensorArrayV2_1:handle:0lstm_497/zeros:output:0lstm_497/zeros_1:output:0!lstm_497/strided_slice_1:output:0@lstm_497/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_497_lstm_cell_305_matmul_readvariableop_resource7lstm_497_lstm_cell_305_matmul_1_readvariableop_resource6lstm_497_lstm_cell_305_biasadd_readvariableop_resource*
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
lstm_497_while_body_1848068*'
condR
lstm_497_while_cond_1848067*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_497/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_497/TensorArrayV2Stack/TensorListStackTensorListStacklstm_497/while:output:3Blstm_497/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_497/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_497/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_497/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_497/strided_slice_3StridedSlice4lstm_497/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_497/strided_slice_3/stack:output:0)lstm_497/strided_slice_3/stack_1:output:0)lstm_497/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_497/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_497/transpose_1	Transpose4lstm_497/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_497/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_497/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_165/MatMul/ReadVariableOpReadVariableOp(dense_165_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_165/MatMulMatMul!lstm_497/strided_slice_3:output:0'dense_165/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_165/BiasAdd/ReadVariableOpReadVariableOp)dense_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_165/BiasAddBiasAdddense_165/MatMul:product:0(dense_165/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_165/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_165/BiasAdd/ReadVariableOp ^dense_165/MatMul/ReadVariableOp.^lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp-^lstm_495/lstm_cell_303/MatMul/ReadVariableOp/^lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp^lstm_495/while.^lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp-^lstm_496/lstm_cell_304/MatMul/ReadVariableOp/^lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp^lstm_496/while.^lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp-^lstm_497/lstm_cell_305/MatMul/ReadVariableOp/^lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp^lstm_497/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_165/BiasAdd/ReadVariableOp dense_165/BiasAdd/ReadVariableOp2B
dense_165/MatMul/ReadVariableOpdense_165/MatMul/ReadVariableOp2^
-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp-lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp2\
,lstm_495/lstm_cell_303/MatMul/ReadVariableOp,lstm_495/lstm_cell_303/MatMul/ReadVariableOp2`
.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp.lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp2 
lstm_495/whilelstm_495/while2^
-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp-lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp2\
,lstm_496/lstm_cell_304/MatMul/ReadVariableOp,lstm_496/lstm_cell_304/MatMul/ReadVariableOp2`
.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp.lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp2 
lstm_496/whilelstm_496/while2^
-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp-lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp2\
,lstm_497/lstm_cell_305/MatMul/ReadVariableOp,lstm_497/lstm_cell_305/MatMul/ReadVariableOp2`
.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp.lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp2 
lstm_497/whilelstm_497/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1845417
lstm_495_inputW
Dsequential_165_lstm_495_lstm_cell_303_matmul_readvariableop_resource:	?Y
Fsequential_165_lstm_495_lstm_cell_303_matmul_1_readvariableop_resource:	d?T
Esequential_165_lstm_495_lstm_cell_303_biasadd_readvariableop_resource:	?W
Dsequential_165_lstm_496_lstm_cell_304_matmul_readvariableop_resource:	d?Y
Fsequential_165_lstm_496_lstm_cell_304_matmul_1_readvariableop_resource:	2?T
Esequential_165_lstm_496_lstm_cell_304_biasadd_readvariableop_resource:	?V
Dsequential_165_lstm_497_lstm_cell_305_matmul_readvariableop_resource:2(X
Fsequential_165_lstm_497_lstm_cell_305_matmul_1_readvariableop_resource:
(S
Esequential_165_lstm_497_lstm_cell_305_biasadd_readvariableop_resource:(I
7sequential_165_dense_165_matmul_readvariableop_resource:
F
8sequential_165_dense_165_biasadd_readvariableop_resource:
identity??/sequential_165/dense_165/BiasAdd/ReadVariableOp?.sequential_165/dense_165/MatMul/ReadVariableOp?<sequential_165/lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp?;sequential_165/lstm_495/lstm_cell_303/MatMul/ReadVariableOp?=sequential_165/lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp?sequential_165/lstm_495/while?<sequential_165/lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp?;sequential_165/lstm_496/lstm_cell_304/MatMul/ReadVariableOp?=sequential_165/lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp?sequential_165/lstm_496/while?<sequential_165/lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp?;sequential_165/lstm_497/lstm_cell_305/MatMul/ReadVariableOp?=sequential_165/lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp?sequential_165/lstm_497/while[
sequential_165/lstm_495/ShapeShapelstm_495_input*
T0*
_output_shapes
:u
+sequential_165/lstm_495/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_165/lstm_495/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_165/lstm_495/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_165/lstm_495/strided_sliceStridedSlice&sequential_165/lstm_495/Shape:output:04sequential_165/lstm_495/strided_slice/stack:output:06sequential_165/lstm_495/strided_slice/stack_1:output:06sequential_165/lstm_495/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_165/lstm_495/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_165/lstm_495/zeros/packedPack.sequential_165/lstm_495/strided_slice:output:0/sequential_165/lstm_495/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_165/lstm_495/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_165/lstm_495/zerosFill-sequential_165/lstm_495/zeros/packed:output:0,sequential_165/lstm_495/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_165/lstm_495/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_165/lstm_495/zeros_1/packedPack.sequential_165/lstm_495/strided_slice:output:01sequential_165/lstm_495/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_165/lstm_495/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_165/lstm_495/zeros_1Fill/sequential_165/lstm_495/zeros_1/packed:output:0.sequential_165/lstm_495/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_165/lstm_495/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_165/lstm_495/transpose	Transposelstm_495_input/sequential_165/lstm_495/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_165/lstm_495/Shape_1Shape%sequential_165/lstm_495/transpose:y:0*
T0*
_output_shapes
:w
-sequential_165/lstm_495/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_495/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_165/lstm_495/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_495/strided_slice_1StridedSlice(sequential_165/lstm_495/Shape_1:output:06sequential_165/lstm_495/strided_slice_1/stack:output:08sequential_165/lstm_495/strided_slice_1/stack_1:output:08sequential_165/lstm_495/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_165/lstm_495/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_165/lstm_495/TensorArrayV2TensorListReserve<sequential_165/lstm_495/TensorArrayV2/element_shape:output:00sequential_165/lstm_495/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_165/lstm_495/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_165/lstm_495/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_165/lstm_495/transpose:y:0Vsequential_165/lstm_495/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_165/lstm_495/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_495/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_165/lstm_495/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_495/strided_slice_2StridedSlice%sequential_165/lstm_495/transpose:y:06sequential_165/lstm_495/strided_slice_2/stack:output:08sequential_165/lstm_495/strided_slice_2/stack_1:output:08sequential_165/lstm_495/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_165/lstm_495/lstm_cell_303/MatMul/ReadVariableOpReadVariableOpDsequential_165_lstm_495_lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_165/lstm_495/lstm_cell_303/MatMulMatMul0sequential_165/lstm_495/strided_slice_2:output:0Csequential_165/lstm_495/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_165/lstm_495/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOpFsequential_165_lstm_495_lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_165/lstm_495/lstm_cell_303/MatMul_1MatMul&sequential_165/lstm_495/zeros:output:0Esequential_165/lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_165/lstm_495/lstm_cell_303/addAddV26sequential_165/lstm_495/lstm_cell_303/MatMul:product:08sequential_165/lstm_495/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_165/lstm_495/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOpEsequential_165_lstm_495_lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_165/lstm_495/lstm_cell_303/BiasAddBiasAdd-sequential_165/lstm_495/lstm_cell_303/add:z:0Dsequential_165/lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_165/lstm_495/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_165/lstm_495/lstm_cell_303/splitSplit>sequential_165/lstm_495/lstm_cell_303/split/split_dim:output:06sequential_165/lstm_495/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_165/lstm_495/lstm_cell_303/SigmoidSigmoid4sequential_165/lstm_495/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_165/lstm_495/lstm_cell_303/Sigmoid_1Sigmoid4sequential_165/lstm_495/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_165/lstm_495/lstm_cell_303/mulMul3sequential_165/lstm_495/lstm_cell_303/Sigmoid_1:y:0(sequential_165/lstm_495/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_165/lstm_495/lstm_cell_303/ReluRelu4sequential_165/lstm_495/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_165/lstm_495/lstm_cell_303/mul_1Mul1sequential_165/lstm_495/lstm_cell_303/Sigmoid:y:08sequential_165/lstm_495/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_165/lstm_495/lstm_cell_303/add_1AddV2-sequential_165/lstm_495/lstm_cell_303/mul:z:0/sequential_165/lstm_495/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_165/lstm_495/lstm_cell_303/Sigmoid_2Sigmoid4sequential_165/lstm_495/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_165/lstm_495/lstm_cell_303/Relu_1Relu/sequential_165/lstm_495/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_165/lstm_495/lstm_cell_303/mul_2Mul3sequential_165/lstm_495/lstm_cell_303/Sigmoid_2:y:0:sequential_165/lstm_495/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_165/lstm_495/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_165/lstm_495/TensorArrayV2_1TensorListReserve>sequential_165/lstm_495/TensorArrayV2_1/element_shape:output:00sequential_165/lstm_495/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_165/lstm_495/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_165/lstm_495/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_165/lstm_495/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_165/lstm_495/whileWhile3sequential_165/lstm_495/while/loop_counter:output:09sequential_165/lstm_495/while/maximum_iterations:output:0%sequential_165/lstm_495/time:output:00sequential_165/lstm_495/TensorArrayV2_1:handle:0&sequential_165/lstm_495/zeros:output:0(sequential_165/lstm_495/zeros_1:output:00sequential_165/lstm_495/strided_slice_1:output:0Osequential_165/lstm_495/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_165_lstm_495_lstm_cell_303_matmul_readvariableop_resourceFsequential_165_lstm_495_lstm_cell_303_matmul_1_readvariableop_resourceEsequential_165_lstm_495_lstm_cell_303_biasadd_readvariableop_resource*
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
*sequential_165_lstm_495_while_body_1845049*6
cond.R,
*sequential_165_lstm_495_while_cond_1845048*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_165/lstm_495/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_165/lstm_495/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_165/lstm_495/while:output:3Qsequential_165/lstm_495/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_165/lstm_495/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_165/lstm_495/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_495/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_495/strided_slice_3StridedSliceCsequential_165/lstm_495/TensorArrayV2Stack/TensorListStack:tensor:06sequential_165/lstm_495/strided_slice_3/stack:output:08sequential_165/lstm_495/strided_slice_3/stack_1:output:08sequential_165/lstm_495/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_165/lstm_495/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_165/lstm_495/transpose_1	TransposeCsequential_165/lstm_495/TensorArrayV2Stack/TensorListStack:tensor:01sequential_165/lstm_495/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_165/lstm_495/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_165/lstm_496/ShapeShape'sequential_165/lstm_495/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_165/lstm_496/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_165/lstm_496/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_165/lstm_496/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_165/lstm_496/strided_sliceStridedSlice&sequential_165/lstm_496/Shape:output:04sequential_165/lstm_496/strided_slice/stack:output:06sequential_165/lstm_496/strided_slice/stack_1:output:06sequential_165/lstm_496/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_165/lstm_496/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_165/lstm_496/zeros/packedPack.sequential_165/lstm_496/strided_slice:output:0/sequential_165/lstm_496/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_165/lstm_496/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_165/lstm_496/zerosFill-sequential_165/lstm_496/zeros/packed:output:0,sequential_165/lstm_496/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_165/lstm_496/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_165/lstm_496/zeros_1/packedPack.sequential_165/lstm_496/strided_slice:output:01sequential_165/lstm_496/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_165/lstm_496/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_165/lstm_496/zeros_1Fill/sequential_165/lstm_496/zeros_1/packed:output:0.sequential_165/lstm_496/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_165/lstm_496/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_165/lstm_496/transpose	Transpose'sequential_165/lstm_495/transpose_1:y:0/sequential_165/lstm_496/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_165/lstm_496/Shape_1Shape%sequential_165/lstm_496/transpose:y:0*
T0*
_output_shapes
:w
-sequential_165/lstm_496/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_496/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_165/lstm_496/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_496/strided_slice_1StridedSlice(sequential_165/lstm_496/Shape_1:output:06sequential_165/lstm_496/strided_slice_1/stack:output:08sequential_165/lstm_496/strided_slice_1/stack_1:output:08sequential_165/lstm_496/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_165/lstm_496/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_165/lstm_496/TensorArrayV2TensorListReserve<sequential_165/lstm_496/TensorArrayV2/element_shape:output:00sequential_165/lstm_496/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_165/lstm_496/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_165/lstm_496/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_165/lstm_496/transpose:y:0Vsequential_165/lstm_496/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_165/lstm_496/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_496/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_165/lstm_496/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_496/strided_slice_2StridedSlice%sequential_165/lstm_496/transpose:y:06sequential_165/lstm_496/strided_slice_2/stack:output:08sequential_165/lstm_496/strided_slice_2/stack_1:output:08sequential_165/lstm_496/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_165/lstm_496/lstm_cell_304/MatMul/ReadVariableOpReadVariableOpDsequential_165_lstm_496_lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_165/lstm_496/lstm_cell_304/MatMulMatMul0sequential_165/lstm_496/strided_slice_2:output:0Csequential_165/lstm_496/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_165/lstm_496/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOpFsequential_165_lstm_496_lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_165/lstm_496/lstm_cell_304/MatMul_1MatMul&sequential_165/lstm_496/zeros:output:0Esequential_165/lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_165/lstm_496/lstm_cell_304/addAddV26sequential_165/lstm_496/lstm_cell_304/MatMul:product:08sequential_165/lstm_496/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_165/lstm_496/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOpEsequential_165_lstm_496_lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_165/lstm_496/lstm_cell_304/BiasAddBiasAdd-sequential_165/lstm_496/lstm_cell_304/add:z:0Dsequential_165/lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_165/lstm_496/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_165/lstm_496/lstm_cell_304/splitSplit>sequential_165/lstm_496/lstm_cell_304/split/split_dim:output:06sequential_165/lstm_496/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_165/lstm_496/lstm_cell_304/SigmoidSigmoid4sequential_165/lstm_496/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_165/lstm_496/lstm_cell_304/Sigmoid_1Sigmoid4sequential_165/lstm_496/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_165/lstm_496/lstm_cell_304/mulMul3sequential_165/lstm_496/lstm_cell_304/Sigmoid_1:y:0(sequential_165/lstm_496/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_165/lstm_496/lstm_cell_304/ReluRelu4sequential_165/lstm_496/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_165/lstm_496/lstm_cell_304/mul_1Mul1sequential_165/lstm_496/lstm_cell_304/Sigmoid:y:08sequential_165/lstm_496/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_165/lstm_496/lstm_cell_304/add_1AddV2-sequential_165/lstm_496/lstm_cell_304/mul:z:0/sequential_165/lstm_496/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_165/lstm_496/lstm_cell_304/Sigmoid_2Sigmoid4sequential_165/lstm_496/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_165/lstm_496/lstm_cell_304/Relu_1Relu/sequential_165/lstm_496/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_165/lstm_496/lstm_cell_304/mul_2Mul3sequential_165/lstm_496/lstm_cell_304/Sigmoid_2:y:0:sequential_165/lstm_496/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_165/lstm_496/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_165/lstm_496/TensorArrayV2_1TensorListReserve>sequential_165/lstm_496/TensorArrayV2_1/element_shape:output:00sequential_165/lstm_496/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_165/lstm_496/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_165/lstm_496/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_165/lstm_496/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_165/lstm_496/whileWhile3sequential_165/lstm_496/while/loop_counter:output:09sequential_165/lstm_496/while/maximum_iterations:output:0%sequential_165/lstm_496/time:output:00sequential_165/lstm_496/TensorArrayV2_1:handle:0&sequential_165/lstm_496/zeros:output:0(sequential_165/lstm_496/zeros_1:output:00sequential_165/lstm_496/strided_slice_1:output:0Osequential_165/lstm_496/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_165_lstm_496_lstm_cell_304_matmul_readvariableop_resourceFsequential_165_lstm_496_lstm_cell_304_matmul_1_readvariableop_resourceEsequential_165_lstm_496_lstm_cell_304_biasadd_readvariableop_resource*
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
*sequential_165_lstm_496_while_body_1845188*6
cond.R,
*sequential_165_lstm_496_while_cond_1845187*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_165/lstm_496/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_165/lstm_496/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_165/lstm_496/while:output:3Qsequential_165/lstm_496/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_165/lstm_496/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_165/lstm_496/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_496/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_496/strided_slice_3StridedSliceCsequential_165/lstm_496/TensorArrayV2Stack/TensorListStack:tensor:06sequential_165/lstm_496/strided_slice_3/stack:output:08sequential_165/lstm_496/strided_slice_3/stack_1:output:08sequential_165/lstm_496/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_165/lstm_496/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_165/lstm_496/transpose_1	TransposeCsequential_165/lstm_496/TensorArrayV2Stack/TensorListStack:tensor:01sequential_165/lstm_496/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_165/lstm_496/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_165/lstm_497/ShapeShape'sequential_165/lstm_496/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_165/lstm_497/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_165/lstm_497/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_165/lstm_497/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_165/lstm_497/strided_sliceStridedSlice&sequential_165/lstm_497/Shape:output:04sequential_165/lstm_497/strided_slice/stack:output:06sequential_165/lstm_497/strided_slice/stack_1:output:06sequential_165/lstm_497/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_165/lstm_497/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_165/lstm_497/zeros/packedPack.sequential_165/lstm_497/strided_slice:output:0/sequential_165/lstm_497/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_165/lstm_497/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_165/lstm_497/zerosFill-sequential_165/lstm_497/zeros/packed:output:0,sequential_165/lstm_497/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_165/lstm_497/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_165/lstm_497/zeros_1/packedPack.sequential_165/lstm_497/strided_slice:output:01sequential_165/lstm_497/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_165/lstm_497/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_165/lstm_497/zeros_1Fill/sequential_165/lstm_497/zeros_1/packed:output:0.sequential_165/lstm_497/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_165/lstm_497/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_165/lstm_497/transpose	Transpose'sequential_165/lstm_496/transpose_1:y:0/sequential_165/lstm_497/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_165/lstm_497/Shape_1Shape%sequential_165/lstm_497/transpose:y:0*
T0*
_output_shapes
:w
-sequential_165/lstm_497/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_497/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_165/lstm_497/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_497/strided_slice_1StridedSlice(sequential_165/lstm_497/Shape_1:output:06sequential_165/lstm_497/strided_slice_1/stack:output:08sequential_165/lstm_497/strided_slice_1/stack_1:output:08sequential_165/lstm_497/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_165/lstm_497/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_165/lstm_497/TensorArrayV2TensorListReserve<sequential_165/lstm_497/TensorArrayV2/element_shape:output:00sequential_165/lstm_497/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_165/lstm_497/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_165/lstm_497/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_165/lstm_497/transpose:y:0Vsequential_165/lstm_497/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_165/lstm_497/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_497/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_165/lstm_497/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_497/strided_slice_2StridedSlice%sequential_165/lstm_497/transpose:y:06sequential_165/lstm_497/strided_slice_2/stack:output:08sequential_165/lstm_497/strided_slice_2/stack_1:output:08sequential_165/lstm_497/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_165/lstm_497/lstm_cell_305/MatMul/ReadVariableOpReadVariableOpDsequential_165_lstm_497_lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_165/lstm_497/lstm_cell_305/MatMulMatMul0sequential_165/lstm_497/strided_slice_2:output:0Csequential_165/lstm_497/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_165/lstm_497/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOpFsequential_165_lstm_497_lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_165/lstm_497/lstm_cell_305/MatMul_1MatMul&sequential_165/lstm_497/zeros:output:0Esequential_165/lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_165/lstm_497/lstm_cell_305/addAddV26sequential_165/lstm_497/lstm_cell_305/MatMul:product:08sequential_165/lstm_497/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_165/lstm_497/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOpEsequential_165_lstm_497_lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_165/lstm_497/lstm_cell_305/BiasAddBiasAdd-sequential_165/lstm_497/lstm_cell_305/add:z:0Dsequential_165/lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_165/lstm_497/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_165/lstm_497/lstm_cell_305/splitSplit>sequential_165/lstm_497/lstm_cell_305/split/split_dim:output:06sequential_165/lstm_497/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_165/lstm_497/lstm_cell_305/SigmoidSigmoid4sequential_165/lstm_497/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_165/lstm_497/lstm_cell_305/Sigmoid_1Sigmoid4sequential_165/lstm_497/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_165/lstm_497/lstm_cell_305/mulMul3sequential_165/lstm_497/lstm_cell_305/Sigmoid_1:y:0(sequential_165/lstm_497/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_165/lstm_497/lstm_cell_305/ReluRelu4sequential_165/lstm_497/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_165/lstm_497/lstm_cell_305/mul_1Mul1sequential_165/lstm_497/lstm_cell_305/Sigmoid:y:08sequential_165/lstm_497/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_165/lstm_497/lstm_cell_305/add_1AddV2-sequential_165/lstm_497/lstm_cell_305/mul:z:0/sequential_165/lstm_497/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_165/lstm_497/lstm_cell_305/Sigmoid_2Sigmoid4sequential_165/lstm_497/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_165/lstm_497/lstm_cell_305/Relu_1Relu/sequential_165/lstm_497/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_165/lstm_497/lstm_cell_305/mul_2Mul3sequential_165/lstm_497/lstm_cell_305/Sigmoid_2:y:0:sequential_165/lstm_497/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_165/lstm_497/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_165/lstm_497/TensorArrayV2_1TensorListReserve>sequential_165/lstm_497/TensorArrayV2_1/element_shape:output:00sequential_165/lstm_497/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_165/lstm_497/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_165/lstm_497/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_165/lstm_497/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_165/lstm_497/whileWhile3sequential_165/lstm_497/while/loop_counter:output:09sequential_165/lstm_497/while/maximum_iterations:output:0%sequential_165/lstm_497/time:output:00sequential_165/lstm_497/TensorArrayV2_1:handle:0&sequential_165/lstm_497/zeros:output:0(sequential_165/lstm_497/zeros_1:output:00sequential_165/lstm_497/strided_slice_1:output:0Osequential_165/lstm_497/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_165_lstm_497_lstm_cell_305_matmul_readvariableop_resourceFsequential_165_lstm_497_lstm_cell_305_matmul_1_readvariableop_resourceEsequential_165_lstm_497_lstm_cell_305_biasadd_readvariableop_resource*
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
*sequential_165_lstm_497_while_body_1845327*6
cond.R,
*sequential_165_lstm_497_while_cond_1845326*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_165/lstm_497/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_165/lstm_497/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_165/lstm_497/while:output:3Qsequential_165/lstm_497/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_165/lstm_497/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_165/lstm_497/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_165/lstm_497/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_165/lstm_497/strided_slice_3StridedSliceCsequential_165/lstm_497/TensorArrayV2Stack/TensorListStack:tensor:06sequential_165/lstm_497/strided_slice_3/stack:output:08sequential_165/lstm_497/strided_slice_3/stack_1:output:08sequential_165/lstm_497/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_165/lstm_497/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_165/lstm_497/transpose_1	TransposeCsequential_165/lstm_497/TensorArrayV2Stack/TensorListStack:tensor:01sequential_165/lstm_497/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_165/lstm_497/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_165/dense_165/MatMul/ReadVariableOpReadVariableOp7sequential_165_dense_165_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_165/dense_165/MatMulMatMul0sequential_165/lstm_497/strided_slice_3:output:06sequential_165/dense_165/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_165/dense_165/BiasAdd/ReadVariableOpReadVariableOp8sequential_165_dense_165_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_165/dense_165/BiasAddBiasAdd)sequential_165/dense_165/MatMul:product:07sequential_165/dense_165/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_165/dense_165/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_165/dense_165/BiasAdd/ReadVariableOp/^sequential_165/dense_165/MatMul/ReadVariableOp=^sequential_165/lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp<^sequential_165/lstm_495/lstm_cell_303/MatMul/ReadVariableOp>^sequential_165/lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp^sequential_165/lstm_495/while=^sequential_165/lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp<^sequential_165/lstm_496/lstm_cell_304/MatMul/ReadVariableOp>^sequential_165/lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp^sequential_165/lstm_496/while=^sequential_165/lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp<^sequential_165/lstm_497/lstm_cell_305/MatMul/ReadVariableOp>^sequential_165/lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp^sequential_165/lstm_497/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_165/dense_165/BiasAdd/ReadVariableOp/sequential_165/dense_165/BiasAdd/ReadVariableOp2`
.sequential_165/dense_165/MatMul/ReadVariableOp.sequential_165/dense_165/MatMul/ReadVariableOp2|
<sequential_165/lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp<sequential_165/lstm_495/lstm_cell_303/BiasAdd/ReadVariableOp2z
;sequential_165/lstm_495/lstm_cell_303/MatMul/ReadVariableOp;sequential_165/lstm_495/lstm_cell_303/MatMul/ReadVariableOp2~
=sequential_165/lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp=sequential_165/lstm_495/lstm_cell_303/MatMul_1/ReadVariableOp2>
sequential_165/lstm_495/whilesequential_165/lstm_495/while2|
<sequential_165/lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp<sequential_165/lstm_496/lstm_cell_304/BiasAdd/ReadVariableOp2z
;sequential_165/lstm_496/lstm_cell_304/MatMul/ReadVariableOp;sequential_165/lstm_496/lstm_cell_304/MatMul/ReadVariableOp2~
=sequential_165/lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp=sequential_165/lstm_496/lstm_cell_304/MatMul_1/ReadVariableOp2>
sequential_165/lstm_496/whilesequential_165/lstm_496/while2|
<sequential_165/lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp<sequential_165/lstm_497/lstm_cell_305/BiasAdd/ReadVariableOp2z
;sequential_165/lstm_497/lstm_cell_305/MatMul/ReadVariableOp;sequential_165/lstm_497/lstm_cell_305/MatMul/ReadVariableOp2~
=sequential_165/lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp=sequential_165/lstm_497/lstm_cell_305/MatMul_1/ReadVariableOp2>
sequential_165/lstm_497/whilesequential_165/lstm_497/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_495_input
?
?
while_cond_1846197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1846197___redundant_placeholder05
1while_while_cond_1846197___redundant_placeholder15
1while_while_cond_1846197___redundant_placeholder25
1while_while_cond_1846197___redundant_placeholder3
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846267

inputs'
lstm_cell_305_1846185:2('
lstm_cell_305_1846187:
(#
lstm_cell_305_1846189:(
identity??%lstm_cell_305/StatefulPartitionedCall?while;
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
%lstm_cell_305/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_305_1846185lstm_cell_305_1846187lstm_cell_305_1846189*
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846184n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_305_1846185lstm_cell_305_1846187lstm_cell_305_1846189*
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
while_body_1846198*
condR
while_cond_1846197*K
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
NoOpNoOp&^lstm_cell_305/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_305/StatefulPartitionedCall%lstm_cell_305/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1847377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1847377___redundant_placeholder05
1while_while_cond_1847377___redundant_placeholder15
1while_while_cond_1847377___redundant_placeholder25
1while_while_cond_1847377___redundant_placeholder3
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1846616

inputs?
,lstm_cell_303_matmul_readvariableop_resource:	?A
.lstm_cell_303_matmul_1_readvariableop_resource:	d?<
-lstm_cell_303_biasadd_readvariableop_resource:	?
identity??$lstm_cell_303/BiasAdd/ReadVariableOp?#lstm_cell_303/MatMul/ReadVariableOp?%lstm_cell_303/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_303/MatMul/ReadVariableOpReadVariableOp,lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_303/MatMulMatMulstrided_slice_2:output:0+lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_303/MatMul_1MatMulzeros:output:0-lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_303/addAddV2lstm_cell_303/MatMul:product:0 lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_303/BiasAddBiasAddlstm_cell_303/add:z:0,lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_303/splitSplit&lstm_cell_303/split/split_dim:output:0lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_303/SigmoidSigmoidlstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_1Sigmoidlstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_303/mulMullstm_cell_303/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_303/ReluRelulstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_1Mullstm_cell_303/Sigmoid:y:0 lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_303/add_1AddV2lstm_cell_303/mul:z:0lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_2Sigmoidlstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_303/Relu_1Relulstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_2Mullstm_cell_303/Sigmoid_2:y:0"lstm_cell_303/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_303_matmul_readvariableop_resource.lstm_cell_303_matmul_1_readvariableop_resource-lstm_cell_303_biasadd_readvariableop_resource*
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
while_body_1846532*
condR
while_cond_1846531*K
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
NoOpNoOp%^lstm_cell_303/BiasAdd/ReadVariableOp$^lstm_cell_303/MatMul/ReadVariableOp&^lstm_cell_303/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_303/BiasAdd/ReadVariableOp$lstm_cell_303/BiasAdd/ReadVariableOp2J
#lstm_cell_303/MatMul/ReadVariableOp#lstm_cell_303/MatMul/ReadVariableOp2N
%lstm_cell_303/MatMul_1/ReadVariableOp%lstm_cell_303/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1850205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1850205___redundant_placeholder05
1while_while_cond_1850205___redundant_placeholder15
1while_while_cond_1850205___redundant_placeholder25
1while_while_cond_1850205___redundant_placeholder3
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
*sequential_165_lstm_497_while_cond_1845326L
Hsequential_165_lstm_497_while_sequential_165_lstm_497_while_loop_counterR
Nsequential_165_lstm_497_while_sequential_165_lstm_497_while_maximum_iterations-
)sequential_165_lstm_497_while_placeholder/
+sequential_165_lstm_497_while_placeholder_1/
+sequential_165_lstm_497_while_placeholder_2/
+sequential_165_lstm_497_while_placeholder_3N
Jsequential_165_lstm_497_while_less_sequential_165_lstm_497_strided_slice_1e
asequential_165_lstm_497_while_sequential_165_lstm_497_while_cond_1845326___redundant_placeholder0e
asequential_165_lstm_497_while_sequential_165_lstm_497_while_cond_1845326___redundant_placeholder1e
asequential_165_lstm_497_while_sequential_165_lstm_497_while_cond_1845326___redundant_placeholder2e
asequential_165_lstm_497_while_sequential_165_lstm_497_while_cond_1845326___redundant_placeholder3*
&sequential_165_lstm_497_while_identity
?
"sequential_165/lstm_497/while/LessLess)sequential_165_lstm_497_while_placeholderJsequential_165_lstm_497_while_less_sequential_165_lstm_497_strided_slice_1*
T0*
_output_shapes
: {
&sequential_165/lstm_497/while/IdentityIdentity&sequential_165/lstm_497/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_165_lstm_497_while_identity/sequential_165/lstm_497/while/Identity:output:0*(
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
lstm_495_while_cond_1848216.
*lstm_495_while_lstm_495_while_loop_counter4
0lstm_495_while_lstm_495_while_maximum_iterations
lstm_495_while_placeholder 
lstm_495_while_placeholder_1 
lstm_495_while_placeholder_2 
lstm_495_while_placeholder_30
,lstm_495_while_less_lstm_495_strided_slice_1G
Clstm_495_while_lstm_495_while_cond_1848216___redundant_placeholder0G
Clstm_495_while_lstm_495_while_cond_1848216___redundant_placeholder1G
Clstm_495_while_lstm_495_while_cond_1848216___redundant_placeholder2G
Clstm_495_while_lstm_495_while_cond_1848216___redundant_placeholder3
lstm_495_while_identity
?
lstm_495/while/LessLesslstm_495_while_placeholder,lstm_495_while_less_lstm_495_strided_slice_1*
T0*
_output_shapes
: ]
lstm_495/while/IdentityIdentitylstm_495/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_495_while_identity lstm_495/while/Identity:output:0*(
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1846941

inputs#
lstm_495_1846617:	?#
lstm_495_1846619:	d?
lstm_495_1846621:	?#
lstm_496_1846767:	d?#
lstm_496_1846769:	2?
lstm_496_1846771:	?"
lstm_497_1846917:2("
lstm_497_1846919:
(
lstm_497_1846921:(#
dense_165_1846935:

dense_165_1846937:
identity??!dense_165/StatefulPartitionedCall? lstm_495/StatefulPartitionedCall? lstm_496/StatefulPartitionedCall? lstm_497/StatefulPartitionedCall?
 lstm_495/StatefulPartitionedCallStatefulPartitionedCallinputslstm_495_1846617lstm_495_1846619lstm_495_1846621*
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1846616?
 lstm_496/StatefulPartitionedCallStatefulPartitionedCall)lstm_495/StatefulPartitionedCall:output:0lstm_496_1846767lstm_496_1846769lstm_496_1846771*
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1846766?
 lstm_497/StatefulPartitionedCallStatefulPartitionedCall)lstm_496/StatefulPartitionedCall:output:0lstm_497_1846917lstm_497_1846919lstm_497_1846921*
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846916?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall)lstm_497/StatefulPartitionedCall:output:0dense_165_1846935dense_165_1846937*
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
F__inference_dense_165_layer_call_and_return_conditional_losses_1846934y
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_165/StatefulPartitionedCall!^lstm_495/StatefulPartitionedCall!^lstm_496/StatefulPartitionedCall!^lstm_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2D
 lstm_495/StatefulPartitionedCall lstm_495/StatefulPartitionedCall2D
 lstm_496/StatefulPartitionedCall lstm_496/StatefulPartitionedCall2D
 lstm_497/StatefulPartitionedCall lstm_497/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1845847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1845847___redundant_placeholder05
1while_while_cond_1845847___redundant_placeholder15
1while_while_cond_1845847___redundant_placeholder25
1while_while_cond_1845847___redundant_placeholder3
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

lstm_495_while_body_1848217.
*lstm_495_while_lstm_495_while_loop_counter4
0lstm_495_while_lstm_495_while_maximum_iterations
lstm_495_while_placeholder 
lstm_495_while_placeholder_1 
lstm_495_while_placeholder_2 
lstm_495_while_placeholder_3-
)lstm_495_while_lstm_495_strided_slice_1_0i
elstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0:	?R
?lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?M
>lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
lstm_495_while_identity
lstm_495_while_identity_1
lstm_495_while_identity_2
lstm_495_while_identity_3
lstm_495_while_identity_4
lstm_495_while_identity_5+
'lstm_495_while_lstm_495_strided_slice_1g
clstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensorN
;lstm_495_while_lstm_cell_303_matmul_readvariableop_resource:	?P
=lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource:	d?K
<lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource:	???3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp?2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp?4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp?
@lstm_495/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_495/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensor_0lstm_495_while_placeholderIlstm_495/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp=lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_495/while/lstm_cell_303/MatMulMatMul9lstm_495/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp?lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_495/while/lstm_cell_303/MatMul_1MatMullstm_495_while_placeholder_2<lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_495/while/lstm_cell_303/addAddV2-lstm_495/while/lstm_cell_303/MatMul:product:0/lstm_495/while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp>lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_495/while/lstm_cell_303/BiasAddBiasAdd$lstm_495/while/lstm_cell_303/add:z:0;lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_495/while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_495/while/lstm_cell_303/splitSplit5lstm_495/while/lstm_cell_303/split/split_dim:output:0-lstm_495/while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_495/while/lstm_cell_303/SigmoidSigmoid+lstm_495/while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_495/while/lstm_cell_303/Sigmoid_1Sigmoid+lstm_495/while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_495/while/lstm_cell_303/mulMul*lstm_495/while/lstm_cell_303/Sigmoid_1:y:0lstm_495_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_495/while/lstm_cell_303/ReluRelu+lstm_495/while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_495/while/lstm_cell_303/mul_1Mul(lstm_495/while/lstm_cell_303/Sigmoid:y:0/lstm_495/while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_495/while/lstm_cell_303/add_1AddV2$lstm_495/while/lstm_cell_303/mul:z:0&lstm_495/while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_495/while/lstm_cell_303/Sigmoid_2Sigmoid+lstm_495/while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_495/while/lstm_cell_303/Relu_1Relu&lstm_495/while/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_495/while/lstm_cell_303/mul_2Mul*lstm_495/while/lstm_cell_303/Sigmoid_2:y:01lstm_495/while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_495/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_495_while_placeholder_1lstm_495_while_placeholder&lstm_495/while/lstm_cell_303/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_495/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_495/while/addAddV2lstm_495_while_placeholderlstm_495/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_495/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_495/while/add_1AddV2*lstm_495_while_lstm_495_while_loop_counterlstm_495/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_495/while/IdentityIdentitylstm_495/while/add_1:z:0^lstm_495/while/NoOp*
T0*
_output_shapes
: ?
lstm_495/while/Identity_1Identity0lstm_495_while_lstm_495_while_maximum_iterations^lstm_495/while/NoOp*
T0*
_output_shapes
: t
lstm_495/while/Identity_2Identitylstm_495/while/add:z:0^lstm_495/while/NoOp*
T0*
_output_shapes
: ?
lstm_495/while/Identity_3IdentityClstm_495/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_495/while/NoOp*
T0*
_output_shapes
: ?
lstm_495/while/Identity_4Identity&lstm_495/while/lstm_cell_303/mul_2:z:0^lstm_495/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_495/while/Identity_5Identity&lstm_495/while/lstm_cell_303/add_1:z:0^lstm_495/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_495/while/NoOpNoOp4^lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp3^lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp5^lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_495_while_identity lstm_495/while/Identity:output:0"?
lstm_495_while_identity_1"lstm_495/while/Identity_1:output:0"?
lstm_495_while_identity_2"lstm_495/while/Identity_2:output:0"?
lstm_495_while_identity_3"lstm_495/while/Identity_3:output:0"?
lstm_495_while_identity_4"lstm_495/while/Identity_4:output:0"?
lstm_495_while_identity_5"lstm_495/while/Identity_5:output:0"T
'lstm_495_while_lstm_495_strided_slice_1)lstm_495_while_lstm_495_strided_slice_1_0"~
<lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource>lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0"?
=lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource?lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0"|
;lstm_495_while_lstm_cell_303_matmul_readvariableop_resource=lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0"?
clstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensorelstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp2h
2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp2l
4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1846766

inputs?
,lstm_cell_304_matmul_readvariableop_resource:	d?A
.lstm_cell_304_matmul_1_readvariableop_resource:	2?<
-lstm_cell_304_biasadd_readvariableop_resource:	?
identity??$lstm_cell_304/BiasAdd/ReadVariableOp?#lstm_cell_304/MatMul/ReadVariableOp?%lstm_cell_304/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_304/MatMul/ReadVariableOpReadVariableOp,lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_304/MatMulMatMulstrided_slice_2:output:0+lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_304/MatMul_1MatMulzeros:output:0-lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_304/addAddV2lstm_cell_304/MatMul:product:0 lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_304/BiasAddBiasAddlstm_cell_304/add:z:0,lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_304/splitSplit&lstm_cell_304/split/split_dim:output:0lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_304/SigmoidSigmoidlstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_1Sigmoidlstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_304/mulMullstm_cell_304/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_304/ReluRelulstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_1Mullstm_cell_304/Sigmoid:y:0 lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_304/add_1AddV2lstm_cell_304/mul:z:0lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_2Sigmoidlstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_304/Relu_1Relulstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_2Mullstm_cell_304/Sigmoid_2:y:0"lstm_cell_304/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_304_matmul_readvariableop_resource.lstm_cell_304_matmul_1_readvariableop_resource-lstm_cell_304_biasadd_readvariableop_resource*
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
while_body_1846682*
condR
while_cond_1846681*K
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
NoOpNoOp%^lstm_cell_304/BiasAdd/ReadVariableOp$^lstm_cell_304/MatMul/ReadVariableOp&^lstm_cell_304/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_304/BiasAdd/ReadVariableOp$lstm_cell_304/BiasAdd/ReadVariableOp2J
#lstm_cell_304/MatMul/ReadVariableOp#lstm_cell_304/MatMul/ReadVariableOp2N
%lstm_cell_304/MatMul_1/ReadVariableOp%lstm_cell_304/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846330

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
*__inference_lstm_497_layer_call_fn_1849839
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846458o
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
*__inference_lstm_495_layer_call_fn_1848596
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1845567|
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845980

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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849531
inputs_0?
,lstm_cell_304_matmul_readvariableop_resource:	d?A
.lstm_cell_304_matmul_1_readvariableop_resource:	2?<
-lstm_cell_304_biasadd_readvariableop_resource:	?
identity??$lstm_cell_304/BiasAdd/ReadVariableOp?#lstm_cell_304/MatMul/ReadVariableOp?%lstm_cell_304/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_304/MatMul/ReadVariableOpReadVariableOp,lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_304/MatMulMatMulstrided_slice_2:output:0+lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_304/MatMul_1MatMulzeros:output:0-lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_304/addAddV2lstm_cell_304/MatMul:product:0 lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_304/BiasAddBiasAddlstm_cell_304/add:z:0,lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_304/splitSplit&lstm_cell_304/split/split_dim:output:0lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_304/SigmoidSigmoidlstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_1Sigmoidlstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_304/mulMullstm_cell_304/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_304/ReluRelulstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_1Mullstm_cell_304/Sigmoid:y:0 lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_304/add_1AddV2lstm_cell_304/mul:z:0lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_2Sigmoidlstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_304/Relu_1Relulstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_2Mullstm_cell_304/Sigmoid_2:y:0"lstm_cell_304/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_304_matmul_readvariableop_resource.lstm_cell_304_matmul_1_readvariableop_resource-lstm_cell_304_biasadd_readvariableop_resource*
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
while_body_1849447*
condR
while_cond_1849446*K
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
NoOpNoOp%^lstm_cell_304/BiasAdd/ReadVariableOp$^lstm_cell_304/MatMul/ReadVariableOp&^lstm_cell_304/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_304/BiasAdd/ReadVariableOp$lstm_cell_304/BiasAdd/ReadVariableOp2J
#lstm_cell_304/MatMul/ReadVariableOp#lstm_cell_304/MatMul/ReadVariableOp2N
%lstm_cell_304/MatMul_1/ReadVariableOp%lstm_cell_304/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850290

inputs>
,lstm_cell_305_matmul_readvariableop_resource:2(@
.lstm_cell_305_matmul_1_readvariableop_resource:
(;
-lstm_cell_305_biasadd_readvariableop_resource:(
identity??$lstm_cell_305/BiasAdd/ReadVariableOp?#lstm_cell_305/MatMul/ReadVariableOp?%lstm_cell_305/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_305/MatMul/ReadVariableOpReadVariableOp,lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_305/MatMulMatMulstrided_slice_2:output:0+lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_305/MatMul_1MatMulzeros:output:0-lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_305/addAddV2lstm_cell_305/MatMul:product:0 lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_305/BiasAddBiasAddlstm_cell_305/add:z:0,lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_305/splitSplit&lstm_cell_305/split/split_dim:output:0lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_305/SigmoidSigmoidlstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_1Sigmoidlstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_305/mulMullstm_cell_305/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_305/ReluRelulstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_1Mullstm_cell_305/Sigmoid:y:0 lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_305/add_1AddV2lstm_cell_305/mul:z:0lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_2Sigmoidlstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_305/Relu_1Relulstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_2Mullstm_cell_305/Sigmoid_2:y:0"lstm_cell_305/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_305_matmul_readvariableop_resource.lstm_cell_305_matmul_1_readvariableop_resource-lstm_cell_305_biasadd_readvariableop_resource*
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
while_body_1850206*
condR
while_cond_1850205*K
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
NoOpNoOp%^lstm_cell_305/BiasAdd/ReadVariableOp$^lstm_cell_305/MatMul/ReadVariableOp&^lstm_cell_305/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_305/BiasAdd/ReadVariableOp$lstm_cell_305/BiasAdd/ReadVariableOp2J
#lstm_cell_305/MatMul/ReadVariableOp#lstm_cell_305/MatMul/ReadVariableOp2N
%lstm_cell_305/MatMul_1/ReadVariableOp%lstm_cell_305/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1847048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_305_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_305_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_305_matmul_readvariableop_resource:2(F
4while_lstm_cell_305_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_305_biasadd_readvariableop_resource:(??*while/lstm_cell_305/BiasAdd/ReadVariableOp?)while/lstm_cell_305/MatMul/ReadVariableOp?+while/lstm_cell_305/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_305/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_305/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_305/addAddV2$while/lstm_cell_305/MatMul:product:0&while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_305/BiasAddBiasAddwhile/lstm_cell_305/add:z:02while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_305/splitSplit,while/lstm_cell_305/split/split_dim:output:0$while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_305/SigmoidSigmoid"while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_1Sigmoid"while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mulMul!while/lstm_cell_305/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_305/ReluRelu"while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_1Mulwhile/lstm_cell_305/Sigmoid:y:0&while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/add_1AddV2while/lstm_cell_305/mul:z:0while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_2Sigmoid"while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_305/Relu_1Reluwhile/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_2Mul!while/lstm_cell_305/Sigmoid_2:y:0(while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_305/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_305/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_305/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_305/BiasAdd/ReadVariableOp*^while/lstm_cell_305/MatMul/ReadVariableOp,^while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_305_biasadd_readvariableop_resource5while_lstm_cell_305_biasadd_readvariableop_resource_0"n
4while_lstm_cell_305_matmul_1_readvariableop_resource6while_lstm_cell_305_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_305_matmul_readvariableop_resource4while_lstm_cell_305_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_305/BiasAdd/ReadVariableOp*while/lstm_cell_305/BiasAdd/ReadVariableOp2V
)while/lstm_cell_305/MatMul/ReadVariableOp)while/lstm_cell_305/MatMul/ReadVariableOp2Z
+while/lstm_cell_305/MatMul_1/ReadVariableOp+while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_304_layer_call_fn_1850584

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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845980o
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

lstm_497_while_body_1848068.
*lstm_497_while_lstm_497_while_loop_counter4
0lstm_497_while_lstm_497_while_maximum_iterations
lstm_497_while_placeholder 
lstm_497_while_placeholder_1 
lstm_497_while_placeholder_2 
lstm_497_while_placeholder_3-
)lstm_497_while_lstm_497_strided_slice_1_0i
elstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0:2(Q
?lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(L
>lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0:(
lstm_497_while_identity
lstm_497_while_identity_1
lstm_497_while_identity_2
lstm_497_while_identity_3
lstm_497_while_identity_4
lstm_497_while_identity_5+
'lstm_497_while_lstm_497_strided_slice_1g
clstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensorM
;lstm_497_while_lstm_cell_305_matmul_readvariableop_resource:2(O
=lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource:
(J
<lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource:(??3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp?2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp?4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp?
@lstm_497/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_497/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensor_0lstm_497_while_placeholderIlstm_497/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp=lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_497/while/lstm_cell_305/MatMulMatMul9lstm_497/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp?lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_497/while/lstm_cell_305/MatMul_1MatMullstm_497_while_placeholder_2<lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_497/while/lstm_cell_305/addAddV2-lstm_497/while/lstm_cell_305/MatMul:product:0/lstm_497/while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp>lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_497/while/lstm_cell_305/BiasAddBiasAdd$lstm_497/while/lstm_cell_305/add:z:0;lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_497/while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_497/while/lstm_cell_305/splitSplit5lstm_497/while/lstm_cell_305/split/split_dim:output:0-lstm_497/while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_497/while/lstm_cell_305/SigmoidSigmoid+lstm_497/while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_497/while/lstm_cell_305/Sigmoid_1Sigmoid+lstm_497/while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_497/while/lstm_cell_305/mulMul*lstm_497/while/lstm_cell_305/Sigmoid_1:y:0lstm_497_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_497/while/lstm_cell_305/ReluRelu+lstm_497/while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_497/while/lstm_cell_305/mul_1Mul(lstm_497/while/lstm_cell_305/Sigmoid:y:0/lstm_497/while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_497/while/lstm_cell_305/add_1AddV2$lstm_497/while/lstm_cell_305/mul:z:0&lstm_497/while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_497/while/lstm_cell_305/Sigmoid_2Sigmoid+lstm_497/while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_497/while/lstm_cell_305/Relu_1Relu&lstm_497/while/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_497/while/lstm_cell_305/mul_2Mul*lstm_497/while/lstm_cell_305/Sigmoid_2:y:01lstm_497/while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_497/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_497_while_placeholder_1lstm_497_while_placeholder&lstm_497/while/lstm_cell_305/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_497/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_497/while/addAddV2lstm_497_while_placeholderlstm_497/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_497/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_497/while/add_1AddV2*lstm_497_while_lstm_497_while_loop_counterlstm_497/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_497/while/IdentityIdentitylstm_497/while/add_1:z:0^lstm_497/while/NoOp*
T0*
_output_shapes
: ?
lstm_497/while/Identity_1Identity0lstm_497_while_lstm_497_while_maximum_iterations^lstm_497/while/NoOp*
T0*
_output_shapes
: t
lstm_497/while/Identity_2Identitylstm_497/while/add:z:0^lstm_497/while/NoOp*
T0*
_output_shapes
: ?
lstm_497/while/Identity_3IdentityClstm_497/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_497/while/NoOp*
T0*
_output_shapes
: ?
lstm_497/while/Identity_4Identity&lstm_497/while/lstm_cell_305/mul_2:z:0^lstm_497/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_497/while/Identity_5Identity&lstm_497/while/lstm_cell_305/add_1:z:0^lstm_497/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_497/while/NoOpNoOp4^lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp3^lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp5^lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_497_while_identity lstm_497/while/Identity:output:0"?
lstm_497_while_identity_1"lstm_497/while/Identity_1:output:0"?
lstm_497_while_identity_2"lstm_497/while/Identity_2:output:0"?
lstm_497_while_identity_3"lstm_497/while/Identity_3:output:0"?
lstm_497_while_identity_4"lstm_497/while/Identity_4:output:0"?
lstm_497_while_identity_5"lstm_497/while/Identity_5:output:0"T
'lstm_497_while_lstm_497_strided_slice_1)lstm_497_while_lstm_497_strided_slice_1_0"~
<lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource>lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0"?
=lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource?lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0"|
;lstm_497_while_lstm_cell_305_matmul_readvariableop_resource=lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0"?
clstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensorelstm_497_while_tensorarrayv2read_tensorlistgetitem_lstm_497_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp3lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp2h
2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp2lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp2l
4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp4lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_495_layer_call_fn_1848607
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1845758|
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
while_cond_1849732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1849732___redundant_placeholder05
1while_while_cond_1849732___redundant_placeholder15
1while_while_cond_1849732___redundant_placeholder25
1while_while_cond_1849732___redundant_placeholder3
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1845758

inputs(
lstm_cell_303_1845676:	?(
lstm_cell_303_1845678:	d?$
lstm_cell_303_1845680:	?
identity??%lstm_cell_303/StatefulPartitionedCall?while;
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
%lstm_cell_303/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_303_1845676lstm_cell_303_1845678lstm_cell_303_1845680*
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845630n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_303_1845676lstm_cell_303_1845678lstm_cell_303_1845680*
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
while_body_1845689*
condR
while_cond_1845688*K
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
NoOpNoOp&^lstm_cell_303/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_303/StatefulPartitionedCall%lstm_cell_303/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_495_layer_call_fn_1848618

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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1846616s
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1846108

inputs(
lstm_cell_304_1846026:	d?(
lstm_cell_304_1846028:	2?$
lstm_cell_304_1846030:	?
identity??%lstm_cell_304/StatefulPartitionedCall?while;
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
%lstm_cell_304/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_304_1846026lstm_cell_304_1846028lstm_cell_304_1846030*
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845980n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_304_1846026lstm_cell_304_1846028lstm_cell_304_1846030*
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
while_body_1846039*
condR
while_cond_1846038*K
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
NoOpNoOp&^lstm_cell_304/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_304/StatefulPartitionedCall%lstm_cell_304/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1847047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1847047___redundant_placeholder05
1while_while_cond_1847047___redundant_placeholder15
1while_while_cond_1847047___redundant_placeholder25
1while_while_cond_1847047___redundant_placeholder3
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
while_body_1846832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_305_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_305_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_305_matmul_readvariableop_resource:2(F
4while_lstm_cell_305_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_305_biasadd_readvariableop_resource:(??*while/lstm_cell_305/BiasAdd/ReadVariableOp?)while/lstm_cell_305/MatMul/ReadVariableOp?+while/lstm_cell_305/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_305/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_305/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_305/addAddV2$while/lstm_cell_305/MatMul:product:0&while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_305/BiasAddBiasAddwhile/lstm_cell_305/add:z:02while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_305/splitSplit,while/lstm_cell_305/split/split_dim:output:0$while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_305/SigmoidSigmoid"while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_1Sigmoid"while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mulMul!while/lstm_cell_305/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_305/ReluRelu"while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_1Mulwhile/lstm_cell_305/Sigmoid:y:0&while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/add_1AddV2while/lstm_cell_305/mul:z:0while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_2Sigmoid"while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_305/Relu_1Reluwhile/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_2Mul!while/lstm_cell_305/Sigmoid_2:y:0(while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_305/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_305/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_305/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_305/BiasAdd/ReadVariableOp*^while/lstm_cell_305/MatMul/ReadVariableOp,^while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_305_biasadd_readvariableop_resource5while_lstm_cell_305_biasadd_readvariableop_resource_0"n
4while_lstm_cell_305_matmul_1_readvariableop_resource6while_lstm_cell_305_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_305_matmul_readvariableop_resource4while_lstm_cell_305_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_305/BiasAdd/ReadVariableOp*while/lstm_cell_305/BiasAdd/ReadVariableOp2V
)while/lstm_cell_305/MatMul/ReadVariableOp)while/lstm_cell_305/MatMul/ReadVariableOp2Z
+while/lstm_cell_305/MatMul_1/ReadVariableOp+while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1846532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_303_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_303_matmul_readvariableop_resource:	?G
4while_lstm_cell_303_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_303_biasadd_readvariableop_resource:	???*while/lstm_cell_303/BiasAdd/ReadVariableOp?)while/lstm_cell_303/MatMul/ReadVariableOp?+while/lstm_cell_303/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_303/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_303/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_303/addAddV2$while/lstm_cell_303/MatMul:product:0&while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_303/BiasAddBiasAddwhile/lstm_cell_303/add:z:02while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_303/splitSplit,while/lstm_cell_303/split/split_dim:output:0$while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_303/SigmoidSigmoid"while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_1Sigmoid"while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mulMul!while/lstm_cell_303/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_303/ReluRelu"while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_1Mulwhile/lstm_cell_303/Sigmoid:y:0&while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/add_1AddV2while/lstm_cell_303/mul:z:0while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_2Sigmoid"while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_303/Relu_1Reluwhile/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_2Mul!while/lstm_cell_303/Sigmoid_2:y:0(while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_303/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_303/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_303/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_303/BiasAdd/ReadVariableOp*^while/lstm_cell_303/MatMul/ReadVariableOp,^while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_303_biasadd_readvariableop_resource5while_lstm_cell_303_biasadd_readvariableop_resource_0"n
4while_lstm_cell_303_matmul_1_readvariableop_resource6while_lstm_cell_303_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_303_matmul_readvariableop_resource4while_lstm_cell_303_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_303/BiasAdd/ReadVariableOp*while/lstm_cell_303/BiasAdd/ReadVariableOp2V
)while/lstm_cell_303/MatMul/ReadVariableOp)while/lstm_cell_303/MatMul/ReadVariableOp2Z
+while/lstm_cell_303/MatMul_1/ReadVariableOp+while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1850062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1850062___redundant_placeholder05
1while_while_cond_1850062___redundant_placeholder15
1while_while_cond_1850062___redundant_placeholder25
1while_while_cond_1850062___redundant_placeholder3
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

lstm_495_while_body_1847790.
*lstm_495_while_lstm_495_while_loop_counter4
0lstm_495_while_lstm_495_while_maximum_iterations
lstm_495_while_placeholder 
lstm_495_while_placeholder_1 
lstm_495_while_placeholder_2 
lstm_495_while_placeholder_3-
)lstm_495_while_lstm_495_strided_slice_1_0i
elstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0:	?R
?lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?M
>lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
lstm_495_while_identity
lstm_495_while_identity_1
lstm_495_while_identity_2
lstm_495_while_identity_3
lstm_495_while_identity_4
lstm_495_while_identity_5+
'lstm_495_while_lstm_495_strided_slice_1g
clstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensorN
;lstm_495_while_lstm_cell_303_matmul_readvariableop_resource:	?P
=lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource:	d?K
<lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource:	???3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp?2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp?4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp?
@lstm_495/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_495/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensor_0lstm_495_while_placeholderIlstm_495/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp=lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_495/while/lstm_cell_303/MatMulMatMul9lstm_495/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp?lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_495/while/lstm_cell_303/MatMul_1MatMullstm_495_while_placeholder_2<lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_495/while/lstm_cell_303/addAddV2-lstm_495/while/lstm_cell_303/MatMul:product:0/lstm_495/while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp>lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_495/while/lstm_cell_303/BiasAddBiasAdd$lstm_495/while/lstm_cell_303/add:z:0;lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_495/while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_495/while/lstm_cell_303/splitSplit5lstm_495/while/lstm_cell_303/split/split_dim:output:0-lstm_495/while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_495/while/lstm_cell_303/SigmoidSigmoid+lstm_495/while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_495/while/lstm_cell_303/Sigmoid_1Sigmoid+lstm_495/while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_495/while/lstm_cell_303/mulMul*lstm_495/while/lstm_cell_303/Sigmoid_1:y:0lstm_495_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_495/while/lstm_cell_303/ReluRelu+lstm_495/while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_495/while/lstm_cell_303/mul_1Mul(lstm_495/while/lstm_cell_303/Sigmoid:y:0/lstm_495/while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_495/while/lstm_cell_303/add_1AddV2$lstm_495/while/lstm_cell_303/mul:z:0&lstm_495/while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_495/while/lstm_cell_303/Sigmoid_2Sigmoid+lstm_495/while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_495/while/lstm_cell_303/Relu_1Relu&lstm_495/while/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_495/while/lstm_cell_303/mul_2Mul*lstm_495/while/lstm_cell_303/Sigmoid_2:y:01lstm_495/while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_495/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_495_while_placeholder_1lstm_495_while_placeholder&lstm_495/while/lstm_cell_303/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_495/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_495/while/addAddV2lstm_495_while_placeholderlstm_495/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_495/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_495/while/add_1AddV2*lstm_495_while_lstm_495_while_loop_counterlstm_495/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_495/while/IdentityIdentitylstm_495/while/add_1:z:0^lstm_495/while/NoOp*
T0*
_output_shapes
: ?
lstm_495/while/Identity_1Identity0lstm_495_while_lstm_495_while_maximum_iterations^lstm_495/while/NoOp*
T0*
_output_shapes
: t
lstm_495/while/Identity_2Identitylstm_495/while/add:z:0^lstm_495/while/NoOp*
T0*
_output_shapes
: ?
lstm_495/while/Identity_3IdentityClstm_495/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_495/while/NoOp*
T0*
_output_shapes
: ?
lstm_495/while/Identity_4Identity&lstm_495/while/lstm_cell_303/mul_2:z:0^lstm_495/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_495/while/Identity_5Identity&lstm_495/while/lstm_cell_303/add_1:z:0^lstm_495/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_495/while/NoOpNoOp4^lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp3^lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp5^lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_495_while_identity lstm_495/while/Identity:output:0"?
lstm_495_while_identity_1"lstm_495/while/Identity_1:output:0"?
lstm_495_while_identity_2"lstm_495/while/Identity_2:output:0"?
lstm_495_while_identity_3"lstm_495/while/Identity_3:output:0"?
lstm_495_while_identity_4"lstm_495/while/Identity_4:output:0"?
lstm_495_while_identity_5"lstm_495/while/Identity_5:output:0"T
'lstm_495_while_lstm_495_strided_slice_1)lstm_495_while_lstm_495_strided_slice_1_0"~
<lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource>lstm_495_while_lstm_cell_303_biasadd_readvariableop_resource_0"?
=lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource?lstm_495_while_lstm_cell_303_matmul_1_readvariableop_resource_0"|
;lstm_495_while_lstm_cell_303_matmul_readvariableop_resource=lstm_495_while_lstm_cell_303_matmul_readvariableop_resource_0"?
clstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensorelstm_495_while_tensorarrayv2read_tensorlistgetitem_lstm_495_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp3lstm_495/while/lstm_cell_303/BiasAdd/ReadVariableOp2h
2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp2lstm_495/while/lstm_cell_303/MatMul/ReadVariableOp2l
4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp4lstm_495/while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1846388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1846388___redundant_placeholder05
1while_while_cond_1846388___redundant_placeholder15
1while_while_cond_1846388___redundant_placeholder25
1while_while_cond_1846388___redundant_placeholder3
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
while_cond_1845688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1845688___redundant_placeholder05
1while_while_cond_1845688___redundant_placeholder15
1while_while_cond_1845688___redundant_placeholder25
1while_while_cond_1845688___redundant_placeholder3
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
*__inference_lstm_496_layer_call_fn_1849223
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1846108|
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
while_body_1850063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_305_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_305_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_305_matmul_readvariableop_resource:2(F
4while_lstm_cell_305_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_305_biasadd_readvariableop_resource:(??*while/lstm_cell_305/BiasAdd/ReadVariableOp?)while/lstm_cell_305/MatMul/ReadVariableOp?+while/lstm_cell_305/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_305/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_305/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_305/addAddV2$while/lstm_cell_305/MatMul:product:0&while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_305/BiasAddBiasAddwhile/lstm_cell_305/add:z:02while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_305/splitSplit,while/lstm_cell_305/split/split_dim:output:0$while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_305/SigmoidSigmoid"while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_1Sigmoid"while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mulMul!while/lstm_cell_305/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_305/ReluRelu"while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_1Mulwhile/lstm_cell_305/Sigmoid:y:0&while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/add_1AddV2while/lstm_cell_305/mul:z:0while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_2Sigmoid"while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_305/Relu_1Reluwhile/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_2Mul!while/lstm_cell_305/Sigmoid_2:y:0(while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_305/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_305/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_305/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_305/BiasAdd/ReadVariableOp*^while/lstm_cell_305/MatMul/ReadVariableOp,^while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_305_biasadd_readvariableop_resource5while_lstm_cell_305_biasadd_readvariableop_resource_0"n
4while_lstm_cell_305_matmul_1_readvariableop_resource6while_lstm_cell_305_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_305_matmul_readvariableop_resource4while_lstm_cell_305_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_305/BiasAdd/ReadVariableOp*while/lstm_cell_305/BiasAdd/ReadVariableOp2V
)while/lstm_cell_305/MatMul/ReadVariableOp)while/lstm_cell_305/MatMul/ReadVariableOp2Z
+while/lstm_cell_305/MatMul_1/ReadVariableOp+while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_165_layer_call_and_return_conditional_losses_1850452

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
?

?
lstm_497_while_cond_1848494.
*lstm_497_while_lstm_497_while_loop_counter4
0lstm_497_while_lstm_497_while_maximum_iterations
lstm_497_while_placeholder 
lstm_497_while_placeholder_1 
lstm_497_while_placeholder_2 
lstm_497_while_placeholder_30
,lstm_497_while_less_lstm_497_strided_slice_1G
Clstm_497_while_lstm_497_while_cond_1848494___redundant_placeholder0G
Clstm_497_while_lstm_497_while_cond_1848494___redundant_placeholder1G
Clstm_497_while_lstm_497_while_cond_1848494___redundant_placeholder2G
Clstm_497_while_lstm_497_while_cond_1848494___redundant_placeholder3
lstm_497_while_identity
?
lstm_497/while/LessLesslstm_497_while_placeholder,lstm_497_while_less_lstm_497_strided_slice_1*
T0*
_output_shapes
: ]
lstm_497/while/IdentityIdentitylstm_497/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_497_while_identity lstm_497/while/Identity:output:0*(
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
*sequential_165_lstm_495_while_cond_1845048L
Hsequential_165_lstm_495_while_sequential_165_lstm_495_while_loop_counterR
Nsequential_165_lstm_495_while_sequential_165_lstm_495_while_maximum_iterations-
)sequential_165_lstm_495_while_placeholder/
+sequential_165_lstm_495_while_placeholder_1/
+sequential_165_lstm_495_while_placeholder_2/
+sequential_165_lstm_495_while_placeholder_3N
Jsequential_165_lstm_495_while_less_sequential_165_lstm_495_strided_slice_1e
asequential_165_lstm_495_while_sequential_165_lstm_495_while_cond_1845048___redundant_placeholder0e
asequential_165_lstm_495_while_sequential_165_lstm_495_while_cond_1845048___redundant_placeholder1e
asequential_165_lstm_495_while_sequential_165_lstm_495_while_cond_1845048___redundant_placeholder2e
asequential_165_lstm_495_while_sequential_165_lstm_495_while_cond_1845048___redundant_placeholder3*
&sequential_165_lstm_495_while_identity
?
"sequential_165/lstm_495/while/LessLess)sequential_165_lstm_495_while_placeholderJsequential_165_lstm_495_while_less_sequential_165_lstm_495_strided_slice_1*
T0*
_output_shapes
: {
&sequential_165/lstm_495/while/IdentityIdentity&sequential_165/lstm_495/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_165_lstm_495_while_identity/sequential_165/lstm_495/while/Identity:output:0*(
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
while_body_1850206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_305_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_305_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_305_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_305_matmul_readvariableop_resource:2(F
4while_lstm_cell_305_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_305_biasadd_readvariableop_resource:(??*while/lstm_cell_305/BiasAdd/ReadVariableOp?)while/lstm_cell_305/MatMul/ReadVariableOp?+while/lstm_cell_305/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_305/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_305/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_305/addAddV2$while/lstm_cell_305/MatMul:product:0&while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_305/BiasAddBiasAddwhile/lstm_cell_305/add:z:02while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_305/splitSplit,while/lstm_cell_305/split/split_dim:output:0$while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_305/SigmoidSigmoid"while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_1Sigmoid"while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mulMul!while/lstm_cell_305/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_305/ReluRelu"while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_1Mulwhile/lstm_cell_305/Sigmoid:y:0&while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/add_1AddV2while/lstm_cell_305/mul:z:0while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_305/Sigmoid_2Sigmoid"while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_305/Relu_1Reluwhile/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_305/mul_2Mul!while/lstm_cell_305/Sigmoid_2:y:0(while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_305/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_305/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_305/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_305/BiasAdd/ReadVariableOp*^while/lstm_cell_305/MatMul/ReadVariableOp,^while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_305_biasadd_readvariableop_resource5while_lstm_cell_305_biasadd_readvariableop_resource_0"n
4while_lstm_cell_305_matmul_1_readvariableop_resource6while_lstm_cell_305_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_305_matmul_readvariableop_resource4while_lstm_cell_305_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_305/BiasAdd/ReadVariableOp*while/lstm_cell_305/BiasAdd/ReadVariableOp2V
)while/lstm_cell_305/MatMul/ReadVariableOp)while/lstm_cell_305/MatMul/ReadVariableOp2Z
+while/lstm_cell_305/MatMul_1/ReadVariableOp+while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_496_layer_call_fn_1849212
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1845917|
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1849058

inputs?
,lstm_cell_303_matmul_readvariableop_resource:	?A
.lstm_cell_303_matmul_1_readvariableop_resource:	d?<
-lstm_cell_303_biasadd_readvariableop_resource:	?
identity??$lstm_cell_303/BiasAdd/ReadVariableOp?#lstm_cell_303/MatMul/ReadVariableOp?%lstm_cell_303/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_303/MatMul/ReadVariableOpReadVariableOp,lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_303/MatMulMatMulstrided_slice_2:output:0+lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_303/MatMul_1MatMulzeros:output:0-lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_303/addAddV2lstm_cell_303/MatMul:product:0 lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_303/BiasAddBiasAddlstm_cell_303/add:z:0,lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_303/splitSplit&lstm_cell_303/split/split_dim:output:0lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_303/SigmoidSigmoidlstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_1Sigmoidlstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_303/mulMullstm_cell_303/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_303/ReluRelulstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_1Mullstm_cell_303/Sigmoid:y:0 lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_303/add_1AddV2lstm_cell_303/mul:z:0lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_2Sigmoidlstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_303/Relu_1Relulstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_2Mullstm_cell_303/Sigmoid_2:y:0"lstm_cell_303/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_303_matmul_readvariableop_resource.lstm_cell_303_matmul_1_readvariableop_resource-lstm_cell_303_biasadd_readvariableop_resource*
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
while_body_1848974*
condR
while_cond_1848973*K
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
NoOpNoOp%^lstm_cell_303/BiasAdd/ReadVariableOp$^lstm_cell_303/MatMul/ReadVariableOp&^lstm_cell_303/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_303/BiasAdd/ReadVariableOp$lstm_cell_303/BiasAdd/ReadVariableOp2J
#lstm_cell_303/MatMul/ReadVariableOp#lstm_cell_303/MatMul/ReadVariableOp2N
%lstm_cell_303/MatMul_1/ReadVariableOp%lstm_cell_303/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1850714

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
/__inference_lstm_cell_303_layer_call_fn_1850469

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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845484o
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
?W
?
 __inference__traced_save_1850889
file_prefix/
+savev2_dense_165_kernel_read_readvariableop-
)savev2_dense_165_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_495_lstm_cell_495_kernel_read_readvariableopF
Bsavev2_lstm_495_lstm_cell_495_recurrent_kernel_read_readvariableop:
6savev2_lstm_495_lstm_cell_495_bias_read_readvariableop<
8savev2_lstm_496_lstm_cell_496_kernel_read_readvariableopF
Bsavev2_lstm_496_lstm_cell_496_recurrent_kernel_read_readvariableop:
6savev2_lstm_496_lstm_cell_496_bias_read_readvariableop<
8savev2_lstm_497_lstm_cell_497_kernel_read_readvariableopF
Bsavev2_lstm_497_lstm_cell_497_recurrent_kernel_read_readvariableop:
6savev2_lstm_497_lstm_cell_497_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_165_kernel_m_read_readvariableop4
0savev2_adam_dense_165_bias_m_read_readvariableopC
?savev2_adam_lstm_495_lstm_cell_495_kernel_m_read_readvariableopM
Isavev2_adam_lstm_495_lstm_cell_495_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_495_lstm_cell_495_bias_m_read_readvariableopC
?savev2_adam_lstm_496_lstm_cell_496_kernel_m_read_readvariableopM
Isavev2_adam_lstm_496_lstm_cell_496_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_496_lstm_cell_496_bias_m_read_readvariableopC
?savev2_adam_lstm_497_lstm_cell_497_kernel_m_read_readvariableopM
Isavev2_adam_lstm_497_lstm_cell_497_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_497_lstm_cell_497_bias_m_read_readvariableop6
2savev2_adam_dense_165_kernel_v_read_readvariableop4
0savev2_adam_dense_165_bias_v_read_readvariableopC
?savev2_adam_lstm_495_lstm_cell_495_kernel_v_read_readvariableopM
Isavev2_adam_lstm_495_lstm_cell_495_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_495_lstm_cell_495_bias_v_read_readvariableopC
?savev2_adam_lstm_496_lstm_cell_496_kernel_v_read_readvariableopM
Isavev2_adam_lstm_496_lstm_cell_496_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_496_lstm_cell_496_bias_v_read_readvariableopC
?savev2_adam_lstm_497_lstm_cell_497_kernel_v_read_readvariableopM
Isavev2_adam_lstm_497_lstm_cell_497_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_497_lstm_cell_497_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_165_kernel_read_readvariableop)savev2_dense_165_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_495_lstm_cell_495_kernel_read_readvariableopBsavev2_lstm_495_lstm_cell_495_recurrent_kernel_read_readvariableop6savev2_lstm_495_lstm_cell_495_bias_read_readvariableop8savev2_lstm_496_lstm_cell_496_kernel_read_readvariableopBsavev2_lstm_496_lstm_cell_496_recurrent_kernel_read_readvariableop6savev2_lstm_496_lstm_cell_496_bias_read_readvariableop8savev2_lstm_497_lstm_cell_497_kernel_read_readvariableopBsavev2_lstm_497_lstm_cell_497_recurrent_kernel_read_readvariableop6savev2_lstm_497_lstm_cell_497_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_165_kernel_m_read_readvariableop0savev2_adam_dense_165_bias_m_read_readvariableop?savev2_adam_lstm_495_lstm_cell_495_kernel_m_read_readvariableopIsavev2_adam_lstm_495_lstm_cell_495_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_495_lstm_cell_495_bias_m_read_readvariableop?savev2_adam_lstm_496_lstm_cell_496_kernel_m_read_readvariableopIsavev2_adam_lstm_496_lstm_cell_496_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_496_lstm_cell_496_bias_m_read_readvariableop?savev2_adam_lstm_497_lstm_cell_497_kernel_m_read_readvariableopIsavev2_adam_lstm_497_lstm_cell_497_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_497_lstm_cell_497_bias_m_read_readvariableop2savev2_adam_dense_165_kernel_v_read_readvariableop0savev2_adam_dense_165_bias_v_read_readvariableop?savev2_adam_lstm_495_lstm_cell_495_kernel_v_read_readvariableopIsavev2_adam_lstm_495_lstm_cell_495_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_495_lstm_cell_495_bias_v_read_readvariableop?savev2_adam_lstm_496_lstm_cell_496_kernel_v_read_readvariableopIsavev2_adam_lstm_496_lstm_cell_496_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_496_lstm_cell_496_bias_v_read_readvariableop?savev2_adam_lstm_497_lstm_cell_497_kernel_v_read_readvariableopIsavev2_adam_lstm_497_lstm_cell_497_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_497_lstm_cell_497_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
*__inference_lstm_495_layer_call_fn_1848629

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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1847462s
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
while_cond_1846681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1846681___redundant_placeholder05
1while_while_cond_1846681___redundant_placeholder15
1while_while_cond_1846681___redundant_placeholder25
1while_while_cond_1846681___redundant_placeholder3
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
F__inference_dense_165_layer_call_and_return_conditional_losses_1846934

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
while_body_1849304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_304_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_304_matmul_readvariableop_resource:	d?G
4while_lstm_cell_304_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_304_biasadd_readvariableop_resource:	???*while/lstm_cell_304/BiasAdd/ReadVariableOp?)while/lstm_cell_304/MatMul/ReadVariableOp?+while/lstm_cell_304/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_304/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_304/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_304/addAddV2$while/lstm_cell_304/MatMul:product:0&while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_304/BiasAddBiasAddwhile/lstm_cell_304/add:z:02while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_304/splitSplit,while/lstm_cell_304/split/split_dim:output:0$while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_304/SigmoidSigmoid"while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_1Sigmoid"while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mulMul!while/lstm_cell_304/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_304/ReluRelu"while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_1Mulwhile/lstm_cell_304/Sigmoid:y:0&while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/add_1AddV2while/lstm_cell_304/mul:z:0while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_2Sigmoid"while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_304/Relu_1Reluwhile/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_2Mul!while/lstm_cell_304/Sigmoid_2:y:0(while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_304/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_304/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_304/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_304/BiasAdd/ReadVariableOp*^while/lstm_cell_304/MatMul/ReadVariableOp,^while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_304_biasadd_readvariableop_resource5while_lstm_cell_304_biasadd_readvariableop_resource_0"n
4while_lstm_cell_304_matmul_1_readvariableop_resource6while_lstm_cell_304_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_304_matmul_readvariableop_resource4while_lstm_cell_304_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_304/BiasAdd/ReadVariableOp*while/lstm_cell_304/BiasAdd/ReadVariableOp2V
)while/lstm_cell_304/MatMul/ReadVariableOp)while/lstm_cell_304/MatMul/ReadVariableOp2Z
+while/lstm_cell_304/MatMul_1/ReadVariableOp+while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1846458

inputs'
lstm_cell_305_1846376:2('
lstm_cell_305_1846378:
(#
lstm_cell_305_1846380:(
identity??%lstm_cell_305/StatefulPartitionedCall?while;
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
%lstm_cell_305/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_305_1846376lstm_cell_305_1846378lstm_cell_305_1846380*
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846330n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_305_1846376lstm_cell_305_1846378lstm_cell_305_1846380*
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
while_body_1846389*
condR
while_cond_1846388*K
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
NoOpNoOp&^lstm_cell_305/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_305/StatefulPartitionedCall%lstm_cell_305/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_304_layer_call_fn_1850567

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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845834o
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
0__inference_sequential_165_layer_call_fn_1847731

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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847530o
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
while_body_1849590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_304_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_304_matmul_readvariableop_resource:	d?G
4while_lstm_cell_304_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_304_biasadd_readvariableop_resource:	???*while/lstm_cell_304/BiasAdd/ReadVariableOp?)while/lstm_cell_304/MatMul/ReadVariableOp?+while/lstm_cell_304/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_304/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_304/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_304/addAddV2$while/lstm_cell_304/MatMul:product:0&while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_304/BiasAddBiasAddwhile/lstm_cell_304/add:z:02while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_304/splitSplit,while/lstm_cell_304/split/split_dim:output:0$while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_304/SigmoidSigmoid"while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_1Sigmoid"while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mulMul!while/lstm_cell_304/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_304/ReluRelu"while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_1Mulwhile/lstm_cell_304/Sigmoid:y:0&while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/add_1AddV2while/lstm_cell_304/mul:z:0while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_2Sigmoid"while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_304/Relu_1Reluwhile/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_2Mul!while/lstm_cell_304/Sigmoid_2:y:0(while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_304/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_304/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_304/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_304/BiasAdd/ReadVariableOp*^while/lstm_cell_304/MatMul/ReadVariableOp,^while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_304_biasadd_readvariableop_resource5while_lstm_cell_304_biasadd_readvariableop_resource_0"n
4while_lstm_cell_304_matmul_1_readvariableop_resource6while_lstm_cell_304_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_304_matmul_readvariableop_resource4while_lstm_cell_304_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_304/BiasAdd/ReadVariableOp*while/lstm_cell_304/BiasAdd/ReadVariableOp2V
)while/lstm_cell_304/MatMul/ReadVariableOp)while/lstm_cell_304/MatMul/ReadVariableOp2Z
+while/lstm_cell_304/MatMul_1/ReadVariableOp+while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845484

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
?T
?
*sequential_165_lstm_497_while_body_1845327L
Hsequential_165_lstm_497_while_sequential_165_lstm_497_while_loop_counterR
Nsequential_165_lstm_497_while_sequential_165_lstm_497_while_maximum_iterations-
)sequential_165_lstm_497_while_placeholder/
+sequential_165_lstm_497_while_placeholder_1/
+sequential_165_lstm_497_while_placeholder_2/
+sequential_165_lstm_497_while_placeholder_3K
Gsequential_165_lstm_497_while_sequential_165_lstm_497_strided_slice_1_0?
?sequential_165_lstm_497_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_497_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_165_lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0:2(`
Nsequential_165_lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0:
([
Msequential_165_lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0:(*
&sequential_165_lstm_497_while_identity,
(sequential_165_lstm_497_while_identity_1,
(sequential_165_lstm_497_while_identity_2,
(sequential_165_lstm_497_while_identity_3,
(sequential_165_lstm_497_while_identity_4,
(sequential_165_lstm_497_while_identity_5I
Esequential_165_lstm_497_while_sequential_165_lstm_497_strided_slice_1?
?sequential_165_lstm_497_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_497_tensorarrayunstack_tensorlistfromtensor\
Jsequential_165_lstm_497_while_lstm_cell_305_matmul_readvariableop_resource:2(^
Lsequential_165_lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource:
(Y
Ksequential_165_lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource:(??Bsequential_165/lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp?Asequential_165/lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp?Csequential_165/lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp?
Osequential_165/lstm_497/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_165/lstm_497/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_165_lstm_497_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_497_tensorarrayunstack_tensorlistfromtensor_0)sequential_165_lstm_497_while_placeholderXsequential_165/lstm_497/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_165/lstm_497/while/lstm_cell_305/MatMul/ReadVariableOpReadVariableOpLsequential_165_lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_165/lstm_497/while/lstm_cell_305/MatMulMatMulHsequential_165/lstm_497/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_165/lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_165/lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOpNsequential_165_lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_165/lstm_497/while/lstm_cell_305/MatMul_1MatMul+sequential_165_lstm_497_while_placeholder_2Ksequential_165/lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_165/lstm_497/while/lstm_cell_305/addAddV2<sequential_165/lstm_497/while/lstm_cell_305/MatMul:product:0>sequential_165/lstm_497/while/lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_165/lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOpMsequential_165_lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_165/lstm_497/while/lstm_cell_305/BiasAddBiasAdd3sequential_165/lstm_497/while/lstm_cell_305/add:z:0Jsequential_165/lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_165/lstm_497/while/lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_165/lstm_497/while/lstm_cell_305/splitSplitDsequential_165/lstm_497/while/lstm_cell_305/split/split_dim:output:0<sequential_165/lstm_497/while/lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_165/lstm_497/while/lstm_cell_305/SigmoidSigmoid:sequential_165/lstm_497/while/lstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_165/lstm_497/while/lstm_cell_305/Sigmoid_1Sigmoid:sequential_165/lstm_497/while/lstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_165/lstm_497/while/lstm_cell_305/mulMul9sequential_165/lstm_497/while/lstm_cell_305/Sigmoid_1:y:0+sequential_165_lstm_497_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_165/lstm_497/while/lstm_cell_305/ReluRelu:sequential_165/lstm_497/while/lstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_165/lstm_497/while/lstm_cell_305/mul_1Mul7sequential_165/lstm_497/while/lstm_cell_305/Sigmoid:y:0>sequential_165/lstm_497/while/lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_165/lstm_497/while/lstm_cell_305/add_1AddV23sequential_165/lstm_497/while/lstm_cell_305/mul:z:05sequential_165/lstm_497/while/lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_165/lstm_497/while/lstm_cell_305/Sigmoid_2Sigmoid:sequential_165/lstm_497/while/lstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_165/lstm_497/while/lstm_cell_305/Relu_1Relu5sequential_165/lstm_497/while/lstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_165/lstm_497/while/lstm_cell_305/mul_2Mul9sequential_165/lstm_497/while/lstm_cell_305/Sigmoid_2:y:0@sequential_165/lstm_497/while/lstm_cell_305/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_165/lstm_497/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_165_lstm_497_while_placeholder_1)sequential_165_lstm_497_while_placeholder5sequential_165/lstm_497/while/lstm_cell_305/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_165/lstm_497/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_165/lstm_497/while/addAddV2)sequential_165_lstm_497_while_placeholder,sequential_165/lstm_497/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_165/lstm_497/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_165/lstm_497/while/add_1AddV2Hsequential_165_lstm_497_while_sequential_165_lstm_497_while_loop_counter.sequential_165/lstm_497/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_165/lstm_497/while/IdentityIdentity'sequential_165/lstm_497/while/add_1:z:0#^sequential_165/lstm_497/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_497/while/Identity_1IdentityNsequential_165_lstm_497_while_sequential_165_lstm_497_while_maximum_iterations#^sequential_165/lstm_497/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_497/while/Identity_2Identity%sequential_165/lstm_497/while/add:z:0#^sequential_165/lstm_497/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_497/while/Identity_3IdentityRsequential_165/lstm_497/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_165/lstm_497/while/NoOp*
T0*
_output_shapes
: ?
(sequential_165/lstm_497/while/Identity_4Identity5sequential_165/lstm_497/while/lstm_cell_305/mul_2:z:0#^sequential_165/lstm_497/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_165/lstm_497/while/Identity_5Identity5sequential_165/lstm_497/while/lstm_cell_305/add_1:z:0#^sequential_165/lstm_497/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_165/lstm_497/while/NoOpNoOpC^sequential_165/lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOpB^sequential_165/lstm_497/while/lstm_cell_305/MatMul/ReadVariableOpD^sequential_165/lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_165_lstm_497_while_identity/sequential_165/lstm_497/while/Identity:output:0"]
(sequential_165_lstm_497_while_identity_11sequential_165/lstm_497/while/Identity_1:output:0"]
(sequential_165_lstm_497_while_identity_21sequential_165/lstm_497/while/Identity_2:output:0"]
(sequential_165_lstm_497_while_identity_31sequential_165/lstm_497/while/Identity_3:output:0"]
(sequential_165_lstm_497_while_identity_41sequential_165/lstm_497/while/Identity_4:output:0"]
(sequential_165_lstm_497_while_identity_51sequential_165/lstm_497/while/Identity_5:output:0"?
Ksequential_165_lstm_497_while_lstm_cell_305_biasadd_readvariableop_resourceMsequential_165_lstm_497_while_lstm_cell_305_biasadd_readvariableop_resource_0"?
Lsequential_165_lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resourceNsequential_165_lstm_497_while_lstm_cell_305_matmul_1_readvariableop_resource_0"?
Jsequential_165_lstm_497_while_lstm_cell_305_matmul_readvariableop_resourceLsequential_165_lstm_497_while_lstm_cell_305_matmul_readvariableop_resource_0"?
Esequential_165_lstm_497_while_sequential_165_lstm_497_strided_slice_1Gsequential_165_lstm_497_while_sequential_165_lstm_497_strided_slice_1_0"?
?sequential_165_lstm_497_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_497_tensorarrayunstack_tensorlistfromtensor?sequential_165_lstm_497_while_tensorarrayv2read_tensorlistgetitem_sequential_165_lstm_497_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_165/lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOpBsequential_165/lstm_497/while/lstm_cell_305/BiasAdd/ReadVariableOp2?
Asequential_165/lstm_497/while/lstm_cell_305/MatMul/ReadVariableOpAsequential_165/lstm_497/while/lstm_cell_305/MatMul/ReadVariableOp2?
Csequential_165/lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOpCsequential_165/lstm_497/while/lstm_cell_305/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1846184

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

lstm_496_while_body_1847929.
*lstm_496_while_lstm_496_while_loop_counter4
0lstm_496_while_lstm_496_while_maximum_iterations
lstm_496_while_placeholder 
lstm_496_while_placeholder_1 
lstm_496_while_placeholder_2 
lstm_496_while_placeholder_3-
)lstm_496_while_lstm_496_strided_slice_1_0i
elstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0:	d?R
?lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?M
>lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
lstm_496_while_identity
lstm_496_while_identity_1
lstm_496_while_identity_2
lstm_496_while_identity_3
lstm_496_while_identity_4
lstm_496_while_identity_5+
'lstm_496_while_lstm_496_strided_slice_1g
clstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensorN
;lstm_496_while_lstm_cell_304_matmul_readvariableop_resource:	d?P
=lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource:	2?K
<lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource:	???3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp?2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp?4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp?
@lstm_496/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_496/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensor_0lstm_496_while_placeholderIlstm_496/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp=lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_496/while/lstm_cell_304/MatMulMatMul9lstm_496/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp?lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_496/while/lstm_cell_304/MatMul_1MatMullstm_496_while_placeholder_2<lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_496/while/lstm_cell_304/addAddV2-lstm_496/while/lstm_cell_304/MatMul:product:0/lstm_496/while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp>lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_496/while/lstm_cell_304/BiasAddBiasAdd$lstm_496/while/lstm_cell_304/add:z:0;lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_496/while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_496/while/lstm_cell_304/splitSplit5lstm_496/while/lstm_cell_304/split/split_dim:output:0-lstm_496/while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_496/while/lstm_cell_304/SigmoidSigmoid+lstm_496/while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_496/while/lstm_cell_304/Sigmoid_1Sigmoid+lstm_496/while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_496/while/lstm_cell_304/mulMul*lstm_496/while/lstm_cell_304/Sigmoid_1:y:0lstm_496_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_496/while/lstm_cell_304/ReluRelu+lstm_496/while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_496/while/lstm_cell_304/mul_1Mul(lstm_496/while/lstm_cell_304/Sigmoid:y:0/lstm_496/while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_496/while/lstm_cell_304/add_1AddV2$lstm_496/while/lstm_cell_304/mul:z:0&lstm_496/while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_496/while/lstm_cell_304/Sigmoid_2Sigmoid+lstm_496/while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_496/while/lstm_cell_304/Relu_1Relu&lstm_496/while/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_496/while/lstm_cell_304/mul_2Mul*lstm_496/while/lstm_cell_304/Sigmoid_2:y:01lstm_496/while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_496/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_496_while_placeholder_1lstm_496_while_placeholder&lstm_496/while/lstm_cell_304/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_496/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_496/while/addAddV2lstm_496_while_placeholderlstm_496/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_496/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_496/while/add_1AddV2*lstm_496_while_lstm_496_while_loop_counterlstm_496/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_496/while/IdentityIdentitylstm_496/while/add_1:z:0^lstm_496/while/NoOp*
T0*
_output_shapes
: ?
lstm_496/while/Identity_1Identity0lstm_496_while_lstm_496_while_maximum_iterations^lstm_496/while/NoOp*
T0*
_output_shapes
: t
lstm_496/while/Identity_2Identitylstm_496/while/add:z:0^lstm_496/while/NoOp*
T0*
_output_shapes
: ?
lstm_496/while/Identity_3IdentityClstm_496/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_496/while/NoOp*
T0*
_output_shapes
: ?
lstm_496/while/Identity_4Identity&lstm_496/while/lstm_cell_304/mul_2:z:0^lstm_496/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_496/while/Identity_5Identity&lstm_496/while/lstm_cell_304/add_1:z:0^lstm_496/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_496/while/NoOpNoOp4^lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp3^lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp5^lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_496_while_identity lstm_496/while/Identity:output:0"?
lstm_496_while_identity_1"lstm_496/while/Identity_1:output:0"?
lstm_496_while_identity_2"lstm_496/while/Identity_2:output:0"?
lstm_496_while_identity_3"lstm_496/while/Identity_3:output:0"?
lstm_496_while_identity_4"lstm_496/while/Identity_4:output:0"?
lstm_496_while_identity_5"lstm_496/while/Identity_5:output:0"T
'lstm_496_while_lstm_496_strided_slice_1)lstm_496_while_lstm_496_strided_slice_1_0"~
<lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource>lstm_496_while_lstm_cell_304_biasadd_readvariableop_resource_0"?
=lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource?lstm_496_while_lstm_cell_304_matmul_1_readvariableop_resource_0"|
;lstm_496_while_lstm_cell_304_matmul_readvariableop_resource=lstm_496_while_lstm_cell_304_matmul_readvariableop_resource_0"?
clstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensorelstm_496_while_tensorarrayv2read_tensorlistgetitem_lstm_496_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp3lstm_496/while/lstm_cell_304/BiasAdd/ReadVariableOp2h
2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp2lstm_496/while/lstm_cell_304/MatMul/ReadVariableOp2l
4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp4lstm_496/while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1847677
lstm_495_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1845417o
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
_user_specified_namelstm_495_input
?
?
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1850746

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
?
?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847642
lstm_495_input#
lstm_495_1847615:	?#
lstm_495_1847617:	d?
lstm_495_1847619:	?#
lstm_496_1847622:	d?#
lstm_496_1847624:	2?
lstm_496_1847626:	?"
lstm_497_1847629:2("
lstm_497_1847631:
(
lstm_497_1847633:(#
dense_165_1847636:

dense_165_1847638:
identity??!dense_165/StatefulPartitionedCall? lstm_495/StatefulPartitionedCall? lstm_496/StatefulPartitionedCall? lstm_497/StatefulPartitionedCall?
 lstm_495/StatefulPartitionedCallStatefulPartitionedCalllstm_495_inputlstm_495_1847615lstm_495_1847617lstm_495_1847619*
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1847462?
 lstm_496/StatefulPartitionedCallStatefulPartitionedCall)lstm_495/StatefulPartitionedCall:output:0lstm_496_1847622lstm_496_1847624lstm_496_1847626*
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1847297?
 lstm_497/StatefulPartitionedCallStatefulPartitionedCall)lstm_496/StatefulPartitionedCall:output:0lstm_497_1847629lstm_497_1847631lstm_497_1847633*
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1847132?
!dense_165/StatefulPartitionedCallStatefulPartitionedCall)lstm_497/StatefulPartitionedCall:output:0dense_165_1847636dense_165_1847638*
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
F__inference_dense_165_layer_call_and_return_conditional_losses_1846934y
IdentityIdentity*dense_165/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_165/StatefulPartitionedCall!^lstm_495/StatefulPartitionedCall!^lstm_496/StatefulPartitionedCall!^lstm_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_165/StatefulPartitionedCall!dense_165/StatefulPartitionedCall2D
 lstm_495/StatefulPartitionedCall lstm_495/StatefulPartitionedCall2D
 lstm_496/StatefulPartitionedCall lstm_496/StatefulPartitionedCall2D
 lstm_497/StatefulPartitionedCall lstm_497/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_495_input
?
?
*__inference_lstm_496_layer_call_fn_1849234

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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1846766s
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
while_body_1845498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_303_1845522_0:	?0
while_lstm_cell_303_1845524_0:	d?,
while_lstm_cell_303_1845526_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_303_1845522:	?.
while_lstm_cell_303_1845524:	d?*
while_lstm_cell_303_1845526:	???+while/lstm_cell_303/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_303/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_303_1845522_0while_lstm_cell_303_1845524_0while_lstm_cell_303_1845526_0*
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845484?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_303/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_303/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_303/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_303/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_303_1845522while_lstm_cell_303_1845522_0"<
while_lstm_cell_303_1845524while_lstm_cell_303_1845524_0"<
while_lstm_cell_303_1845526while_lstm_cell_303_1845526_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_303/StatefulPartitionedCall+while/lstm_cell_303/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849674

inputs?
,lstm_cell_304_matmul_readvariableop_resource:	d?A
.lstm_cell_304_matmul_1_readvariableop_resource:	2?<
-lstm_cell_304_biasadd_readvariableop_resource:	?
identity??$lstm_cell_304/BiasAdd/ReadVariableOp?#lstm_cell_304/MatMul/ReadVariableOp?%lstm_cell_304/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_304/MatMul/ReadVariableOpReadVariableOp,lstm_cell_304_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_304/MatMulMatMulstrided_slice_2:output:0+lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_304_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_304/MatMul_1MatMulzeros:output:0-lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_304/addAddV2lstm_cell_304/MatMul:product:0 lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_304_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_304/BiasAddBiasAddlstm_cell_304/add:z:0,lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_304/splitSplit&lstm_cell_304/split/split_dim:output:0lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_304/SigmoidSigmoidlstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_1Sigmoidlstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_304/mulMullstm_cell_304/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_304/ReluRelulstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_1Mullstm_cell_304/Sigmoid:y:0 lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_304/add_1AddV2lstm_cell_304/mul:z:0lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_304/Sigmoid_2Sigmoidlstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_304/Relu_1Relulstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_304/mul_2Mullstm_cell_304/Sigmoid_2:y:0"lstm_cell_304/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_304_matmul_readvariableop_resource.lstm_cell_304_matmul_1_readvariableop_resource-lstm_cell_304_biasadd_readvariableop_resource*
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
while_body_1849590*
condR
while_cond_1849589*K
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
NoOpNoOp%^lstm_cell_304/BiasAdd/ReadVariableOp$^lstm_cell_304/MatMul/ReadVariableOp&^lstm_cell_304/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_304/BiasAdd/ReadVariableOp$lstm_cell_304/BiasAdd/ReadVariableOp2J
#lstm_cell_304/MatMul/ReadVariableOp#lstm_cell_304/MatMul/ReadVariableOp2N
%lstm_cell_304/MatMul_1/ReadVariableOp%lstm_cell_304/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_495_while_cond_1847789.
*lstm_495_while_lstm_495_while_loop_counter4
0lstm_495_while_lstm_495_while_maximum_iterations
lstm_495_while_placeholder 
lstm_495_while_placeholder_1 
lstm_495_while_placeholder_2 
lstm_495_while_placeholder_30
,lstm_495_while_less_lstm_495_strided_slice_1G
Clstm_495_while_lstm_495_while_cond_1847789___redundant_placeholder0G
Clstm_495_while_lstm_495_while_cond_1847789___redundant_placeholder1G
Clstm_495_while_lstm_495_while_cond_1847789___redundant_placeholder2G
Clstm_495_while_lstm_495_while_cond_1847789___redundant_placeholder3
lstm_495_while_identity
?
lstm_495/while/LessLesslstm_495_while_placeholder,lstm_495_while_less_lstm_495_strided_slice_1*
T0*
_output_shapes
: ]
lstm_495/while/IdentityIdentitylstm_495/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_495_while_identity lstm_495/while/Identity:output:0*(
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
while_body_1845689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_303_1845713_0:	?0
while_lstm_cell_303_1845715_0:	d?,
while_lstm_cell_303_1845717_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_303_1845713:	?.
while_lstm_cell_303_1845715:	d?*
while_lstm_cell_303_1845717:	???+while/lstm_cell_303/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_303/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_303_1845713_0while_lstm_cell_303_1845715_0while_lstm_cell_303_1845717_0*
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1845630?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_303/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_303/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_303/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_303/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_303_1845713while_lstm_cell_303_1845713_0"<
while_lstm_cell_303_1845715while_lstm_cell_303_1845715_0"<
while_lstm_cell_303_1845717while_lstm_cell_303_1845717_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_303/StatefulPartitionedCall+while/lstm_cell_303/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1846682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_304_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_304_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_304_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_304_matmul_readvariableop_resource:	d?G
4while_lstm_cell_304_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_304_biasadd_readvariableop_resource:	???*while/lstm_cell_304/BiasAdd/ReadVariableOp?)while/lstm_cell_304/MatMul/ReadVariableOp?+while/lstm_cell_304/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_304/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_304_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_304/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_304/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_304/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_304_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_304/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_304/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_304/addAddV2$while/lstm_cell_304/MatMul:product:0&while/lstm_cell_304/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_304/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_304_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_304/BiasAddBiasAddwhile/lstm_cell_304/add:z:02while/lstm_cell_304/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_304/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_304/splitSplit,while/lstm_cell_304/split/split_dim:output:0$while/lstm_cell_304/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_304/SigmoidSigmoid"while/lstm_cell_304/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_1Sigmoid"while/lstm_cell_304/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mulMul!while/lstm_cell_304/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_304/ReluRelu"while/lstm_cell_304/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_1Mulwhile/lstm_cell_304/Sigmoid:y:0&while/lstm_cell_304/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/add_1AddV2while/lstm_cell_304/mul:z:0while/lstm_cell_304/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_304/Sigmoid_2Sigmoid"while/lstm_cell_304/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_304/Relu_1Reluwhile/lstm_cell_304/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_304/mul_2Mul!while/lstm_cell_304/Sigmoid_2:y:0(while/lstm_cell_304/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_304/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_304/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_304/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_304/BiasAdd/ReadVariableOp*^while/lstm_cell_304/MatMul/ReadVariableOp,^while/lstm_cell_304/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_304_biasadd_readvariableop_resource5while_lstm_cell_304_biasadd_readvariableop_resource_0"n
4while_lstm_cell_304_matmul_1_readvariableop_resource6while_lstm_cell_304_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_304_matmul_readvariableop_resource4while_lstm_cell_304_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_304/BiasAdd/ReadVariableOp*while/lstm_cell_304/BiasAdd/ReadVariableOp2V
)while/lstm_cell_304/MatMul/ReadVariableOp)while/lstm_cell_304/MatMul/ReadVariableOp2Z
+while/lstm_cell_304/MatMul_1/ReadVariableOp+while/lstm_cell_304/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1850550

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
while_body_1849117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_303_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_303_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_303_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_303_matmul_readvariableop_resource:	?G
4while_lstm_cell_303_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_303_biasadd_readvariableop_resource:	???*while/lstm_cell_303/BiasAdd/ReadVariableOp?)while/lstm_cell_303/MatMul/ReadVariableOp?+while/lstm_cell_303/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_303/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_303_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_303/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_303_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_303/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_303/addAddV2$while/lstm_cell_303/MatMul:product:0&while/lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_303_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_303/BiasAddBiasAddwhile/lstm_cell_303/add:z:02while/lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_303/splitSplit,while/lstm_cell_303/split/split_dim:output:0$while/lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_303/SigmoidSigmoid"while/lstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_1Sigmoid"while/lstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mulMul!while/lstm_cell_303/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_303/ReluRelu"while/lstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_1Mulwhile/lstm_cell_303/Sigmoid:y:0&while/lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/add_1AddV2while/lstm_cell_303/mul:z:0while/lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_303/Sigmoid_2Sigmoid"while/lstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_303/Relu_1Reluwhile/lstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_303/mul_2Mul!while/lstm_cell_303/Sigmoid_2:y:0(while/lstm_cell_303/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_303/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_303/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_303/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_303/BiasAdd/ReadVariableOp*^while/lstm_cell_303/MatMul/ReadVariableOp,^while/lstm_cell_303/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_303_biasadd_readvariableop_resource5while_lstm_cell_303_biasadd_readvariableop_resource_0"n
4while_lstm_cell_303_matmul_1_readvariableop_resource6while_lstm_cell_303_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_303_matmul_readvariableop_resource4while_lstm_cell_303_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_303/BiasAdd/ReadVariableOp*while/lstm_cell_303/BiasAdd/ReadVariableOp2V
)while/lstm_cell_303/MatMul/ReadVariableOp)while/lstm_cell_303/MatMul/ReadVariableOp2Z
+while/lstm_cell_303/MatMul_1/ReadVariableOp+while/lstm_cell_303/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1845917

inputs(
lstm_cell_304_1845835:	d?(
lstm_cell_304_1845837:	2?$
lstm_cell_304_1845839:	?
identity??%lstm_cell_304/StatefulPartitionedCall?while;
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
%lstm_cell_304/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_304_1845835lstm_cell_304_1845837lstm_cell_304_1845839*
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845834n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_304_1845835lstm_cell_304_1845837lstm_cell_304_1845839*
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
while_body_1845848*
condR
while_cond_1845847*K
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
NoOpNoOp&^lstm_cell_304/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_304/StatefulPartitionedCall%lstm_cell_304/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_497_layer_call_and_return_conditional_losses_1847132

inputs>
,lstm_cell_305_matmul_readvariableop_resource:2(@
.lstm_cell_305_matmul_1_readvariableop_resource:
(;
-lstm_cell_305_biasadd_readvariableop_resource:(
identity??$lstm_cell_305/BiasAdd/ReadVariableOp?#lstm_cell_305/MatMul/ReadVariableOp?%lstm_cell_305/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_305/MatMul/ReadVariableOpReadVariableOp,lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_305/MatMulMatMulstrided_slice_2:output:0+lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_305/MatMul_1MatMulzeros:output:0-lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_305/addAddV2lstm_cell_305/MatMul:product:0 lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_305/BiasAddBiasAddlstm_cell_305/add:z:0,lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_305/splitSplit&lstm_cell_305/split/split_dim:output:0lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_305/SigmoidSigmoidlstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_1Sigmoidlstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_305/mulMullstm_cell_305/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_305/ReluRelulstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_1Mullstm_cell_305/Sigmoid:y:0 lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_305/add_1AddV2lstm_cell_305/mul:z:0lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_2Sigmoidlstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_305/Relu_1Relulstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_2Mullstm_cell_305/Sigmoid_2:y:0"lstm_cell_305/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_305_matmul_readvariableop_resource.lstm_cell_305_matmul_1_readvariableop_resource-lstm_cell_305_biasadd_readvariableop_resource*
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
while_body_1847048*
condR
while_cond_1847047*K
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
NoOpNoOp%^lstm_cell_305/BiasAdd/ReadVariableOp$^lstm_cell_305/MatMul/ReadVariableOp&^lstm_cell_305/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_305/BiasAdd/ReadVariableOp$lstm_cell_305/BiasAdd/ReadVariableOp2J
#lstm_cell_305/MatMul/ReadVariableOp#lstm_cell_305/MatMul/ReadVariableOp2N
%lstm_cell_305/MatMul_1/ReadVariableOp%lstm_cell_305/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_1846039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_304_1846063_0:	d?0
while_lstm_cell_304_1846065_0:	2?,
while_lstm_cell_304_1846067_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_304_1846063:	d?.
while_lstm_cell_304_1846065:	2?*
while_lstm_cell_304_1846067:	???+while/lstm_cell_304/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_304/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_304_1846063_0while_lstm_cell_304_1846065_0while_lstm_cell_304_1846067_0*
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1845980?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_304/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_304/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_304/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_304/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_304_1846063while_lstm_cell_304_1846063_0"<
while_lstm_cell_304_1846065while_lstm_cell_304_1846065_0"<
while_lstm_cell_304_1846067while_lstm_cell_304_1846067_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_304/StatefulPartitionedCall+while/lstm_cell_304/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850147
inputs_0>
,lstm_cell_305_matmul_readvariableop_resource:2(@
.lstm_cell_305_matmul_1_readvariableop_resource:
(;
-lstm_cell_305_biasadd_readvariableop_resource:(
identity??$lstm_cell_305/BiasAdd/ReadVariableOp?#lstm_cell_305/MatMul/ReadVariableOp?%lstm_cell_305/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_305/MatMul/ReadVariableOpReadVariableOp,lstm_cell_305_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_305/MatMulMatMulstrided_slice_2:output:0+lstm_cell_305/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_305/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_305_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_305/MatMul_1MatMulzeros:output:0-lstm_cell_305/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_305/addAddV2lstm_cell_305/MatMul:product:0 lstm_cell_305/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_305/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_305_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_305/BiasAddBiasAddlstm_cell_305/add:z:0,lstm_cell_305/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_305/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_305/splitSplit&lstm_cell_305/split/split_dim:output:0lstm_cell_305/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_305/SigmoidSigmoidlstm_cell_305/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_1Sigmoidlstm_cell_305/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_305/mulMullstm_cell_305/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_305/ReluRelulstm_cell_305/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_1Mullstm_cell_305/Sigmoid:y:0 lstm_cell_305/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_305/add_1AddV2lstm_cell_305/mul:z:0lstm_cell_305/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_305/Sigmoid_2Sigmoidlstm_cell_305/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_305/Relu_1Relulstm_cell_305/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_305/mul_2Mullstm_cell_305/Sigmoid_2:y:0"lstm_cell_305/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_305_matmul_readvariableop_resource.lstm_cell_305_matmul_1_readvariableop_resource-lstm_cell_305_biasadd_readvariableop_resource*
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
while_body_1850063*
condR
while_cond_1850062*K
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
NoOpNoOp%^lstm_cell_305/BiasAdd/ReadVariableOp$^lstm_cell_305/MatMul/ReadVariableOp&^lstm_cell_305/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_305/BiasAdd/ReadVariableOp$lstm_cell_305/BiasAdd/ReadVariableOp2J
#lstm_cell_305/MatMul/ReadVariableOp#lstm_cell_305/MatMul/ReadVariableOp2N
%lstm_cell_305/MatMul_1/ReadVariableOp%lstm_cell_305/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_495_layer_call_and_return_conditional_losses_1848915
inputs_0?
,lstm_cell_303_matmul_readvariableop_resource:	?A
.lstm_cell_303_matmul_1_readvariableop_resource:	d?<
-lstm_cell_303_biasadd_readvariableop_resource:	?
identity??$lstm_cell_303/BiasAdd/ReadVariableOp?#lstm_cell_303/MatMul/ReadVariableOp?%lstm_cell_303/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_303/MatMul/ReadVariableOpReadVariableOp,lstm_cell_303_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_303/MatMulMatMulstrided_slice_2:output:0+lstm_cell_303/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_303/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_303_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_303/MatMul_1MatMulzeros:output:0-lstm_cell_303/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_303/addAddV2lstm_cell_303/MatMul:product:0 lstm_cell_303/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_303/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_303_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_303/BiasAddBiasAddlstm_cell_303/add:z:0,lstm_cell_303/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_303/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_303/splitSplit&lstm_cell_303/split/split_dim:output:0lstm_cell_303/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_303/SigmoidSigmoidlstm_cell_303/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_1Sigmoidlstm_cell_303/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_303/mulMullstm_cell_303/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_303/ReluRelulstm_cell_303/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_1Mullstm_cell_303/Sigmoid:y:0 lstm_cell_303/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_303/add_1AddV2lstm_cell_303/mul:z:0lstm_cell_303/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_303/Sigmoid_2Sigmoidlstm_cell_303/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_303/Relu_1Relulstm_cell_303/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_303/mul_2Mullstm_cell_303/Sigmoid_2:y:0"lstm_cell_303/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_303_matmul_readvariableop_resource.lstm_cell_303_matmul_1_readvariableop_resource-lstm_cell_303_biasadd_readvariableop_resource*
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
while_body_1848831*
condR
while_cond_1848830*K
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
NoOpNoOp%^lstm_cell_303/BiasAdd/ReadVariableOp$^lstm_cell_303/MatMul/ReadVariableOp&^lstm_cell_303/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_303/BiasAdd/ReadVariableOp$lstm_cell_303/BiasAdd/ReadVariableOp2J
#lstm_cell_303/MatMul/ReadVariableOp#lstm_cell_303/MatMul/ReadVariableOp2N
%lstm_cell_303/MatMul_1/ReadVariableOp%lstm_cell_303/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
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
lstm_495_input;
 serving_default_lstm_495_input:0?????????=
	dense_1650
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
2dense_165/kernel
:2dense_165/bias
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
0:.	?2lstm_495/lstm_cell_495/kernel
::8	d?2'lstm_495/lstm_cell_495/recurrent_kernel
*:(?2lstm_495/lstm_cell_495/bias
0:.	d?2lstm_496/lstm_cell_496/kernel
::8	2?2'lstm_496/lstm_cell_496/recurrent_kernel
*:(?2lstm_496/lstm_cell_496/bias
/:-2(2lstm_497/lstm_cell_497/kernel
9:7
(2'lstm_497/lstm_cell_497/recurrent_kernel
):'(2lstm_497/lstm_cell_497/bias
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
2Adam/dense_165/kernel/m
!:2Adam/dense_165/bias/m
5:3	?2$Adam/lstm_495/lstm_cell_495/kernel/m
?:=	d?2.Adam/lstm_495/lstm_cell_495/recurrent_kernel/m
/:-?2"Adam/lstm_495/lstm_cell_495/bias/m
5:3	d?2$Adam/lstm_496/lstm_cell_496/kernel/m
?:=	2?2.Adam/lstm_496/lstm_cell_496/recurrent_kernel/m
/:-?2"Adam/lstm_496/lstm_cell_496/bias/m
4:22(2$Adam/lstm_497/lstm_cell_497/kernel/m
>:<
(2.Adam/lstm_497/lstm_cell_497/recurrent_kernel/m
.:,(2"Adam/lstm_497/lstm_cell_497/bias/m
':%
2Adam/dense_165/kernel/v
!:2Adam/dense_165/bias/v
5:3	?2$Adam/lstm_495/lstm_cell_495/kernel/v
?:=	d?2.Adam/lstm_495/lstm_cell_495/recurrent_kernel/v
/:-?2"Adam/lstm_495/lstm_cell_495/bias/v
5:3	d?2$Adam/lstm_496/lstm_cell_496/kernel/v
?:=	2?2.Adam/lstm_496/lstm_cell_496/recurrent_kernel/v
/:-?2"Adam/lstm_496/lstm_cell_496/bias/v
4:22(2$Adam/lstm_497/lstm_cell_497/kernel/v
>:<
(2.Adam/lstm_497/lstm_cell_497/recurrent_kernel/v
.:,(2"Adam/lstm_497/lstm_cell_497/bias/v
?2?
0__inference_sequential_165_layer_call_fn_1846966
0__inference_sequential_165_layer_call_fn_1847704
0__inference_sequential_165_layer_call_fn_1847731
0__inference_sequential_165_layer_call_fn_1847582?
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1848158
K__inference_sequential_165_layer_call_and_return_conditional_losses_1848585
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847612
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847642?
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
"__inference__wrapped_model_1845417lstm_495_input"?
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
*__inference_lstm_495_layer_call_fn_1848596
*__inference_lstm_495_layer_call_fn_1848607
*__inference_lstm_495_layer_call_fn_1848618
*__inference_lstm_495_layer_call_fn_1848629?
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1848772
E__inference_lstm_495_layer_call_and_return_conditional_losses_1848915
E__inference_lstm_495_layer_call_and_return_conditional_losses_1849058
E__inference_lstm_495_layer_call_and_return_conditional_losses_1849201?
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
*__inference_lstm_496_layer_call_fn_1849212
*__inference_lstm_496_layer_call_fn_1849223
*__inference_lstm_496_layer_call_fn_1849234
*__inference_lstm_496_layer_call_fn_1849245?
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849388
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849531
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849674
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849817?
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
*__inference_lstm_497_layer_call_fn_1849828
*__inference_lstm_497_layer_call_fn_1849839
*__inference_lstm_497_layer_call_fn_1849850
*__inference_lstm_497_layer_call_fn_1849861?
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850004
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850147
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850290
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850433?
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
+__inference_dense_165_layer_call_fn_1850442?
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
F__inference_dense_165_layer_call_and_return_conditional_losses_1850452?
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
%__inference_signature_wrapper_1847677lstm_495_input"?
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
/__inference_lstm_cell_303_layer_call_fn_1850469
/__inference_lstm_cell_303_layer_call_fn_1850486?
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1850518
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1850550?
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
/__inference_lstm_cell_304_layer_call_fn_1850567
/__inference_lstm_cell_304_layer_call_fn_1850584?
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1850616
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1850648?
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
/__inference_lstm_cell_305_layer_call_fn_1850665
/__inference_lstm_cell_305_layer_call_fn_1850682?
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1850714
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1850746?
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
"__inference__wrapped_model_1845417?-./012345!";?8
1?.
,?)
lstm_495_input?????????
? "5?2
0
	dense_165#? 
	dense_165??????????
F__inference_dense_165_layer_call_and_return_conditional_losses_1850452\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_165_layer_call_fn_1850442O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_495_layer_call_and_return_conditional_losses_1848772?-./O?L
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1848915?-./O?L
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1849058q-./??<
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
E__inference_lstm_495_layer_call_and_return_conditional_losses_1849201q-./??<
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
*__inference_lstm_495_layer_call_fn_1848596}-./O?L
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
*__inference_lstm_495_layer_call_fn_1848607}-./O?L
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
*__inference_lstm_495_layer_call_fn_1848618d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_495_layer_call_fn_1848629d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849388?012O?L
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849531?012O?L
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849674q012??<
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
E__inference_lstm_496_layer_call_and_return_conditional_losses_1849817q012??<
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
*__inference_lstm_496_layer_call_fn_1849212}012O?L
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
*__inference_lstm_496_layer_call_fn_1849223}012O?L
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
*__inference_lstm_496_layer_call_fn_1849234d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_496_layer_call_fn_1849245d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850004}345O?L
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850147}345O?L
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850290m345??<
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
E__inference_lstm_497_layer_call_and_return_conditional_losses_1850433m345??<
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
*__inference_lstm_497_layer_call_fn_1849828p345O?L
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
*__inference_lstm_497_layer_call_fn_1849839p345O?L
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
*__inference_lstm_497_layer_call_fn_1849850`345??<
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
*__inference_lstm_497_layer_call_fn_1849861`345??<
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1850518?-./??}
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
J__inference_lstm_cell_303_layer_call_and_return_conditional_losses_1850550?-./??}
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
/__inference_lstm_cell_303_layer_call_fn_1850469?-./??}
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
/__inference_lstm_cell_303_layer_call_fn_1850486?-./??}
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1850616?012??}
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
J__inference_lstm_cell_304_layer_call_and_return_conditional_losses_1850648?012??}
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
/__inference_lstm_cell_304_layer_call_fn_1850567?012??}
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
/__inference_lstm_cell_304_layer_call_fn_1850584?012??}
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1850714?345??}
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
J__inference_lstm_cell_305_layer_call_and_return_conditional_losses_1850746?345??}
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
/__inference_lstm_cell_305_layer_call_fn_1850665?345??}
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
/__inference_lstm_cell_305_layer_call_fn_1850682?345??}
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847612y-./012345!"C?@
9?6
,?)
lstm_495_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1847642y-./012345!"C?@
9?6
,?)
lstm_495_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_165_layer_call_and_return_conditional_losses_1848158q-./012345!";?8
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
K__inference_sequential_165_layer_call_and_return_conditional_losses_1848585q-./012345!";?8
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
0__inference_sequential_165_layer_call_fn_1846966l-./012345!"C?@
9?6
,?)
lstm_495_input?????????
p 

 
? "???????????
0__inference_sequential_165_layer_call_fn_1847582l-./012345!"C?@
9?6
,?)
lstm_495_input?????????
p

 
? "???????????
0__inference_sequential_165_layer_call_fn_1847704d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_165_layer_call_fn_1847731d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1847677?-./012345!"M?J
? 
C?@
>
lstm_495_input,?)
lstm_495_input?????????"5?2
0
	dense_165#? 
	dense_165?????????