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
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ž-
|
dense_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_143/kernel
u
$dense_143/kernel/Read/ReadVariableOpReadVariableOpdense_143/kernel*
_output_shapes

:
*
dtype0
t
dense_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_143/bias
m
"dense_143/bias/Read/ReadVariableOpReadVariableOpdense_143/bias*
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
lstm_429/lstm_cell_429/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_429/lstm_cell_429/kernel
?
1lstm_429/lstm_cell_429/kernel/Read/ReadVariableOpReadVariableOplstm_429/lstm_cell_429/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_429/lstm_cell_429/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_429/lstm_cell_429/recurrent_kernel
?
;lstm_429/lstm_cell_429/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_429/lstm_cell_429/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_429/lstm_cell_429/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_429/lstm_cell_429/bias
?
/lstm_429/lstm_cell_429/bias/Read/ReadVariableOpReadVariableOplstm_429/lstm_cell_429/bias*
_output_shapes	
:?*
dtype0
?
lstm_430/lstm_cell_430/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_430/lstm_cell_430/kernel
?
1lstm_430/lstm_cell_430/kernel/Read/ReadVariableOpReadVariableOplstm_430/lstm_cell_430/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_430/lstm_cell_430/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_430/lstm_cell_430/recurrent_kernel
?
;lstm_430/lstm_cell_430/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_430/lstm_cell_430/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_430/lstm_cell_430/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_430/lstm_cell_430/bias
?
/lstm_430/lstm_cell_430/bias/Read/ReadVariableOpReadVariableOplstm_430/lstm_cell_430/bias*
_output_shapes	
:?*
dtype0
?
lstm_431/lstm_cell_431/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_431/lstm_cell_431/kernel
?
1lstm_431/lstm_cell_431/kernel/Read/ReadVariableOpReadVariableOplstm_431/lstm_cell_431/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_431/lstm_cell_431/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_431/lstm_cell_431/recurrent_kernel
?
;lstm_431/lstm_cell_431/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_431/lstm_cell_431/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_431/lstm_cell_431/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_431/lstm_cell_431/bias
?
/lstm_431/lstm_cell_431/bias/Read/ReadVariableOpReadVariableOplstm_431/lstm_cell_431/bias*
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
Adam/dense_143/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_143/kernel/m
?
+Adam/dense_143/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_143/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_143/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_143/bias/m
{
)Adam/dense_143/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_143/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_429/lstm_cell_429/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_429/lstm_cell_429/kernel/m
?
8Adam/lstm_429/lstm_cell_429/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_429/lstm_cell_429/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_429/lstm_cell_429/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_429/lstm_cell_429/recurrent_kernel/m
?
BAdam/lstm_429/lstm_cell_429/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_429/lstm_cell_429/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_429/lstm_cell_429/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_429/lstm_cell_429/bias/m
?
6Adam/lstm_429/lstm_cell_429/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_429/lstm_cell_429/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_430/lstm_cell_430/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_430/lstm_cell_430/kernel/m
?
8Adam/lstm_430/lstm_cell_430/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_430/lstm_cell_430/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_430/lstm_cell_430/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_430/lstm_cell_430/recurrent_kernel/m
?
BAdam/lstm_430/lstm_cell_430/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_430/lstm_cell_430/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_430/lstm_cell_430/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_430/lstm_cell_430/bias/m
?
6Adam/lstm_430/lstm_cell_430/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_430/lstm_cell_430/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_431/lstm_cell_431/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_431/lstm_cell_431/kernel/m
?
8Adam/lstm_431/lstm_cell_431/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_431/lstm_cell_431/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_431/lstm_cell_431/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_431/lstm_cell_431/recurrent_kernel/m
?
BAdam/lstm_431/lstm_cell_431/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_431/lstm_cell_431/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_431/lstm_cell_431/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_431/lstm_cell_431/bias/m
?
6Adam/lstm_431/lstm_cell_431/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_431/lstm_cell_431/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_143/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_143/kernel/v
?
+Adam/dense_143/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_143/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_143/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_143/bias/v
{
)Adam/dense_143/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_143/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_429/lstm_cell_429/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_429/lstm_cell_429/kernel/v
?
8Adam/lstm_429/lstm_cell_429/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_429/lstm_cell_429/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_429/lstm_cell_429/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_429/lstm_cell_429/recurrent_kernel/v
?
BAdam/lstm_429/lstm_cell_429/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_429/lstm_cell_429/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_429/lstm_cell_429/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_429/lstm_cell_429/bias/v
?
6Adam/lstm_429/lstm_cell_429/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_429/lstm_cell_429/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_430/lstm_cell_430/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_430/lstm_cell_430/kernel/v
?
8Adam/lstm_430/lstm_cell_430/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_430/lstm_cell_430/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_430/lstm_cell_430/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_430/lstm_cell_430/recurrent_kernel/v
?
BAdam/lstm_430/lstm_cell_430/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_430/lstm_cell_430/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_430/lstm_cell_430/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_430/lstm_cell_430/bias/v
?
6Adam/lstm_430/lstm_cell_430/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_430/lstm_cell_430/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_431/lstm_cell_431/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_431/lstm_cell_431/kernel/v
?
8Adam/lstm_431/lstm_cell_431/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_431/lstm_cell_431/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_431/lstm_cell_431/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_431/lstm_cell_431/recurrent_kernel/v
?
BAdam/lstm_431/lstm_cell_431/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_431/lstm_cell_431/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_431/lstm_cell_431/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_431/lstm_cell_431/bias/v
?
6Adam/lstm_431/lstm_cell_431/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_431/lstm_cell_431/bias/v*
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
VARIABLE_VALUEdense_143/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_143/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_429/lstm_cell_429/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_429/lstm_cell_429/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_429/lstm_cell_429/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_430/lstm_cell_430/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_430/lstm_cell_430/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_430/lstm_cell_430/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_431/lstm_cell_431/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_431/lstm_cell_431/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_431/lstm_cell_431/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_143/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_143/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_429/lstm_cell_429/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_429/lstm_cell_429/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_429/lstm_cell_429/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_430/lstm_cell_430/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_430/lstm_cell_430/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_430/lstm_cell_430/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_431/lstm_cell_431/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_431/lstm_cell_431/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_431/lstm_cell_431/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_143/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_143/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_429/lstm_cell_429/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_429/lstm_cell_429/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_429/lstm_cell_429/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_430/lstm_cell_430/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_430/lstm_cell_430/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_430/lstm_cell_430/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_431/lstm_cell_431/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_431/lstm_cell_431/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_431/lstm_cell_431/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_429_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_429_inputlstm_429/lstm_cell_429/kernel'lstm_429/lstm_cell_429/recurrent_kernellstm_429/lstm_cell_429/biaslstm_430/lstm_cell_430/kernel'lstm_430/lstm_cell_430/recurrent_kernellstm_430/lstm_cell_430/biaslstm_431/lstm_cell_431/kernel'lstm_431/lstm_cell_431/recurrent_kernellstm_431/lstm_cell_431/biasdense_143/kerneldense_143/bias*
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
GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_813038
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_143/kernel/Read/ReadVariableOp"dense_143/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_429/lstm_cell_429/kernel/Read/ReadVariableOp;lstm_429/lstm_cell_429/recurrent_kernel/Read/ReadVariableOp/lstm_429/lstm_cell_429/bias/Read/ReadVariableOp1lstm_430/lstm_cell_430/kernel/Read/ReadVariableOp;lstm_430/lstm_cell_430/recurrent_kernel/Read/ReadVariableOp/lstm_430/lstm_cell_430/bias/Read/ReadVariableOp1lstm_431/lstm_cell_431/kernel/Read/ReadVariableOp;lstm_431/lstm_cell_431/recurrent_kernel/Read/ReadVariableOp/lstm_431/lstm_cell_431/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_143/kernel/m/Read/ReadVariableOp)Adam/dense_143/bias/m/Read/ReadVariableOp8Adam/lstm_429/lstm_cell_429/kernel/m/Read/ReadVariableOpBAdam/lstm_429/lstm_cell_429/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_429/lstm_cell_429/bias/m/Read/ReadVariableOp8Adam/lstm_430/lstm_cell_430/kernel/m/Read/ReadVariableOpBAdam/lstm_430/lstm_cell_430/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_430/lstm_cell_430/bias/m/Read/ReadVariableOp8Adam/lstm_431/lstm_cell_431/kernel/m/Read/ReadVariableOpBAdam/lstm_431/lstm_cell_431/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_431/lstm_cell_431/bias/m/Read/ReadVariableOp+Adam/dense_143/kernel/v/Read/ReadVariableOp)Adam/dense_143/bias/v/Read/ReadVariableOp8Adam/lstm_429/lstm_cell_429/kernel/v/Read/ReadVariableOpBAdam/lstm_429/lstm_cell_429/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_429/lstm_cell_429/bias/v/Read/ReadVariableOp8Adam/lstm_430/lstm_cell_430/kernel/v/Read/ReadVariableOpBAdam/lstm_430/lstm_cell_430/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_430/lstm_cell_430/bias/v/Read/ReadVariableOp8Adam/lstm_431/lstm_cell_431/kernel/v/Read/ReadVariableOpBAdam/lstm_431/lstm_cell_431/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_431/lstm_cell_431/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *(
f#R!
__inference__traced_save_816250
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_143/kerneldense_143/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_429/lstm_cell_429/kernel'lstm_429/lstm_cell_429/recurrent_kernellstm_429/lstm_cell_429/biaslstm_430/lstm_cell_430/kernel'lstm_430/lstm_cell_430/recurrent_kernellstm_430/lstm_cell_430/biaslstm_431/lstm_cell_431/kernel'lstm_431/lstm_cell_431/recurrent_kernellstm_431/lstm_cell_431/biastotalcountAdam/dense_143/kernel/mAdam/dense_143/bias/m$Adam/lstm_429/lstm_cell_429/kernel/m.Adam/lstm_429/lstm_cell_429/recurrent_kernel/m"Adam/lstm_429/lstm_cell_429/bias/m$Adam/lstm_430/lstm_cell_430/kernel/m.Adam/lstm_430/lstm_cell_430/recurrent_kernel/m"Adam/lstm_430/lstm_cell_430/bias/m$Adam/lstm_431/lstm_cell_431/kernel/m.Adam/lstm_431/lstm_cell_431/recurrent_kernel/m"Adam/lstm_431/lstm_cell_431/bias/mAdam/dense_143/kernel/vAdam/dense_143/bias/v$Adam/lstm_429/lstm_cell_429/kernel/v.Adam/lstm_429/lstm_cell_429/recurrent_kernel/v"Adam/lstm_429/lstm_cell_429/bias/v$Adam/lstm_430/lstm_cell_430/kernel/v.Adam/lstm_430/lstm_cell_430/recurrent_kernel/v"Adam/lstm_430/lstm_cell_430/bias/v$Adam/lstm_431/lstm_cell_431/kernel/v.Adam/lstm_431/lstm_cell_431/recurrent_kernel/v"Adam/lstm_431/lstm_cell_431/bias/v*4
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_816380??+
?
?
while_cond_812738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_812738___redundant_placeholder04
0while_while_cond_812738___redundant_placeholder14
0while_while_cond_812738___redundant_placeholder24
0while_while_cond_812738___redundant_placeholder3
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
while_body_811893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_132_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_132_matmul_readvariableop_resource:	?G
4while_lstm_cell_132_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_132_biasadd_readvariableop_resource:	???*while/lstm_cell_132/BiasAdd/ReadVariableOp?)while/lstm_cell_132/MatMul/ReadVariableOp?+while/lstm_cell_132/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_132/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_132/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_132/addAddV2$while/lstm_cell_132/MatMul:product:0&while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_132/BiasAddBiasAddwhile/lstm_cell_132/add:z:02while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_132/splitSplit,while/lstm_cell_132/split/split_dim:output:0$while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_132/SigmoidSigmoid"while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_1Sigmoid"while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mulMul!while/lstm_cell_132/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_132/ReluRelu"while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_1Mulwhile/lstm_cell_132/Sigmoid:y:0&while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/add_1AddV2while/lstm_cell_132/mul:z:0while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_2Sigmoid"while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_132/Relu_1Reluwhile/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_2Mul!while/lstm_cell_132/Sigmoid_2:y:0(while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_132/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_132/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_132/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_132/BiasAdd/ReadVariableOp*^while/lstm_cell_132/MatMul/ReadVariableOp,^while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_132_biasadd_readvariableop_resource5while_lstm_cell_132_biasadd_readvariableop_resource_0"n
4while_lstm_cell_132_matmul_1_readvariableop_resource6while_lstm_cell_132_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_132_matmul_readvariableop_resource4while_lstm_cell_132_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_132/BiasAdd/ReadVariableOp*while/lstm_cell_132/BiasAdd/ReadVariableOp2V
)while/lstm_cell_132/MatMul/ReadVariableOp)while/lstm_cell_132/MatMul/ReadVariableOp2Z
+while/lstm_cell_132/MatMul_1/ReadVariableOp+while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_812409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_134_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_134_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_134_matmul_readvariableop_resource:2(F
4while_lstm_cell_134_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_134_biasadd_readvariableop_resource:(??*while/lstm_cell_134/BiasAdd/ReadVariableOp?)while/lstm_cell_134/MatMul/ReadVariableOp?+while/lstm_cell_134/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_134/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_134/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_134/addAddV2$while/lstm_cell_134/MatMul:product:0&while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_134/BiasAddBiasAddwhile/lstm_cell_134/add:z:02while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_134/splitSplit,while/lstm_cell_134/split/split_dim:output:0$while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_134/SigmoidSigmoid"while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_1Sigmoid"while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mulMul!while/lstm_cell_134/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_134/ReluRelu"while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_1Mulwhile/lstm_cell_134/Sigmoid:y:0&while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/add_1AddV2while/lstm_cell_134/mul:z:0while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_2Sigmoid"while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_134/Relu_1Reluwhile/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_2Mul!while/lstm_cell_134/Sigmoid_2:y:0(while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_134/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_134/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_134/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_134/BiasAdd/ReadVariableOp*^while/lstm_cell_134/MatMul/ReadVariableOp,^while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_134_biasadd_readvariableop_resource5while_lstm_cell_134_biasadd_readvariableop_resource_0"n
4while_lstm_cell_134_matmul_1_readvariableop_resource6while_lstm_cell_134_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_134_matmul_readvariableop_resource4while_lstm_cell_134_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_134/BiasAdd/ReadVariableOp*while/lstm_cell_134/BiasAdd/ReadVariableOp2V
)while/lstm_cell_134/MatMul/ReadVariableOp)while/lstm_cell_134/MatMul/ReadVariableOp2Z
+while/lstm_cell_134/MatMul_1/ReadVariableOp+while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_430_layer_call_and_return_conditional_losses_811278

inputs'
lstm_cell_133_811196:	d?'
lstm_cell_133_811198:	2?#
lstm_cell_133_811200:	?
identity??%lstm_cell_133/StatefulPartitionedCall?while;
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
%lstm_cell_133/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_133_811196lstm_cell_133_811198lstm_cell_133_811200*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811195n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_133_811196lstm_cell_133_811198lstm_cell_133_811200*
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
bodyR
while_body_811209*
condR
while_cond_811208*K
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
NoOpNoOp&^lstm_cell_133/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_133/StatefulPartitionedCall%lstm_cell_133/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?T
?
)sequential_143_lstm_430_while_body_810549L
Hsequential_143_lstm_430_while_sequential_143_lstm_430_while_loop_counterR
Nsequential_143_lstm_430_while_sequential_143_lstm_430_while_maximum_iterations-
)sequential_143_lstm_430_while_placeholder/
+sequential_143_lstm_430_while_placeholder_1/
+sequential_143_lstm_430_while_placeholder_2/
+sequential_143_lstm_430_while_placeholder_3K
Gsequential_143_lstm_430_while_sequential_143_lstm_430_strided_slice_1_0?
?sequential_143_lstm_430_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_430_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_143_lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0:	d?a
Nsequential_143_lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?\
Msequential_143_lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0:	?*
&sequential_143_lstm_430_while_identity,
(sequential_143_lstm_430_while_identity_1,
(sequential_143_lstm_430_while_identity_2,
(sequential_143_lstm_430_while_identity_3,
(sequential_143_lstm_430_while_identity_4,
(sequential_143_lstm_430_while_identity_5I
Esequential_143_lstm_430_while_sequential_143_lstm_430_strided_slice_1?
?sequential_143_lstm_430_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_430_tensorarrayunstack_tensorlistfromtensor]
Jsequential_143_lstm_430_while_lstm_cell_133_matmul_readvariableop_resource:	d?_
Lsequential_143_lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource:	2?Z
Ksequential_143_lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource:	???Bsequential_143/lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp?Asequential_143/lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp?Csequential_143/lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp?
Osequential_143/lstm_430/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_143/lstm_430/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_143_lstm_430_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_430_tensorarrayunstack_tensorlistfromtensor_0)sequential_143_lstm_430_while_placeholderXsequential_143/lstm_430/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_143/lstm_430/while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOpLsequential_143_lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_143/lstm_430/while/lstm_cell_133/MatMulMatMulHsequential_143/lstm_430/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_143/lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_143/lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOpNsequential_143_lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_143/lstm_430/while/lstm_cell_133/MatMul_1MatMul+sequential_143_lstm_430_while_placeholder_2Ksequential_143/lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_143/lstm_430/while/lstm_cell_133/addAddV2<sequential_143/lstm_430/while/lstm_cell_133/MatMul:product:0>sequential_143/lstm_430/while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_143/lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOpMsequential_143_lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_143/lstm_430/while/lstm_cell_133/BiasAddBiasAdd3sequential_143/lstm_430/while/lstm_cell_133/add:z:0Jsequential_143/lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_143/lstm_430/while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_143/lstm_430/while/lstm_cell_133/splitSplitDsequential_143/lstm_430/while/lstm_cell_133/split/split_dim:output:0<sequential_143/lstm_430/while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_143/lstm_430/while/lstm_cell_133/SigmoidSigmoid:sequential_143/lstm_430/while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_143/lstm_430/while/lstm_cell_133/Sigmoid_1Sigmoid:sequential_143/lstm_430/while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_143/lstm_430/while/lstm_cell_133/mulMul9sequential_143/lstm_430/while/lstm_cell_133/Sigmoid_1:y:0+sequential_143_lstm_430_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_143/lstm_430/while/lstm_cell_133/ReluRelu:sequential_143/lstm_430/while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_143/lstm_430/while/lstm_cell_133/mul_1Mul7sequential_143/lstm_430/while/lstm_cell_133/Sigmoid:y:0>sequential_143/lstm_430/while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_143/lstm_430/while/lstm_cell_133/add_1AddV23sequential_143/lstm_430/while/lstm_cell_133/mul:z:05sequential_143/lstm_430/while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_143/lstm_430/while/lstm_cell_133/Sigmoid_2Sigmoid:sequential_143/lstm_430/while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_143/lstm_430/while/lstm_cell_133/Relu_1Relu5sequential_143/lstm_430/while/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_143/lstm_430/while/lstm_cell_133/mul_2Mul9sequential_143/lstm_430/while/lstm_cell_133/Sigmoid_2:y:0@sequential_143/lstm_430/while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_143/lstm_430/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_143_lstm_430_while_placeholder_1)sequential_143_lstm_430_while_placeholder5sequential_143/lstm_430/while/lstm_cell_133/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_143/lstm_430/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_143/lstm_430/while/addAddV2)sequential_143_lstm_430_while_placeholder,sequential_143/lstm_430/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_143/lstm_430/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_143/lstm_430/while/add_1AddV2Hsequential_143_lstm_430_while_sequential_143_lstm_430_while_loop_counter.sequential_143/lstm_430/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_143/lstm_430/while/IdentityIdentity'sequential_143/lstm_430/while/add_1:z:0#^sequential_143/lstm_430/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_430/while/Identity_1IdentityNsequential_143_lstm_430_while_sequential_143_lstm_430_while_maximum_iterations#^sequential_143/lstm_430/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_430/while/Identity_2Identity%sequential_143/lstm_430/while/add:z:0#^sequential_143/lstm_430/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_430/while/Identity_3IdentityRsequential_143/lstm_430/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_143/lstm_430/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_430/while/Identity_4Identity5sequential_143/lstm_430/while/lstm_cell_133/mul_2:z:0#^sequential_143/lstm_430/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_143/lstm_430/while/Identity_5Identity5sequential_143/lstm_430/while/lstm_cell_133/add_1:z:0#^sequential_143/lstm_430/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_143/lstm_430/while/NoOpNoOpC^sequential_143/lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOpB^sequential_143/lstm_430/while/lstm_cell_133/MatMul/ReadVariableOpD^sequential_143/lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_143_lstm_430_while_identity/sequential_143/lstm_430/while/Identity:output:0"]
(sequential_143_lstm_430_while_identity_11sequential_143/lstm_430/while/Identity_1:output:0"]
(sequential_143_lstm_430_while_identity_21sequential_143/lstm_430/while/Identity_2:output:0"]
(sequential_143_lstm_430_while_identity_31sequential_143/lstm_430/while/Identity_3:output:0"]
(sequential_143_lstm_430_while_identity_41sequential_143/lstm_430/while/Identity_4:output:0"]
(sequential_143_lstm_430_while_identity_51sequential_143/lstm_430/while/Identity_5:output:0"?
Ksequential_143_lstm_430_while_lstm_cell_133_biasadd_readvariableop_resourceMsequential_143_lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0"?
Lsequential_143_lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resourceNsequential_143_lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0"?
Jsequential_143_lstm_430_while_lstm_cell_133_matmul_readvariableop_resourceLsequential_143_lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0"?
Esequential_143_lstm_430_while_sequential_143_lstm_430_strided_slice_1Gsequential_143_lstm_430_while_sequential_143_lstm_430_strided_slice_1_0"?
?sequential_143_lstm_430_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_430_tensorarrayunstack_tensorlistfromtensor?sequential_143_lstm_430_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_430_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_143/lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOpBsequential_143/lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp2?
Asequential_143/lstm_430/while/lstm_cell_133/MatMul/ReadVariableOpAsequential_143/lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp2?
Csequential_143/lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOpCsequential_143/lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_143_layer_call_and_return_conditional_losses_815813

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
while_cond_810858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_810858___redundant_placeholder04
0while_while_cond_810858___redundant_placeholder14
0while_while_cond_810858___redundant_placeholder24
0while_while_cond_810858___redundant_placeholder3
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
!__inference__wrapped_model_810778
lstm_429_inputW
Dsequential_143_lstm_429_lstm_cell_132_matmul_readvariableop_resource:	?Y
Fsequential_143_lstm_429_lstm_cell_132_matmul_1_readvariableop_resource:	d?T
Esequential_143_lstm_429_lstm_cell_132_biasadd_readvariableop_resource:	?W
Dsequential_143_lstm_430_lstm_cell_133_matmul_readvariableop_resource:	d?Y
Fsequential_143_lstm_430_lstm_cell_133_matmul_1_readvariableop_resource:	2?T
Esequential_143_lstm_430_lstm_cell_133_biasadd_readvariableop_resource:	?V
Dsequential_143_lstm_431_lstm_cell_134_matmul_readvariableop_resource:2(X
Fsequential_143_lstm_431_lstm_cell_134_matmul_1_readvariableop_resource:
(S
Esequential_143_lstm_431_lstm_cell_134_biasadd_readvariableop_resource:(I
7sequential_143_dense_143_matmul_readvariableop_resource:
F
8sequential_143_dense_143_biasadd_readvariableop_resource:
identity??/sequential_143/dense_143/BiasAdd/ReadVariableOp?.sequential_143/dense_143/MatMul/ReadVariableOp?<sequential_143/lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp?;sequential_143/lstm_429/lstm_cell_132/MatMul/ReadVariableOp?=sequential_143/lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp?sequential_143/lstm_429/while?<sequential_143/lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp?;sequential_143/lstm_430/lstm_cell_133/MatMul/ReadVariableOp?=sequential_143/lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp?sequential_143/lstm_430/while?<sequential_143/lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp?;sequential_143/lstm_431/lstm_cell_134/MatMul/ReadVariableOp?=sequential_143/lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp?sequential_143/lstm_431/while[
sequential_143/lstm_429/ShapeShapelstm_429_input*
T0*
_output_shapes
:u
+sequential_143/lstm_429/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_143/lstm_429/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_143/lstm_429/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_143/lstm_429/strided_sliceStridedSlice&sequential_143/lstm_429/Shape:output:04sequential_143/lstm_429/strided_slice/stack:output:06sequential_143/lstm_429/strided_slice/stack_1:output:06sequential_143/lstm_429/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_143/lstm_429/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_143/lstm_429/zeros/packedPack.sequential_143/lstm_429/strided_slice:output:0/sequential_143/lstm_429/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_143/lstm_429/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_143/lstm_429/zerosFill-sequential_143/lstm_429/zeros/packed:output:0,sequential_143/lstm_429/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_143/lstm_429/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_143/lstm_429/zeros_1/packedPack.sequential_143/lstm_429/strided_slice:output:01sequential_143/lstm_429/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_143/lstm_429/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_143/lstm_429/zeros_1Fill/sequential_143/lstm_429/zeros_1/packed:output:0.sequential_143/lstm_429/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_143/lstm_429/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_143/lstm_429/transpose	Transposelstm_429_input/sequential_143/lstm_429/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_143/lstm_429/Shape_1Shape%sequential_143/lstm_429/transpose:y:0*
T0*
_output_shapes
:w
-sequential_143/lstm_429/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_429/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_143/lstm_429/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_429/strided_slice_1StridedSlice(sequential_143/lstm_429/Shape_1:output:06sequential_143/lstm_429/strided_slice_1/stack:output:08sequential_143/lstm_429/strided_slice_1/stack_1:output:08sequential_143/lstm_429/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_143/lstm_429/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_143/lstm_429/TensorArrayV2TensorListReserve<sequential_143/lstm_429/TensorArrayV2/element_shape:output:00sequential_143/lstm_429/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_143/lstm_429/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_143/lstm_429/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_143/lstm_429/transpose:y:0Vsequential_143/lstm_429/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_143/lstm_429/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_429/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_143/lstm_429/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_429/strided_slice_2StridedSlice%sequential_143/lstm_429/transpose:y:06sequential_143/lstm_429/strided_slice_2/stack:output:08sequential_143/lstm_429/strided_slice_2/stack_1:output:08sequential_143/lstm_429/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_143/lstm_429/lstm_cell_132/MatMul/ReadVariableOpReadVariableOpDsequential_143_lstm_429_lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_143/lstm_429/lstm_cell_132/MatMulMatMul0sequential_143/lstm_429/strided_slice_2:output:0Csequential_143/lstm_429/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_143/lstm_429/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOpFsequential_143_lstm_429_lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_143/lstm_429/lstm_cell_132/MatMul_1MatMul&sequential_143/lstm_429/zeros:output:0Esequential_143/lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_143/lstm_429/lstm_cell_132/addAddV26sequential_143/lstm_429/lstm_cell_132/MatMul:product:08sequential_143/lstm_429/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_143/lstm_429/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOpEsequential_143_lstm_429_lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_143/lstm_429/lstm_cell_132/BiasAddBiasAdd-sequential_143/lstm_429/lstm_cell_132/add:z:0Dsequential_143/lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_143/lstm_429/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_143/lstm_429/lstm_cell_132/splitSplit>sequential_143/lstm_429/lstm_cell_132/split/split_dim:output:06sequential_143/lstm_429/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_143/lstm_429/lstm_cell_132/SigmoidSigmoid4sequential_143/lstm_429/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_143/lstm_429/lstm_cell_132/Sigmoid_1Sigmoid4sequential_143/lstm_429/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_143/lstm_429/lstm_cell_132/mulMul3sequential_143/lstm_429/lstm_cell_132/Sigmoid_1:y:0(sequential_143/lstm_429/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_143/lstm_429/lstm_cell_132/ReluRelu4sequential_143/lstm_429/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_143/lstm_429/lstm_cell_132/mul_1Mul1sequential_143/lstm_429/lstm_cell_132/Sigmoid:y:08sequential_143/lstm_429/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_143/lstm_429/lstm_cell_132/add_1AddV2-sequential_143/lstm_429/lstm_cell_132/mul:z:0/sequential_143/lstm_429/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_143/lstm_429/lstm_cell_132/Sigmoid_2Sigmoid4sequential_143/lstm_429/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_143/lstm_429/lstm_cell_132/Relu_1Relu/sequential_143/lstm_429/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_143/lstm_429/lstm_cell_132/mul_2Mul3sequential_143/lstm_429/lstm_cell_132/Sigmoid_2:y:0:sequential_143/lstm_429/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_143/lstm_429/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_143/lstm_429/TensorArrayV2_1TensorListReserve>sequential_143/lstm_429/TensorArrayV2_1/element_shape:output:00sequential_143/lstm_429/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_143/lstm_429/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_143/lstm_429/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_143/lstm_429/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_143/lstm_429/whileWhile3sequential_143/lstm_429/while/loop_counter:output:09sequential_143/lstm_429/while/maximum_iterations:output:0%sequential_143/lstm_429/time:output:00sequential_143/lstm_429/TensorArrayV2_1:handle:0&sequential_143/lstm_429/zeros:output:0(sequential_143/lstm_429/zeros_1:output:00sequential_143/lstm_429/strided_slice_1:output:0Osequential_143/lstm_429/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_143_lstm_429_lstm_cell_132_matmul_readvariableop_resourceFsequential_143_lstm_429_lstm_cell_132_matmul_1_readvariableop_resourceEsequential_143_lstm_429_lstm_cell_132_biasadd_readvariableop_resource*
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
)sequential_143_lstm_429_while_body_810410*5
cond-R+
)sequential_143_lstm_429_while_cond_810409*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_143/lstm_429/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_143/lstm_429/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_143/lstm_429/while:output:3Qsequential_143/lstm_429/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_143/lstm_429/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_143/lstm_429/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_429/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_429/strided_slice_3StridedSliceCsequential_143/lstm_429/TensorArrayV2Stack/TensorListStack:tensor:06sequential_143/lstm_429/strided_slice_3/stack:output:08sequential_143/lstm_429/strided_slice_3/stack_1:output:08sequential_143/lstm_429/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_143/lstm_429/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_143/lstm_429/transpose_1	TransposeCsequential_143/lstm_429/TensorArrayV2Stack/TensorListStack:tensor:01sequential_143/lstm_429/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_143/lstm_429/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_143/lstm_430/ShapeShape'sequential_143/lstm_429/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_143/lstm_430/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_143/lstm_430/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_143/lstm_430/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_143/lstm_430/strided_sliceStridedSlice&sequential_143/lstm_430/Shape:output:04sequential_143/lstm_430/strided_slice/stack:output:06sequential_143/lstm_430/strided_slice/stack_1:output:06sequential_143/lstm_430/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_143/lstm_430/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_143/lstm_430/zeros/packedPack.sequential_143/lstm_430/strided_slice:output:0/sequential_143/lstm_430/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_143/lstm_430/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_143/lstm_430/zerosFill-sequential_143/lstm_430/zeros/packed:output:0,sequential_143/lstm_430/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_143/lstm_430/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_143/lstm_430/zeros_1/packedPack.sequential_143/lstm_430/strided_slice:output:01sequential_143/lstm_430/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_143/lstm_430/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_143/lstm_430/zeros_1Fill/sequential_143/lstm_430/zeros_1/packed:output:0.sequential_143/lstm_430/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_143/lstm_430/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_143/lstm_430/transpose	Transpose'sequential_143/lstm_429/transpose_1:y:0/sequential_143/lstm_430/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_143/lstm_430/Shape_1Shape%sequential_143/lstm_430/transpose:y:0*
T0*
_output_shapes
:w
-sequential_143/lstm_430/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_430/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_143/lstm_430/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_430/strided_slice_1StridedSlice(sequential_143/lstm_430/Shape_1:output:06sequential_143/lstm_430/strided_slice_1/stack:output:08sequential_143/lstm_430/strided_slice_1/stack_1:output:08sequential_143/lstm_430/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_143/lstm_430/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_143/lstm_430/TensorArrayV2TensorListReserve<sequential_143/lstm_430/TensorArrayV2/element_shape:output:00sequential_143/lstm_430/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_143/lstm_430/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_143/lstm_430/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_143/lstm_430/transpose:y:0Vsequential_143/lstm_430/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_143/lstm_430/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_430/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_143/lstm_430/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_430/strided_slice_2StridedSlice%sequential_143/lstm_430/transpose:y:06sequential_143/lstm_430/strided_slice_2/stack:output:08sequential_143/lstm_430/strided_slice_2/stack_1:output:08sequential_143/lstm_430/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_143/lstm_430/lstm_cell_133/MatMul/ReadVariableOpReadVariableOpDsequential_143_lstm_430_lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_143/lstm_430/lstm_cell_133/MatMulMatMul0sequential_143/lstm_430/strided_slice_2:output:0Csequential_143/lstm_430/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_143/lstm_430/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOpFsequential_143_lstm_430_lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_143/lstm_430/lstm_cell_133/MatMul_1MatMul&sequential_143/lstm_430/zeros:output:0Esequential_143/lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_143/lstm_430/lstm_cell_133/addAddV26sequential_143/lstm_430/lstm_cell_133/MatMul:product:08sequential_143/lstm_430/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_143/lstm_430/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOpEsequential_143_lstm_430_lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_143/lstm_430/lstm_cell_133/BiasAddBiasAdd-sequential_143/lstm_430/lstm_cell_133/add:z:0Dsequential_143/lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_143/lstm_430/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_143/lstm_430/lstm_cell_133/splitSplit>sequential_143/lstm_430/lstm_cell_133/split/split_dim:output:06sequential_143/lstm_430/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_143/lstm_430/lstm_cell_133/SigmoidSigmoid4sequential_143/lstm_430/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_143/lstm_430/lstm_cell_133/Sigmoid_1Sigmoid4sequential_143/lstm_430/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_143/lstm_430/lstm_cell_133/mulMul3sequential_143/lstm_430/lstm_cell_133/Sigmoid_1:y:0(sequential_143/lstm_430/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_143/lstm_430/lstm_cell_133/ReluRelu4sequential_143/lstm_430/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_143/lstm_430/lstm_cell_133/mul_1Mul1sequential_143/lstm_430/lstm_cell_133/Sigmoid:y:08sequential_143/lstm_430/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_143/lstm_430/lstm_cell_133/add_1AddV2-sequential_143/lstm_430/lstm_cell_133/mul:z:0/sequential_143/lstm_430/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_143/lstm_430/lstm_cell_133/Sigmoid_2Sigmoid4sequential_143/lstm_430/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_143/lstm_430/lstm_cell_133/Relu_1Relu/sequential_143/lstm_430/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_143/lstm_430/lstm_cell_133/mul_2Mul3sequential_143/lstm_430/lstm_cell_133/Sigmoid_2:y:0:sequential_143/lstm_430/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_143/lstm_430/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_143/lstm_430/TensorArrayV2_1TensorListReserve>sequential_143/lstm_430/TensorArrayV2_1/element_shape:output:00sequential_143/lstm_430/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_143/lstm_430/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_143/lstm_430/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_143/lstm_430/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_143/lstm_430/whileWhile3sequential_143/lstm_430/while/loop_counter:output:09sequential_143/lstm_430/while/maximum_iterations:output:0%sequential_143/lstm_430/time:output:00sequential_143/lstm_430/TensorArrayV2_1:handle:0&sequential_143/lstm_430/zeros:output:0(sequential_143/lstm_430/zeros_1:output:00sequential_143/lstm_430/strided_slice_1:output:0Osequential_143/lstm_430/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_143_lstm_430_lstm_cell_133_matmul_readvariableop_resourceFsequential_143_lstm_430_lstm_cell_133_matmul_1_readvariableop_resourceEsequential_143_lstm_430_lstm_cell_133_biasadd_readvariableop_resource*
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
)sequential_143_lstm_430_while_body_810549*5
cond-R+
)sequential_143_lstm_430_while_cond_810548*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_143/lstm_430/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_143/lstm_430/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_143/lstm_430/while:output:3Qsequential_143/lstm_430/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_143/lstm_430/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_143/lstm_430/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_430/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_430/strided_slice_3StridedSliceCsequential_143/lstm_430/TensorArrayV2Stack/TensorListStack:tensor:06sequential_143/lstm_430/strided_slice_3/stack:output:08sequential_143/lstm_430/strided_slice_3/stack_1:output:08sequential_143/lstm_430/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_143/lstm_430/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_143/lstm_430/transpose_1	TransposeCsequential_143/lstm_430/TensorArrayV2Stack/TensorListStack:tensor:01sequential_143/lstm_430/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_143/lstm_430/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_143/lstm_431/ShapeShape'sequential_143/lstm_430/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_143/lstm_431/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_143/lstm_431/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_143/lstm_431/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_143/lstm_431/strided_sliceStridedSlice&sequential_143/lstm_431/Shape:output:04sequential_143/lstm_431/strided_slice/stack:output:06sequential_143/lstm_431/strided_slice/stack_1:output:06sequential_143/lstm_431/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_143/lstm_431/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_143/lstm_431/zeros/packedPack.sequential_143/lstm_431/strided_slice:output:0/sequential_143/lstm_431/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_143/lstm_431/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_143/lstm_431/zerosFill-sequential_143/lstm_431/zeros/packed:output:0,sequential_143/lstm_431/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_143/lstm_431/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_143/lstm_431/zeros_1/packedPack.sequential_143/lstm_431/strided_slice:output:01sequential_143/lstm_431/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_143/lstm_431/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_143/lstm_431/zeros_1Fill/sequential_143/lstm_431/zeros_1/packed:output:0.sequential_143/lstm_431/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_143/lstm_431/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_143/lstm_431/transpose	Transpose'sequential_143/lstm_430/transpose_1:y:0/sequential_143/lstm_431/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_143/lstm_431/Shape_1Shape%sequential_143/lstm_431/transpose:y:0*
T0*
_output_shapes
:w
-sequential_143/lstm_431/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_431/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_143/lstm_431/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_431/strided_slice_1StridedSlice(sequential_143/lstm_431/Shape_1:output:06sequential_143/lstm_431/strided_slice_1/stack:output:08sequential_143/lstm_431/strided_slice_1/stack_1:output:08sequential_143/lstm_431/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_143/lstm_431/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_143/lstm_431/TensorArrayV2TensorListReserve<sequential_143/lstm_431/TensorArrayV2/element_shape:output:00sequential_143/lstm_431/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_143/lstm_431/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_143/lstm_431/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_143/lstm_431/transpose:y:0Vsequential_143/lstm_431/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_143/lstm_431/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_431/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_143/lstm_431/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_431/strided_slice_2StridedSlice%sequential_143/lstm_431/transpose:y:06sequential_143/lstm_431/strided_slice_2/stack:output:08sequential_143/lstm_431/strided_slice_2/stack_1:output:08sequential_143/lstm_431/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_143/lstm_431/lstm_cell_134/MatMul/ReadVariableOpReadVariableOpDsequential_143_lstm_431_lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_143/lstm_431/lstm_cell_134/MatMulMatMul0sequential_143/lstm_431/strided_slice_2:output:0Csequential_143/lstm_431/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_143/lstm_431/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOpFsequential_143_lstm_431_lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_143/lstm_431/lstm_cell_134/MatMul_1MatMul&sequential_143/lstm_431/zeros:output:0Esequential_143/lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_143/lstm_431/lstm_cell_134/addAddV26sequential_143/lstm_431/lstm_cell_134/MatMul:product:08sequential_143/lstm_431/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_143/lstm_431/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOpEsequential_143_lstm_431_lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_143/lstm_431/lstm_cell_134/BiasAddBiasAdd-sequential_143/lstm_431/lstm_cell_134/add:z:0Dsequential_143/lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_143/lstm_431/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_143/lstm_431/lstm_cell_134/splitSplit>sequential_143/lstm_431/lstm_cell_134/split/split_dim:output:06sequential_143/lstm_431/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_143/lstm_431/lstm_cell_134/SigmoidSigmoid4sequential_143/lstm_431/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_143/lstm_431/lstm_cell_134/Sigmoid_1Sigmoid4sequential_143/lstm_431/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_143/lstm_431/lstm_cell_134/mulMul3sequential_143/lstm_431/lstm_cell_134/Sigmoid_1:y:0(sequential_143/lstm_431/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_143/lstm_431/lstm_cell_134/ReluRelu4sequential_143/lstm_431/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_143/lstm_431/lstm_cell_134/mul_1Mul1sequential_143/lstm_431/lstm_cell_134/Sigmoid:y:08sequential_143/lstm_431/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_143/lstm_431/lstm_cell_134/add_1AddV2-sequential_143/lstm_431/lstm_cell_134/mul:z:0/sequential_143/lstm_431/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_143/lstm_431/lstm_cell_134/Sigmoid_2Sigmoid4sequential_143/lstm_431/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_143/lstm_431/lstm_cell_134/Relu_1Relu/sequential_143/lstm_431/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_143/lstm_431/lstm_cell_134/mul_2Mul3sequential_143/lstm_431/lstm_cell_134/Sigmoid_2:y:0:sequential_143/lstm_431/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_143/lstm_431/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_143/lstm_431/TensorArrayV2_1TensorListReserve>sequential_143/lstm_431/TensorArrayV2_1/element_shape:output:00sequential_143/lstm_431/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_143/lstm_431/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_143/lstm_431/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_143/lstm_431/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_143/lstm_431/whileWhile3sequential_143/lstm_431/while/loop_counter:output:09sequential_143/lstm_431/while/maximum_iterations:output:0%sequential_143/lstm_431/time:output:00sequential_143/lstm_431/TensorArrayV2_1:handle:0&sequential_143/lstm_431/zeros:output:0(sequential_143/lstm_431/zeros_1:output:00sequential_143/lstm_431/strided_slice_1:output:0Osequential_143/lstm_431/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_143_lstm_431_lstm_cell_134_matmul_readvariableop_resourceFsequential_143_lstm_431_lstm_cell_134_matmul_1_readvariableop_resourceEsequential_143_lstm_431_lstm_cell_134_biasadd_readvariableop_resource*
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
)sequential_143_lstm_431_while_body_810688*5
cond-R+
)sequential_143_lstm_431_while_cond_810687*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_143/lstm_431/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_143/lstm_431/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_143/lstm_431/while:output:3Qsequential_143/lstm_431/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_143/lstm_431/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_143/lstm_431/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_143/lstm_431/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_143/lstm_431/strided_slice_3StridedSliceCsequential_143/lstm_431/TensorArrayV2Stack/TensorListStack:tensor:06sequential_143/lstm_431/strided_slice_3/stack:output:08sequential_143/lstm_431/strided_slice_3/stack_1:output:08sequential_143/lstm_431/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_143/lstm_431/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_143/lstm_431/transpose_1	TransposeCsequential_143/lstm_431/TensorArrayV2Stack/TensorListStack:tensor:01sequential_143/lstm_431/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_143/lstm_431/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_143/dense_143/MatMul/ReadVariableOpReadVariableOp7sequential_143_dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_143/dense_143/MatMulMatMul0sequential_143/lstm_431/strided_slice_3:output:06sequential_143/dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_143/dense_143/BiasAdd/ReadVariableOpReadVariableOp8sequential_143_dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_143/dense_143/BiasAddBiasAdd)sequential_143/dense_143/MatMul:product:07sequential_143/dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_143/dense_143/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_143/dense_143/BiasAdd/ReadVariableOp/^sequential_143/dense_143/MatMul/ReadVariableOp=^sequential_143/lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp<^sequential_143/lstm_429/lstm_cell_132/MatMul/ReadVariableOp>^sequential_143/lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp^sequential_143/lstm_429/while=^sequential_143/lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp<^sequential_143/lstm_430/lstm_cell_133/MatMul/ReadVariableOp>^sequential_143/lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp^sequential_143/lstm_430/while=^sequential_143/lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp<^sequential_143/lstm_431/lstm_cell_134/MatMul/ReadVariableOp>^sequential_143/lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp^sequential_143/lstm_431/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_143/dense_143/BiasAdd/ReadVariableOp/sequential_143/dense_143/BiasAdd/ReadVariableOp2`
.sequential_143/dense_143/MatMul/ReadVariableOp.sequential_143/dense_143/MatMul/ReadVariableOp2|
<sequential_143/lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp<sequential_143/lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp2z
;sequential_143/lstm_429/lstm_cell_132/MatMul/ReadVariableOp;sequential_143/lstm_429/lstm_cell_132/MatMul/ReadVariableOp2~
=sequential_143/lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp=sequential_143/lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp2>
sequential_143/lstm_429/whilesequential_143/lstm_429/while2|
<sequential_143/lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp<sequential_143/lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp2z
;sequential_143/lstm_430/lstm_cell_133/MatMul/ReadVariableOp;sequential_143/lstm_430/lstm_cell_133/MatMul/ReadVariableOp2~
=sequential_143/lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp=sequential_143/lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp2>
sequential_143/lstm_430/whilesequential_143/lstm_430/while2|
<sequential_143/lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp<sequential_143/lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp2z
;sequential_143/lstm_431/lstm_cell_134/MatMul/ReadVariableOp;sequential_143/lstm_431/lstm_cell_134/MatMul/ReadVariableOp2~
=sequential_143/lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp=sequential_143/lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp2>
sequential_143/lstm_431/whilesequential_143/lstm_431/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_429_input
?8
?
while_body_815567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_134_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_134_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_134_matmul_readvariableop_resource:2(F
4while_lstm_cell_134_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_134_biasadd_readvariableop_resource:(??*while/lstm_cell_134/BiasAdd/ReadVariableOp?)while/lstm_cell_134/MatMul/ReadVariableOp?+while/lstm_cell_134/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_134/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_134/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_134/addAddV2$while/lstm_cell_134/MatMul:product:0&while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_134/BiasAddBiasAddwhile/lstm_cell_134/add:z:02while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_134/splitSplit,while/lstm_cell_134/split/split_dim:output:0$while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_134/SigmoidSigmoid"while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_1Sigmoid"while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mulMul!while/lstm_cell_134/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_134/ReluRelu"while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_1Mulwhile/lstm_cell_134/Sigmoid:y:0&while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/add_1AddV2while/lstm_cell_134/mul:z:0while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_2Sigmoid"while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_134/Relu_1Reluwhile/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_2Mul!while/lstm_cell_134/Sigmoid_2:y:0(while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_134/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_134/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_134/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_134/BiasAdd/ReadVariableOp*^while/lstm_cell_134/MatMul/ReadVariableOp,^while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_134_biasadd_readvariableop_resource5while_lstm_cell_134_biasadd_readvariableop_resource_0"n
4while_lstm_cell_134_matmul_1_readvariableop_resource6while_lstm_cell_134_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_134_matmul_readvariableop_resource4while_lstm_cell_134_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_134/BiasAdd/ReadVariableOp*while/lstm_cell_134/BiasAdd/ReadVariableOp2V
)while/lstm_cell_134/MatMul/ReadVariableOp)while/lstm_cell_134/MatMul/ReadVariableOp2Z
+while/lstm_cell_134/MatMul_1/ReadVariableOp+while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_143_layer_call_fn_812943
lstm_429_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_429_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_143_layer_call_and_return_conditional_losses_812891o
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
_user_specified_namelstm_429_input
?
?
while_cond_814334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_814334___redundant_placeholder04
0while_while_cond_814334___redundant_placeholder14
0while_while_cond_814334___redundant_placeholder24
0while_while_cond_814334___redundant_placeholder3
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
while_cond_812408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_812408___redundant_placeholder04
0while_while_cond_812408___redundant_placeholder14
0while_while_cond_812408___redundant_placeholder24
0while_while_cond_812408___redundant_placeholder3
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
lstm_429_while_cond_813150.
*lstm_429_while_lstm_429_while_loop_counter4
0lstm_429_while_lstm_429_while_maximum_iterations
lstm_429_while_placeholder 
lstm_429_while_placeholder_1 
lstm_429_while_placeholder_2 
lstm_429_while_placeholder_30
,lstm_429_while_less_lstm_429_strided_slice_1F
Blstm_429_while_lstm_429_while_cond_813150___redundant_placeholder0F
Blstm_429_while_lstm_429_while_cond_813150___redundant_placeholder1F
Blstm_429_while_lstm_429_while_cond_813150___redundant_placeholder2F
Blstm_429_while_lstm_429_while_cond_813150___redundant_placeholder3
lstm_429_while_identity
?
lstm_429/while/LessLesslstm_429_while_placeholder,lstm_429_while_less_lstm_429_strided_slice_1*
T0*
_output_shapes
: ]
lstm_429/while/IdentityIdentitylstm_429/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_429_while_identity lstm_429/while/Identity:output:0*(
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
while_body_814049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_132_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_132_matmul_readvariableop_resource:	?G
4while_lstm_cell_132_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_132_biasadd_readvariableop_resource:	???*while/lstm_cell_132/BiasAdd/ReadVariableOp?)while/lstm_cell_132/MatMul/ReadVariableOp?+while/lstm_cell_132/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_132/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_132/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_132/addAddV2$while/lstm_cell_132/MatMul:product:0&while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_132/BiasAddBiasAddwhile/lstm_cell_132/add:z:02while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_132/splitSplit,while/lstm_cell_132/split/split_dim:output:0$while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_132/SigmoidSigmoid"while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_1Sigmoid"while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mulMul!while/lstm_cell_132/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_132/ReluRelu"while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_1Mulwhile/lstm_cell_132/Sigmoid:y:0&while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/add_1AddV2while/lstm_cell_132/mul:z:0while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_2Sigmoid"while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_132/Relu_1Reluwhile/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_2Mul!while/lstm_cell_132/Sigmoid_2:y:0(while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_132/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_132/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_132/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_132/BiasAdd/ReadVariableOp*^while/lstm_cell_132/MatMul/ReadVariableOp,^while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_132_biasadd_readvariableop_resource5while_lstm_cell_132_biasadd_readvariableop_resource_0"n
4while_lstm_cell_132_matmul_1_readvariableop_resource6while_lstm_cell_132_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_132_matmul_readvariableop_resource4while_lstm_cell_132_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_132/BiasAdd/ReadVariableOp*while/lstm_cell_132/BiasAdd/ReadVariableOp2V
)while/lstm_cell_132/MatMul/ReadVariableOp)while/lstm_cell_132/MatMul/ReadVariableOp2Z
+while/lstm_cell_132/MatMul_1/ReadVariableOp+while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_814951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_133_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_133_matmul_readvariableop_resource:	d?G
4while_lstm_cell_133_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_133_biasadd_readvariableop_resource:	???*while/lstm_cell_133/BiasAdd/ReadVariableOp?)while/lstm_cell_133/MatMul/ReadVariableOp?+while/lstm_cell_133/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_133/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_133/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_133/addAddV2$while/lstm_cell_133/MatMul:product:0&while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_133/BiasAddBiasAddwhile/lstm_cell_133/add:z:02while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_133/splitSplit,while/lstm_cell_133/split/split_dim:output:0$while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_133/SigmoidSigmoid"while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_1Sigmoid"while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mulMul!while/lstm_cell_133/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_133/ReluRelu"while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_1Mulwhile/lstm_cell_133/Sigmoid:y:0&while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/add_1AddV2while/lstm_cell_133/mul:z:0while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_2Sigmoid"while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_133/Relu_1Reluwhile/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_2Mul!while/lstm_cell_133/Sigmoid_2:y:0(while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_133/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_133/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_133/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_133/BiasAdd/ReadVariableOp*^while/lstm_cell_133/MatMul/ReadVariableOp,^while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_133_biasadd_readvariableop_resource5while_lstm_cell_133_biasadd_readvariableop_resource_0"n
4while_lstm_cell_133_matmul_1_readvariableop_resource6while_lstm_cell_133_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_133_matmul_readvariableop_resource4while_lstm_cell_133_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_133/BiasAdd/ReadVariableOp*while/lstm_cell_133/BiasAdd/ReadVariableOp2V
)while/lstm_cell_133/MatMul/ReadVariableOp)while/lstm_cell_133/MatMul/ReadVariableOp2Z
+while/lstm_cell_133/MatMul_1/ReadVariableOp+while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_815709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_815709___redundant_placeholder04
0while_while_cond_815709___redundant_placeholder14
0while_while_cond_815709___redundant_placeholder24
0while_while_cond_815709___redundant_placeholder3
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
?"
?
while_body_811050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_132_811074_0:	?/
while_lstm_cell_132_811076_0:	d?+
while_lstm_cell_132_811078_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_132_811074:	?-
while_lstm_cell_132_811076:	d?)
while_lstm_cell_132_811078:	???+while/lstm_cell_132/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_132/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_132_811074_0while_lstm_cell_132_811076_0while_lstm_cell_132_811078_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810991?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_132/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_132/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_132/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_132/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_132_811074while_lstm_cell_132_811074_0":
while_lstm_cell_132_811076while_lstm_cell_132_811076_0":
while_lstm_cell_132_811078while_lstm_cell_132_811078_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_132/StatefulPartitionedCall+while/lstm_cell_132/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_812192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_812192___redundant_placeholder04
0while_while_cond_812192___redundant_placeholder14
0while_while_cond_812192___redundant_placeholder24
0while_while_cond_812192___redundant_placeholder3
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
J__inference_sequential_143_layer_call_and_return_conditional_losses_813946

inputsH
5lstm_429_lstm_cell_132_matmul_readvariableop_resource:	?J
7lstm_429_lstm_cell_132_matmul_1_readvariableop_resource:	d?E
6lstm_429_lstm_cell_132_biasadd_readvariableop_resource:	?H
5lstm_430_lstm_cell_133_matmul_readvariableop_resource:	d?J
7lstm_430_lstm_cell_133_matmul_1_readvariableop_resource:	2?E
6lstm_430_lstm_cell_133_biasadd_readvariableop_resource:	?G
5lstm_431_lstm_cell_134_matmul_readvariableop_resource:2(I
7lstm_431_lstm_cell_134_matmul_1_readvariableop_resource:
(D
6lstm_431_lstm_cell_134_biasadd_readvariableop_resource:(:
(dense_143_matmul_readvariableop_resource:
7
)dense_143_biasadd_readvariableop_resource:
identity?? dense_143/BiasAdd/ReadVariableOp?dense_143/MatMul/ReadVariableOp?-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp?,lstm_429/lstm_cell_132/MatMul/ReadVariableOp?.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp?lstm_429/while?-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp?,lstm_430/lstm_cell_133/MatMul/ReadVariableOp?.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp?lstm_430/while?-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp?,lstm_431/lstm_cell_134/MatMul/ReadVariableOp?.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp?lstm_431/whileD
lstm_429/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_429/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_429/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_429/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_sliceStridedSlicelstm_429/Shape:output:0%lstm_429/strided_slice/stack:output:0'lstm_429/strided_slice/stack_1:output:0'lstm_429/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_429/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_429/zeros/packedPacklstm_429/strided_slice:output:0 lstm_429/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_429/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_429/zerosFilllstm_429/zeros/packed:output:0lstm_429/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_429/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_429/zeros_1/packedPacklstm_429/strided_slice:output:0"lstm_429/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_429/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_429/zeros_1Fill lstm_429/zeros_1/packed:output:0lstm_429/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_429/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_429/transpose	Transposeinputs lstm_429/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_429/Shape_1Shapelstm_429/transpose:y:0*
T0*
_output_shapes
:h
lstm_429/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_429/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_429/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_slice_1StridedSlicelstm_429/Shape_1:output:0'lstm_429/strided_slice_1/stack:output:0)lstm_429/strided_slice_1/stack_1:output:0)lstm_429/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_429/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_429/TensorArrayV2TensorListReserve-lstm_429/TensorArrayV2/element_shape:output:0!lstm_429/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_429/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_429/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_429/transpose:y:0Glstm_429/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_429/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_429/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_429/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_slice_2StridedSlicelstm_429/transpose:y:0'lstm_429/strided_slice_2/stack:output:0)lstm_429/strided_slice_2/stack_1:output:0)lstm_429/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_429/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp5lstm_429_lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_429/lstm_cell_132/MatMulMatMul!lstm_429/strided_slice_2:output:04lstm_429/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp7lstm_429_lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_429/lstm_cell_132/MatMul_1MatMullstm_429/zeros:output:06lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_429/lstm_cell_132/addAddV2'lstm_429/lstm_cell_132/MatMul:product:0)lstm_429/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp6lstm_429_lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_429/lstm_cell_132/BiasAddBiasAddlstm_429/lstm_cell_132/add:z:05lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_429/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_429/lstm_cell_132/splitSplit/lstm_429/lstm_cell_132/split/split_dim:output:0'lstm_429/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_429/lstm_cell_132/SigmoidSigmoid%lstm_429/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_429/lstm_cell_132/Sigmoid_1Sigmoid%lstm_429/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/mulMul$lstm_429/lstm_cell_132/Sigmoid_1:y:0lstm_429/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_429/lstm_cell_132/ReluRelu%lstm_429/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/mul_1Mul"lstm_429/lstm_cell_132/Sigmoid:y:0)lstm_429/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/add_1AddV2lstm_429/lstm_cell_132/mul:z:0 lstm_429/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_429/lstm_cell_132/Sigmoid_2Sigmoid%lstm_429/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_429/lstm_cell_132/Relu_1Relu lstm_429/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/mul_2Mul$lstm_429/lstm_cell_132/Sigmoid_2:y:0+lstm_429/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_429/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_429/TensorArrayV2_1TensorListReserve/lstm_429/TensorArrayV2_1/element_shape:output:0!lstm_429/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_429/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_429/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_429/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_429/whileWhile$lstm_429/while/loop_counter:output:0*lstm_429/while/maximum_iterations:output:0lstm_429/time:output:0!lstm_429/TensorArrayV2_1:handle:0lstm_429/zeros:output:0lstm_429/zeros_1:output:0!lstm_429/strided_slice_1:output:0@lstm_429/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_429_lstm_cell_132_matmul_readvariableop_resource7lstm_429_lstm_cell_132_matmul_1_readvariableop_resource6lstm_429_lstm_cell_132_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_429_while_body_813578*&
condR
lstm_429_while_cond_813577*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_429/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_429/TensorArrayV2Stack/TensorListStackTensorListStacklstm_429/while:output:3Blstm_429/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_429/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_429/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_429/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_slice_3StridedSlice4lstm_429/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_429/strided_slice_3/stack:output:0)lstm_429/strided_slice_3/stack_1:output:0)lstm_429/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_429/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_429/transpose_1	Transpose4lstm_429/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_429/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_429/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_430/ShapeShapelstm_429/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_430/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_430/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_430/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_sliceStridedSlicelstm_430/Shape:output:0%lstm_430/strided_slice/stack:output:0'lstm_430/strided_slice/stack_1:output:0'lstm_430/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_430/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_430/zeros/packedPacklstm_430/strided_slice:output:0 lstm_430/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_430/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_430/zerosFilllstm_430/zeros/packed:output:0lstm_430/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_430/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_430/zeros_1/packedPacklstm_430/strided_slice:output:0"lstm_430/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_430/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_430/zeros_1Fill lstm_430/zeros_1/packed:output:0lstm_430/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_430/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_430/transpose	Transposelstm_429/transpose_1:y:0 lstm_430/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_430/Shape_1Shapelstm_430/transpose:y:0*
T0*
_output_shapes
:h
lstm_430/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_430/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_430/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_slice_1StridedSlicelstm_430/Shape_1:output:0'lstm_430/strided_slice_1/stack:output:0)lstm_430/strided_slice_1/stack_1:output:0)lstm_430/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_430/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_430/TensorArrayV2TensorListReserve-lstm_430/TensorArrayV2/element_shape:output:0!lstm_430/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_430/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_430/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_430/transpose:y:0Glstm_430/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_430/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_430/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_430/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_slice_2StridedSlicelstm_430/transpose:y:0'lstm_430/strided_slice_2/stack:output:0)lstm_430/strided_slice_2/stack_1:output:0)lstm_430/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_430/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp5lstm_430_lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_430/lstm_cell_133/MatMulMatMul!lstm_430/strided_slice_2:output:04lstm_430/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp7lstm_430_lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_430/lstm_cell_133/MatMul_1MatMullstm_430/zeros:output:06lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_430/lstm_cell_133/addAddV2'lstm_430/lstm_cell_133/MatMul:product:0)lstm_430/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp6lstm_430_lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_430/lstm_cell_133/BiasAddBiasAddlstm_430/lstm_cell_133/add:z:05lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_430/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_430/lstm_cell_133/splitSplit/lstm_430/lstm_cell_133/split/split_dim:output:0'lstm_430/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_430/lstm_cell_133/SigmoidSigmoid%lstm_430/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_430/lstm_cell_133/Sigmoid_1Sigmoid%lstm_430/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/mulMul$lstm_430/lstm_cell_133/Sigmoid_1:y:0lstm_430/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_430/lstm_cell_133/ReluRelu%lstm_430/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/mul_1Mul"lstm_430/lstm_cell_133/Sigmoid:y:0)lstm_430/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/add_1AddV2lstm_430/lstm_cell_133/mul:z:0 lstm_430/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_430/lstm_cell_133/Sigmoid_2Sigmoid%lstm_430/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_430/lstm_cell_133/Relu_1Relu lstm_430/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/mul_2Mul$lstm_430/lstm_cell_133/Sigmoid_2:y:0+lstm_430/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_430/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_430/TensorArrayV2_1TensorListReserve/lstm_430/TensorArrayV2_1/element_shape:output:0!lstm_430/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_430/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_430/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_430/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_430/whileWhile$lstm_430/while/loop_counter:output:0*lstm_430/while/maximum_iterations:output:0lstm_430/time:output:0!lstm_430/TensorArrayV2_1:handle:0lstm_430/zeros:output:0lstm_430/zeros_1:output:0!lstm_430/strided_slice_1:output:0@lstm_430/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_430_lstm_cell_133_matmul_readvariableop_resource7lstm_430_lstm_cell_133_matmul_1_readvariableop_resource6lstm_430_lstm_cell_133_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_430_while_body_813717*&
condR
lstm_430_while_cond_813716*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_430/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_430/TensorArrayV2Stack/TensorListStackTensorListStacklstm_430/while:output:3Blstm_430/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_430/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_430/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_430/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_slice_3StridedSlice4lstm_430/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_430/strided_slice_3/stack:output:0)lstm_430/strided_slice_3/stack_1:output:0)lstm_430/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_430/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_430/transpose_1	Transpose4lstm_430/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_430/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_430/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_431/ShapeShapelstm_430/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_431/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_431/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_431/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_sliceStridedSlicelstm_431/Shape:output:0%lstm_431/strided_slice/stack:output:0'lstm_431/strided_slice/stack_1:output:0'lstm_431/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_431/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_431/zeros/packedPacklstm_431/strided_slice:output:0 lstm_431/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_431/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_431/zerosFilllstm_431/zeros/packed:output:0lstm_431/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_431/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_431/zeros_1/packedPacklstm_431/strided_slice:output:0"lstm_431/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_431/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_431/zeros_1Fill lstm_431/zeros_1/packed:output:0lstm_431/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_431/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_431/transpose	Transposelstm_430/transpose_1:y:0 lstm_431/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_431/Shape_1Shapelstm_431/transpose:y:0*
T0*
_output_shapes
:h
lstm_431/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_431/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_431/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_slice_1StridedSlicelstm_431/Shape_1:output:0'lstm_431/strided_slice_1/stack:output:0)lstm_431/strided_slice_1/stack_1:output:0)lstm_431/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_431/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_431/TensorArrayV2TensorListReserve-lstm_431/TensorArrayV2/element_shape:output:0!lstm_431/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_431/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_431/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_431/transpose:y:0Glstm_431/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_431/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_431/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_431/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_slice_2StridedSlicelstm_431/transpose:y:0'lstm_431/strided_slice_2/stack:output:0)lstm_431/strided_slice_2/stack_1:output:0)lstm_431/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_431/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp5lstm_431_lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_431/lstm_cell_134/MatMulMatMul!lstm_431/strided_slice_2:output:04lstm_431/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp7lstm_431_lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_431/lstm_cell_134/MatMul_1MatMullstm_431/zeros:output:06lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_431/lstm_cell_134/addAddV2'lstm_431/lstm_cell_134/MatMul:product:0)lstm_431/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp6lstm_431_lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_431/lstm_cell_134/BiasAddBiasAddlstm_431/lstm_cell_134/add:z:05lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_431/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_431/lstm_cell_134/splitSplit/lstm_431/lstm_cell_134/split/split_dim:output:0'lstm_431/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_431/lstm_cell_134/SigmoidSigmoid%lstm_431/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_431/lstm_cell_134/Sigmoid_1Sigmoid%lstm_431/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/mulMul$lstm_431/lstm_cell_134/Sigmoid_1:y:0lstm_431/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_431/lstm_cell_134/ReluRelu%lstm_431/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/mul_1Mul"lstm_431/lstm_cell_134/Sigmoid:y:0)lstm_431/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/add_1AddV2lstm_431/lstm_cell_134/mul:z:0 lstm_431/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_431/lstm_cell_134/Sigmoid_2Sigmoid%lstm_431/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_431/lstm_cell_134/Relu_1Relu lstm_431/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/mul_2Mul$lstm_431/lstm_cell_134/Sigmoid_2:y:0+lstm_431/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_431/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_431/TensorArrayV2_1TensorListReserve/lstm_431/TensorArrayV2_1/element_shape:output:0!lstm_431/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_431/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_431/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_431/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_431/whileWhile$lstm_431/while/loop_counter:output:0*lstm_431/while/maximum_iterations:output:0lstm_431/time:output:0!lstm_431/TensorArrayV2_1:handle:0lstm_431/zeros:output:0lstm_431/zeros_1:output:0!lstm_431/strided_slice_1:output:0@lstm_431/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_431_lstm_cell_134_matmul_readvariableop_resource7lstm_431_lstm_cell_134_matmul_1_readvariableop_resource6lstm_431_lstm_cell_134_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_431_while_body_813856*&
condR
lstm_431_while_cond_813855*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_431/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_431/TensorArrayV2Stack/TensorListStackTensorListStacklstm_431/while:output:3Blstm_431/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_431/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_431/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_431/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_slice_3StridedSlice4lstm_431/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_431/strided_slice_3/stack:output:0)lstm_431/strided_slice_3/stack_1:output:0)lstm_431/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_431/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_431/transpose_1	Transpose4lstm_431/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_431/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_431/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_143/MatMulMatMul!lstm_431/strided_slice_3:output:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_143/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp.^lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp-^lstm_429/lstm_cell_132/MatMul/ReadVariableOp/^lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp^lstm_429/while.^lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp-^lstm_430/lstm_cell_133/MatMul/ReadVariableOp/^lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp^lstm_430/while.^lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp-^lstm_431/lstm_cell_134/MatMul/ReadVariableOp/^lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp^lstm_431/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp2^
-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp2\
,lstm_429/lstm_cell_132/MatMul/ReadVariableOp,lstm_429/lstm_cell_132/MatMul/ReadVariableOp2`
.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp2 
lstm_429/whilelstm_429/while2^
-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp2\
,lstm_430/lstm_cell_133/MatMul/ReadVariableOp,lstm_430/lstm_cell_133/MatMul/ReadVariableOp2`
.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp2 
lstm_430/whilelstm_430/while2^
-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp2\
,lstm_431/lstm_cell_134/MatMul/ReadVariableOp,lstm_431/lstm_cell_134/MatMul/ReadVariableOp2`
.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp2 
lstm_431/whilelstm_431/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_814192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_132_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_132_matmul_readvariableop_resource:	?G
4while_lstm_cell_132_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_132_biasadd_readvariableop_resource:	???*while/lstm_cell_132/BiasAdd/ReadVariableOp?)while/lstm_cell_132/MatMul/ReadVariableOp?+while/lstm_cell_132/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_132/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_132/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_132/addAddV2$while/lstm_cell_132/MatMul:product:0&while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_132/BiasAddBiasAddwhile/lstm_cell_132/add:z:02while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_132/splitSplit,while/lstm_cell_132/split/split_dim:output:0$while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_132/SigmoidSigmoid"while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_1Sigmoid"while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mulMul!while/lstm_cell_132/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_132/ReluRelu"while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_1Mulwhile/lstm_cell_132/Sigmoid:y:0&while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/add_1AddV2while/lstm_cell_132/mul:z:0while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_2Sigmoid"while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_132/Relu_1Reluwhile/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_2Mul!while/lstm_cell_132/Sigmoid_2:y:0(while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_132/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_132/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_132/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_132/BiasAdd/ReadVariableOp*^while/lstm_cell_132/MatMul/ReadVariableOp,^while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_132_biasadd_readvariableop_resource5while_lstm_cell_132_biasadd_readvariableop_resource_0"n
4while_lstm_cell_132_matmul_1_readvariableop_resource6while_lstm_cell_132_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_132_matmul_readvariableop_resource4while_lstm_cell_132_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_132/BiasAdd/ReadVariableOp*while/lstm_cell_132/BiasAdd/ReadVariableOp2V
)while/lstm_cell_132/MatMul/ReadVariableOp)while/lstm_cell_132/MatMul/ReadVariableOp2Z
+while/lstm_cell_132/MatMul_1/ReadVariableOp+while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_134_layer_call_fn_816026

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811545o
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
?
)__inference_lstm_430_layer_call_fn_814573
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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_811278|
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
while_cond_811749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_811749___redundant_placeholder04
0while_while_cond_811749___redundant_placeholder14
0while_while_cond_811749___redundant_placeholder24
0while_while_cond_811749___redundant_placeholder3
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
.__inference_lstm_cell_133_layer_call_fn_815928

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811195o
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
)sequential_143_lstm_429_while_cond_810409L
Hsequential_143_lstm_429_while_sequential_143_lstm_429_while_loop_counterR
Nsequential_143_lstm_429_while_sequential_143_lstm_429_while_maximum_iterations-
)sequential_143_lstm_429_while_placeholder/
+sequential_143_lstm_429_while_placeholder_1/
+sequential_143_lstm_429_while_placeholder_2/
+sequential_143_lstm_429_while_placeholder_3N
Jsequential_143_lstm_429_while_less_sequential_143_lstm_429_strided_slice_1d
`sequential_143_lstm_429_while_sequential_143_lstm_429_while_cond_810409___redundant_placeholder0d
`sequential_143_lstm_429_while_sequential_143_lstm_429_while_cond_810409___redundant_placeholder1d
`sequential_143_lstm_429_while_sequential_143_lstm_429_while_cond_810409___redundant_placeholder2d
`sequential_143_lstm_429_while_sequential_143_lstm_429_while_cond_810409___redundant_placeholder3*
&sequential_143_lstm_429_while_identity
?
"sequential_143/lstm_429/while/LessLess)sequential_143_lstm_429_while_placeholderJsequential_143_lstm_429_while_less_sequential_143_lstm_429_strided_slice_1*
T0*
_output_shapes
: {
&sequential_143/lstm_429/while/IdentityIdentity&sequential_143/lstm_429/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_143_lstm_429_while_identity/sequential_143/lstm_429/while/Identity:output:0*(
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
while_body_812739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_132_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_132_matmul_readvariableop_resource:	?G
4while_lstm_cell_132_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_132_biasadd_readvariableop_resource:	???*while/lstm_cell_132/BiasAdd/ReadVariableOp?)while/lstm_cell_132/MatMul/ReadVariableOp?+while/lstm_cell_132/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_132/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_132/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_132/addAddV2$while/lstm_cell_132/MatMul:product:0&while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_132/BiasAddBiasAddwhile/lstm_cell_132/add:z:02while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_132/splitSplit,while/lstm_cell_132/split/split_dim:output:0$while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_132/SigmoidSigmoid"while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_1Sigmoid"while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mulMul!while/lstm_cell_132/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_132/ReluRelu"while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_1Mulwhile/lstm_cell_132/Sigmoid:y:0&while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/add_1AddV2while/lstm_cell_132/mul:z:0while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_2Sigmoid"while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_132/Relu_1Reluwhile/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_2Mul!while/lstm_cell_132/Sigmoid_2:y:0(while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_132/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_132/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_132/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_132/BiasAdd/ReadVariableOp*^while/lstm_cell_132/MatMul/ReadVariableOp,^while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_132_biasadd_readvariableop_resource5while_lstm_cell_132_biasadd_readvariableop_resource_0"n
4while_lstm_cell_132_matmul_1_readvariableop_resource6while_lstm_cell_132_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_132_matmul_readvariableop_resource4while_lstm_cell_132_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_132/BiasAdd/ReadVariableOp*while/lstm_cell_132/BiasAdd/ReadVariableOp2V
)while/lstm_cell_132/MatMul/ReadVariableOp)while/lstm_cell_132/MatMul/ReadVariableOp2Z
+while/lstm_cell_132/MatMul_1/ReadVariableOp+while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_811892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_811892___redundant_placeholder04
0while_while_cond_811892___redundant_placeholder14
0while_while_cond_811892___redundant_placeholder24
0while_while_cond_811892___redundant_placeholder3
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
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810845

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
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811341

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
)__inference_lstm_431_layer_call_fn_815200
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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_811819o
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
)__inference_lstm_430_layer_call_fn_814584
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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_811469|
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
?"
?
while_body_811559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_134_811583_0:2(.
while_lstm_cell_134_811585_0:
(*
while_lstm_cell_134_811587_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_134_811583:2(,
while_lstm_cell_134_811585:
((
while_lstm_cell_134_811587:(??+while/lstm_cell_134/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_134/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_134_811583_0while_lstm_cell_134_811585_0while_lstm_cell_134_811587_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811545?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_134/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_134/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_134/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_134/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_134_811583while_lstm_cell_134_811583_0":
while_lstm_cell_134_811585while_lstm_cell_134_811585_0":
while_lstm_cell_134_811587while_lstm_cell_134_811587_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_134/StatefulPartitionedCall+while/lstm_cell_134/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_815424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_134_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_134_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_134_matmul_readvariableop_resource:2(F
4while_lstm_cell_134_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_134_biasadd_readvariableop_resource:(??*while/lstm_cell_134/BiasAdd/ReadVariableOp?)while/lstm_cell_134/MatMul/ReadVariableOp?+while/lstm_cell_134/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_134/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_134/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_134/addAddV2$while/lstm_cell_134/MatMul:product:0&while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_134/BiasAddBiasAddwhile/lstm_cell_134/add:z:02while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_134/splitSplit,while/lstm_cell_134/split/split_dim:output:0$while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_134/SigmoidSigmoid"while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_1Sigmoid"while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mulMul!while/lstm_cell_134/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_134/ReluRelu"while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_1Mulwhile/lstm_cell_134/Sigmoid:y:0&while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/add_1AddV2while/lstm_cell_134/mul:z:0while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_2Sigmoid"while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_134/Relu_1Reluwhile/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_2Mul!while/lstm_cell_134/Sigmoid_2:y:0(while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_134/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_134/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_134/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_134/BiasAdd/ReadVariableOp*^while/lstm_cell_134/MatMul/ReadVariableOp,^while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_134_biasadd_readvariableop_resource5while_lstm_cell_134_biasadd_readvariableop_resource_0"n
4while_lstm_cell_134_matmul_1_readvariableop_resource6while_lstm_cell_134_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_134_matmul_readvariableop_resource4while_lstm_cell_134_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_134/BiasAdd/ReadVariableOp*while/lstm_cell_134/BiasAdd/ReadVariableOp2V
)while/lstm_cell_134/MatMul/ReadVariableOp)while/lstm_cell_134/MatMul/ReadVariableOp2Z
+while/lstm_cell_134/MatMul_1/ReadVariableOp+while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_815977

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
?C
?

lstm_429_while_body_813578.
*lstm_429_while_lstm_429_while_loop_counter4
0lstm_429_while_lstm_429_while_maximum_iterations
lstm_429_while_placeholder 
lstm_429_while_placeholder_1 
lstm_429_while_placeholder_2 
lstm_429_while_placeholder_3-
)lstm_429_while_lstm_429_strided_slice_1_0i
elstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0:	?R
?lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?M
>lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
lstm_429_while_identity
lstm_429_while_identity_1
lstm_429_while_identity_2
lstm_429_while_identity_3
lstm_429_while_identity_4
lstm_429_while_identity_5+
'lstm_429_while_lstm_429_strided_slice_1g
clstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensorN
;lstm_429_while_lstm_cell_132_matmul_readvariableop_resource:	?P
=lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource:	d?K
<lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource:	???3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp?2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp?4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp?
@lstm_429/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_429/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensor_0lstm_429_while_placeholderIlstm_429/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp=lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_429/while/lstm_cell_132/MatMulMatMul9lstm_429/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp?lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_429/while/lstm_cell_132/MatMul_1MatMullstm_429_while_placeholder_2<lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_429/while/lstm_cell_132/addAddV2-lstm_429/while/lstm_cell_132/MatMul:product:0/lstm_429/while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp>lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_429/while/lstm_cell_132/BiasAddBiasAdd$lstm_429/while/lstm_cell_132/add:z:0;lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_429/while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_429/while/lstm_cell_132/splitSplit5lstm_429/while/lstm_cell_132/split/split_dim:output:0-lstm_429/while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_429/while/lstm_cell_132/SigmoidSigmoid+lstm_429/while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_429/while/lstm_cell_132/Sigmoid_1Sigmoid+lstm_429/while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_429/while/lstm_cell_132/mulMul*lstm_429/while/lstm_cell_132/Sigmoid_1:y:0lstm_429_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_429/while/lstm_cell_132/ReluRelu+lstm_429/while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_429/while/lstm_cell_132/mul_1Mul(lstm_429/while/lstm_cell_132/Sigmoid:y:0/lstm_429/while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_429/while/lstm_cell_132/add_1AddV2$lstm_429/while/lstm_cell_132/mul:z:0&lstm_429/while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_429/while/lstm_cell_132/Sigmoid_2Sigmoid+lstm_429/while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_429/while/lstm_cell_132/Relu_1Relu&lstm_429/while/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_429/while/lstm_cell_132/mul_2Mul*lstm_429/while/lstm_cell_132/Sigmoid_2:y:01lstm_429/while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_429/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_429_while_placeholder_1lstm_429_while_placeholder&lstm_429/while/lstm_cell_132/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_429/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_429/while/addAddV2lstm_429_while_placeholderlstm_429/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_429/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_429/while/add_1AddV2*lstm_429_while_lstm_429_while_loop_counterlstm_429/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_429/while/IdentityIdentitylstm_429/while/add_1:z:0^lstm_429/while/NoOp*
T0*
_output_shapes
: ?
lstm_429/while/Identity_1Identity0lstm_429_while_lstm_429_while_maximum_iterations^lstm_429/while/NoOp*
T0*
_output_shapes
: t
lstm_429/while/Identity_2Identitylstm_429/while/add:z:0^lstm_429/while/NoOp*
T0*
_output_shapes
: ?
lstm_429/while/Identity_3IdentityClstm_429/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_429/while/NoOp*
T0*
_output_shapes
: ?
lstm_429/while/Identity_4Identity&lstm_429/while/lstm_cell_132/mul_2:z:0^lstm_429/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_429/while/Identity_5Identity&lstm_429/while/lstm_cell_132/add_1:z:0^lstm_429/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_429/while/NoOpNoOp4^lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp3^lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp5^lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_429_while_identity lstm_429/while/Identity:output:0"?
lstm_429_while_identity_1"lstm_429/while/Identity_1:output:0"?
lstm_429_while_identity_2"lstm_429/while/Identity_2:output:0"?
lstm_429_while_identity_3"lstm_429/while/Identity_3:output:0"?
lstm_429_while_identity_4"lstm_429/while/Identity_4:output:0"?
lstm_429_while_identity_5"lstm_429/while/Identity_5:output:0"T
'lstm_429_while_lstm_429_strided_slice_1)lstm_429_while_lstm_429_strided_slice_1_0"~
<lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource>lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0"?
=lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource?lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0"|
;lstm_429_while_lstm_cell_132_matmul_readvariableop_resource=lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0"?
clstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensorelstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp2h
2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp2l
4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_814664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_814664___redundant_placeholder04
0while_while_cond_814664___redundant_placeholder14
0while_while_cond_814664___redundant_placeholder24
0while_while_cond_814664___redundant_placeholder3
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
lstm_431_while_cond_813855.
*lstm_431_while_lstm_431_while_loop_counter4
0lstm_431_while_lstm_431_while_maximum_iterations
lstm_431_while_placeholder 
lstm_431_while_placeholder_1 
lstm_431_while_placeholder_2 
lstm_431_while_placeholder_30
,lstm_431_while_less_lstm_431_strided_slice_1F
Blstm_431_while_lstm_431_while_cond_813855___redundant_placeholder0F
Blstm_431_while_lstm_431_while_cond_813855___redundant_placeholder1F
Blstm_431_while_lstm_431_while_cond_813855___redundant_placeholder2F
Blstm_431_while_lstm_431_while_cond_813855___redundant_placeholder3
lstm_431_while_identity
?
lstm_431/while/LessLesslstm_431_while_placeholder,lstm_431_while_less_lstm_431_strided_slice_1*
T0*
_output_shapes
: ]
lstm_431/while/IdentityIdentitylstm_431/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_431_while_identity lstm_431/while/Identity:output:0*(
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
while_cond_815093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_815093___redundant_placeholder04
0while_while_cond_815093___redundant_placeholder14
0while_while_cond_815093___redundant_placeholder24
0while_while_cond_815093___redundant_placeholder3
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
while_body_812193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_134_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_134_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_134_matmul_readvariableop_resource:2(F
4while_lstm_cell_134_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_134_biasadd_readvariableop_resource:(??*while/lstm_cell_134/BiasAdd/ReadVariableOp?)while/lstm_cell_134/MatMul/ReadVariableOp?+while/lstm_cell_134/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_134/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_134/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_134/addAddV2$while/lstm_cell_134/MatMul:product:0&while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_134/BiasAddBiasAddwhile/lstm_cell_134/add:z:02while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_134/splitSplit,while/lstm_cell_134/split/split_dim:output:0$while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_134/SigmoidSigmoid"while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_1Sigmoid"while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mulMul!while/lstm_cell_134/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_134/ReluRelu"while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_1Mulwhile/lstm_cell_134/Sigmoid:y:0&while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/add_1AddV2while/lstm_cell_134/mul:z:0while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_2Sigmoid"while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_134/Relu_1Reluwhile/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_2Mul!while/lstm_cell_134/Sigmoid_2:y:0(while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_134/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_134/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_134/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_134/BiasAdd/ReadVariableOp*^while/lstm_cell_134/MatMul/ReadVariableOp,^while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_134_biasadd_readvariableop_resource5while_lstm_cell_134_biasadd_readvariableop_resource_0"n
4while_lstm_cell_134_matmul_1_readvariableop_resource6while_lstm_cell_134_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_134_matmul_readvariableop_resource4while_lstm_cell_134_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_134/BiasAdd/ReadVariableOp*while/lstm_cell_134/BiasAdd/ReadVariableOp2V
)while/lstm_cell_134/MatMul/ReadVariableOp)while/lstm_cell_134/MatMul/ReadVariableOp2Z
+while/lstm_cell_134/MatMul_1/ReadVariableOp+while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_431_while_body_813429.
*lstm_431_while_lstm_431_while_loop_counter4
0lstm_431_while_lstm_431_while_maximum_iterations
lstm_431_while_placeholder 
lstm_431_while_placeholder_1 
lstm_431_while_placeholder_2 
lstm_431_while_placeholder_3-
)lstm_431_while_lstm_431_strided_slice_1_0i
elstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0:2(Q
?lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(L
>lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0:(
lstm_431_while_identity
lstm_431_while_identity_1
lstm_431_while_identity_2
lstm_431_while_identity_3
lstm_431_while_identity_4
lstm_431_while_identity_5+
'lstm_431_while_lstm_431_strided_slice_1g
clstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensorM
;lstm_431_while_lstm_cell_134_matmul_readvariableop_resource:2(O
=lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource:
(J
<lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource:(??3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp?2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp?4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp?
@lstm_431/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_431/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensor_0lstm_431_while_placeholderIlstm_431/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp=lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_431/while/lstm_cell_134/MatMulMatMul9lstm_431/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp?lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_431/while/lstm_cell_134/MatMul_1MatMullstm_431_while_placeholder_2<lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_431/while/lstm_cell_134/addAddV2-lstm_431/while/lstm_cell_134/MatMul:product:0/lstm_431/while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp>lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_431/while/lstm_cell_134/BiasAddBiasAdd$lstm_431/while/lstm_cell_134/add:z:0;lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_431/while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_431/while/lstm_cell_134/splitSplit5lstm_431/while/lstm_cell_134/split/split_dim:output:0-lstm_431/while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_431/while/lstm_cell_134/SigmoidSigmoid+lstm_431/while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_431/while/lstm_cell_134/Sigmoid_1Sigmoid+lstm_431/while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_431/while/lstm_cell_134/mulMul*lstm_431/while/lstm_cell_134/Sigmoid_1:y:0lstm_431_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_431/while/lstm_cell_134/ReluRelu+lstm_431/while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_431/while/lstm_cell_134/mul_1Mul(lstm_431/while/lstm_cell_134/Sigmoid:y:0/lstm_431/while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_431/while/lstm_cell_134/add_1AddV2$lstm_431/while/lstm_cell_134/mul:z:0&lstm_431/while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_431/while/lstm_cell_134/Sigmoid_2Sigmoid+lstm_431/while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_431/while/lstm_cell_134/Relu_1Relu&lstm_431/while/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_431/while/lstm_cell_134/mul_2Mul*lstm_431/while/lstm_cell_134/Sigmoid_2:y:01lstm_431/while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_431/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_431_while_placeholder_1lstm_431_while_placeholder&lstm_431/while/lstm_cell_134/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_431/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_431/while/addAddV2lstm_431_while_placeholderlstm_431/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_431/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_431/while/add_1AddV2*lstm_431_while_lstm_431_while_loop_counterlstm_431/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_431/while/IdentityIdentitylstm_431/while/add_1:z:0^lstm_431/while/NoOp*
T0*
_output_shapes
: ?
lstm_431/while/Identity_1Identity0lstm_431_while_lstm_431_while_maximum_iterations^lstm_431/while/NoOp*
T0*
_output_shapes
: t
lstm_431/while/Identity_2Identitylstm_431/while/add:z:0^lstm_431/while/NoOp*
T0*
_output_shapes
: ?
lstm_431/while/Identity_3IdentityClstm_431/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_431/while/NoOp*
T0*
_output_shapes
: ?
lstm_431/while/Identity_4Identity&lstm_431/while/lstm_cell_134/mul_2:z:0^lstm_431/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_431/while/Identity_5Identity&lstm_431/while/lstm_cell_134/add_1:z:0^lstm_431/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_431/while/NoOpNoOp4^lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp3^lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp5^lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_431_while_identity lstm_431/while/Identity:output:0"?
lstm_431_while_identity_1"lstm_431/while/Identity_1:output:0"?
lstm_431_while_identity_2"lstm_431/while/Identity_2:output:0"?
lstm_431_while_identity_3"lstm_431/while/Identity_3:output:0"?
lstm_431_while_identity_4"lstm_431/while/Identity_4:output:0"?
lstm_431_while_identity_5"lstm_431/while/Identity_5:output:0"T
'lstm_431_while_lstm_431_strided_slice_1)lstm_431_while_lstm_431_strided_slice_1_0"~
<lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource>lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0"?
=lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource?lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0"|
;lstm_431_while_lstm_cell_134_matmul_readvariableop_resource=lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0"?
clstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensorelstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp2h
2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp2l
4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_430_layer_call_fn_814595

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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_812127s
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
)__inference_lstm_429_layer_call_fn_813979

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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_811977s
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
while_cond_815566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_815566___redundant_placeholder04
0while_while_cond_815566___redundant_placeholder14
0while_while_cond_815566___redundant_placeholder24
0while_while_cond_815566___redundant_placeholder3
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
E__inference_dense_143_layer_call_and_return_conditional_losses_812295

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
while_cond_811208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_811208___redundant_placeholder04
0while_while_cond_811208___redundant_placeholder14
0while_while_cond_811208___redundant_placeholder24
0while_while_cond_811208___redundant_placeholder3
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
)__inference_lstm_429_layer_call_fn_813957
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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_810928|
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_814562

inputs?
,lstm_cell_132_matmul_readvariableop_resource:	?A
.lstm_cell_132_matmul_1_readvariableop_resource:	d?<
-lstm_cell_132_biasadd_readvariableop_resource:	?
identity??$lstm_cell_132/BiasAdd/ReadVariableOp?#lstm_cell_132/MatMul/ReadVariableOp?%lstm_cell_132/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_132/MatMul/ReadVariableOpReadVariableOp,lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_132/MatMulMatMulstrided_slice_2:output:0+lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_132/MatMul_1MatMulzeros:output:0-lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_132/addAddV2lstm_cell_132/MatMul:product:0 lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_132/BiasAddBiasAddlstm_cell_132/add:z:0,lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_132/splitSplit&lstm_cell_132/split/split_dim:output:0lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_132/SigmoidSigmoidlstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_1Sigmoidlstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_132/mulMullstm_cell_132/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_132/ReluRelulstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_1Mullstm_cell_132/Sigmoid:y:0 lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_132/add_1AddV2lstm_cell_132/mul:z:0lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_2Sigmoidlstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_132/Relu_1Relulstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_2Mullstm_cell_132/Sigmoid_2:y:0"lstm_cell_132/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_132_matmul_readvariableop_resource.lstm_cell_132_matmul_1_readvariableop_resource-lstm_cell_132_biasadd_readvariableop_resource*
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
bodyR
while_body_814478*
condR
while_cond_814477*K
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
NoOpNoOp%^lstm_cell_132/BiasAdd/ReadVariableOp$^lstm_cell_132/MatMul/ReadVariableOp&^lstm_cell_132/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_132/BiasAdd/ReadVariableOp$lstm_cell_132/BiasAdd/ReadVariableOp2J
#lstm_cell_132/MatMul/ReadVariableOp#lstm_cell_132/MatMul/ReadVariableOp2N
%lstm_cell_132/MatMul_1/ReadVariableOp%lstm_cell_132/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_815879

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
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810991

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
while_cond_814477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_814477___redundant_placeholder04
0while_while_cond_814477___redundant_placeholder14
0while_while_cond_814477___redundant_placeholder24
0while_while_cond_814477___redundant_placeholder3
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
lstm_431_while_cond_813428.
*lstm_431_while_lstm_431_while_loop_counter4
0lstm_431_while_lstm_431_while_maximum_iterations
lstm_431_while_placeholder 
lstm_431_while_placeholder_1 
lstm_431_while_placeholder_2 
lstm_431_while_placeholder_30
,lstm_431_while_less_lstm_431_strided_slice_1F
Blstm_431_while_lstm_431_while_cond_813428___redundant_placeholder0F
Blstm_431_while_lstm_431_while_cond_813428___redundant_placeholder1F
Blstm_431_while_lstm_431_while_cond_813428___redundant_placeholder2F
Blstm_431_while_lstm_431_while_cond_813428___redundant_placeholder3
lstm_431_while_identity
?
lstm_431/while/LessLesslstm_431_while_placeholder,lstm_431_while_less_lstm_431_strided_slice_1*
T0*
_output_shapes
: ]
lstm_431/while/IdentityIdentitylstm_431/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_431_while_identity lstm_431/while/Identity:output:0*(
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
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_815911

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
?
?
)__inference_lstm_431_layer_call_fn_815222

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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_812493o
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
?C
?

lstm_431_while_body_813856.
*lstm_431_while_lstm_431_while_loop_counter4
0lstm_431_while_lstm_431_while_maximum_iterations
lstm_431_while_placeholder 
lstm_431_while_placeholder_1 
lstm_431_while_placeholder_2 
lstm_431_while_placeholder_3-
)lstm_431_while_lstm_431_strided_slice_1_0i
elstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0:2(Q
?lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(L
>lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0:(
lstm_431_while_identity
lstm_431_while_identity_1
lstm_431_while_identity_2
lstm_431_while_identity_3
lstm_431_while_identity_4
lstm_431_while_identity_5+
'lstm_431_while_lstm_431_strided_slice_1g
clstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensorM
;lstm_431_while_lstm_cell_134_matmul_readvariableop_resource:2(O
=lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource:
(J
<lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource:(??3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp?2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp?4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp?
@lstm_431/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_431/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensor_0lstm_431_while_placeholderIlstm_431/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp=lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_431/while/lstm_cell_134/MatMulMatMul9lstm_431/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp?lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_431/while/lstm_cell_134/MatMul_1MatMullstm_431_while_placeholder_2<lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_431/while/lstm_cell_134/addAddV2-lstm_431/while/lstm_cell_134/MatMul:product:0/lstm_431/while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp>lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_431/while/lstm_cell_134/BiasAddBiasAdd$lstm_431/while/lstm_cell_134/add:z:0;lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_431/while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_431/while/lstm_cell_134/splitSplit5lstm_431/while/lstm_cell_134/split/split_dim:output:0-lstm_431/while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_431/while/lstm_cell_134/SigmoidSigmoid+lstm_431/while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_431/while/lstm_cell_134/Sigmoid_1Sigmoid+lstm_431/while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_431/while/lstm_cell_134/mulMul*lstm_431/while/lstm_cell_134/Sigmoid_1:y:0lstm_431_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_431/while/lstm_cell_134/ReluRelu+lstm_431/while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_431/while/lstm_cell_134/mul_1Mul(lstm_431/while/lstm_cell_134/Sigmoid:y:0/lstm_431/while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_431/while/lstm_cell_134/add_1AddV2$lstm_431/while/lstm_cell_134/mul:z:0&lstm_431/while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_431/while/lstm_cell_134/Sigmoid_2Sigmoid+lstm_431/while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_431/while/lstm_cell_134/Relu_1Relu&lstm_431/while/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_431/while/lstm_cell_134/mul_2Mul*lstm_431/while/lstm_cell_134/Sigmoid_2:y:01lstm_431/while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_431/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_431_while_placeholder_1lstm_431_while_placeholder&lstm_431/while/lstm_cell_134/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_431/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_431/while/addAddV2lstm_431_while_placeholderlstm_431/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_431/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_431/while/add_1AddV2*lstm_431_while_lstm_431_while_loop_counterlstm_431/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_431/while/IdentityIdentitylstm_431/while/add_1:z:0^lstm_431/while/NoOp*
T0*
_output_shapes
: ?
lstm_431/while/Identity_1Identity0lstm_431_while_lstm_431_while_maximum_iterations^lstm_431/while/NoOp*
T0*
_output_shapes
: t
lstm_431/while/Identity_2Identitylstm_431/while/add:z:0^lstm_431/while/NoOp*
T0*
_output_shapes
: ?
lstm_431/while/Identity_3IdentityClstm_431/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_431/while/NoOp*
T0*
_output_shapes
: ?
lstm_431/while/Identity_4Identity&lstm_431/while/lstm_cell_134/mul_2:z:0^lstm_431/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_431/while/Identity_5Identity&lstm_431/while/lstm_cell_134/add_1:z:0^lstm_431/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_431/while/NoOpNoOp4^lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp3^lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp5^lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_431_while_identity lstm_431/while/Identity:output:0"?
lstm_431_while_identity_1"lstm_431/while/Identity_1:output:0"?
lstm_431_while_identity_2"lstm_431/while/Identity_2:output:0"?
lstm_431_while_identity_3"lstm_431/while/Identity_3:output:0"?
lstm_431_while_identity_4"lstm_431/while/Identity_4:output:0"?
lstm_431_while_identity_5"lstm_431/while/Identity_5:output:0"T
'lstm_431_while_lstm_431_strided_slice_1)lstm_431_while_lstm_431_strided_slice_1_0"~
<lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource>lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0"?
=lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource?lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0"|
;lstm_431_while_lstm_cell_134_matmul_readvariableop_resource=lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0"?
clstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensorelstm_431_while_tensorarrayv2read_tensorlistgetitem_lstm_431_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp3lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp2h
2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp2lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp2l
4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp4lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_815280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_815280___redundant_placeholder04
0while_while_cond_815280___redundant_placeholder14
0while_while_cond_815280___redundant_placeholder24
0while_while_cond_815280___redundant_placeholder3
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_812493

inputs>
,lstm_cell_134_matmul_readvariableop_resource:2(@
.lstm_cell_134_matmul_1_readvariableop_resource:
(;
-lstm_cell_134_biasadd_readvariableop_resource:(
identity??$lstm_cell_134/BiasAdd/ReadVariableOp?#lstm_cell_134/MatMul/ReadVariableOp?%lstm_cell_134/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_134/MatMul/ReadVariableOpReadVariableOp,lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_134/MatMulMatMulstrided_slice_2:output:0+lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_134/MatMul_1MatMulzeros:output:0-lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_134/addAddV2lstm_cell_134/MatMul:product:0 lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_134/BiasAddBiasAddlstm_cell_134/add:z:0,lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_134/splitSplit&lstm_cell_134/split/split_dim:output:0lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_134/SigmoidSigmoidlstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_1Sigmoidlstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_134/mulMullstm_cell_134/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_134/ReluRelulstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_1Mullstm_cell_134/Sigmoid:y:0 lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_134/add_1AddV2lstm_cell_134/mul:z:0lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_2Sigmoidlstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_134/Relu_1Relulstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_2Mullstm_cell_134/Sigmoid_2:y:0"lstm_cell_134/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_134_matmul_readvariableop_resource.lstm_cell_134_matmul_1_readvariableop_resource-lstm_cell_134_biasadd_readvariableop_resource*
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
bodyR
while_body_812409*
condR
while_cond_812408*K
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
NoOpNoOp%^lstm_cell_134/BiasAdd/ReadVariableOp$^lstm_cell_134/MatMul/ReadVariableOp&^lstm_cell_134/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_134/BiasAdd/ReadVariableOp$lstm_cell_134/BiasAdd/ReadVariableOp2J
#lstm_cell_134/MatMul/ReadVariableOp#lstm_cell_134/MatMul/ReadVariableOp2N
%lstm_cell_134/MatMul_1/ReadVariableOp%lstm_cell_134/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)sequential_143_lstm_430_while_cond_810548L
Hsequential_143_lstm_430_while_sequential_143_lstm_430_while_loop_counterR
Nsequential_143_lstm_430_while_sequential_143_lstm_430_while_maximum_iterations-
)sequential_143_lstm_430_while_placeholder/
+sequential_143_lstm_430_while_placeholder_1/
+sequential_143_lstm_430_while_placeholder_2/
+sequential_143_lstm_430_while_placeholder_3N
Jsequential_143_lstm_430_while_less_sequential_143_lstm_430_strided_slice_1d
`sequential_143_lstm_430_while_sequential_143_lstm_430_while_cond_810548___redundant_placeholder0d
`sequential_143_lstm_430_while_sequential_143_lstm_430_while_cond_810548___redundant_placeholder1d
`sequential_143_lstm_430_while_sequential_143_lstm_430_while_cond_810548___redundant_placeholder2d
`sequential_143_lstm_430_while_sequential_143_lstm_430_while_cond_810548___redundant_placeholder3*
&sequential_143_lstm_430_while_identity
?
"sequential_143/lstm_430/while/LessLess)sequential_143_lstm_430_while_placeholderJsequential_143_lstm_430_while_less_sequential_143_lstm_430_strided_slice_1*
T0*
_output_shapes
: {
&sequential_143/lstm_430/while/IdentityIdentity&sequential_143/lstm_430/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_143_lstm_430_while_identity/sequential_143/lstm_430/while/Identity:output:0*(
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
while_cond_814048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_814048___redundant_placeholder04
0while_while_cond_814048___redundant_placeholder14
0while_while_cond_814048___redundant_placeholder24
0while_while_cond_814048___redundant_placeholder3
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
)__inference_lstm_429_layer_call_fn_813990

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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_812823s
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
while_cond_815423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_815423___redundant_placeholder04
0while_while_cond_815423___redundant_placeholder14
0while_while_cond_815423___redundant_placeholder24
0while_while_cond_815423___redundant_placeholder3
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
)sequential_143_lstm_431_while_cond_810687L
Hsequential_143_lstm_431_while_sequential_143_lstm_431_while_loop_counterR
Nsequential_143_lstm_431_while_sequential_143_lstm_431_while_maximum_iterations-
)sequential_143_lstm_431_while_placeholder/
+sequential_143_lstm_431_while_placeholder_1/
+sequential_143_lstm_431_while_placeholder_2/
+sequential_143_lstm_431_while_placeholder_3N
Jsequential_143_lstm_431_while_less_sequential_143_lstm_431_strided_slice_1d
`sequential_143_lstm_431_while_sequential_143_lstm_431_while_cond_810687___redundant_placeholder0d
`sequential_143_lstm_431_while_sequential_143_lstm_431_while_cond_810687___redundant_placeholder1d
`sequential_143_lstm_431_while_sequential_143_lstm_431_while_cond_810687___redundant_placeholder2d
`sequential_143_lstm_431_while_sequential_143_lstm_431_while_cond_810687___redundant_placeholder3*
&sequential_143_lstm_431_while_identity
?
"sequential_143/lstm_431/while/LessLess)sequential_143_lstm_431_while_placeholderJsequential_143_lstm_431_while_less_sequential_143_lstm_431_strided_slice_1*
T0*
_output_shapes
: {
&sequential_143/lstm_431/while/IdentityIdentity&sequential_143/lstm_431/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_143_lstm_431_while_identity/sequential_143/lstm_431/while/Identity:output:0*(
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_812823

inputs?
,lstm_cell_132_matmul_readvariableop_resource:	?A
.lstm_cell_132_matmul_1_readvariableop_resource:	d?<
-lstm_cell_132_biasadd_readvariableop_resource:	?
identity??$lstm_cell_132/BiasAdd/ReadVariableOp?#lstm_cell_132/MatMul/ReadVariableOp?%lstm_cell_132/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_132/MatMul/ReadVariableOpReadVariableOp,lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_132/MatMulMatMulstrided_slice_2:output:0+lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_132/MatMul_1MatMulzeros:output:0-lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_132/addAddV2lstm_cell_132/MatMul:product:0 lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_132/BiasAddBiasAddlstm_cell_132/add:z:0,lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_132/splitSplit&lstm_cell_132/split/split_dim:output:0lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_132/SigmoidSigmoidlstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_1Sigmoidlstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_132/mulMullstm_cell_132/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_132/ReluRelulstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_1Mullstm_cell_132/Sigmoid:y:0 lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_132/add_1AddV2lstm_cell_132/mul:z:0lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_2Sigmoidlstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_132/Relu_1Relulstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_2Mullstm_cell_132/Sigmoid_2:y:0"lstm_cell_132/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_132_matmul_readvariableop_resource.lstm_cell_132_matmul_1_readvariableop_resource-lstm_cell_132_biasadd_readvariableop_resource*
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
bodyR
while_body_812739*
condR
while_cond_812738*K
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
NoOpNoOp%^lstm_cell_132/BiasAdd/ReadVariableOp$^lstm_cell_132/MatMul/ReadVariableOp&^lstm_cell_132/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_132/BiasAdd/ReadVariableOp$lstm_cell_132/BiasAdd/ReadVariableOp2J
#lstm_cell_132/MatMul/ReadVariableOp#lstm_cell_132/MatMul/ReadVariableOp2N
%lstm_cell_132/MatMul_1/ReadVariableOp%lstm_cell_132/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
)sequential_143_lstm_429_while_body_810410L
Hsequential_143_lstm_429_while_sequential_143_lstm_429_while_loop_counterR
Nsequential_143_lstm_429_while_sequential_143_lstm_429_while_maximum_iterations-
)sequential_143_lstm_429_while_placeholder/
+sequential_143_lstm_429_while_placeholder_1/
+sequential_143_lstm_429_while_placeholder_2/
+sequential_143_lstm_429_while_placeholder_3K
Gsequential_143_lstm_429_while_sequential_143_lstm_429_strided_slice_1_0?
?sequential_143_lstm_429_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_429_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_143_lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0:	?a
Nsequential_143_lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?\
Msequential_143_lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0:	?*
&sequential_143_lstm_429_while_identity,
(sequential_143_lstm_429_while_identity_1,
(sequential_143_lstm_429_while_identity_2,
(sequential_143_lstm_429_while_identity_3,
(sequential_143_lstm_429_while_identity_4,
(sequential_143_lstm_429_while_identity_5I
Esequential_143_lstm_429_while_sequential_143_lstm_429_strided_slice_1?
?sequential_143_lstm_429_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_429_tensorarrayunstack_tensorlistfromtensor]
Jsequential_143_lstm_429_while_lstm_cell_132_matmul_readvariableop_resource:	?_
Lsequential_143_lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource:	d?Z
Ksequential_143_lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource:	???Bsequential_143/lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp?Asequential_143/lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp?Csequential_143/lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp?
Osequential_143/lstm_429/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_143/lstm_429/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_143_lstm_429_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_429_tensorarrayunstack_tensorlistfromtensor_0)sequential_143_lstm_429_while_placeholderXsequential_143/lstm_429/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_143/lstm_429/while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOpLsequential_143_lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_143/lstm_429/while/lstm_cell_132/MatMulMatMulHsequential_143/lstm_429/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_143/lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_143/lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOpNsequential_143_lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_143/lstm_429/while/lstm_cell_132/MatMul_1MatMul+sequential_143_lstm_429_while_placeholder_2Ksequential_143/lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_143/lstm_429/while/lstm_cell_132/addAddV2<sequential_143/lstm_429/while/lstm_cell_132/MatMul:product:0>sequential_143/lstm_429/while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_143/lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOpMsequential_143_lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_143/lstm_429/while/lstm_cell_132/BiasAddBiasAdd3sequential_143/lstm_429/while/lstm_cell_132/add:z:0Jsequential_143/lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_143/lstm_429/while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_143/lstm_429/while/lstm_cell_132/splitSplitDsequential_143/lstm_429/while/lstm_cell_132/split/split_dim:output:0<sequential_143/lstm_429/while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_143/lstm_429/while/lstm_cell_132/SigmoidSigmoid:sequential_143/lstm_429/while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_143/lstm_429/while/lstm_cell_132/Sigmoid_1Sigmoid:sequential_143/lstm_429/while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_143/lstm_429/while/lstm_cell_132/mulMul9sequential_143/lstm_429/while/lstm_cell_132/Sigmoid_1:y:0+sequential_143_lstm_429_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_143/lstm_429/while/lstm_cell_132/ReluRelu:sequential_143/lstm_429/while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_143/lstm_429/while/lstm_cell_132/mul_1Mul7sequential_143/lstm_429/while/lstm_cell_132/Sigmoid:y:0>sequential_143/lstm_429/while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_143/lstm_429/while/lstm_cell_132/add_1AddV23sequential_143/lstm_429/while/lstm_cell_132/mul:z:05sequential_143/lstm_429/while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_143/lstm_429/while/lstm_cell_132/Sigmoid_2Sigmoid:sequential_143/lstm_429/while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_143/lstm_429/while/lstm_cell_132/Relu_1Relu5sequential_143/lstm_429/while/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_143/lstm_429/while/lstm_cell_132/mul_2Mul9sequential_143/lstm_429/while/lstm_cell_132/Sigmoid_2:y:0@sequential_143/lstm_429/while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_143/lstm_429/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_143_lstm_429_while_placeholder_1)sequential_143_lstm_429_while_placeholder5sequential_143/lstm_429/while/lstm_cell_132/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_143/lstm_429/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_143/lstm_429/while/addAddV2)sequential_143_lstm_429_while_placeholder,sequential_143/lstm_429/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_143/lstm_429/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_143/lstm_429/while/add_1AddV2Hsequential_143_lstm_429_while_sequential_143_lstm_429_while_loop_counter.sequential_143/lstm_429/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_143/lstm_429/while/IdentityIdentity'sequential_143/lstm_429/while/add_1:z:0#^sequential_143/lstm_429/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_429/while/Identity_1IdentityNsequential_143_lstm_429_while_sequential_143_lstm_429_while_maximum_iterations#^sequential_143/lstm_429/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_429/while/Identity_2Identity%sequential_143/lstm_429/while/add:z:0#^sequential_143/lstm_429/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_429/while/Identity_3IdentityRsequential_143/lstm_429/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_143/lstm_429/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_429/while/Identity_4Identity5sequential_143/lstm_429/while/lstm_cell_132/mul_2:z:0#^sequential_143/lstm_429/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_143/lstm_429/while/Identity_5Identity5sequential_143/lstm_429/while/lstm_cell_132/add_1:z:0#^sequential_143/lstm_429/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_143/lstm_429/while/NoOpNoOpC^sequential_143/lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOpB^sequential_143/lstm_429/while/lstm_cell_132/MatMul/ReadVariableOpD^sequential_143/lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_143_lstm_429_while_identity/sequential_143/lstm_429/while/Identity:output:0"]
(sequential_143_lstm_429_while_identity_11sequential_143/lstm_429/while/Identity_1:output:0"]
(sequential_143_lstm_429_while_identity_21sequential_143/lstm_429/while/Identity_2:output:0"]
(sequential_143_lstm_429_while_identity_31sequential_143/lstm_429/while/Identity_3:output:0"]
(sequential_143_lstm_429_while_identity_41sequential_143/lstm_429/while/Identity_4:output:0"]
(sequential_143_lstm_429_while_identity_51sequential_143/lstm_429/while/Identity_5:output:0"?
Ksequential_143_lstm_429_while_lstm_cell_132_biasadd_readvariableop_resourceMsequential_143_lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0"?
Lsequential_143_lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resourceNsequential_143_lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0"?
Jsequential_143_lstm_429_while_lstm_cell_132_matmul_readvariableop_resourceLsequential_143_lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0"?
Esequential_143_lstm_429_while_sequential_143_lstm_429_strided_slice_1Gsequential_143_lstm_429_while_sequential_143_lstm_429_strided_slice_1_0"?
?sequential_143_lstm_429_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_429_tensorarrayunstack_tensorlistfromtensor?sequential_143_lstm_429_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_429_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_143/lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOpBsequential_143/lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp2?
Asequential_143/lstm_429/while/lstm_cell_132/MatMul/ReadVariableOpAsequential_143/lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp2?
Csequential_143/lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOpCsequential_143/lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_429_while_cond_813577.
*lstm_429_while_lstm_429_while_loop_counter4
0lstm_429_while_lstm_429_while_maximum_iterations
lstm_429_while_placeholder 
lstm_429_while_placeholder_1 
lstm_429_while_placeholder_2 
lstm_429_while_placeholder_30
,lstm_429_while_less_lstm_429_strided_slice_1F
Blstm_429_while_lstm_429_while_cond_813577___redundant_placeholder0F
Blstm_429_while_lstm_429_while_cond_813577___redundant_placeholder1F
Blstm_429_while_lstm_429_while_cond_813577___redundant_placeholder2F
Blstm_429_while_lstm_429_while_cond_813577___redundant_placeholder3
lstm_429_while_identity
?
lstm_429/while/LessLesslstm_429_while_placeholder,lstm_429_while_less_lstm_429_strided_slice_1*
T0*
_output_shapes
: ]
lstm_429/while/IdentityIdentitylstm_429/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_429_while_identity lstm_429/while/Identity:output:0*(
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_814133
inputs_0?
,lstm_cell_132_matmul_readvariableop_resource:	?A
.lstm_cell_132_matmul_1_readvariableop_resource:	d?<
-lstm_cell_132_biasadd_readvariableop_resource:	?
identity??$lstm_cell_132/BiasAdd/ReadVariableOp?#lstm_cell_132/MatMul/ReadVariableOp?%lstm_cell_132/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_132/MatMul/ReadVariableOpReadVariableOp,lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_132/MatMulMatMulstrided_slice_2:output:0+lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_132/MatMul_1MatMulzeros:output:0-lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_132/addAddV2lstm_cell_132/MatMul:product:0 lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_132/BiasAddBiasAddlstm_cell_132/add:z:0,lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_132/splitSplit&lstm_cell_132/split/split_dim:output:0lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_132/SigmoidSigmoidlstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_1Sigmoidlstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_132/mulMullstm_cell_132/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_132/ReluRelulstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_1Mullstm_cell_132/Sigmoid:y:0 lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_132/add_1AddV2lstm_cell_132/mul:z:0lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_2Sigmoidlstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_132/Relu_1Relulstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_2Mullstm_cell_132/Sigmoid_2:y:0"lstm_cell_132/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_132_matmul_readvariableop_resource.lstm_cell_132_matmul_1_readvariableop_resource-lstm_cell_132_biasadd_readvariableop_resource*
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
bodyR
while_body_814049*
condR
while_cond_814048*K
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
NoOpNoOp%^lstm_cell_132/BiasAdd/ReadVariableOp$^lstm_cell_132/MatMul/ReadVariableOp&^lstm_cell_132/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_132/BiasAdd/ReadVariableOp$lstm_cell_132/BiasAdd/ReadVariableOp2J
#lstm_cell_132/MatMul/ReadVariableOp#lstm_cell_132/MatMul/ReadVariableOp2N
%lstm_cell_132/MatMul_1/ReadVariableOp%lstm_cell_132/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_430_layer_call_and_return_conditional_losses_815178

inputs?
,lstm_cell_133_matmul_readvariableop_resource:	d?A
.lstm_cell_133_matmul_1_readvariableop_resource:	2?<
-lstm_cell_133_biasadd_readvariableop_resource:	?
identity??$lstm_cell_133/BiasAdd/ReadVariableOp?#lstm_cell_133/MatMul/ReadVariableOp?%lstm_cell_133/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_133/MatMul/ReadVariableOpReadVariableOp,lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_133/MatMulMatMulstrided_slice_2:output:0+lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_133/MatMul_1MatMulzeros:output:0-lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_133/addAddV2lstm_cell_133/MatMul:product:0 lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_133/BiasAddBiasAddlstm_cell_133/add:z:0,lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_133/splitSplit&lstm_cell_133/split/split_dim:output:0lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_133/SigmoidSigmoidlstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_1Sigmoidlstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_133/mulMullstm_cell_133/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_133/ReluRelulstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_1Mullstm_cell_133/Sigmoid:y:0 lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_133/add_1AddV2lstm_cell_133/mul:z:0lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_2Sigmoidlstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_133/Relu_1Relulstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_2Mullstm_cell_133/Sigmoid_2:y:0"lstm_cell_133/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_133_matmul_readvariableop_resource.lstm_cell_133_matmul_1_readvariableop_resource-lstm_cell_133_biasadd_readvariableop_resource*
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
bodyR
while_body_815094*
condR
while_cond_815093*K
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
NoOpNoOp%^lstm_cell_133/BiasAdd/ReadVariableOp$^lstm_cell_133/MatMul/ReadVariableOp&^lstm_cell_133/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_133/BiasAdd/ReadVariableOp$lstm_cell_133/BiasAdd/ReadVariableOp2J
#lstm_cell_133/MatMul/ReadVariableOp#lstm_cell_133/MatMul/ReadVariableOp2N
%lstm_cell_133/MatMul_1/ReadVariableOp%lstm_cell_133/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?"
?
while_body_811750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_134_811774_0:2(.
while_lstm_cell_134_811776_0:
(*
while_lstm_cell_134_811778_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_134_811774:2(,
while_lstm_cell_134_811776:
((
while_lstm_cell_134_811778:(??+while/lstm_cell_134/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_134/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_134_811774_0while_lstm_cell_134_811776_0while_lstm_cell_134_811778_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811691?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_134/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_134/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_134/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_134/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_134_811774while_lstm_cell_134_811774_0":
while_lstm_cell_134_811776while_lstm_cell_134_811776_0":
while_lstm_cell_134_811778while_lstm_cell_134_811778_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_134/StatefulPartitionedCall+while/lstm_cell_134/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_814808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_133_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_133_matmul_readvariableop_resource:	d?G
4while_lstm_cell_133_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_133_biasadd_readvariableop_resource:	???*while/lstm_cell_133/BiasAdd/ReadVariableOp?)while/lstm_cell_133/MatMul/ReadVariableOp?+while/lstm_cell_133/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_133/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_133/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_133/addAddV2$while/lstm_cell_133/MatMul:product:0&while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_133/BiasAddBiasAddwhile/lstm_cell_133/add:z:02while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_133/splitSplit,while/lstm_cell_133/split/split_dim:output:0$while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_133/SigmoidSigmoid"while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_1Sigmoid"while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mulMul!while/lstm_cell_133/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_133/ReluRelu"while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_1Mulwhile/lstm_cell_133/Sigmoid:y:0&while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/add_1AddV2while/lstm_cell_133/mul:z:0while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_2Sigmoid"while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_133/Relu_1Reluwhile/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_2Mul!while/lstm_cell_133/Sigmoid_2:y:0(while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_133/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_133/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_133/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_133/BiasAdd/ReadVariableOp*^while/lstm_cell_133/MatMul/ReadVariableOp,^while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_133_biasadd_readvariableop_resource5while_lstm_cell_133_biasadd_readvariableop_resource_0"n
4while_lstm_cell_133_matmul_1_readvariableop_resource6while_lstm_cell_133_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_133_matmul_readvariableop_resource4while_lstm_cell_133_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_133/BiasAdd/ReadVariableOp*while/lstm_cell_133/BiasAdd/ReadVariableOp2V
)while/lstm_cell_133/MatMul/ReadVariableOp)while/lstm_cell_133/MatMul/ReadVariableOp2Z
+while/lstm_cell_133/MatMul_1/ReadVariableOp+while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_143_layer_call_and_return_conditional_losses_813519

inputsH
5lstm_429_lstm_cell_132_matmul_readvariableop_resource:	?J
7lstm_429_lstm_cell_132_matmul_1_readvariableop_resource:	d?E
6lstm_429_lstm_cell_132_biasadd_readvariableop_resource:	?H
5lstm_430_lstm_cell_133_matmul_readvariableop_resource:	d?J
7lstm_430_lstm_cell_133_matmul_1_readvariableop_resource:	2?E
6lstm_430_lstm_cell_133_biasadd_readvariableop_resource:	?G
5lstm_431_lstm_cell_134_matmul_readvariableop_resource:2(I
7lstm_431_lstm_cell_134_matmul_1_readvariableop_resource:
(D
6lstm_431_lstm_cell_134_biasadd_readvariableop_resource:(:
(dense_143_matmul_readvariableop_resource:
7
)dense_143_biasadd_readvariableop_resource:
identity?? dense_143/BiasAdd/ReadVariableOp?dense_143/MatMul/ReadVariableOp?-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp?,lstm_429/lstm_cell_132/MatMul/ReadVariableOp?.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp?lstm_429/while?-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp?,lstm_430/lstm_cell_133/MatMul/ReadVariableOp?.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp?lstm_430/while?-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp?,lstm_431/lstm_cell_134/MatMul/ReadVariableOp?.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp?lstm_431/whileD
lstm_429/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_429/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_429/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_429/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_sliceStridedSlicelstm_429/Shape:output:0%lstm_429/strided_slice/stack:output:0'lstm_429/strided_slice/stack_1:output:0'lstm_429/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_429/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_429/zeros/packedPacklstm_429/strided_slice:output:0 lstm_429/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_429/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_429/zerosFilllstm_429/zeros/packed:output:0lstm_429/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_429/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_429/zeros_1/packedPacklstm_429/strided_slice:output:0"lstm_429/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_429/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_429/zeros_1Fill lstm_429/zeros_1/packed:output:0lstm_429/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_429/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_429/transpose	Transposeinputs lstm_429/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_429/Shape_1Shapelstm_429/transpose:y:0*
T0*
_output_shapes
:h
lstm_429/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_429/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_429/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_slice_1StridedSlicelstm_429/Shape_1:output:0'lstm_429/strided_slice_1/stack:output:0)lstm_429/strided_slice_1/stack_1:output:0)lstm_429/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_429/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_429/TensorArrayV2TensorListReserve-lstm_429/TensorArrayV2/element_shape:output:0!lstm_429/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_429/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_429/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_429/transpose:y:0Glstm_429/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_429/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_429/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_429/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_slice_2StridedSlicelstm_429/transpose:y:0'lstm_429/strided_slice_2/stack:output:0)lstm_429/strided_slice_2/stack_1:output:0)lstm_429/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_429/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp5lstm_429_lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_429/lstm_cell_132/MatMulMatMul!lstm_429/strided_slice_2:output:04lstm_429/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp7lstm_429_lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_429/lstm_cell_132/MatMul_1MatMullstm_429/zeros:output:06lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_429/lstm_cell_132/addAddV2'lstm_429/lstm_cell_132/MatMul:product:0)lstm_429/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp6lstm_429_lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_429/lstm_cell_132/BiasAddBiasAddlstm_429/lstm_cell_132/add:z:05lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_429/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_429/lstm_cell_132/splitSplit/lstm_429/lstm_cell_132/split/split_dim:output:0'lstm_429/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_429/lstm_cell_132/SigmoidSigmoid%lstm_429/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_429/lstm_cell_132/Sigmoid_1Sigmoid%lstm_429/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/mulMul$lstm_429/lstm_cell_132/Sigmoid_1:y:0lstm_429/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_429/lstm_cell_132/ReluRelu%lstm_429/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/mul_1Mul"lstm_429/lstm_cell_132/Sigmoid:y:0)lstm_429/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/add_1AddV2lstm_429/lstm_cell_132/mul:z:0 lstm_429/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_429/lstm_cell_132/Sigmoid_2Sigmoid%lstm_429/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_429/lstm_cell_132/Relu_1Relu lstm_429/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_429/lstm_cell_132/mul_2Mul$lstm_429/lstm_cell_132/Sigmoid_2:y:0+lstm_429/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_429/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_429/TensorArrayV2_1TensorListReserve/lstm_429/TensorArrayV2_1/element_shape:output:0!lstm_429/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_429/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_429/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_429/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_429/whileWhile$lstm_429/while/loop_counter:output:0*lstm_429/while/maximum_iterations:output:0lstm_429/time:output:0!lstm_429/TensorArrayV2_1:handle:0lstm_429/zeros:output:0lstm_429/zeros_1:output:0!lstm_429/strided_slice_1:output:0@lstm_429/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_429_lstm_cell_132_matmul_readvariableop_resource7lstm_429_lstm_cell_132_matmul_1_readvariableop_resource6lstm_429_lstm_cell_132_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_429_while_body_813151*&
condR
lstm_429_while_cond_813150*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_429/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_429/TensorArrayV2Stack/TensorListStackTensorListStacklstm_429/while:output:3Blstm_429/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_429/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_429/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_429/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_429/strided_slice_3StridedSlice4lstm_429/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_429/strided_slice_3/stack:output:0)lstm_429/strided_slice_3/stack_1:output:0)lstm_429/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_429/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_429/transpose_1	Transpose4lstm_429/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_429/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_429/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_430/ShapeShapelstm_429/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_430/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_430/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_430/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_sliceStridedSlicelstm_430/Shape:output:0%lstm_430/strided_slice/stack:output:0'lstm_430/strided_slice/stack_1:output:0'lstm_430/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_430/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_430/zeros/packedPacklstm_430/strided_slice:output:0 lstm_430/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_430/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_430/zerosFilllstm_430/zeros/packed:output:0lstm_430/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_430/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_430/zeros_1/packedPacklstm_430/strided_slice:output:0"lstm_430/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_430/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_430/zeros_1Fill lstm_430/zeros_1/packed:output:0lstm_430/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_430/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_430/transpose	Transposelstm_429/transpose_1:y:0 lstm_430/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_430/Shape_1Shapelstm_430/transpose:y:0*
T0*
_output_shapes
:h
lstm_430/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_430/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_430/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_slice_1StridedSlicelstm_430/Shape_1:output:0'lstm_430/strided_slice_1/stack:output:0)lstm_430/strided_slice_1/stack_1:output:0)lstm_430/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_430/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_430/TensorArrayV2TensorListReserve-lstm_430/TensorArrayV2/element_shape:output:0!lstm_430/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_430/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_430/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_430/transpose:y:0Glstm_430/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_430/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_430/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_430/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_slice_2StridedSlicelstm_430/transpose:y:0'lstm_430/strided_slice_2/stack:output:0)lstm_430/strided_slice_2/stack_1:output:0)lstm_430/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_430/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp5lstm_430_lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_430/lstm_cell_133/MatMulMatMul!lstm_430/strided_slice_2:output:04lstm_430/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp7lstm_430_lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_430/lstm_cell_133/MatMul_1MatMullstm_430/zeros:output:06lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_430/lstm_cell_133/addAddV2'lstm_430/lstm_cell_133/MatMul:product:0)lstm_430/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp6lstm_430_lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_430/lstm_cell_133/BiasAddBiasAddlstm_430/lstm_cell_133/add:z:05lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_430/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_430/lstm_cell_133/splitSplit/lstm_430/lstm_cell_133/split/split_dim:output:0'lstm_430/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_430/lstm_cell_133/SigmoidSigmoid%lstm_430/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_430/lstm_cell_133/Sigmoid_1Sigmoid%lstm_430/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/mulMul$lstm_430/lstm_cell_133/Sigmoid_1:y:0lstm_430/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_430/lstm_cell_133/ReluRelu%lstm_430/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/mul_1Mul"lstm_430/lstm_cell_133/Sigmoid:y:0)lstm_430/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/add_1AddV2lstm_430/lstm_cell_133/mul:z:0 lstm_430/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_430/lstm_cell_133/Sigmoid_2Sigmoid%lstm_430/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_430/lstm_cell_133/Relu_1Relu lstm_430/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_430/lstm_cell_133/mul_2Mul$lstm_430/lstm_cell_133/Sigmoid_2:y:0+lstm_430/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_430/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_430/TensorArrayV2_1TensorListReserve/lstm_430/TensorArrayV2_1/element_shape:output:0!lstm_430/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_430/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_430/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_430/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_430/whileWhile$lstm_430/while/loop_counter:output:0*lstm_430/while/maximum_iterations:output:0lstm_430/time:output:0!lstm_430/TensorArrayV2_1:handle:0lstm_430/zeros:output:0lstm_430/zeros_1:output:0!lstm_430/strided_slice_1:output:0@lstm_430/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_430_lstm_cell_133_matmul_readvariableop_resource7lstm_430_lstm_cell_133_matmul_1_readvariableop_resource6lstm_430_lstm_cell_133_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_430_while_body_813290*&
condR
lstm_430_while_cond_813289*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_430/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_430/TensorArrayV2Stack/TensorListStackTensorListStacklstm_430/while:output:3Blstm_430/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_430/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_430/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_430/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_430/strided_slice_3StridedSlice4lstm_430/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_430/strided_slice_3/stack:output:0)lstm_430/strided_slice_3/stack_1:output:0)lstm_430/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_430/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_430/transpose_1	Transpose4lstm_430/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_430/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_430/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_431/ShapeShapelstm_430/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_431/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_431/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_431/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_sliceStridedSlicelstm_431/Shape:output:0%lstm_431/strided_slice/stack:output:0'lstm_431/strided_slice/stack_1:output:0'lstm_431/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_431/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_431/zeros/packedPacklstm_431/strided_slice:output:0 lstm_431/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_431/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_431/zerosFilllstm_431/zeros/packed:output:0lstm_431/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_431/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_431/zeros_1/packedPacklstm_431/strided_slice:output:0"lstm_431/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_431/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_431/zeros_1Fill lstm_431/zeros_1/packed:output:0lstm_431/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_431/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_431/transpose	Transposelstm_430/transpose_1:y:0 lstm_431/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_431/Shape_1Shapelstm_431/transpose:y:0*
T0*
_output_shapes
:h
lstm_431/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_431/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_431/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_slice_1StridedSlicelstm_431/Shape_1:output:0'lstm_431/strided_slice_1/stack:output:0)lstm_431/strided_slice_1/stack_1:output:0)lstm_431/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_431/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_431/TensorArrayV2TensorListReserve-lstm_431/TensorArrayV2/element_shape:output:0!lstm_431/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_431/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_431/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_431/transpose:y:0Glstm_431/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_431/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_431/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_431/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_slice_2StridedSlicelstm_431/transpose:y:0'lstm_431/strided_slice_2/stack:output:0)lstm_431/strided_slice_2/stack_1:output:0)lstm_431/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_431/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp5lstm_431_lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_431/lstm_cell_134/MatMulMatMul!lstm_431/strided_slice_2:output:04lstm_431/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp7lstm_431_lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_431/lstm_cell_134/MatMul_1MatMullstm_431/zeros:output:06lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_431/lstm_cell_134/addAddV2'lstm_431/lstm_cell_134/MatMul:product:0)lstm_431/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp6lstm_431_lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_431/lstm_cell_134/BiasAddBiasAddlstm_431/lstm_cell_134/add:z:05lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_431/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_431/lstm_cell_134/splitSplit/lstm_431/lstm_cell_134/split/split_dim:output:0'lstm_431/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_431/lstm_cell_134/SigmoidSigmoid%lstm_431/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_431/lstm_cell_134/Sigmoid_1Sigmoid%lstm_431/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/mulMul$lstm_431/lstm_cell_134/Sigmoid_1:y:0lstm_431/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_431/lstm_cell_134/ReluRelu%lstm_431/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/mul_1Mul"lstm_431/lstm_cell_134/Sigmoid:y:0)lstm_431/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/add_1AddV2lstm_431/lstm_cell_134/mul:z:0 lstm_431/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_431/lstm_cell_134/Sigmoid_2Sigmoid%lstm_431/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_431/lstm_cell_134/Relu_1Relu lstm_431/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_431/lstm_cell_134/mul_2Mul$lstm_431/lstm_cell_134/Sigmoid_2:y:0+lstm_431/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_431/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_431/TensorArrayV2_1TensorListReserve/lstm_431/TensorArrayV2_1/element_shape:output:0!lstm_431/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_431/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_431/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_431/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_431/whileWhile$lstm_431/while/loop_counter:output:0*lstm_431/while/maximum_iterations:output:0lstm_431/time:output:0!lstm_431/TensorArrayV2_1:handle:0lstm_431/zeros:output:0lstm_431/zeros_1:output:0!lstm_431/strided_slice_1:output:0@lstm_431/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_431_lstm_cell_134_matmul_readvariableop_resource7lstm_431_lstm_cell_134_matmul_1_readvariableop_resource6lstm_431_lstm_cell_134_biasadd_readvariableop_resource*
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
_stateful_parallelism( *&
bodyR
lstm_431_while_body_813429*&
condR
lstm_431_while_cond_813428*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_431/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_431/TensorArrayV2Stack/TensorListStackTensorListStacklstm_431/while:output:3Blstm_431/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_431/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_431/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_431/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_431/strided_slice_3StridedSlice4lstm_431/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_431/strided_slice_3/stack:output:0)lstm_431/strided_slice_3/stack_1:output:0)lstm_431/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_431/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_431/transpose_1	Transpose4lstm_431/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_431/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_431/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_143/MatMulMatMul!lstm_431/strided_slice_3:output:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_143/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp.^lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp-^lstm_429/lstm_cell_132/MatMul/ReadVariableOp/^lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp^lstm_429/while.^lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp-^lstm_430/lstm_cell_133/MatMul/ReadVariableOp/^lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp^lstm_430/while.^lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp-^lstm_431/lstm_cell_134/MatMul/ReadVariableOp/^lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp^lstm_431/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp2^
-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp-lstm_429/lstm_cell_132/BiasAdd/ReadVariableOp2\
,lstm_429/lstm_cell_132/MatMul/ReadVariableOp,lstm_429/lstm_cell_132/MatMul/ReadVariableOp2`
.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp.lstm_429/lstm_cell_132/MatMul_1/ReadVariableOp2 
lstm_429/whilelstm_429/while2^
-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp-lstm_430/lstm_cell_133/BiasAdd/ReadVariableOp2\
,lstm_430/lstm_cell_133/MatMul/ReadVariableOp,lstm_430/lstm_cell_133/MatMul/ReadVariableOp2`
.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp.lstm_430/lstm_cell_133/MatMul_1/ReadVariableOp2 
lstm_430/whilelstm_430/while2^
-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp-lstm_431/lstm_cell_134/BiasAdd/ReadVariableOp2\
,lstm_431/lstm_cell_134/MatMul/ReadVariableOp,lstm_431/lstm_cell_134/MatMul/ReadVariableOp2`
.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp.lstm_431/lstm_cell_134/MatMul_1/ReadVariableOp2 
lstm_431/whilelstm_431/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_431_layer_call_and_return_conditional_losses_815365
inputs_0>
,lstm_cell_134_matmul_readvariableop_resource:2(@
.lstm_cell_134_matmul_1_readvariableop_resource:
(;
-lstm_cell_134_biasadd_readvariableop_resource:(
identity??$lstm_cell_134/BiasAdd/ReadVariableOp?#lstm_cell_134/MatMul/ReadVariableOp?%lstm_cell_134/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_134/MatMul/ReadVariableOpReadVariableOp,lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_134/MatMulMatMulstrided_slice_2:output:0+lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_134/MatMul_1MatMulzeros:output:0-lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_134/addAddV2lstm_cell_134/MatMul:product:0 lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_134/BiasAddBiasAddlstm_cell_134/add:z:0,lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_134/splitSplit&lstm_cell_134/split/split_dim:output:0lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_134/SigmoidSigmoidlstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_1Sigmoidlstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_134/mulMullstm_cell_134/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_134/ReluRelulstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_1Mullstm_cell_134/Sigmoid:y:0 lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_134/add_1AddV2lstm_cell_134/mul:z:0lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_2Sigmoidlstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_134/Relu_1Relulstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_2Mullstm_cell_134/Sigmoid_2:y:0"lstm_cell_134/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_134_matmul_readvariableop_resource.lstm_cell_134_matmul_1_readvariableop_resource-lstm_cell_134_biasadd_readvariableop_resource*
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
bodyR
while_body_815281*
condR
while_cond_815280*K
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
NoOpNoOp%^lstm_cell_134/BiasAdd/ReadVariableOp$^lstm_cell_134/MatMul/ReadVariableOp&^lstm_cell_134/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_134/BiasAdd/ReadVariableOp$lstm_cell_134/BiasAdd/ReadVariableOp2J
#lstm_cell_134/MatMul/ReadVariableOp#lstm_cell_134/MatMul/ReadVariableOp2N
%lstm_cell_134/MatMul_1/ReadVariableOp%lstm_cell_134/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_430_while_cond_813716.
*lstm_430_while_lstm_430_while_loop_counter4
0lstm_430_while_lstm_430_while_maximum_iterations
lstm_430_while_placeholder 
lstm_430_while_placeholder_1 
lstm_430_while_placeholder_2 
lstm_430_while_placeholder_30
,lstm_430_while_less_lstm_430_strided_slice_1F
Blstm_430_while_lstm_430_while_cond_813716___redundant_placeholder0F
Blstm_430_while_lstm_430_while_cond_813716___redundant_placeholder1F
Blstm_430_while_lstm_430_while_cond_813716___redundant_placeholder2F
Blstm_430_while_lstm_430_while_cond_813716___redundant_placeholder3
lstm_430_while_identity
?
lstm_430/while/LessLesslstm_430_while_placeholder,lstm_430_while_less_lstm_430_strided_slice_1*
T0*
_output_shapes
: ]
lstm_430/while/IdentityIdentitylstm_430/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_430_while_identity lstm_430/while/Identity:output:0*(
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
.__inference_lstm_cell_133_layer_call_fn_815945

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811341o
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
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_816107

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

lstm_430_while_body_813290.
*lstm_430_while_lstm_430_while_loop_counter4
0lstm_430_while_lstm_430_while_maximum_iterations
lstm_430_while_placeholder 
lstm_430_while_placeholder_1 
lstm_430_while_placeholder_2 
lstm_430_while_placeholder_3-
)lstm_430_while_lstm_430_strided_slice_1_0i
elstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0:	d?R
?lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?M
>lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
lstm_430_while_identity
lstm_430_while_identity_1
lstm_430_while_identity_2
lstm_430_while_identity_3
lstm_430_while_identity_4
lstm_430_while_identity_5+
'lstm_430_while_lstm_430_strided_slice_1g
clstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensorN
;lstm_430_while_lstm_cell_133_matmul_readvariableop_resource:	d?P
=lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource:	2?K
<lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource:	???3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp?2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp?4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp?
@lstm_430/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_430/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensor_0lstm_430_while_placeholderIlstm_430/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp=lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_430/while/lstm_cell_133/MatMulMatMul9lstm_430/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp?lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_430/while/lstm_cell_133/MatMul_1MatMullstm_430_while_placeholder_2<lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_430/while/lstm_cell_133/addAddV2-lstm_430/while/lstm_cell_133/MatMul:product:0/lstm_430/while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp>lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_430/while/lstm_cell_133/BiasAddBiasAdd$lstm_430/while/lstm_cell_133/add:z:0;lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_430/while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_430/while/lstm_cell_133/splitSplit5lstm_430/while/lstm_cell_133/split/split_dim:output:0-lstm_430/while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_430/while/lstm_cell_133/SigmoidSigmoid+lstm_430/while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_430/while/lstm_cell_133/Sigmoid_1Sigmoid+lstm_430/while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_430/while/lstm_cell_133/mulMul*lstm_430/while/lstm_cell_133/Sigmoid_1:y:0lstm_430_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_430/while/lstm_cell_133/ReluRelu+lstm_430/while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_430/while/lstm_cell_133/mul_1Mul(lstm_430/while/lstm_cell_133/Sigmoid:y:0/lstm_430/while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_430/while/lstm_cell_133/add_1AddV2$lstm_430/while/lstm_cell_133/mul:z:0&lstm_430/while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_430/while/lstm_cell_133/Sigmoid_2Sigmoid+lstm_430/while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_430/while/lstm_cell_133/Relu_1Relu&lstm_430/while/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_430/while/lstm_cell_133/mul_2Mul*lstm_430/while/lstm_cell_133/Sigmoid_2:y:01lstm_430/while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_430/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_430_while_placeholder_1lstm_430_while_placeholder&lstm_430/while/lstm_cell_133/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_430/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_430/while/addAddV2lstm_430_while_placeholderlstm_430/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_430/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_430/while/add_1AddV2*lstm_430_while_lstm_430_while_loop_counterlstm_430/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_430/while/IdentityIdentitylstm_430/while/add_1:z:0^lstm_430/while/NoOp*
T0*
_output_shapes
: ?
lstm_430/while/Identity_1Identity0lstm_430_while_lstm_430_while_maximum_iterations^lstm_430/while/NoOp*
T0*
_output_shapes
: t
lstm_430/while/Identity_2Identitylstm_430/while/add:z:0^lstm_430/while/NoOp*
T0*
_output_shapes
: ?
lstm_430/while/Identity_3IdentityClstm_430/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_430/while/NoOp*
T0*
_output_shapes
: ?
lstm_430/while/Identity_4Identity&lstm_430/while/lstm_cell_133/mul_2:z:0^lstm_430/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_430/while/Identity_5Identity&lstm_430/while/lstm_cell_133/add_1:z:0^lstm_430/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_430/while/NoOpNoOp4^lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp3^lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp5^lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_430_while_identity lstm_430/while/Identity:output:0"?
lstm_430_while_identity_1"lstm_430/while/Identity_1:output:0"?
lstm_430_while_identity_2"lstm_430/while/Identity_2:output:0"?
lstm_430_while_identity_3"lstm_430/while/Identity_3:output:0"?
lstm_430_while_identity_4"lstm_430/while/Identity_4:output:0"?
lstm_430_while_identity_5"lstm_430/while/Identity_5:output:0"T
'lstm_430_while_lstm_430_strided_slice_1)lstm_430_while_lstm_430_strided_slice_1_0"~
<lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource>lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0"?
=lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource?lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0"|
;lstm_430_while_lstm_cell_133_matmul_readvariableop_resource=lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0"?
clstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensorelstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp2h
2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp2l
4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_430_layer_call_and_return_conditional_losses_811469

inputs'
lstm_cell_133_811387:	d?'
lstm_cell_133_811389:	2?#
lstm_cell_133_811391:	?
identity??%lstm_cell_133/StatefulPartitionedCall?while;
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
%lstm_cell_133/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_133_811387lstm_cell_133_811389lstm_cell_133_811391*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811341n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_133_811387lstm_cell_133_811389lstm_cell_133_811391*
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
bodyR
while_body_811400*
condR
while_cond_811399*K
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
NoOpNoOp&^lstm_cell_133/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_133/StatefulPartitionedCall%lstm_cell_133/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_811399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_811399___redundant_placeholder04
0while_while_cond_811399___redundant_placeholder14
0while_while_cond_811399___redundant_placeholder24
0while_while_cond_811399___redundant_placeholder3
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
)__inference_lstm_429_layer_call_fn_813968
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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_811119|
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
?
D__inference_lstm_431_layer_call_and_return_conditional_losses_811628

inputs&
lstm_cell_134_811546:2(&
lstm_cell_134_811548:
("
lstm_cell_134_811550:(
identity??%lstm_cell_134/StatefulPartitionedCall?while;
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
%lstm_cell_134/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_134_811546lstm_cell_134_811548lstm_cell_134_811550*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811545n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_134_811546lstm_cell_134_811548lstm_cell_134_811550*
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
bodyR
while_body_811559*
condR
while_cond_811558*K
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
NoOpNoOp&^lstm_cell_134/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_134/StatefulPartitionedCall%lstm_cell_134/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_816380
file_prefix3
!assignvariableop_dense_143_kernel:
/
!assignvariableop_1_dense_143_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_429_lstm_cell_429_kernel:	?M
:assignvariableop_8_lstm_429_lstm_cell_429_recurrent_kernel:	d?=
.assignvariableop_9_lstm_429_lstm_cell_429_bias:	?D
1assignvariableop_10_lstm_430_lstm_cell_430_kernel:	d?N
;assignvariableop_11_lstm_430_lstm_cell_430_recurrent_kernel:	2?>
/assignvariableop_12_lstm_430_lstm_cell_430_bias:	?C
1assignvariableop_13_lstm_431_lstm_cell_431_kernel:2(M
;assignvariableop_14_lstm_431_lstm_cell_431_recurrent_kernel:
(=
/assignvariableop_15_lstm_431_lstm_cell_431_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_143_kernel_m:
7
)assignvariableop_19_adam_dense_143_bias_m:K
8assignvariableop_20_adam_lstm_429_lstm_cell_429_kernel_m:	?U
Bassignvariableop_21_adam_lstm_429_lstm_cell_429_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_429_lstm_cell_429_bias_m:	?K
8assignvariableop_23_adam_lstm_430_lstm_cell_430_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_430_lstm_cell_430_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_430_lstm_cell_430_bias_m:	?J
8assignvariableop_26_adam_lstm_431_lstm_cell_431_kernel_m:2(T
Bassignvariableop_27_adam_lstm_431_lstm_cell_431_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_431_lstm_cell_431_bias_m:(=
+assignvariableop_29_adam_dense_143_kernel_v:
7
)assignvariableop_30_adam_dense_143_bias_v:K
8assignvariableop_31_adam_lstm_429_lstm_cell_429_kernel_v:	?U
Bassignvariableop_32_adam_lstm_429_lstm_cell_429_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_429_lstm_cell_429_bias_v:	?K
8assignvariableop_34_adam_lstm_430_lstm_cell_430_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_430_lstm_cell_430_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_430_lstm_cell_430_bias_v:	?J
8assignvariableop_37_adam_lstm_431_lstm_cell_431_kernel_v:2(T
Bassignvariableop_38_adam_lstm_431_lstm_cell_431_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_431_lstm_cell_431_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_143_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_143_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_429_lstm_cell_429_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_429_lstm_cell_429_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_429_lstm_cell_429_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_430_lstm_cell_430_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_430_lstm_cell_430_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_430_lstm_cell_430_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_431_lstm_cell_431_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_431_lstm_cell_431_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_431_lstm_cell_431_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_143_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_143_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_429_lstm_cell_429_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_429_lstm_cell_429_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_429_lstm_cell_429_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_430_lstm_cell_430_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_430_lstm_cell_430_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_430_lstm_cell_430_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_431_lstm_cell_431_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_431_lstm_cell_431_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_431_lstm_cell_431_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_143_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_143_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_429_lstm_cell_429_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_429_lstm_cell_429_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_429_lstm_cell_429_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_430_lstm_cell_430_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_430_lstm_cell_430_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_430_lstm_cell_430_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_431_lstm_cell_431_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_431_lstm_cell_431_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_431_lstm_cell_431_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
D__inference_lstm_429_layer_call_and_return_conditional_losses_811119

inputs'
lstm_cell_132_811037:	?'
lstm_cell_132_811039:	d?#
lstm_cell_132_811041:	?
identity??%lstm_cell_132/StatefulPartitionedCall?while;
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
%lstm_cell_132/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_132_811037lstm_cell_132_811039lstm_cell_132_811041*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810991n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_132_811037lstm_cell_132_811039lstm_cell_132_811041*
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
bodyR
while_body_811050*
condR
while_cond_811049*K
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
NoOpNoOp&^lstm_cell_132/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_132/StatefulPartitionedCall%lstm_cell_132/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
D__inference_lstm_431_layer_call_and_return_conditional_losses_811819

inputs&
lstm_cell_134_811737:2(&
lstm_cell_134_811739:
("
lstm_cell_134_811741:(
identity??%lstm_cell_134/StatefulPartitionedCall?while;
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
%lstm_cell_134/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_134_811737lstm_cell_134_811739lstm_cell_134_811741*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811691n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_134_811737lstm_cell_134_811739lstm_cell_134_811741*
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
bodyR
while_body_811750*
condR
while_cond_811749*K
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
NoOpNoOp&^lstm_cell_134/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_134/StatefulPartitionedCall%lstm_cell_134/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_812573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_812573___redundant_placeholder04
0while_while_cond_812573___redundant_placeholder14
0while_while_cond_812573___redundant_placeholder24
0while_while_cond_812573___redundant_placeholder3
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
.__inference_lstm_cell_132_layer_call_fn_815847

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810991o
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_815508
inputs_0>
,lstm_cell_134_matmul_readvariableop_resource:2(@
.lstm_cell_134_matmul_1_readvariableop_resource:
(;
-lstm_cell_134_biasadd_readvariableop_resource:(
identity??$lstm_cell_134/BiasAdd/ReadVariableOp?#lstm_cell_134/MatMul/ReadVariableOp?%lstm_cell_134/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_134/MatMul/ReadVariableOpReadVariableOp,lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_134/MatMulMatMulstrided_slice_2:output:0+lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_134/MatMul_1MatMulzeros:output:0-lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_134/addAddV2lstm_cell_134/MatMul:product:0 lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_134/BiasAddBiasAddlstm_cell_134/add:z:0,lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_134/splitSplit&lstm_cell_134/split/split_dim:output:0lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_134/SigmoidSigmoidlstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_1Sigmoidlstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_134/mulMullstm_cell_134/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_134/ReluRelulstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_1Mullstm_cell_134/Sigmoid:y:0 lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_134/add_1AddV2lstm_cell_134/mul:z:0lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_2Sigmoidlstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_134/Relu_1Relulstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_2Mullstm_cell_134/Sigmoid_2:y:0"lstm_cell_134/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_134_matmul_readvariableop_resource.lstm_cell_134_matmul_1_readvariableop_resource-lstm_cell_134_biasadd_readvariableop_resource*
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
bodyR
while_body_815424*
condR
while_cond_815423*K
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
NoOpNoOp%^lstm_cell_134/BiasAdd/ReadVariableOp$^lstm_cell_134/MatMul/ReadVariableOp&^lstm_cell_134/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_134/BiasAdd/ReadVariableOp$lstm_cell_134/BiasAdd/ReadVariableOp2J
#lstm_cell_134/MatMul/ReadVariableOp#lstm_cell_134/MatMul/ReadVariableOp2N
%lstm_cell_134/MatMul_1/ReadVariableOp%lstm_cell_134/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
$__inference_signature_wrapper_813038
lstm_429_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_429_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? **
f%R#
!__inference__wrapped_model_810778o
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
_user_specified_namelstm_429_input
?
?
J__inference_sequential_143_layer_call_and_return_conditional_losses_812973
lstm_429_input"
lstm_429_812946:	?"
lstm_429_812948:	d?
lstm_429_812950:	?"
lstm_430_812953:	d?"
lstm_430_812955:	2?
lstm_430_812957:	?!
lstm_431_812960:2(!
lstm_431_812962:
(
lstm_431_812964:("
dense_143_812967:

dense_143_812969:
identity??!dense_143/StatefulPartitionedCall? lstm_429/StatefulPartitionedCall? lstm_430/StatefulPartitionedCall? lstm_431/StatefulPartitionedCall?
 lstm_429/StatefulPartitionedCallStatefulPartitionedCalllstm_429_inputlstm_429_812946lstm_429_812948lstm_429_812950*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_811977?
 lstm_430/StatefulPartitionedCallStatefulPartitionedCall)lstm_429/StatefulPartitionedCall:output:0lstm_430_812953lstm_430_812955lstm_430_812957*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_812127?
 lstm_431/StatefulPartitionedCallStatefulPartitionedCall)lstm_430/StatefulPartitionedCall:output:0lstm_431_812960lstm_431_812962lstm_431_812964*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_812277?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_431/StatefulPartitionedCall:output:0dense_143_812967dense_143_812969*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_812295y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_143/StatefulPartitionedCall!^lstm_429/StatefulPartitionedCall!^lstm_430/StatefulPartitionedCall!^lstm_431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2D
 lstm_429/StatefulPartitionedCall lstm_429/StatefulPartitionedCall2D
 lstm_430/StatefulPartitionedCall lstm_430/StatefulPartitionedCall2D
 lstm_431/StatefulPartitionedCall lstm_431/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_429_input
?J
?
D__inference_lstm_429_layer_call_and_return_conditional_losses_814419

inputs?
,lstm_cell_132_matmul_readvariableop_resource:	?A
.lstm_cell_132_matmul_1_readvariableop_resource:	d?<
-lstm_cell_132_biasadd_readvariableop_resource:	?
identity??$lstm_cell_132/BiasAdd/ReadVariableOp?#lstm_cell_132/MatMul/ReadVariableOp?%lstm_cell_132/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_132/MatMul/ReadVariableOpReadVariableOp,lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_132/MatMulMatMulstrided_slice_2:output:0+lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_132/MatMul_1MatMulzeros:output:0-lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_132/addAddV2lstm_cell_132/MatMul:product:0 lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_132/BiasAddBiasAddlstm_cell_132/add:z:0,lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_132/splitSplit&lstm_cell_132/split/split_dim:output:0lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_132/SigmoidSigmoidlstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_1Sigmoidlstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_132/mulMullstm_cell_132/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_132/ReluRelulstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_1Mullstm_cell_132/Sigmoid:y:0 lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_132/add_1AddV2lstm_cell_132/mul:z:0lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_2Sigmoidlstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_132/Relu_1Relulstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_2Mullstm_cell_132/Sigmoid_2:y:0"lstm_cell_132/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_132_matmul_readvariableop_resource.lstm_cell_132_matmul_1_readvariableop_resource-lstm_cell_132_biasadd_readvariableop_resource*
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
bodyR
while_body_814335*
condR
while_cond_814334*K
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
NoOpNoOp%^lstm_cell_132/BiasAdd/ReadVariableOp$^lstm_cell_132/MatMul/ReadVariableOp&^lstm_cell_132/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_132/BiasAdd/ReadVariableOp$lstm_cell_132/BiasAdd/ReadVariableOp2J
#lstm_cell_132/MatMul/ReadVariableOp#lstm_cell_132/MatMul/ReadVariableOp2N
%lstm_cell_132/MatMul_1/ReadVariableOp%lstm_cell_132/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_143_layer_call_fn_813065

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
J__inference_sequential_143_layer_call_and_return_conditional_losses_812302o
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
while_cond_811049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_811049___redundant_placeholder04
0while_while_cond_811049___redundant_placeholder14
0while_while_cond_811049___redundant_placeholder24
0while_while_cond_811049___redundant_placeholder3
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
while_body_814665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_133_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_133_matmul_readvariableop_resource:	d?G
4while_lstm_cell_133_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_133_biasadd_readvariableop_resource:	???*while/lstm_cell_133/BiasAdd/ReadVariableOp?)while/lstm_cell_133/MatMul/ReadVariableOp?+while/lstm_cell_133/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_133/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_133/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_133/addAddV2$while/lstm_cell_133/MatMul:product:0&while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_133/BiasAddBiasAddwhile/lstm_cell_133/add:z:02while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_133/splitSplit,while/lstm_cell_133/split/split_dim:output:0$while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_133/SigmoidSigmoid"while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_1Sigmoid"while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mulMul!while/lstm_cell_133/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_133/ReluRelu"while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_1Mulwhile/lstm_cell_133/Sigmoid:y:0&while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/add_1AddV2while/lstm_cell_133/mul:z:0while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_2Sigmoid"while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_133/Relu_1Reluwhile/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_2Mul!while/lstm_cell_133/Sigmoid_2:y:0(while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_133/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_133/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_133/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_133/BiasAdd/ReadVariableOp*^while/lstm_cell_133/MatMul/ReadVariableOp,^while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_133_biasadd_readvariableop_resource5while_lstm_cell_133_biasadd_readvariableop_resource_0"n
4while_lstm_cell_133_matmul_1_readvariableop_resource6while_lstm_cell_133_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_133_matmul_readvariableop_resource4while_lstm_cell_133_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_133/BiasAdd/ReadVariableOp*while/lstm_cell_133/BiasAdd/ReadVariableOp2V
)while/lstm_cell_133/MatMul/ReadVariableOp)while/lstm_cell_133/MatMul/ReadVariableOp2Z
+while/lstm_cell_133/MatMul_1/ReadVariableOp+while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_143_layer_call_fn_815803

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
E__inference_dense_143_layer_call_and_return_conditional_losses_812295o
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
while_body_812574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_133_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_133_matmul_readvariableop_resource:	d?G
4while_lstm_cell_133_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_133_biasadd_readvariableop_resource:	???*while/lstm_cell_133/BiasAdd/ReadVariableOp?)while/lstm_cell_133/MatMul/ReadVariableOp?+while/lstm_cell_133/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_133/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_133/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_133/addAddV2$while/lstm_cell_133/MatMul:product:0&while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_133/BiasAddBiasAddwhile/lstm_cell_133/add:z:02while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_133/splitSplit,while/lstm_cell_133/split/split_dim:output:0$while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_133/SigmoidSigmoid"while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_1Sigmoid"while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mulMul!while/lstm_cell_133/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_133/ReluRelu"while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_1Mulwhile/lstm_cell_133/Sigmoid:y:0&while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/add_1AddV2while/lstm_cell_133/mul:z:0while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_2Sigmoid"while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_133/Relu_1Reluwhile/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_2Mul!while/lstm_cell_133/Sigmoid_2:y:0(while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_133/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_133/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_133/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_133/BiasAdd/ReadVariableOp*^while/lstm_cell_133/MatMul/ReadVariableOp,^while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_133_biasadd_readvariableop_resource5while_lstm_cell_133_biasadd_readvariableop_resource_0"n
4while_lstm_cell_133_matmul_1_readvariableop_resource6while_lstm_cell_133_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_133_matmul_readvariableop_resource4while_lstm_cell_133_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_133/BiasAdd/ReadVariableOp*while/lstm_cell_133/BiasAdd/ReadVariableOp2V
)while/lstm_cell_133/MatMul/ReadVariableOp)while/lstm_cell_133/MatMul/ReadVariableOp2Z
+while/lstm_cell_133/MatMul_1/ReadVariableOp+while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_815710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_134_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_134_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_134_matmul_readvariableop_resource:2(F
4while_lstm_cell_134_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_134_biasadd_readvariableop_resource:(??*while/lstm_cell_134/BiasAdd/ReadVariableOp?)while/lstm_cell_134/MatMul/ReadVariableOp?+while/lstm_cell_134/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_134/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_134/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_134/addAddV2$while/lstm_cell_134/MatMul:product:0&while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_134/BiasAddBiasAddwhile/lstm_cell_134/add:z:02while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_134/splitSplit,while/lstm_cell_134/split/split_dim:output:0$while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_134/SigmoidSigmoid"while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_1Sigmoid"while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mulMul!while/lstm_cell_134/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_134/ReluRelu"while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_1Mulwhile/lstm_cell_134/Sigmoid:y:0&while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/add_1AddV2while/lstm_cell_134/mul:z:0while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_2Sigmoid"while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_134/Relu_1Reluwhile/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_2Mul!while/lstm_cell_134/Sigmoid_2:y:0(while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_134/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_134/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_134/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_134/BiasAdd/ReadVariableOp*^while/lstm_cell_134/MatMul/ReadVariableOp,^while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_134_biasadd_readvariableop_resource5while_lstm_cell_134_biasadd_readvariableop_resource_0"n
4while_lstm_cell_134_matmul_1_readvariableop_resource6while_lstm_cell_134_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_134_matmul_readvariableop_resource4while_lstm_cell_134_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_134/BiasAdd/ReadVariableOp*while/lstm_cell_134/BiasAdd/ReadVariableOp2V
)while/lstm_cell_134/MatMul/ReadVariableOp)while/lstm_cell_134/MatMul/ReadVariableOp2Z
+while/lstm_cell_134/MatMul_1/ReadVariableOp+while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_814478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_132_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_132_matmul_readvariableop_resource:	?G
4while_lstm_cell_132_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_132_biasadd_readvariableop_resource:	???*while/lstm_cell_132/BiasAdd/ReadVariableOp?)while/lstm_cell_132/MatMul/ReadVariableOp?+while/lstm_cell_132/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_132/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_132/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_132/addAddV2$while/lstm_cell_132/MatMul:product:0&while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_132/BiasAddBiasAddwhile/lstm_cell_132/add:z:02while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_132/splitSplit,while/lstm_cell_132/split/split_dim:output:0$while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_132/SigmoidSigmoid"while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_1Sigmoid"while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mulMul!while/lstm_cell_132/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_132/ReluRelu"while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_1Mulwhile/lstm_cell_132/Sigmoid:y:0&while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/add_1AddV2while/lstm_cell_132/mul:z:0while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_2Sigmoid"while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_132/Relu_1Reluwhile/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_2Mul!while/lstm_cell_132/Sigmoid_2:y:0(while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_132/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_132/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_132/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_132/BiasAdd/ReadVariableOp*^while/lstm_cell_132/MatMul/ReadVariableOp,^while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_132_biasadd_readvariableop_resource5while_lstm_cell_132_biasadd_readvariableop_resource_0"n
4while_lstm_cell_132_matmul_1_readvariableop_resource6while_lstm_cell_132_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_132_matmul_readvariableop_resource4while_lstm_cell_132_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_132/BiasAdd/ReadVariableOp*while/lstm_cell_132/BiasAdd/ReadVariableOp2V
)while/lstm_cell_132/MatMul/ReadVariableOp)while/lstm_cell_132/MatMul/ReadVariableOp2Z
+while/lstm_cell_132/MatMul_1/ReadVariableOp+while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_814950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_814950___redundant_placeholder04
0while_while_cond_814950___redundant_placeholder14
0while_while_cond_814950___redundant_placeholder24
0while_while_cond_814950___redundant_placeholder3
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
while_body_814335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_132_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_132_matmul_readvariableop_resource:	?G
4while_lstm_cell_132_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_132_biasadd_readvariableop_resource:	???*while/lstm_cell_132/BiasAdd/ReadVariableOp?)while/lstm_cell_132/MatMul/ReadVariableOp?+while/lstm_cell_132/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_132/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_132/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_132/addAddV2$while/lstm_cell_132/MatMul:product:0&while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_132/BiasAddBiasAddwhile/lstm_cell_132/add:z:02while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_132/splitSplit,while/lstm_cell_132/split/split_dim:output:0$while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_132/SigmoidSigmoid"while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_1Sigmoid"while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mulMul!while/lstm_cell_132/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_132/ReluRelu"while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_1Mulwhile/lstm_cell_132/Sigmoid:y:0&while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/add_1AddV2while/lstm_cell_132/mul:z:0while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_132/Sigmoid_2Sigmoid"while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_132/Relu_1Reluwhile/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_132/mul_2Mul!while/lstm_cell_132/Sigmoid_2:y:0(while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_132/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_132/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_132/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_132/BiasAdd/ReadVariableOp*^while/lstm_cell_132/MatMul/ReadVariableOp,^while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_132_biasadd_readvariableop_resource5while_lstm_cell_132_biasadd_readvariableop_resource_0"n
4while_lstm_cell_132_matmul_1_readvariableop_resource6while_lstm_cell_132_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_132_matmul_readvariableop_resource4while_lstm_cell_132_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_132/BiasAdd/ReadVariableOp*while/lstm_cell_132/BiasAdd/ReadVariableOp2V
)while/lstm_cell_132/MatMul/ReadVariableOp)while/lstm_cell_132/MatMul/ReadVariableOp2Z
+while/lstm_cell_132/MatMul_1/ReadVariableOp+while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_430_layer_call_and_return_conditional_losses_814892
inputs_0?
,lstm_cell_133_matmul_readvariableop_resource:	d?A
.lstm_cell_133_matmul_1_readvariableop_resource:	2?<
-lstm_cell_133_biasadd_readvariableop_resource:	?
identity??$lstm_cell_133/BiasAdd/ReadVariableOp?#lstm_cell_133/MatMul/ReadVariableOp?%lstm_cell_133/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_133/MatMul/ReadVariableOpReadVariableOp,lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_133/MatMulMatMulstrided_slice_2:output:0+lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_133/MatMul_1MatMulzeros:output:0-lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_133/addAddV2lstm_cell_133/MatMul:product:0 lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_133/BiasAddBiasAddlstm_cell_133/add:z:0,lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_133/splitSplit&lstm_cell_133/split/split_dim:output:0lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_133/SigmoidSigmoidlstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_1Sigmoidlstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_133/mulMullstm_cell_133/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_133/ReluRelulstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_1Mullstm_cell_133/Sigmoid:y:0 lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_133/add_1AddV2lstm_cell_133/mul:z:0lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_2Sigmoidlstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_133/Relu_1Relulstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_2Mullstm_cell_133/Sigmoid_2:y:0"lstm_cell_133/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_133_matmul_readvariableop_resource.lstm_cell_133_matmul_1_readvariableop_resource-lstm_cell_133_biasadd_readvariableop_resource*
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
bodyR
while_body_814808*
condR
while_cond_814807*K
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
NoOpNoOp%^lstm_cell_133/BiasAdd/ReadVariableOp$^lstm_cell_133/MatMul/ReadVariableOp&^lstm_cell_133/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_133/BiasAdd/ReadVariableOp$lstm_cell_133/BiasAdd/ReadVariableOp2J
#lstm_cell_133/MatMul/ReadVariableOp#lstm_cell_133/MatMul/ReadVariableOp2N
%lstm_cell_133/MatMul_1/ReadVariableOp%lstm_cell_133/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_431_layer_call_and_return_conditional_losses_812277

inputs>
,lstm_cell_134_matmul_readvariableop_resource:2(@
.lstm_cell_134_matmul_1_readvariableop_resource:
(;
-lstm_cell_134_biasadd_readvariableop_resource:(
identity??$lstm_cell_134/BiasAdd/ReadVariableOp?#lstm_cell_134/MatMul/ReadVariableOp?%lstm_cell_134/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_134/MatMul/ReadVariableOpReadVariableOp,lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_134/MatMulMatMulstrided_slice_2:output:0+lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_134/MatMul_1MatMulzeros:output:0-lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_134/addAddV2lstm_cell_134/MatMul:product:0 lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_134/BiasAddBiasAddlstm_cell_134/add:z:0,lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_134/splitSplit&lstm_cell_134/split/split_dim:output:0lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_134/SigmoidSigmoidlstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_1Sigmoidlstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_134/mulMullstm_cell_134/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_134/ReluRelulstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_1Mullstm_cell_134/Sigmoid:y:0 lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_134/add_1AddV2lstm_cell_134/mul:z:0lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_2Sigmoidlstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_134/Relu_1Relulstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_2Mullstm_cell_134/Sigmoid_2:y:0"lstm_cell_134/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_134_matmul_readvariableop_resource.lstm_cell_134_matmul_1_readvariableop_resource-lstm_cell_134_biasadd_readvariableop_resource*
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
bodyR
while_body_812193*
condR
while_cond_812192*K
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
NoOpNoOp%^lstm_cell_134/BiasAdd/ReadVariableOp$^lstm_cell_134/MatMul/ReadVariableOp&^lstm_cell_134/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_134/BiasAdd/ReadVariableOp$lstm_cell_134/BiasAdd/ReadVariableOp2J
#lstm_cell_134/MatMul/ReadVariableOp#lstm_cell_134/MatMul/ReadVariableOp2N
%lstm_cell_134/MatMul_1/ReadVariableOp%lstm_cell_134/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_430_while_body_813717.
*lstm_430_while_lstm_430_while_loop_counter4
0lstm_430_while_lstm_430_while_maximum_iterations
lstm_430_while_placeholder 
lstm_430_while_placeholder_1 
lstm_430_while_placeholder_2 
lstm_430_while_placeholder_3-
)lstm_430_while_lstm_430_strided_slice_1_0i
elstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0:	d?R
?lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?M
>lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
lstm_430_while_identity
lstm_430_while_identity_1
lstm_430_while_identity_2
lstm_430_while_identity_3
lstm_430_while_identity_4
lstm_430_while_identity_5+
'lstm_430_while_lstm_430_strided_slice_1g
clstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensorN
;lstm_430_while_lstm_cell_133_matmul_readvariableop_resource:	d?P
=lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource:	2?K
<lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource:	???3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp?2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp?4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp?
@lstm_430/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_430/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensor_0lstm_430_while_placeholderIlstm_430/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp=lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_430/while/lstm_cell_133/MatMulMatMul9lstm_430/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp?lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_430/while/lstm_cell_133/MatMul_1MatMullstm_430_while_placeholder_2<lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_430/while/lstm_cell_133/addAddV2-lstm_430/while/lstm_cell_133/MatMul:product:0/lstm_430/while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp>lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_430/while/lstm_cell_133/BiasAddBiasAdd$lstm_430/while/lstm_cell_133/add:z:0;lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_430/while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_430/while/lstm_cell_133/splitSplit5lstm_430/while/lstm_cell_133/split/split_dim:output:0-lstm_430/while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_430/while/lstm_cell_133/SigmoidSigmoid+lstm_430/while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_430/while/lstm_cell_133/Sigmoid_1Sigmoid+lstm_430/while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_430/while/lstm_cell_133/mulMul*lstm_430/while/lstm_cell_133/Sigmoid_1:y:0lstm_430_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_430/while/lstm_cell_133/ReluRelu+lstm_430/while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_430/while/lstm_cell_133/mul_1Mul(lstm_430/while/lstm_cell_133/Sigmoid:y:0/lstm_430/while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_430/while/lstm_cell_133/add_1AddV2$lstm_430/while/lstm_cell_133/mul:z:0&lstm_430/while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_430/while/lstm_cell_133/Sigmoid_2Sigmoid+lstm_430/while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_430/while/lstm_cell_133/Relu_1Relu&lstm_430/while/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_430/while/lstm_cell_133/mul_2Mul*lstm_430/while/lstm_cell_133/Sigmoid_2:y:01lstm_430/while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_430/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_430_while_placeholder_1lstm_430_while_placeholder&lstm_430/while/lstm_cell_133/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_430/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_430/while/addAddV2lstm_430_while_placeholderlstm_430/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_430/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_430/while/add_1AddV2*lstm_430_while_lstm_430_while_loop_counterlstm_430/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_430/while/IdentityIdentitylstm_430/while/add_1:z:0^lstm_430/while/NoOp*
T0*
_output_shapes
: ?
lstm_430/while/Identity_1Identity0lstm_430_while_lstm_430_while_maximum_iterations^lstm_430/while/NoOp*
T0*
_output_shapes
: t
lstm_430/while/Identity_2Identitylstm_430/while/add:z:0^lstm_430/while/NoOp*
T0*
_output_shapes
: ?
lstm_430/while/Identity_3IdentityClstm_430/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_430/while/NoOp*
T0*
_output_shapes
: ?
lstm_430/while/Identity_4Identity&lstm_430/while/lstm_cell_133/mul_2:z:0^lstm_430/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_430/while/Identity_5Identity&lstm_430/while/lstm_cell_133/add_1:z:0^lstm_430/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_430/while/NoOpNoOp4^lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp3^lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp5^lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_430_while_identity lstm_430/while/Identity:output:0"?
lstm_430_while_identity_1"lstm_430/while/Identity_1:output:0"?
lstm_430_while_identity_2"lstm_430/while/Identity_2:output:0"?
lstm_430_while_identity_3"lstm_430/while/Identity_3:output:0"?
lstm_430_while_identity_4"lstm_430/while/Identity_4:output:0"?
lstm_430_while_identity_5"lstm_430/while/Identity_5:output:0"T
'lstm_430_while_lstm_430_strided_slice_1)lstm_430_while_lstm_430_strided_slice_1_0"~
<lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource>lstm_430_while_lstm_cell_133_biasadd_readvariableop_resource_0"?
=lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource?lstm_430_while_lstm_cell_133_matmul_1_readvariableop_resource_0"|
;lstm_430_while_lstm_cell_133_matmul_readvariableop_resource=lstm_430_while_lstm_cell_133_matmul_readvariableop_resource_0"?
clstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensorelstm_430_while_tensorarrayv2read_tensorlistgetitem_lstm_430_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp3lstm_430/while/lstm_cell_133/BiasAdd/ReadVariableOp2h
2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp2lstm_430/while/lstm_cell_133/MatMul/ReadVariableOp2l
4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp4lstm_430/while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_815651

inputs>
,lstm_cell_134_matmul_readvariableop_resource:2(@
.lstm_cell_134_matmul_1_readvariableop_resource:
(;
-lstm_cell_134_biasadd_readvariableop_resource:(
identity??$lstm_cell_134/BiasAdd/ReadVariableOp?#lstm_cell_134/MatMul/ReadVariableOp?%lstm_cell_134/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_134/MatMul/ReadVariableOpReadVariableOp,lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_134/MatMulMatMulstrided_slice_2:output:0+lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_134/MatMul_1MatMulzeros:output:0-lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_134/addAddV2lstm_cell_134/MatMul:product:0 lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_134/BiasAddBiasAddlstm_cell_134/add:z:0,lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_134/splitSplit&lstm_cell_134/split/split_dim:output:0lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_134/SigmoidSigmoidlstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_1Sigmoidlstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_134/mulMullstm_cell_134/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_134/ReluRelulstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_1Mullstm_cell_134/Sigmoid:y:0 lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_134/add_1AddV2lstm_cell_134/mul:z:0lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_2Sigmoidlstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_134/Relu_1Relulstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_2Mullstm_cell_134/Sigmoid_2:y:0"lstm_cell_134/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_134_matmul_readvariableop_resource.lstm_cell_134_matmul_1_readvariableop_resource-lstm_cell_134_biasadd_readvariableop_resource*
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
bodyR
while_body_815567*
condR
while_cond_815566*K
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
NoOpNoOp%^lstm_cell_134/BiasAdd/ReadVariableOp$^lstm_cell_134/MatMul/ReadVariableOp&^lstm_cell_134/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_134/BiasAdd/ReadVariableOp$lstm_cell_134/BiasAdd/ReadVariableOp2J
#lstm_cell_134/MatMul/ReadVariableOp#lstm_cell_134/MatMul/ReadVariableOp2N
%lstm_cell_134/MatMul_1/ReadVariableOp%lstm_cell_134/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_143_layer_call_and_return_conditional_losses_812302

inputs"
lstm_429_811978:	?"
lstm_429_811980:	d?
lstm_429_811982:	?"
lstm_430_812128:	d?"
lstm_430_812130:	2?
lstm_430_812132:	?!
lstm_431_812278:2(!
lstm_431_812280:
(
lstm_431_812282:("
dense_143_812296:

dense_143_812298:
identity??!dense_143/StatefulPartitionedCall? lstm_429/StatefulPartitionedCall? lstm_430/StatefulPartitionedCall? lstm_431/StatefulPartitionedCall?
 lstm_429/StatefulPartitionedCallStatefulPartitionedCallinputslstm_429_811978lstm_429_811980lstm_429_811982*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_811977?
 lstm_430/StatefulPartitionedCallStatefulPartitionedCall)lstm_429/StatefulPartitionedCall:output:0lstm_430_812128lstm_430_812130lstm_430_812132*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_812127?
 lstm_431/StatefulPartitionedCallStatefulPartitionedCall)lstm_430/StatefulPartitionedCall:output:0lstm_431_812278lstm_431_812280lstm_431_812282*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_812277?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_431/StatefulPartitionedCall:output:0dense_143_812296dense_143_812298*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_812295y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_143/StatefulPartitionedCall!^lstm_429/StatefulPartitionedCall!^lstm_430/StatefulPartitionedCall!^lstm_431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2D
 lstm_429/StatefulPartitionedCall lstm_429/StatefulPartitionedCall2D
 lstm_430/StatefulPartitionedCall lstm_430/StatefulPartitionedCall2D
 lstm_431/StatefulPartitionedCall lstm_431/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
D__inference_lstm_430_layer_call_and_return_conditional_losses_814749
inputs_0?
,lstm_cell_133_matmul_readvariableop_resource:	d?A
.lstm_cell_133_matmul_1_readvariableop_resource:	2?<
-lstm_cell_133_biasadd_readvariableop_resource:	?
identity??$lstm_cell_133/BiasAdd/ReadVariableOp?#lstm_cell_133/MatMul/ReadVariableOp?%lstm_cell_133/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_133/MatMul/ReadVariableOpReadVariableOp,lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_133/MatMulMatMulstrided_slice_2:output:0+lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_133/MatMul_1MatMulzeros:output:0-lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_133/addAddV2lstm_cell_133/MatMul:product:0 lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_133/BiasAddBiasAddlstm_cell_133/add:z:0,lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_133/splitSplit&lstm_cell_133/split/split_dim:output:0lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_133/SigmoidSigmoidlstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_1Sigmoidlstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_133/mulMullstm_cell_133/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_133/ReluRelulstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_1Mullstm_cell_133/Sigmoid:y:0 lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_133/add_1AddV2lstm_cell_133/mul:z:0lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_2Sigmoidlstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_133/Relu_1Relulstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_2Mullstm_cell_133/Sigmoid_2:y:0"lstm_cell_133/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_133_matmul_readvariableop_resource.lstm_cell_133_matmul_1_readvariableop_resource-lstm_cell_133_biasadd_readvariableop_resource*
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
bodyR
while_body_814665*
condR
while_cond_814664*K
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
NoOpNoOp%^lstm_cell_133/BiasAdd/ReadVariableOp$^lstm_cell_133/MatMul/ReadVariableOp&^lstm_cell_133/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_133/BiasAdd/ReadVariableOp$lstm_cell_133/BiasAdd/ReadVariableOp2J
#lstm_cell_133/MatMul/ReadVariableOp#lstm_cell_133/MatMul/ReadVariableOp2N
%lstm_cell_133/MatMul_1/ReadVariableOp%lstm_cell_133/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_430_while_cond_813289.
*lstm_430_while_lstm_430_while_loop_counter4
0lstm_430_while_lstm_430_while_maximum_iterations
lstm_430_while_placeholder 
lstm_430_while_placeholder_1 
lstm_430_while_placeholder_2 
lstm_430_while_placeholder_30
,lstm_430_while_less_lstm_430_strided_slice_1F
Blstm_430_while_lstm_430_while_cond_813289___redundant_placeholder0F
Blstm_430_while_lstm_430_while_cond_813289___redundant_placeholder1F
Blstm_430_while_lstm_430_while_cond_813289___redundant_placeholder2F
Blstm_430_while_lstm_430_while_cond_813289___redundant_placeholder3
lstm_430_while_identity
?
lstm_430/while/LessLesslstm_430_while_placeholder,lstm_430_while_less_lstm_430_strided_slice_1*
T0*
_output_shapes
: ]
lstm_430/while/IdentityIdentitylstm_430/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_430_while_identity lstm_430/while/Identity:output:0*(
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
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_816075

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
?
J__inference_sequential_143_layer_call_and_return_conditional_losses_812891

inputs"
lstm_429_812864:	?"
lstm_429_812866:	d?
lstm_429_812868:	?"
lstm_430_812871:	d?"
lstm_430_812873:	2?
lstm_430_812875:	?!
lstm_431_812878:2(!
lstm_431_812880:
(
lstm_431_812882:("
dense_143_812885:

dense_143_812887:
identity??!dense_143/StatefulPartitionedCall? lstm_429/StatefulPartitionedCall? lstm_430/StatefulPartitionedCall? lstm_431/StatefulPartitionedCall?
 lstm_429/StatefulPartitionedCallStatefulPartitionedCallinputslstm_429_812864lstm_429_812866lstm_429_812868*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_812823?
 lstm_430/StatefulPartitionedCallStatefulPartitionedCall)lstm_429/StatefulPartitionedCall:output:0lstm_430_812871lstm_430_812873lstm_430_812875*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_812658?
 lstm_431/StatefulPartitionedCallStatefulPartitionedCall)lstm_430/StatefulPartitionedCall:output:0lstm_431_812878lstm_431_812880lstm_431_812882*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_812493?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_431/StatefulPartitionedCall:output:0dense_143_812885dense_143_812887*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_812295y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_143/StatefulPartitionedCall!^lstm_429/StatefulPartitionedCall!^lstm_430/StatefulPartitionedCall!^lstm_431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2D
 lstm_429/StatefulPartitionedCall lstm_429/StatefulPartitionedCall2D
 lstm_430/StatefulPartitionedCall lstm_430/StatefulPartitionedCall2D
 lstm_431/StatefulPartitionedCall lstm_431/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_816009

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
while_cond_811558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_811558___redundant_placeholder04
0while_while_cond_811558___redundant_placeholder14
0while_while_cond_811558___redundant_placeholder24
0while_while_cond_811558___redundant_placeholder3
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
)sequential_143_lstm_431_while_body_810688L
Hsequential_143_lstm_431_while_sequential_143_lstm_431_while_loop_counterR
Nsequential_143_lstm_431_while_sequential_143_lstm_431_while_maximum_iterations-
)sequential_143_lstm_431_while_placeholder/
+sequential_143_lstm_431_while_placeholder_1/
+sequential_143_lstm_431_while_placeholder_2/
+sequential_143_lstm_431_while_placeholder_3K
Gsequential_143_lstm_431_while_sequential_143_lstm_431_strided_slice_1_0?
?sequential_143_lstm_431_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_431_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_143_lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0:2(`
Nsequential_143_lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0:
([
Msequential_143_lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0:(*
&sequential_143_lstm_431_while_identity,
(sequential_143_lstm_431_while_identity_1,
(sequential_143_lstm_431_while_identity_2,
(sequential_143_lstm_431_while_identity_3,
(sequential_143_lstm_431_while_identity_4,
(sequential_143_lstm_431_while_identity_5I
Esequential_143_lstm_431_while_sequential_143_lstm_431_strided_slice_1?
?sequential_143_lstm_431_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_431_tensorarrayunstack_tensorlistfromtensor\
Jsequential_143_lstm_431_while_lstm_cell_134_matmul_readvariableop_resource:2(^
Lsequential_143_lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource:
(Y
Ksequential_143_lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource:(??Bsequential_143/lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp?Asequential_143/lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp?Csequential_143/lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp?
Osequential_143/lstm_431/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_143/lstm_431/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_143_lstm_431_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_431_tensorarrayunstack_tensorlistfromtensor_0)sequential_143_lstm_431_while_placeholderXsequential_143/lstm_431/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_143/lstm_431/while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOpLsequential_143_lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_143/lstm_431/while/lstm_cell_134/MatMulMatMulHsequential_143/lstm_431/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_143/lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_143/lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOpNsequential_143_lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_143/lstm_431/while/lstm_cell_134/MatMul_1MatMul+sequential_143_lstm_431_while_placeholder_2Ksequential_143/lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_143/lstm_431/while/lstm_cell_134/addAddV2<sequential_143/lstm_431/while/lstm_cell_134/MatMul:product:0>sequential_143/lstm_431/while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_143/lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOpMsequential_143_lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_143/lstm_431/while/lstm_cell_134/BiasAddBiasAdd3sequential_143/lstm_431/while/lstm_cell_134/add:z:0Jsequential_143/lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_143/lstm_431/while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_143/lstm_431/while/lstm_cell_134/splitSplitDsequential_143/lstm_431/while/lstm_cell_134/split/split_dim:output:0<sequential_143/lstm_431/while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_143/lstm_431/while/lstm_cell_134/SigmoidSigmoid:sequential_143/lstm_431/while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_143/lstm_431/while/lstm_cell_134/Sigmoid_1Sigmoid:sequential_143/lstm_431/while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_143/lstm_431/while/lstm_cell_134/mulMul9sequential_143/lstm_431/while/lstm_cell_134/Sigmoid_1:y:0+sequential_143_lstm_431_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_143/lstm_431/while/lstm_cell_134/ReluRelu:sequential_143/lstm_431/while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_143/lstm_431/while/lstm_cell_134/mul_1Mul7sequential_143/lstm_431/while/lstm_cell_134/Sigmoid:y:0>sequential_143/lstm_431/while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_143/lstm_431/while/lstm_cell_134/add_1AddV23sequential_143/lstm_431/while/lstm_cell_134/mul:z:05sequential_143/lstm_431/while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_143/lstm_431/while/lstm_cell_134/Sigmoid_2Sigmoid:sequential_143/lstm_431/while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_143/lstm_431/while/lstm_cell_134/Relu_1Relu5sequential_143/lstm_431/while/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_143/lstm_431/while/lstm_cell_134/mul_2Mul9sequential_143/lstm_431/while/lstm_cell_134/Sigmoid_2:y:0@sequential_143/lstm_431/while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_143/lstm_431/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_143_lstm_431_while_placeholder_1)sequential_143_lstm_431_while_placeholder5sequential_143/lstm_431/while/lstm_cell_134/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_143/lstm_431/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_143/lstm_431/while/addAddV2)sequential_143_lstm_431_while_placeholder,sequential_143/lstm_431/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_143/lstm_431/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_143/lstm_431/while/add_1AddV2Hsequential_143_lstm_431_while_sequential_143_lstm_431_while_loop_counter.sequential_143/lstm_431/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_143/lstm_431/while/IdentityIdentity'sequential_143/lstm_431/while/add_1:z:0#^sequential_143/lstm_431/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_431/while/Identity_1IdentityNsequential_143_lstm_431_while_sequential_143_lstm_431_while_maximum_iterations#^sequential_143/lstm_431/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_431/while/Identity_2Identity%sequential_143/lstm_431/while/add:z:0#^sequential_143/lstm_431/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_431/while/Identity_3IdentityRsequential_143/lstm_431/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_143/lstm_431/while/NoOp*
T0*
_output_shapes
: ?
(sequential_143/lstm_431/while/Identity_4Identity5sequential_143/lstm_431/while/lstm_cell_134/mul_2:z:0#^sequential_143/lstm_431/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_143/lstm_431/while/Identity_5Identity5sequential_143/lstm_431/while/lstm_cell_134/add_1:z:0#^sequential_143/lstm_431/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_143/lstm_431/while/NoOpNoOpC^sequential_143/lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOpB^sequential_143/lstm_431/while/lstm_cell_134/MatMul/ReadVariableOpD^sequential_143/lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_143_lstm_431_while_identity/sequential_143/lstm_431/while/Identity:output:0"]
(sequential_143_lstm_431_while_identity_11sequential_143/lstm_431/while/Identity_1:output:0"]
(sequential_143_lstm_431_while_identity_21sequential_143/lstm_431/while/Identity_2:output:0"]
(sequential_143_lstm_431_while_identity_31sequential_143/lstm_431/while/Identity_3:output:0"]
(sequential_143_lstm_431_while_identity_41sequential_143/lstm_431/while/Identity_4:output:0"]
(sequential_143_lstm_431_while_identity_51sequential_143/lstm_431/while/Identity_5:output:0"?
Ksequential_143_lstm_431_while_lstm_cell_134_biasadd_readvariableop_resourceMsequential_143_lstm_431_while_lstm_cell_134_biasadd_readvariableop_resource_0"?
Lsequential_143_lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resourceNsequential_143_lstm_431_while_lstm_cell_134_matmul_1_readvariableop_resource_0"?
Jsequential_143_lstm_431_while_lstm_cell_134_matmul_readvariableop_resourceLsequential_143_lstm_431_while_lstm_cell_134_matmul_readvariableop_resource_0"?
Esequential_143_lstm_431_while_sequential_143_lstm_431_strided_slice_1Gsequential_143_lstm_431_while_sequential_143_lstm_431_strided_slice_1_0"?
?sequential_143_lstm_431_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_431_tensorarrayunstack_tensorlistfromtensor?sequential_143_lstm_431_while_tensorarrayv2read_tensorlistgetitem_sequential_143_lstm_431_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_143/lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOpBsequential_143/lstm_431/while/lstm_cell_134/BiasAdd/ReadVariableOp2?
Asequential_143/lstm_431/while/lstm_cell_134/MatMul/ReadVariableOpAsequential_143/lstm_431/while/lstm_cell_134/MatMul/ReadVariableOp2?
Csequential_143/lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOpCsequential_143/lstm_431/while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_810859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_132_810883_0:	?/
while_lstm_cell_132_810885_0:	d?+
while_lstm_cell_132_810887_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_132_810883:	?-
while_lstm_cell_132_810885:	d?)
while_lstm_cell_132_810887:	???+while/lstm_cell_132/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_132/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_132_810883_0while_lstm_cell_132_810885_0while_lstm_cell_132_810887_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810845?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_132/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_132/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_132/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_132/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_132_810883while_lstm_cell_132_810883_0":
while_lstm_cell_132_810885while_lstm_cell_132_810885_0":
while_lstm_cell_132_810887while_lstm_cell_132_810887_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_132/StatefulPartitionedCall+while/lstm_cell_132/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_815281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_134_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_134_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_134_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_134_matmul_readvariableop_resource:2(F
4while_lstm_cell_134_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_134_biasadd_readvariableop_resource:(??*while/lstm_cell_134/BiasAdd/ReadVariableOp?)while/lstm_cell_134/MatMul/ReadVariableOp?+while/lstm_cell_134/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_134/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_134_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_134/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_134_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_134/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_134/addAddV2$while/lstm_cell_134/MatMul:product:0&while/lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_134_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_134/BiasAddBiasAddwhile/lstm_cell_134/add:z:02while/lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_134/splitSplit,while/lstm_cell_134/split/split_dim:output:0$while/lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_134/SigmoidSigmoid"while/lstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_1Sigmoid"while/lstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mulMul!while/lstm_cell_134/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_134/ReluRelu"while/lstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_1Mulwhile/lstm_cell_134/Sigmoid:y:0&while/lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/add_1AddV2while/lstm_cell_134/mul:z:0while/lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_134/Sigmoid_2Sigmoid"while/lstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_134/Relu_1Reluwhile/lstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_134/mul_2Mul!while/lstm_cell_134/Sigmoid_2:y:0(while/lstm_cell_134/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_134/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_134/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_134/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_134/BiasAdd/ReadVariableOp*^while/lstm_cell_134/MatMul/ReadVariableOp,^while/lstm_cell_134/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_134_biasadd_readvariableop_resource5while_lstm_cell_134_biasadd_readvariableop_resource_0"n
4while_lstm_cell_134_matmul_1_readvariableop_resource6while_lstm_cell_134_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_134_matmul_readvariableop_resource4while_lstm_cell_134_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_134/BiasAdd/ReadVariableOp*while/lstm_cell_134/BiasAdd/ReadVariableOp2V
)while/lstm_cell_134/MatMul/ReadVariableOp)while/lstm_cell_134/MatMul/ReadVariableOp2Z
+while/lstm_cell_134/MatMul_1/ReadVariableOp+while/lstm_cell_134/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_815094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_133_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_133_matmul_readvariableop_resource:	d?G
4while_lstm_cell_133_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_133_biasadd_readvariableop_resource:	???*while/lstm_cell_133/BiasAdd/ReadVariableOp?)while/lstm_cell_133/MatMul/ReadVariableOp?+while/lstm_cell_133/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_133/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_133/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_133/addAddV2$while/lstm_cell_133/MatMul:product:0&while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_133/BiasAddBiasAddwhile/lstm_cell_133/add:z:02while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_133/splitSplit,while/lstm_cell_133/split/split_dim:output:0$while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_133/SigmoidSigmoid"while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_1Sigmoid"while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mulMul!while/lstm_cell_133/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_133/ReluRelu"while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_1Mulwhile/lstm_cell_133/Sigmoid:y:0&while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/add_1AddV2while/lstm_cell_133/mul:z:0while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_2Sigmoid"while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_133/Relu_1Reluwhile/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_2Mul!while/lstm_cell_133/Sigmoid_2:y:0(while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_133/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_133/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_133/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_133/BiasAdd/ReadVariableOp*^while/lstm_cell_133/MatMul/ReadVariableOp,^while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_133_biasadd_readvariableop_resource5while_lstm_cell_133_biasadd_readvariableop_resource_0"n
4while_lstm_cell_133_matmul_1_readvariableop_resource6while_lstm_cell_133_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_133_matmul_readvariableop_resource4while_lstm_cell_133_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_133/BiasAdd/ReadVariableOp*while/lstm_cell_133/BiasAdd/ReadVariableOp2V
)while/lstm_cell_133/MatMul/ReadVariableOp)while/lstm_cell_133/MatMul/ReadVariableOp2Z
+while/lstm_cell_133/MatMul_1/ReadVariableOp+while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_814191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_814191___redundant_placeholder04
0while_while_cond_814191___redundant_placeholder14
0while_while_cond_814191___redundant_placeholder24
0while_while_cond_814191___redundant_placeholder3
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
)__inference_lstm_431_layer_call_fn_815189
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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_811628o
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_815794

inputs>
,lstm_cell_134_matmul_readvariableop_resource:2(@
.lstm_cell_134_matmul_1_readvariableop_resource:
(;
-lstm_cell_134_biasadd_readvariableop_resource:(
identity??$lstm_cell_134/BiasAdd/ReadVariableOp?#lstm_cell_134/MatMul/ReadVariableOp?%lstm_cell_134/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_134/MatMul/ReadVariableOpReadVariableOp,lstm_cell_134_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_134/MatMulMatMulstrided_slice_2:output:0+lstm_cell_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_134/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_134_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_134/MatMul_1MatMulzeros:output:0-lstm_cell_134/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_134/addAddV2lstm_cell_134/MatMul:product:0 lstm_cell_134/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_134/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_134_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_134/BiasAddBiasAddlstm_cell_134/add:z:0,lstm_cell_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_134/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_134/splitSplit&lstm_cell_134/split/split_dim:output:0lstm_cell_134/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_134/SigmoidSigmoidlstm_cell_134/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_1Sigmoidlstm_cell_134/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_134/mulMullstm_cell_134/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_134/ReluRelulstm_cell_134/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_1Mullstm_cell_134/Sigmoid:y:0 lstm_cell_134/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_134/add_1AddV2lstm_cell_134/mul:z:0lstm_cell_134/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_134/Sigmoid_2Sigmoidlstm_cell_134/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_134/Relu_1Relulstm_cell_134/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_134/mul_2Mullstm_cell_134/Sigmoid_2:y:0"lstm_cell_134/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_134_matmul_readvariableop_resource.lstm_cell_134_matmul_1_readvariableop_resource-lstm_cell_134_biasadd_readvariableop_resource*
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
bodyR
while_body_815710*
condR
while_cond_815709*K
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
NoOpNoOp%^lstm_cell_134/BiasAdd/ReadVariableOp$^lstm_cell_134/MatMul/ReadVariableOp&^lstm_cell_134/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_134/BiasAdd/ReadVariableOp$lstm_cell_134/BiasAdd/ReadVariableOp2J
#lstm_cell_134/MatMul/ReadVariableOp#lstm_cell_134/MatMul/ReadVariableOp2N
%lstm_cell_134/MatMul_1/ReadVariableOp%lstm_cell_134/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_430_layer_call_and_return_conditional_losses_812658

inputs?
,lstm_cell_133_matmul_readvariableop_resource:	d?A
.lstm_cell_133_matmul_1_readvariableop_resource:	2?<
-lstm_cell_133_biasadd_readvariableop_resource:	?
identity??$lstm_cell_133/BiasAdd/ReadVariableOp?#lstm_cell_133/MatMul/ReadVariableOp?%lstm_cell_133/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_133/MatMul/ReadVariableOpReadVariableOp,lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_133/MatMulMatMulstrided_slice_2:output:0+lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_133/MatMul_1MatMulzeros:output:0-lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_133/addAddV2lstm_cell_133/MatMul:product:0 lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_133/BiasAddBiasAddlstm_cell_133/add:z:0,lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_133/splitSplit&lstm_cell_133/split/split_dim:output:0lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_133/SigmoidSigmoidlstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_1Sigmoidlstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_133/mulMullstm_cell_133/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_133/ReluRelulstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_1Mullstm_cell_133/Sigmoid:y:0 lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_133/add_1AddV2lstm_cell_133/mul:z:0lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_2Sigmoidlstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_133/Relu_1Relulstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_2Mullstm_cell_133/Sigmoid_2:y:0"lstm_cell_133/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_133_matmul_readvariableop_resource.lstm_cell_133_matmul_1_readvariableop_resource-lstm_cell_133_biasadd_readvariableop_resource*
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
bodyR
while_body_812574*
condR
while_cond_812573*K
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
NoOpNoOp%^lstm_cell_133/BiasAdd/ReadVariableOp$^lstm_cell_133/MatMul/ReadVariableOp&^lstm_cell_133/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_133/BiasAdd/ReadVariableOp$lstm_cell_133/BiasAdd/ReadVariableOp2J
#lstm_cell_133/MatMul/ReadVariableOp#lstm_cell_133/MatMul/ReadVariableOp2N
%lstm_cell_133/MatMul_1/ReadVariableOp%lstm_cell_133/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_143_layer_call_and_return_conditional_losses_813003
lstm_429_input"
lstm_429_812976:	?"
lstm_429_812978:	d?
lstm_429_812980:	?"
lstm_430_812983:	d?"
lstm_430_812985:	2?
lstm_430_812987:	?!
lstm_431_812990:2(!
lstm_431_812992:
(
lstm_431_812994:("
dense_143_812997:

dense_143_812999:
identity??!dense_143/StatefulPartitionedCall? lstm_429/StatefulPartitionedCall? lstm_430/StatefulPartitionedCall? lstm_431/StatefulPartitionedCall?
 lstm_429/StatefulPartitionedCallStatefulPartitionedCalllstm_429_inputlstm_429_812976lstm_429_812978lstm_429_812980*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_429_layer_call_and_return_conditional_losses_812823?
 lstm_430/StatefulPartitionedCallStatefulPartitionedCall)lstm_429/StatefulPartitionedCall:output:0lstm_430_812983lstm_430_812985lstm_430_812987*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_812658?
 lstm_431/StatefulPartitionedCallStatefulPartitionedCall)lstm_430/StatefulPartitionedCall:output:0lstm_431_812990lstm_431_812992lstm_431_812994*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_812493?
!dense_143/StatefulPartitionedCallStatefulPartitionedCall)lstm_431/StatefulPartitionedCall:output:0dense_143_812997dense_143_812999*
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
E__inference_dense_143_layer_call_and_return_conditional_losses_812295y
IdentityIdentity*dense_143/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_143/StatefulPartitionedCall!^lstm_429/StatefulPartitionedCall!^lstm_430/StatefulPartitionedCall!^lstm_431/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2D
 lstm_429/StatefulPartitionedCall lstm_429/StatefulPartitionedCall2D
 lstm_430/StatefulPartitionedCall lstm_430/StatefulPartitionedCall2D
 lstm_431/StatefulPartitionedCall lstm_431/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_429_input
?J
?
D__inference_lstm_430_layer_call_and_return_conditional_losses_812127

inputs?
,lstm_cell_133_matmul_readvariableop_resource:	d?A
.lstm_cell_133_matmul_1_readvariableop_resource:	2?<
-lstm_cell_133_biasadd_readvariableop_resource:	?
identity??$lstm_cell_133/BiasAdd/ReadVariableOp?#lstm_cell_133/MatMul/ReadVariableOp?%lstm_cell_133/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_133/MatMul/ReadVariableOpReadVariableOp,lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_133/MatMulMatMulstrided_slice_2:output:0+lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_133/MatMul_1MatMulzeros:output:0-lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_133/addAddV2lstm_cell_133/MatMul:product:0 lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_133/BiasAddBiasAddlstm_cell_133/add:z:0,lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_133/splitSplit&lstm_cell_133/split/split_dim:output:0lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_133/SigmoidSigmoidlstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_1Sigmoidlstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_133/mulMullstm_cell_133/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_133/ReluRelulstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_1Mullstm_cell_133/Sigmoid:y:0 lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_133/add_1AddV2lstm_cell_133/mul:z:0lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_2Sigmoidlstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_133/Relu_1Relulstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_2Mullstm_cell_133/Sigmoid_2:y:0"lstm_cell_133/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_133_matmul_readvariableop_resource.lstm_cell_133_matmul_1_readvariableop_resource-lstm_cell_133_biasadd_readvariableop_resource*
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
bodyR
while_body_812043*
condR
while_cond_812042*K
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
NoOpNoOp%^lstm_cell_133/BiasAdd/ReadVariableOp$^lstm_cell_133/MatMul/ReadVariableOp&^lstm_cell_133/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_133/BiasAdd/ReadVariableOp$lstm_cell_133/BiasAdd/ReadVariableOp2J
#lstm_cell_133/MatMul/ReadVariableOp#lstm_cell_133/MatMul/ReadVariableOp2N
%lstm_cell_133/MatMul_1/ReadVariableOp%lstm_cell_133/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_143_layer_call_fn_813092

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
J__inference_sequential_143_layer_call_and_return_conditional_losses_812891o
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
)__inference_lstm_430_layer_call_fn_814606

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
GPU 2J 8? *M
fHRF
D__inference_lstm_430_layer_call_and_return_conditional_losses_812658s
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
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811195

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
?W
?
__inference__traced_save_816250
file_prefix/
+savev2_dense_143_kernel_read_readvariableop-
)savev2_dense_143_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_429_lstm_cell_429_kernel_read_readvariableopF
Bsavev2_lstm_429_lstm_cell_429_recurrent_kernel_read_readvariableop:
6savev2_lstm_429_lstm_cell_429_bias_read_readvariableop<
8savev2_lstm_430_lstm_cell_430_kernel_read_readvariableopF
Bsavev2_lstm_430_lstm_cell_430_recurrent_kernel_read_readvariableop:
6savev2_lstm_430_lstm_cell_430_bias_read_readvariableop<
8savev2_lstm_431_lstm_cell_431_kernel_read_readvariableopF
Bsavev2_lstm_431_lstm_cell_431_recurrent_kernel_read_readvariableop:
6savev2_lstm_431_lstm_cell_431_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_143_kernel_m_read_readvariableop4
0savev2_adam_dense_143_bias_m_read_readvariableopC
?savev2_adam_lstm_429_lstm_cell_429_kernel_m_read_readvariableopM
Isavev2_adam_lstm_429_lstm_cell_429_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_429_lstm_cell_429_bias_m_read_readvariableopC
?savev2_adam_lstm_430_lstm_cell_430_kernel_m_read_readvariableopM
Isavev2_adam_lstm_430_lstm_cell_430_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_430_lstm_cell_430_bias_m_read_readvariableopC
?savev2_adam_lstm_431_lstm_cell_431_kernel_m_read_readvariableopM
Isavev2_adam_lstm_431_lstm_cell_431_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_431_lstm_cell_431_bias_m_read_readvariableop6
2savev2_adam_dense_143_kernel_v_read_readvariableop4
0savev2_adam_dense_143_bias_v_read_readvariableopC
?savev2_adam_lstm_429_lstm_cell_429_kernel_v_read_readvariableopM
Isavev2_adam_lstm_429_lstm_cell_429_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_429_lstm_cell_429_bias_v_read_readvariableopC
?savev2_adam_lstm_430_lstm_cell_430_kernel_v_read_readvariableopM
Isavev2_adam_lstm_430_lstm_cell_430_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_430_lstm_cell_430_bias_v_read_readvariableopC
?savev2_adam_lstm_431_lstm_cell_431_kernel_v_read_readvariableopM
Isavev2_adam_lstm_431_lstm_cell_431_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_431_lstm_cell_431_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_143_kernel_read_readvariableop)savev2_dense_143_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_429_lstm_cell_429_kernel_read_readvariableopBsavev2_lstm_429_lstm_cell_429_recurrent_kernel_read_readvariableop6savev2_lstm_429_lstm_cell_429_bias_read_readvariableop8savev2_lstm_430_lstm_cell_430_kernel_read_readvariableopBsavev2_lstm_430_lstm_cell_430_recurrent_kernel_read_readvariableop6savev2_lstm_430_lstm_cell_430_bias_read_readvariableop8savev2_lstm_431_lstm_cell_431_kernel_read_readvariableopBsavev2_lstm_431_lstm_cell_431_recurrent_kernel_read_readvariableop6savev2_lstm_431_lstm_cell_431_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_143_kernel_m_read_readvariableop0savev2_adam_dense_143_bias_m_read_readvariableop?savev2_adam_lstm_429_lstm_cell_429_kernel_m_read_readvariableopIsavev2_adam_lstm_429_lstm_cell_429_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_429_lstm_cell_429_bias_m_read_readvariableop?savev2_adam_lstm_430_lstm_cell_430_kernel_m_read_readvariableopIsavev2_adam_lstm_430_lstm_cell_430_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_430_lstm_cell_430_bias_m_read_readvariableop?savev2_adam_lstm_431_lstm_cell_431_kernel_m_read_readvariableopIsavev2_adam_lstm_431_lstm_cell_431_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_431_lstm_cell_431_bias_m_read_readvariableop2savev2_adam_dense_143_kernel_v_read_readvariableop0savev2_adam_dense_143_bias_v_read_readvariableop?savev2_adam_lstm_429_lstm_cell_429_kernel_v_read_readvariableopIsavev2_adam_lstm_429_lstm_cell_429_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_429_lstm_cell_429_bias_v_read_readvariableop?savev2_adam_lstm_430_lstm_cell_430_kernel_v_read_readvariableopIsavev2_adam_lstm_430_lstm_cell_430_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_430_lstm_cell_430_bias_v_read_readvariableop?savev2_adam_lstm_431_lstm_cell_431_kernel_v_read_readvariableopIsavev2_adam_lstm_431_lstm_cell_431_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_431_lstm_cell_431_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
/__inference_sequential_143_layer_call_fn_812327
lstm_429_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_429_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_143_layer_call_and_return_conditional_losses_812302o
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
_user_specified_namelstm_429_input
?"
?
while_body_811400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_133_811424_0:	d?/
while_lstm_cell_133_811426_0:	2?+
while_lstm_cell_133_811428_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_133_811424:	d?-
while_lstm_cell_133_811426:	2?)
while_lstm_cell_133_811428:	???+while/lstm_cell_133/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_133/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_133_811424_0while_lstm_cell_133_811426_0while_lstm_cell_133_811428_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811341?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_133/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_133/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_133/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_133/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_133_811424while_lstm_cell_133_811424_0":
while_lstm_cell_133_811426while_lstm_cell_133_811426_0":
while_lstm_cell_133_811428while_lstm_cell_133_811428_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_133/StatefulPartitionedCall+while/lstm_cell_133/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_811209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_133_811233_0:	d?/
while_lstm_cell_133_811235_0:	2?+
while_lstm_cell_133_811237_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_133_811233:	d?-
while_lstm_cell_133_811235:	2?)
while_lstm_cell_133_811237:	???+while/lstm_cell_133/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_133/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_133_811233_0while_lstm_cell_133_811235_0while_lstm_cell_133_811237_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_811195?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_133/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_133/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_133/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_133/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_133_811233while_lstm_cell_133_811233_0":
while_lstm_cell_133_811235while_lstm_cell_133_811235_0":
while_lstm_cell_133_811237while_lstm_cell_133_811237_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_133/StatefulPartitionedCall+while/lstm_cell_133/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_134_layer_call_fn_816043

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811691o
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
while_body_812043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_133_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_133_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_133_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_133_matmul_readvariableop_resource:	d?G
4while_lstm_cell_133_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_133_biasadd_readvariableop_resource:	???*while/lstm_cell_133/BiasAdd/ReadVariableOp?)while/lstm_cell_133/MatMul/ReadVariableOp?+while/lstm_cell_133/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_133/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_133_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_133/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_133_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_133/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_133/addAddV2$while/lstm_cell_133/MatMul:product:0&while/lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_133_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_133/BiasAddBiasAddwhile/lstm_cell_133/add:z:02while/lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_133/splitSplit,while/lstm_cell_133/split/split_dim:output:0$while/lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_133/SigmoidSigmoid"while/lstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_1Sigmoid"while/lstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mulMul!while/lstm_cell_133/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_133/ReluRelu"while/lstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_1Mulwhile/lstm_cell_133/Sigmoid:y:0&while/lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/add_1AddV2while/lstm_cell_133/mul:z:0while/lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_133/Sigmoid_2Sigmoid"while/lstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_133/Relu_1Reluwhile/lstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_133/mul_2Mul!while/lstm_cell_133/Sigmoid_2:y:0(while/lstm_cell_133/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_133/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_133/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_133/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_133/BiasAdd/ReadVariableOp*^while/lstm_cell_133/MatMul/ReadVariableOp,^while/lstm_cell_133/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_133_biasadd_readvariableop_resource5while_lstm_cell_133_biasadd_readvariableop_resource_0"n
4while_lstm_cell_133_matmul_1_readvariableop_resource6while_lstm_cell_133_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_133_matmul_readvariableop_resource4while_lstm_cell_133_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_133/BiasAdd/ReadVariableOp*while/lstm_cell_133/BiasAdd/ReadVariableOp2V
)while/lstm_cell_133/MatMul/ReadVariableOp)while/lstm_cell_133/MatMul/ReadVariableOp2Z
+while/lstm_cell_133/MatMul_1/ReadVariableOp+while/lstm_cell_133/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_431_layer_call_fn_815211

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
GPU 2J 8? *M
fHRF
D__inference_lstm_431_layer_call_and_return_conditional_losses_812277o
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
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811545

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
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_811691

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
while_cond_814807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_814807___redundant_placeholder04
0while_while_cond_814807___redundant_placeholder14
0while_while_cond_814807___redundant_placeholder24
0while_while_cond_814807___redundant_placeholder3
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_811977

inputs?
,lstm_cell_132_matmul_readvariableop_resource:	?A
.lstm_cell_132_matmul_1_readvariableop_resource:	d?<
-lstm_cell_132_biasadd_readvariableop_resource:	?
identity??$lstm_cell_132/BiasAdd/ReadVariableOp?#lstm_cell_132/MatMul/ReadVariableOp?%lstm_cell_132/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_132/MatMul/ReadVariableOpReadVariableOp,lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_132/MatMulMatMulstrided_slice_2:output:0+lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_132/MatMul_1MatMulzeros:output:0-lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_132/addAddV2lstm_cell_132/MatMul:product:0 lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_132/BiasAddBiasAddlstm_cell_132/add:z:0,lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_132/splitSplit&lstm_cell_132/split/split_dim:output:0lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_132/SigmoidSigmoidlstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_1Sigmoidlstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_132/mulMullstm_cell_132/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_132/ReluRelulstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_1Mullstm_cell_132/Sigmoid:y:0 lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_132/add_1AddV2lstm_cell_132/mul:z:0lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_2Sigmoidlstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_132/Relu_1Relulstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_2Mullstm_cell_132/Sigmoid_2:y:0"lstm_cell_132/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_132_matmul_readvariableop_resource.lstm_cell_132_matmul_1_readvariableop_resource-lstm_cell_132_biasadd_readvariableop_resource*
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
bodyR
while_body_811893*
condR
while_cond_811892*K
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
NoOpNoOp%^lstm_cell_132/BiasAdd/ReadVariableOp$^lstm_cell_132/MatMul/ReadVariableOp&^lstm_cell_132/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_132/BiasAdd/ReadVariableOp$lstm_cell_132/BiasAdd/ReadVariableOp2J
#lstm_cell_132/MatMul/ReadVariableOp#lstm_cell_132/MatMul/ReadVariableOp2N
%lstm_cell_132/MatMul_1/ReadVariableOp%lstm_cell_132/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_812042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_812042___redundant_placeholder04
0while_while_cond_812042___redundant_placeholder14
0while_while_cond_812042___redundant_placeholder24
0while_while_cond_812042___redundant_placeholder3
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_814276
inputs_0?
,lstm_cell_132_matmul_readvariableop_resource:	?A
.lstm_cell_132_matmul_1_readvariableop_resource:	d?<
-lstm_cell_132_biasadd_readvariableop_resource:	?
identity??$lstm_cell_132/BiasAdd/ReadVariableOp?#lstm_cell_132/MatMul/ReadVariableOp?%lstm_cell_132/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_132/MatMul/ReadVariableOpReadVariableOp,lstm_cell_132_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_132/MatMulMatMulstrided_slice_2:output:0+lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_132_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_132/MatMul_1MatMulzeros:output:0-lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_132/addAddV2lstm_cell_132/MatMul:product:0 lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_132_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_132/BiasAddBiasAddlstm_cell_132/add:z:0,lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_132/splitSplit&lstm_cell_132/split/split_dim:output:0lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_132/SigmoidSigmoidlstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_1Sigmoidlstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_132/mulMullstm_cell_132/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_132/ReluRelulstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_1Mullstm_cell_132/Sigmoid:y:0 lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_132/add_1AddV2lstm_cell_132/mul:z:0lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_132/Sigmoid_2Sigmoidlstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_132/Relu_1Relulstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_132/mul_2Mullstm_cell_132/Sigmoid_2:y:0"lstm_cell_132/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_132_matmul_readvariableop_resource.lstm_cell_132_matmul_1_readvariableop_resource-lstm_cell_132_biasadd_readvariableop_resource*
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
bodyR
while_body_814192*
condR
while_cond_814191*K
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
NoOpNoOp%^lstm_cell_132/BiasAdd/ReadVariableOp$^lstm_cell_132/MatMul/ReadVariableOp&^lstm_cell_132/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_132/BiasAdd/ReadVariableOp$lstm_cell_132/BiasAdd/ReadVariableOp2J
#lstm_cell_132/MatMul/ReadVariableOp#lstm_cell_132/MatMul/ReadVariableOp2N
%lstm_cell_132/MatMul_1/ReadVariableOp%lstm_cell_132/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_429_while_body_813151.
*lstm_429_while_lstm_429_while_loop_counter4
0lstm_429_while_lstm_429_while_maximum_iterations
lstm_429_while_placeholder 
lstm_429_while_placeholder_1 
lstm_429_while_placeholder_2 
lstm_429_while_placeholder_3-
)lstm_429_while_lstm_429_strided_slice_1_0i
elstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0:	?R
?lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0:	d?M
>lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0:	?
lstm_429_while_identity
lstm_429_while_identity_1
lstm_429_while_identity_2
lstm_429_while_identity_3
lstm_429_while_identity_4
lstm_429_while_identity_5+
'lstm_429_while_lstm_429_strided_slice_1g
clstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensorN
;lstm_429_while_lstm_cell_132_matmul_readvariableop_resource:	?P
=lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource:	d?K
<lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource:	???3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp?2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp?4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp?
@lstm_429/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_429/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensor_0lstm_429_while_placeholderIlstm_429/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOpReadVariableOp=lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_429/while/lstm_cell_132/MatMulMatMul9lstm_429/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOpReadVariableOp?lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_429/while/lstm_cell_132/MatMul_1MatMullstm_429_while_placeholder_2<lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_429/while/lstm_cell_132/addAddV2-lstm_429/while/lstm_cell_132/MatMul:product:0/lstm_429/while/lstm_cell_132/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOpReadVariableOp>lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_429/while/lstm_cell_132/BiasAddBiasAdd$lstm_429/while/lstm_cell_132/add:z:0;lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_429/while/lstm_cell_132/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_429/while/lstm_cell_132/splitSplit5lstm_429/while/lstm_cell_132/split/split_dim:output:0-lstm_429/while/lstm_cell_132/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_429/while/lstm_cell_132/SigmoidSigmoid+lstm_429/while/lstm_cell_132/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_429/while/lstm_cell_132/Sigmoid_1Sigmoid+lstm_429/while/lstm_cell_132/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_429/while/lstm_cell_132/mulMul*lstm_429/while/lstm_cell_132/Sigmoid_1:y:0lstm_429_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_429/while/lstm_cell_132/ReluRelu+lstm_429/while/lstm_cell_132/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_429/while/lstm_cell_132/mul_1Mul(lstm_429/while/lstm_cell_132/Sigmoid:y:0/lstm_429/while/lstm_cell_132/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_429/while/lstm_cell_132/add_1AddV2$lstm_429/while/lstm_cell_132/mul:z:0&lstm_429/while/lstm_cell_132/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_429/while/lstm_cell_132/Sigmoid_2Sigmoid+lstm_429/while/lstm_cell_132/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_429/while/lstm_cell_132/Relu_1Relu&lstm_429/while/lstm_cell_132/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_429/while/lstm_cell_132/mul_2Mul*lstm_429/while/lstm_cell_132/Sigmoid_2:y:01lstm_429/while/lstm_cell_132/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_429/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_429_while_placeholder_1lstm_429_while_placeholder&lstm_429/while/lstm_cell_132/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_429/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_429/while/addAddV2lstm_429_while_placeholderlstm_429/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_429/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_429/while/add_1AddV2*lstm_429_while_lstm_429_while_loop_counterlstm_429/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_429/while/IdentityIdentitylstm_429/while/add_1:z:0^lstm_429/while/NoOp*
T0*
_output_shapes
: ?
lstm_429/while/Identity_1Identity0lstm_429_while_lstm_429_while_maximum_iterations^lstm_429/while/NoOp*
T0*
_output_shapes
: t
lstm_429/while/Identity_2Identitylstm_429/while/add:z:0^lstm_429/while/NoOp*
T0*
_output_shapes
: ?
lstm_429/while/Identity_3IdentityClstm_429/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_429/while/NoOp*
T0*
_output_shapes
: ?
lstm_429/while/Identity_4Identity&lstm_429/while/lstm_cell_132/mul_2:z:0^lstm_429/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_429/while/Identity_5Identity&lstm_429/while/lstm_cell_132/add_1:z:0^lstm_429/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_429/while/NoOpNoOp4^lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp3^lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp5^lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_429_while_identity lstm_429/while/Identity:output:0"?
lstm_429_while_identity_1"lstm_429/while/Identity_1:output:0"?
lstm_429_while_identity_2"lstm_429/while/Identity_2:output:0"?
lstm_429_while_identity_3"lstm_429/while/Identity_3:output:0"?
lstm_429_while_identity_4"lstm_429/while/Identity_4:output:0"?
lstm_429_while_identity_5"lstm_429/while/Identity_5:output:0"T
'lstm_429_while_lstm_429_strided_slice_1)lstm_429_while_lstm_429_strided_slice_1_0"~
<lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource>lstm_429_while_lstm_cell_132_biasadd_readvariableop_resource_0"?
=lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource?lstm_429_while_lstm_cell_132_matmul_1_readvariableop_resource_0"|
;lstm_429_while_lstm_cell_132_matmul_readvariableop_resource=lstm_429_while_lstm_cell_132_matmul_readvariableop_resource_0"?
clstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensorelstm_429_while_tensorarrayv2read_tensorlistgetitem_lstm_429_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp3lstm_429/while/lstm_cell_132/BiasAdd/ReadVariableOp2h
2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp2lstm_429/while/lstm_cell_132/MatMul/ReadVariableOp2l
4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp4lstm_429/while/lstm_cell_132/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_132_layer_call_fn_815830

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810845o
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
?J
?
D__inference_lstm_430_layer_call_and_return_conditional_losses_815035

inputs?
,lstm_cell_133_matmul_readvariableop_resource:	d?A
.lstm_cell_133_matmul_1_readvariableop_resource:	2?<
-lstm_cell_133_biasadd_readvariableop_resource:	?
identity??$lstm_cell_133/BiasAdd/ReadVariableOp?#lstm_cell_133/MatMul/ReadVariableOp?%lstm_cell_133/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_133/MatMul/ReadVariableOpReadVariableOp,lstm_cell_133_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_133/MatMulMatMulstrided_slice_2:output:0+lstm_cell_133/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_133/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_133_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_133/MatMul_1MatMulzeros:output:0-lstm_cell_133/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_133/addAddV2lstm_cell_133/MatMul:product:0 lstm_cell_133/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_133/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_133_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_133/BiasAddBiasAddlstm_cell_133/add:z:0,lstm_cell_133/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_133/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_133/splitSplit&lstm_cell_133/split/split_dim:output:0lstm_cell_133/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_133/SigmoidSigmoidlstm_cell_133/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_1Sigmoidlstm_cell_133/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_133/mulMullstm_cell_133/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_133/ReluRelulstm_cell_133/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_1Mullstm_cell_133/Sigmoid:y:0 lstm_cell_133/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_133/add_1AddV2lstm_cell_133/mul:z:0lstm_cell_133/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_133/Sigmoid_2Sigmoidlstm_cell_133/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_133/Relu_1Relulstm_cell_133/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_133/mul_2Mullstm_cell_133/Sigmoid_2:y:0"lstm_cell_133/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_133_matmul_readvariableop_resource.lstm_cell_133_matmul_1_readvariableop_resource-lstm_cell_133_biasadd_readvariableop_resource*
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
bodyR
while_body_814951*
condR
while_cond_814950*K
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
NoOpNoOp%^lstm_cell_133/BiasAdd/ReadVariableOp$^lstm_cell_133/MatMul/ReadVariableOp&^lstm_cell_133/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_133/BiasAdd/ReadVariableOp$lstm_cell_133/BiasAdd/ReadVariableOp2J
#lstm_cell_133/MatMul/ReadVariableOp#lstm_cell_133/MatMul/ReadVariableOp2N
%lstm_cell_133/MatMul_1/ReadVariableOp%lstm_cell_133/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
D__inference_lstm_429_layer_call_and_return_conditional_losses_810928

inputs'
lstm_cell_132_810846:	?'
lstm_cell_132_810848:	d?#
lstm_cell_132_810850:	?
identity??%lstm_cell_132/StatefulPartitionedCall?while;
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
%lstm_cell_132/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_132_810846lstm_cell_132_810848lstm_cell_132_810850*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_810845n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_132_810846lstm_cell_132_810848lstm_cell_132_810850*
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
bodyR
while_body_810859*
condR
while_cond_810858*K
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
NoOpNoOp&^lstm_cell_132/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_132/StatefulPartitionedCall%lstm_cell_132/StatefulPartitionedCall2
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
lstm_429_input;
 serving_default_lstm_429_input:0?????????=
	dense_1430
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
2dense_143/kernel
:2dense_143/bias
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
0:.	?2lstm_429/lstm_cell_429/kernel
::8	d?2'lstm_429/lstm_cell_429/recurrent_kernel
*:(?2lstm_429/lstm_cell_429/bias
0:.	d?2lstm_430/lstm_cell_430/kernel
::8	2?2'lstm_430/lstm_cell_430/recurrent_kernel
*:(?2lstm_430/lstm_cell_430/bias
/:-2(2lstm_431/lstm_cell_431/kernel
9:7
(2'lstm_431/lstm_cell_431/recurrent_kernel
):'(2lstm_431/lstm_cell_431/bias
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
2Adam/dense_143/kernel/m
!:2Adam/dense_143/bias/m
5:3	?2$Adam/lstm_429/lstm_cell_429/kernel/m
?:=	d?2.Adam/lstm_429/lstm_cell_429/recurrent_kernel/m
/:-?2"Adam/lstm_429/lstm_cell_429/bias/m
5:3	d?2$Adam/lstm_430/lstm_cell_430/kernel/m
?:=	2?2.Adam/lstm_430/lstm_cell_430/recurrent_kernel/m
/:-?2"Adam/lstm_430/lstm_cell_430/bias/m
4:22(2$Adam/lstm_431/lstm_cell_431/kernel/m
>:<
(2.Adam/lstm_431/lstm_cell_431/recurrent_kernel/m
.:,(2"Adam/lstm_431/lstm_cell_431/bias/m
':%
2Adam/dense_143/kernel/v
!:2Adam/dense_143/bias/v
5:3	?2$Adam/lstm_429/lstm_cell_429/kernel/v
?:=	d?2.Adam/lstm_429/lstm_cell_429/recurrent_kernel/v
/:-?2"Adam/lstm_429/lstm_cell_429/bias/v
5:3	d?2$Adam/lstm_430/lstm_cell_430/kernel/v
?:=	2?2.Adam/lstm_430/lstm_cell_430/recurrent_kernel/v
/:-?2"Adam/lstm_430/lstm_cell_430/bias/v
4:22(2$Adam/lstm_431/lstm_cell_431/kernel/v
>:<
(2.Adam/lstm_431/lstm_cell_431/recurrent_kernel/v
.:,(2"Adam/lstm_431/lstm_cell_431/bias/v
?2?
/__inference_sequential_143_layer_call_fn_812327
/__inference_sequential_143_layer_call_fn_813065
/__inference_sequential_143_layer_call_fn_813092
/__inference_sequential_143_layer_call_fn_812943?
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
J__inference_sequential_143_layer_call_and_return_conditional_losses_813519
J__inference_sequential_143_layer_call_and_return_conditional_losses_813946
J__inference_sequential_143_layer_call_and_return_conditional_losses_812973
J__inference_sequential_143_layer_call_and_return_conditional_losses_813003?
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
!__inference__wrapped_model_810778lstm_429_input"?
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
)__inference_lstm_429_layer_call_fn_813957
)__inference_lstm_429_layer_call_fn_813968
)__inference_lstm_429_layer_call_fn_813979
)__inference_lstm_429_layer_call_fn_813990?
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_814133
D__inference_lstm_429_layer_call_and_return_conditional_losses_814276
D__inference_lstm_429_layer_call_and_return_conditional_losses_814419
D__inference_lstm_429_layer_call_and_return_conditional_losses_814562?
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
)__inference_lstm_430_layer_call_fn_814573
)__inference_lstm_430_layer_call_fn_814584
)__inference_lstm_430_layer_call_fn_814595
)__inference_lstm_430_layer_call_fn_814606?
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
D__inference_lstm_430_layer_call_and_return_conditional_losses_814749
D__inference_lstm_430_layer_call_and_return_conditional_losses_814892
D__inference_lstm_430_layer_call_and_return_conditional_losses_815035
D__inference_lstm_430_layer_call_and_return_conditional_losses_815178?
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
)__inference_lstm_431_layer_call_fn_815189
)__inference_lstm_431_layer_call_fn_815200
)__inference_lstm_431_layer_call_fn_815211
)__inference_lstm_431_layer_call_fn_815222?
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_815365
D__inference_lstm_431_layer_call_and_return_conditional_losses_815508
D__inference_lstm_431_layer_call_and_return_conditional_losses_815651
D__inference_lstm_431_layer_call_and_return_conditional_losses_815794?
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
*__inference_dense_143_layer_call_fn_815803?
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
E__inference_dense_143_layer_call_and_return_conditional_losses_815813?
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
$__inference_signature_wrapper_813038lstm_429_input"?
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
.__inference_lstm_cell_132_layer_call_fn_815830
.__inference_lstm_cell_132_layer_call_fn_815847?
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
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_815879
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_815911?
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
.__inference_lstm_cell_133_layer_call_fn_815928
.__inference_lstm_cell_133_layer_call_fn_815945?
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
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_815977
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_816009?
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
.__inference_lstm_cell_134_layer_call_fn_816026
.__inference_lstm_cell_134_layer_call_fn_816043?
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
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_816075
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_816107?
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
!__inference__wrapped_model_810778?-./012345!";?8
1?.
,?)
lstm_429_input?????????
? "5?2
0
	dense_143#? 
	dense_143??????????
E__inference_dense_143_layer_call_and_return_conditional_losses_815813\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_143_layer_call_fn_815803O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_429_layer_call_and_return_conditional_losses_814133?-./O?L
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_814276?-./O?L
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_814419q-./??<
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
D__inference_lstm_429_layer_call_and_return_conditional_losses_814562q-./??<
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
)__inference_lstm_429_layer_call_fn_813957}-./O?L
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
)__inference_lstm_429_layer_call_fn_813968}-./O?L
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
)__inference_lstm_429_layer_call_fn_813979d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_429_layer_call_fn_813990d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_430_layer_call_and_return_conditional_losses_814749?012O?L
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
D__inference_lstm_430_layer_call_and_return_conditional_losses_814892?012O?L
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
D__inference_lstm_430_layer_call_and_return_conditional_losses_815035q012??<
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
D__inference_lstm_430_layer_call_and_return_conditional_losses_815178q012??<
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
)__inference_lstm_430_layer_call_fn_814573}012O?L
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
)__inference_lstm_430_layer_call_fn_814584}012O?L
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
)__inference_lstm_430_layer_call_fn_814595d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_430_layer_call_fn_814606d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_431_layer_call_and_return_conditional_losses_815365}345O?L
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_815508}345O?L
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_815651m345??<
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
D__inference_lstm_431_layer_call_and_return_conditional_losses_815794m345??<
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
)__inference_lstm_431_layer_call_fn_815189p345O?L
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
)__inference_lstm_431_layer_call_fn_815200p345O?L
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
)__inference_lstm_431_layer_call_fn_815211`345??<
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
)__inference_lstm_431_layer_call_fn_815222`345??<
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
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_815879?-./??}
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
I__inference_lstm_cell_132_layer_call_and_return_conditional_losses_815911?-./??}
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
.__inference_lstm_cell_132_layer_call_fn_815830?-./??}
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
.__inference_lstm_cell_132_layer_call_fn_815847?-./??}
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
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_815977?012??}
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
I__inference_lstm_cell_133_layer_call_and_return_conditional_losses_816009?012??}
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
.__inference_lstm_cell_133_layer_call_fn_815928?012??}
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
.__inference_lstm_cell_133_layer_call_fn_815945?012??}
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
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_816075?345??}
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
I__inference_lstm_cell_134_layer_call_and_return_conditional_losses_816107?345??}
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
.__inference_lstm_cell_134_layer_call_fn_816026?345??}
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
.__inference_lstm_cell_134_layer_call_fn_816043?345??}
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
J__inference_sequential_143_layer_call_and_return_conditional_losses_812973y-./012345!"C?@
9?6
,?)
lstm_429_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_143_layer_call_and_return_conditional_losses_813003y-./012345!"C?@
9?6
,?)
lstm_429_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_143_layer_call_and_return_conditional_losses_813519q-./012345!";?8
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
J__inference_sequential_143_layer_call_and_return_conditional_losses_813946q-./012345!";?8
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
/__inference_sequential_143_layer_call_fn_812327l-./012345!"C?@
9?6
,?)
lstm_429_input?????????
p 

 
? "???????????
/__inference_sequential_143_layer_call_fn_812943l-./012345!"C?@
9?6
,?)
lstm_429_input?????????
p

 
? "???????????
/__inference_sequential_143_layer_call_fn_813065d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_143_layer_call_fn_813092d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_813038?-./012345!"M?J
? 
C?@
>
lstm_429_input,?)
lstm_429_input?????????"5?2
0
	dense_143#? 
	dense_143?????????