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
dense_248/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_248/kernel
u
$dense_248/kernel/Read/ReadVariableOpReadVariableOpdense_248/kernel*
_output_shapes

:
*
dtype0
t
dense_248/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_248/bias
m
"dense_248/bias/Read/ReadVariableOpReadVariableOpdense_248/bias*
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
lstm_744/lstm_cell_744/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_744/lstm_cell_744/kernel
?
1lstm_744/lstm_cell_744/kernel/Read/ReadVariableOpReadVariableOplstm_744/lstm_cell_744/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_744/lstm_cell_744/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_744/lstm_cell_744/recurrent_kernel
?
;lstm_744/lstm_cell_744/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_744/lstm_cell_744/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_744/lstm_cell_744/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_744/lstm_cell_744/bias
?
/lstm_744/lstm_cell_744/bias/Read/ReadVariableOpReadVariableOplstm_744/lstm_cell_744/bias*
_output_shapes	
:?*
dtype0
?
lstm_745/lstm_cell_745/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_745/lstm_cell_745/kernel
?
1lstm_745/lstm_cell_745/kernel/Read/ReadVariableOpReadVariableOplstm_745/lstm_cell_745/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_745/lstm_cell_745/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_745/lstm_cell_745/recurrent_kernel
?
;lstm_745/lstm_cell_745/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_745/lstm_cell_745/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_745/lstm_cell_745/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_745/lstm_cell_745/bias
?
/lstm_745/lstm_cell_745/bias/Read/ReadVariableOpReadVariableOplstm_745/lstm_cell_745/bias*
_output_shapes	
:?*
dtype0
?
lstm_746/lstm_cell_746/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_746/lstm_cell_746/kernel
?
1lstm_746/lstm_cell_746/kernel/Read/ReadVariableOpReadVariableOplstm_746/lstm_cell_746/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_746/lstm_cell_746/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_746/lstm_cell_746/recurrent_kernel
?
;lstm_746/lstm_cell_746/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_746/lstm_cell_746/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_746/lstm_cell_746/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_746/lstm_cell_746/bias
?
/lstm_746/lstm_cell_746/bias/Read/ReadVariableOpReadVariableOplstm_746/lstm_cell_746/bias*
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
Adam/dense_248/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_248/kernel/m
?
+Adam/dense_248/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_248/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_248/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_248/bias/m
{
)Adam/dense_248/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_248/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_744/lstm_cell_744/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_744/lstm_cell_744/kernel/m
?
8Adam/lstm_744/lstm_cell_744/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_744/lstm_cell_744/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_744/lstm_cell_744/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_744/lstm_cell_744/recurrent_kernel/m
?
BAdam/lstm_744/lstm_cell_744/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_744/lstm_cell_744/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_744/lstm_cell_744/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_744/lstm_cell_744/bias/m
?
6Adam/lstm_744/lstm_cell_744/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_744/lstm_cell_744/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_745/lstm_cell_745/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_745/lstm_cell_745/kernel/m
?
8Adam/lstm_745/lstm_cell_745/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_745/lstm_cell_745/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_745/lstm_cell_745/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_745/lstm_cell_745/recurrent_kernel/m
?
BAdam/lstm_745/lstm_cell_745/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_745/lstm_cell_745/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_745/lstm_cell_745/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_745/lstm_cell_745/bias/m
?
6Adam/lstm_745/lstm_cell_745/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_745/lstm_cell_745/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_746/lstm_cell_746/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_746/lstm_cell_746/kernel/m
?
8Adam/lstm_746/lstm_cell_746/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_746/lstm_cell_746/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_746/lstm_cell_746/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_746/lstm_cell_746/recurrent_kernel/m
?
BAdam/lstm_746/lstm_cell_746/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_746/lstm_cell_746/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_746/lstm_cell_746/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_746/lstm_cell_746/bias/m
?
6Adam/lstm_746/lstm_cell_746/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_746/lstm_cell_746/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_248/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_248/kernel/v
?
+Adam/dense_248/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_248/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_248/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_248/bias/v
{
)Adam/dense_248/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_248/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_744/lstm_cell_744/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_744/lstm_cell_744/kernel/v
?
8Adam/lstm_744/lstm_cell_744/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_744/lstm_cell_744/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_744/lstm_cell_744/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_744/lstm_cell_744/recurrent_kernel/v
?
BAdam/lstm_744/lstm_cell_744/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_744/lstm_cell_744/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_744/lstm_cell_744/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_744/lstm_cell_744/bias/v
?
6Adam/lstm_744/lstm_cell_744/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_744/lstm_cell_744/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_745/lstm_cell_745/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_745/lstm_cell_745/kernel/v
?
8Adam/lstm_745/lstm_cell_745/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_745/lstm_cell_745/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_745/lstm_cell_745/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_745/lstm_cell_745/recurrent_kernel/v
?
BAdam/lstm_745/lstm_cell_745/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_745/lstm_cell_745/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_745/lstm_cell_745/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_745/lstm_cell_745/bias/v
?
6Adam/lstm_745/lstm_cell_745/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_745/lstm_cell_745/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_746/lstm_cell_746/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_746/lstm_cell_746/kernel/v
?
8Adam/lstm_746/lstm_cell_746/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_746/lstm_cell_746/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_746/lstm_cell_746/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_746/lstm_cell_746/recurrent_kernel/v
?
BAdam/lstm_746/lstm_cell_746/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_746/lstm_cell_746/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_746/lstm_cell_746/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_746/lstm_cell_746/bias/v
?
6Adam/lstm_746/lstm_cell_746/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_746/lstm_cell_746/bias/v*
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
VARIABLE_VALUEdense_248/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_248/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_744/lstm_cell_744/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_744/lstm_cell_744/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_744/lstm_cell_744/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_745/lstm_cell_745/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_745/lstm_cell_745/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_745/lstm_cell_745/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_746/lstm_cell_746/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_746/lstm_cell_746/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_746/lstm_cell_746/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_248/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_248/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_744/lstm_cell_744/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_744/lstm_cell_744/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_744/lstm_cell_744/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_745/lstm_cell_745/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_745/lstm_cell_745/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_745/lstm_cell_745/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_746/lstm_cell_746/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_746/lstm_cell_746/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_746/lstm_cell_746/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_248/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_248/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_744/lstm_cell_744/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_744/lstm_cell_744/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_744/lstm_cell_744/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_745/lstm_cell_745/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_745/lstm_cell_745/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_745/lstm_cell_745/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_746/lstm_cell_746/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_746/lstm_cell_746/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_746/lstm_cell_746/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_744_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_744_inputlstm_744/lstm_cell_744/kernel'lstm_744/lstm_cell_744/recurrent_kernellstm_744/lstm_cell_744/biaslstm_745/lstm_cell_745/kernel'lstm_745/lstm_cell_745/recurrent_kernellstm_745/lstm_cell_745/biaslstm_746/lstm_cell_746/kernel'lstm_746/lstm_cell_746/recurrent_kernellstm_746/lstm_cell_746/biasdense_248/kerneldense_248/bias*
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
%__inference_signature_wrapper_3935372
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_248/kernel/Read/ReadVariableOp"dense_248/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_744/lstm_cell_744/kernel/Read/ReadVariableOp;lstm_744/lstm_cell_744/recurrent_kernel/Read/ReadVariableOp/lstm_744/lstm_cell_744/bias/Read/ReadVariableOp1lstm_745/lstm_cell_745/kernel/Read/ReadVariableOp;lstm_745/lstm_cell_745/recurrent_kernel/Read/ReadVariableOp/lstm_745/lstm_cell_745/bias/Read/ReadVariableOp1lstm_746/lstm_cell_746/kernel/Read/ReadVariableOp;lstm_746/lstm_cell_746/recurrent_kernel/Read/ReadVariableOp/lstm_746/lstm_cell_746/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_248/kernel/m/Read/ReadVariableOp)Adam/dense_248/bias/m/Read/ReadVariableOp8Adam/lstm_744/lstm_cell_744/kernel/m/Read/ReadVariableOpBAdam/lstm_744/lstm_cell_744/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_744/lstm_cell_744/bias/m/Read/ReadVariableOp8Adam/lstm_745/lstm_cell_745/kernel/m/Read/ReadVariableOpBAdam/lstm_745/lstm_cell_745/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_745/lstm_cell_745/bias/m/Read/ReadVariableOp8Adam/lstm_746/lstm_cell_746/kernel/m/Read/ReadVariableOpBAdam/lstm_746/lstm_cell_746/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_746/lstm_cell_746/bias/m/Read/ReadVariableOp+Adam/dense_248/kernel/v/Read/ReadVariableOp)Adam/dense_248/bias/v/Read/ReadVariableOp8Adam/lstm_744/lstm_cell_744/kernel/v/Read/ReadVariableOpBAdam/lstm_744/lstm_cell_744/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_744/lstm_cell_744/bias/v/Read/ReadVariableOp8Adam/lstm_745/lstm_cell_745/kernel/v/Read/ReadVariableOpBAdam/lstm_745/lstm_cell_745/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_745/lstm_cell_745/bias/v/Read/ReadVariableOp8Adam/lstm_746/lstm_cell_746/kernel/v/Read/ReadVariableOpBAdam/lstm_746/lstm_cell_746/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_746/lstm_cell_746/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3938584
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_248/kerneldense_248/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_744/lstm_cell_744/kernel'lstm_744/lstm_cell_744/recurrent_kernellstm_744/lstm_cell_744/biaslstm_745/lstm_cell_745/kernel'lstm_745/lstm_cell_745/recurrent_kernellstm_745/lstm_cell_745/biaslstm_746/lstm_cell_746/kernel'lstm_746/lstm_cell_746/recurrent_kernellstm_746/lstm_cell_746/biastotalcountAdam/dense_248/kernel/mAdam/dense_248/bias/m$Adam/lstm_744/lstm_cell_744/kernel/m.Adam/lstm_744/lstm_cell_744/recurrent_kernel/m"Adam/lstm_744/lstm_cell_744/bias/m$Adam/lstm_745/lstm_cell_745/kernel/m.Adam/lstm_745/lstm_cell_745/recurrent_kernel/m"Adam/lstm_745/lstm_cell_745/bias/m$Adam/lstm_746/lstm_cell_746/kernel/m.Adam/lstm_746/lstm_cell_746/recurrent_kernel/m"Adam/lstm_746/lstm_cell_746/bias/mAdam/dense_248/kernel/vAdam/dense_248/bias/v$Adam/lstm_744/lstm_cell_744/kernel/v.Adam/lstm_744/lstm_cell_744/recurrent_kernel/v"Adam/lstm_744/lstm_cell_744/bias/v$Adam/lstm_745/lstm_cell_745/kernel/v.Adam/lstm_745/lstm_cell_745/recurrent_kernel/v"Adam/lstm_745/lstm_cell_745/bias/v$Adam/lstm_746/lstm_cell_746/kernel/v.Adam/lstm_746/lstm_cell_746/recurrent_kernel/v"Adam/lstm_746/lstm_cell_746/bias/v*4
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
#__inference__traced_restore_3938714??+
?
?
while_cond_3938043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3938043___redundant_placeholder05
1while_while_cond_3938043___redundant_placeholder15
1while_while_cond_3938043___redundant_placeholder25
1while_while_cond_3938043___redundant_placeholder3
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934827

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_3934743*
condR
while_cond_3934742*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_649_layer_call_fn_3938262

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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933529o
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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935853

inputsH
5lstm_744_lstm_cell_648_matmul_readvariableop_resource:	?J
7lstm_744_lstm_cell_648_matmul_1_readvariableop_resource:	d?E
6lstm_744_lstm_cell_648_biasadd_readvariableop_resource:	?H
5lstm_745_lstm_cell_649_matmul_readvariableop_resource:	d?J
7lstm_745_lstm_cell_649_matmul_1_readvariableop_resource:	2?E
6lstm_745_lstm_cell_649_biasadd_readvariableop_resource:	?G
5lstm_746_lstm_cell_650_matmul_readvariableop_resource:2(I
7lstm_746_lstm_cell_650_matmul_1_readvariableop_resource:
(D
6lstm_746_lstm_cell_650_biasadd_readvariableop_resource:(:
(dense_248_matmul_readvariableop_resource:
7
)dense_248_biasadd_readvariableop_resource:
identity?? dense_248/BiasAdd/ReadVariableOp?dense_248/MatMul/ReadVariableOp?-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp?,lstm_744/lstm_cell_648/MatMul/ReadVariableOp?.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp?lstm_744/while?-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp?,lstm_745/lstm_cell_649/MatMul/ReadVariableOp?.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp?lstm_745/while?-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp?,lstm_746/lstm_cell_650/MatMul/ReadVariableOp?.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp?lstm_746/whileD
lstm_744/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_744/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_744/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_744/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_sliceStridedSlicelstm_744/Shape:output:0%lstm_744/strided_slice/stack:output:0'lstm_744/strided_slice/stack_1:output:0'lstm_744/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_744/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_744/zeros/packedPacklstm_744/strided_slice:output:0 lstm_744/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_744/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_744/zerosFilllstm_744/zeros/packed:output:0lstm_744/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_744/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_744/zeros_1/packedPacklstm_744/strided_slice:output:0"lstm_744/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_744/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_744/zeros_1Fill lstm_744/zeros_1/packed:output:0lstm_744/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_744/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_744/transpose	Transposeinputs lstm_744/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_744/Shape_1Shapelstm_744/transpose:y:0*
T0*
_output_shapes
:h
lstm_744/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_744/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_744/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_slice_1StridedSlicelstm_744/Shape_1:output:0'lstm_744/strided_slice_1/stack:output:0)lstm_744/strided_slice_1/stack_1:output:0)lstm_744/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_744/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_744/TensorArrayV2TensorListReserve-lstm_744/TensorArrayV2/element_shape:output:0!lstm_744/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_744/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_744/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_744/transpose:y:0Glstm_744/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_744/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_744/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_744/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_slice_2StridedSlicelstm_744/transpose:y:0'lstm_744/strided_slice_2/stack:output:0)lstm_744/strided_slice_2/stack_1:output:0)lstm_744/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_744/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp5lstm_744_lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_744/lstm_cell_648/MatMulMatMul!lstm_744/strided_slice_2:output:04lstm_744/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp7lstm_744_lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_744/lstm_cell_648/MatMul_1MatMullstm_744/zeros:output:06lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_744/lstm_cell_648/addAddV2'lstm_744/lstm_cell_648/MatMul:product:0)lstm_744/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp6lstm_744_lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_744/lstm_cell_648/BiasAddBiasAddlstm_744/lstm_cell_648/add:z:05lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_744/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_744/lstm_cell_648/splitSplit/lstm_744/lstm_cell_648/split/split_dim:output:0'lstm_744/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_744/lstm_cell_648/SigmoidSigmoid%lstm_744/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_744/lstm_cell_648/Sigmoid_1Sigmoid%lstm_744/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/mulMul$lstm_744/lstm_cell_648/Sigmoid_1:y:0lstm_744/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_744/lstm_cell_648/ReluRelu%lstm_744/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/mul_1Mul"lstm_744/lstm_cell_648/Sigmoid:y:0)lstm_744/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/add_1AddV2lstm_744/lstm_cell_648/mul:z:0 lstm_744/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_744/lstm_cell_648/Sigmoid_2Sigmoid%lstm_744/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_744/lstm_cell_648/Relu_1Relu lstm_744/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/mul_2Mul$lstm_744/lstm_cell_648/Sigmoid_2:y:0+lstm_744/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_744/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_744/TensorArrayV2_1TensorListReserve/lstm_744/TensorArrayV2_1/element_shape:output:0!lstm_744/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_744/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_744/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_744/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_744/whileWhile$lstm_744/while/loop_counter:output:0*lstm_744/while/maximum_iterations:output:0lstm_744/time:output:0!lstm_744/TensorArrayV2_1:handle:0lstm_744/zeros:output:0lstm_744/zeros_1:output:0!lstm_744/strided_slice_1:output:0@lstm_744/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_744_lstm_cell_648_matmul_readvariableop_resource7lstm_744_lstm_cell_648_matmul_1_readvariableop_resource6lstm_744_lstm_cell_648_biasadd_readvariableop_resource*
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
lstm_744_while_body_3935485*'
condR
lstm_744_while_cond_3935484*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_744/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_744/TensorArrayV2Stack/TensorListStackTensorListStacklstm_744/while:output:3Blstm_744/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_744/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_744/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_744/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_slice_3StridedSlice4lstm_744/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_744/strided_slice_3/stack:output:0)lstm_744/strided_slice_3/stack_1:output:0)lstm_744/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_744/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_744/transpose_1	Transpose4lstm_744/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_744/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_744/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_745/ShapeShapelstm_744/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_745/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_745/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_745/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_sliceStridedSlicelstm_745/Shape:output:0%lstm_745/strided_slice/stack:output:0'lstm_745/strided_slice/stack_1:output:0'lstm_745/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_745/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_745/zeros/packedPacklstm_745/strided_slice:output:0 lstm_745/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_745/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_745/zerosFilllstm_745/zeros/packed:output:0lstm_745/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_745/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_745/zeros_1/packedPacklstm_745/strided_slice:output:0"lstm_745/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_745/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_745/zeros_1Fill lstm_745/zeros_1/packed:output:0lstm_745/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_745/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_745/transpose	Transposelstm_744/transpose_1:y:0 lstm_745/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_745/Shape_1Shapelstm_745/transpose:y:0*
T0*
_output_shapes
:h
lstm_745/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_745/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_745/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_slice_1StridedSlicelstm_745/Shape_1:output:0'lstm_745/strided_slice_1/stack:output:0)lstm_745/strided_slice_1/stack_1:output:0)lstm_745/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_745/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_745/TensorArrayV2TensorListReserve-lstm_745/TensorArrayV2/element_shape:output:0!lstm_745/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_745/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_745/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_745/transpose:y:0Glstm_745/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_745/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_745/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_745/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_slice_2StridedSlicelstm_745/transpose:y:0'lstm_745/strided_slice_2/stack:output:0)lstm_745/strided_slice_2/stack_1:output:0)lstm_745/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_745/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp5lstm_745_lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_745/lstm_cell_649/MatMulMatMul!lstm_745/strided_slice_2:output:04lstm_745/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp7lstm_745_lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_745/lstm_cell_649/MatMul_1MatMullstm_745/zeros:output:06lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_745/lstm_cell_649/addAddV2'lstm_745/lstm_cell_649/MatMul:product:0)lstm_745/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp6lstm_745_lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_745/lstm_cell_649/BiasAddBiasAddlstm_745/lstm_cell_649/add:z:05lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_745/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_745/lstm_cell_649/splitSplit/lstm_745/lstm_cell_649/split/split_dim:output:0'lstm_745/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_745/lstm_cell_649/SigmoidSigmoid%lstm_745/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_745/lstm_cell_649/Sigmoid_1Sigmoid%lstm_745/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/mulMul$lstm_745/lstm_cell_649/Sigmoid_1:y:0lstm_745/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_745/lstm_cell_649/ReluRelu%lstm_745/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/mul_1Mul"lstm_745/lstm_cell_649/Sigmoid:y:0)lstm_745/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/add_1AddV2lstm_745/lstm_cell_649/mul:z:0 lstm_745/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_745/lstm_cell_649/Sigmoid_2Sigmoid%lstm_745/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_745/lstm_cell_649/Relu_1Relu lstm_745/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/mul_2Mul$lstm_745/lstm_cell_649/Sigmoid_2:y:0+lstm_745/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_745/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_745/TensorArrayV2_1TensorListReserve/lstm_745/TensorArrayV2_1/element_shape:output:0!lstm_745/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_745/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_745/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_745/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_745/whileWhile$lstm_745/while/loop_counter:output:0*lstm_745/while/maximum_iterations:output:0lstm_745/time:output:0!lstm_745/TensorArrayV2_1:handle:0lstm_745/zeros:output:0lstm_745/zeros_1:output:0!lstm_745/strided_slice_1:output:0@lstm_745/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_745_lstm_cell_649_matmul_readvariableop_resource7lstm_745_lstm_cell_649_matmul_1_readvariableop_resource6lstm_745_lstm_cell_649_biasadd_readvariableop_resource*
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
lstm_745_while_body_3935624*'
condR
lstm_745_while_cond_3935623*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_745/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_745/TensorArrayV2Stack/TensorListStackTensorListStacklstm_745/while:output:3Blstm_745/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_745/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_745/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_745/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_slice_3StridedSlice4lstm_745/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_745/strided_slice_3/stack:output:0)lstm_745/strided_slice_3/stack_1:output:0)lstm_745/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_745/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_745/transpose_1	Transpose4lstm_745/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_745/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_745/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_746/ShapeShapelstm_745/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_746/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_746/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_746/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_sliceStridedSlicelstm_746/Shape:output:0%lstm_746/strided_slice/stack:output:0'lstm_746/strided_slice/stack_1:output:0'lstm_746/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_746/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_746/zeros/packedPacklstm_746/strided_slice:output:0 lstm_746/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_746/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_746/zerosFilllstm_746/zeros/packed:output:0lstm_746/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_746/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_746/zeros_1/packedPacklstm_746/strided_slice:output:0"lstm_746/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_746/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_746/zeros_1Fill lstm_746/zeros_1/packed:output:0lstm_746/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_746/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_746/transpose	Transposelstm_745/transpose_1:y:0 lstm_746/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_746/Shape_1Shapelstm_746/transpose:y:0*
T0*
_output_shapes
:h
lstm_746/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_746/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_746/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_slice_1StridedSlicelstm_746/Shape_1:output:0'lstm_746/strided_slice_1/stack:output:0)lstm_746/strided_slice_1/stack_1:output:0)lstm_746/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_746/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_746/TensorArrayV2TensorListReserve-lstm_746/TensorArrayV2/element_shape:output:0!lstm_746/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_746/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_746/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_746/transpose:y:0Glstm_746/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_746/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_746/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_746/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_slice_2StridedSlicelstm_746/transpose:y:0'lstm_746/strided_slice_2/stack:output:0)lstm_746/strided_slice_2/stack_1:output:0)lstm_746/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_746/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp5lstm_746_lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_746/lstm_cell_650/MatMulMatMul!lstm_746/strided_slice_2:output:04lstm_746/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp7lstm_746_lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_746/lstm_cell_650/MatMul_1MatMullstm_746/zeros:output:06lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_746/lstm_cell_650/addAddV2'lstm_746/lstm_cell_650/MatMul:product:0)lstm_746/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp6lstm_746_lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_746/lstm_cell_650/BiasAddBiasAddlstm_746/lstm_cell_650/add:z:05lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_746/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_746/lstm_cell_650/splitSplit/lstm_746/lstm_cell_650/split/split_dim:output:0'lstm_746/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_746/lstm_cell_650/SigmoidSigmoid%lstm_746/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_746/lstm_cell_650/Sigmoid_1Sigmoid%lstm_746/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/mulMul$lstm_746/lstm_cell_650/Sigmoid_1:y:0lstm_746/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_746/lstm_cell_650/ReluRelu%lstm_746/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/mul_1Mul"lstm_746/lstm_cell_650/Sigmoid:y:0)lstm_746/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/add_1AddV2lstm_746/lstm_cell_650/mul:z:0 lstm_746/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_746/lstm_cell_650/Sigmoid_2Sigmoid%lstm_746/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_746/lstm_cell_650/Relu_1Relu lstm_746/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/mul_2Mul$lstm_746/lstm_cell_650/Sigmoid_2:y:0+lstm_746/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_746/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_746/TensorArrayV2_1TensorListReserve/lstm_746/TensorArrayV2_1/element_shape:output:0!lstm_746/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_746/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_746/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_746/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_746/whileWhile$lstm_746/while/loop_counter:output:0*lstm_746/while/maximum_iterations:output:0lstm_746/time:output:0!lstm_746/TensorArrayV2_1:handle:0lstm_746/zeros:output:0lstm_746/zeros_1:output:0!lstm_746/strided_slice_1:output:0@lstm_746/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_746_lstm_cell_650_matmul_readvariableop_resource7lstm_746_lstm_cell_650_matmul_1_readvariableop_resource6lstm_746_lstm_cell_650_biasadd_readvariableop_resource*
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
lstm_746_while_body_3935763*'
condR
lstm_746_while_cond_3935762*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_746/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_746/TensorArrayV2Stack/TensorListStackTensorListStacklstm_746/while:output:3Blstm_746/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_746/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_746/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_746/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_slice_3StridedSlice4lstm_746/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_746/strided_slice_3/stack:output:0)lstm_746/strided_slice_3/stack_1:output:0)lstm_746/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_746/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_746/transpose_1	Transpose4lstm_746/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_746/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_746/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_248/MatMul/ReadVariableOpReadVariableOp(dense_248_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_248/MatMulMatMul!lstm_746/strided_slice_3:output:0'dense_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_248/BiasAdd/ReadVariableOpReadVariableOp)dense_248_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_248/BiasAddBiasAdddense_248/MatMul:product:0(dense_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_248/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_248/BiasAdd/ReadVariableOp ^dense_248/MatMul/ReadVariableOp.^lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp-^lstm_744/lstm_cell_648/MatMul/ReadVariableOp/^lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp^lstm_744/while.^lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp-^lstm_745/lstm_cell_649/MatMul/ReadVariableOp/^lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp^lstm_745/while.^lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp-^lstm_746/lstm_cell_650/MatMul/ReadVariableOp/^lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp^lstm_746/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_248/BiasAdd/ReadVariableOp dense_248/BiasAdd/ReadVariableOp2B
dense_248/MatMul/ReadVariableOpdense_248/MatMul/ReadVariableOp2^
-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp2\
,lstm_744/lstm_cell_648/MatMul/ReadVariableOp,lstm_744/lstm_cell_648/MatMul/ReadVariableOp2`
.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp2 
lstm_744/whilelstm_744/while2^
-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp2\
,lstm_745/lstm_cell_649/MatMul/ReadVariableOp,lstm_745/lstm_cell_649/MatMul/ReadVariableOp2`
.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp2 
lstm_745/whilelstm_745/while2^
-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp2\
,lstm_746/lstm_cell_650/MatMul/ReadVariableOp,lstm_746/lstm_cell_650/MatMul/ReadVariableOp2`
.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp2 
lstm_746/whilelstm_746/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_744_while_body_3935912.
*lstm_744_while_lstm_744_while_loop_counter4
0lstm_744_while_lstm_744_while_maximum_iterations
lstm_744_while_placeholder 
lstm_744_while_placeholder_1 
lstm_744_while_placeholder_2 
lstm_744_while_placeholder_3-
)lstm_744_while_lstm_744_strided_slice_1_0i
elstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0:	?R
?lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?M
>lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
lstm_744_while_identity
lstm_744_while_identity_1
lstm_744_while_identity_2
lstm_744_while_identity_3
lstm_744_while_identity_4
lstm_744_while_identity_5+
'lstm_744_while_lstm_744_strided_slice_1g
clstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensorN
;lstm_744_while_lstm_cell_648_matmul_readvariableop_resource:	?P
=lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource:	d?K
<lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource:	???3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp?2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp?4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp?
@lstm_744/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_744/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensor_0lstm_744_while_placeholderIlstm_744/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp=lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_744/while/lstm_cell_648/MatMulMatMul9lstm_744/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp?lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_744/while/lstm_cell_648/MatMul_1MatMullstm_744_while_placeholder_2<lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_744/while/lstm_cell_648/addAddV2-lstm_744/while/lstm_cell_648/MatMul:product:0/lstm_744/while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp>lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_744/while/lstm_cell_648/BiasAddBiasAdd$lstm_744/while/lstm_cell_648/add:z:0;lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_744/while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_744/while/lstm_cell_648/splitSplit5lstm_744/while/lstm_cell_648/split/split_dim:output:0-lstm_744/while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_744/while/lstm_cell_648/SigmoidSigmoid+lstm_744/while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_744/while/lstm_cell_648/Sigmoid_1Sigmoid+lstm_744/while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_744/while/lstm_cell_648/mulMul*lstm_744/while/lstm_cell_648/Sigmoid_1:y:0lstm_744_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_744/while/lstm_cell_648/ReluRelu+lstm_744/while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_744/while/lstm_cell_648/mul_1Mul(lstm_744/while/lstm_cell_648/Sigmoid:y:0/lstm_744/while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_744/while/lstm_cell_648/add_1AddV2$lstm_744/while/lstm_cell_648/mul:z:0&lstm_744/while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_744/while/lstm_cell_648/Sigmoid_2Sigmoid+lstm_744/while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_744/while/lstm_cell_648/Relu_1Relu&lstm_744/while/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_744/while/lstm_cell_648/mul_2Mul*lstm_744/while/lstm_cell_648/Sigmoid_2:y:01lstm_744/while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_744/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_744_while_placeholder_1lstm_744_while_placeholder&lstm_744/while/lstm_cell_648/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_744/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_744/while/addAddV2lstm_744_while_placeholderlstm_744/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_744/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_744/while/add_1AddV2*lstm_744_while_lstm_744_while_loop_counterlstm_744/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_744/while/IdentityIdentitylstm_744/while/add_1:z:0^lstm_744/while/NoOp*
T0*
_output_shapes
: ?
lstm_744/while/Identity_1Identity0lstm_744_while_lstm_744_while_maximum_iterations^lstm_744/while/NoOp*
T0*
_output_shapes
: t
lstm_744/while/Identity_2Identitylstm_744/while/add:z:0^lstm_744/while/NoOp*
T0*
_output_shapes
: ?
lstm_744/while/Identity_3IdentityClstm_744/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_744/while/NoOp*
T0*
_output_shapes
: ?
lstm_744/while/Identity_4Identity&lstm_744/while/lstm_cell_648/mul_2:z:0^lstm_744/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_744/while/Identity_5Identity&lstm_744/while/lstm_cell_648/add_1:z:0^lstm_744/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_744/while/NoOpNoOp4^lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp3^lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp5^lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_744_while_identity lstm_744/while/Identity:output:0"?
lstm_744_while_identity_1"lstm_744/while/Identity_1:output:0"?
lstm_744_while_identity_2"lstm_744/while/Identity_2:output:0"?
lstm_744_while_identity_3"lstm_744/while/Identity_3:output:0"?
lstm_744_while_identity_4"lstm_744/while/Identity_4:output:0"?
lstm_744_while_identity_5"lstm_744/while/Identity_5:output:0"T
'lstm_744_while_lstm_744_strided_slice_1)lstm_744_while_lstm_744_strided_slice_1_0"~
<lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource>lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0"?
=lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource?lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0"|
;lstm_744_while_lstm_cell_648_matmul_readvariableop_resource=lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0"?
clstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensorelstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp2h
2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp2l
4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3937615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3933962

inputs'
lstm_cell_650_3933880:2('
lstm_cell_650_3933882:
(#
lstm_cell_650_3933884:(
identity??%lstm_cell_650/StatefulPartitionedCall?while;
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
%lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_650_3933880lstm_cell_650_3933882lstm_cell_650_3933884*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3933879n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_650_3933880lstm_cell_650_3933882lstm_cell_650_3933884*
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
while_body_3933893*
condR
while_cond_3933892*K
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
NoOpNoOp&^lstm_cell_650/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_650/StatefulPartitionedCall%lstm_cell_650/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937985

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_3937901*
condR
while_cond_3937900*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_746_layer_call_fn_3937556

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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934827o
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
?
E__inference_lstm_745_layer_call_and_return_conditional_losses_3933803

inputs(
lstm_cell_649_3933721:	d?(
lstm_cell_649_3933723:	2?$
lstm_cell_649_3933725:	?
identity??%lstm_cell_649/StatefulPartitionedCall?while;
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
%lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_649_3933721lstm_cell_649_3933723lstm_cell_649_3933725*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933675n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_649_3933721lstm_cell_649_3933723lstm_cell_649_3933725*
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
while_body_3933734*
condR
while_cond_3933733*K
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
NoOpNoOp&^lstm_cell_649/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_649/StatefulPartitionedCall%lstm_cell_649/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_248_layer_call_fn_3935399

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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3934636o
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
?
/__inference_lstm_cell_648_layer_call_fn_3938164

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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933179o
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
while_cond_3937284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3937284___redundant_placeholder05
1while_while_cond_3937284___redundant_placeholder15
1while_while_cond_3937284___redundant_placeholder25
1while_while_cond_3937284___redundant_placeholder3
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
?
?
+__inference_dense_248_layer_call_fn_3938137

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
F__inference_dense_248_layer_call_and_return_conditional_losses_3934629o
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
?C
?

lstm_745_while_body_3935624.
*lstm_745_while_lstm_745_while_loop_counter4
0lstm_745_while_lstm_745_while_maximum_iterations
lstm_745_while_placeholder 
lstm_745_while_placeholder_1 
lstm_745_while_placeholder_2 
lstm_745_while_placeholder_3-
)lstm_745_while_lstm_745_strided_slice_1_0i
elstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0:	d?R
?lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?M
>lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
lstm_745_while_identity
lstm_745_while_identity_1
lstm_745_while_identity_2
lstm_745_while_identity_3
lstm_745_while_identity_4
lstm_745_while_identity_5+
'lstm_745_while_lstm_745_strided_slice_1g
clstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensorN
;lstm_745_while_lstm_cell_649_matmul_readvariableop_resource:	d?P
=lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource:	2?K
<lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource:	???3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp?2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp?4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp?
@lstm_745/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_745/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensor_0lstm_745_while_placeholderIlstm_745/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp=lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_745/while/lstm_cell_649/MatMulMatMul9lstm_745/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp?lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_745/while/lstm_cell_649/MatMul_1MatMullstm_745_while_placeholder_2<lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_745/while/lstm_cell_649/addAddV2-lstm_745/while/lstm_cell_649/MatMul:product:0/lstm_745/while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp>lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_745/while/lstm_cell_649/BiasAddBiasAdd$lstm_745/while/lstm_cell_649/add:z:0;lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_745/while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_745/while/lstm_cell_649/splitSplit5lstm_745/while/lstm_cell_649/split/split_dim:output:0-lstm_745/while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_745/while/lstm_cell_649/SigmoidSigmoid+lstm_745/while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_745/while/lstm_cell_649/Sigmoid_1Sigmoid+lstm_745/while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_745/while/lstm_cell_649/mulMul*lstm_745/while/lstm_cell_649/Sigmoid_1:y:0lstm_745_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_745/while/lstm_cell_649/ReluRelu+lstm_745/while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_745/while/lstm_cell_649/mul_1Mul(lstm_745/while/lstm_cell_649/Sigmoid:y:0/lstm_745/while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_745/while/lstm_cell_649/add_1AddV2$lstm_745/while/lstm_cell_649/mul:z:0&lstm_745/while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_745/while/lstm_cell_649/Sigmoid_2Sigmoid+lstm_745/while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_745/while/lstm_cell_649/Relu_1Relu&lstm_745/while/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_745/while/lstm_cell_649/mul_2Mul*lstm_745/while/lstm_cell_649/Sigmoid_2:y:01lstm_745/while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_745/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_745_while_placeholder_1lstm_745_while_placeholder&lstm_745/while/lstm_cell_649/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_745/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_745/while/addAddV2lstm_745_while_placeholderlstm_745/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_745/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_745/while/add_1AddV2*lstm_745_while_lstm_745_while_loop_counterlstm_745/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_745/while/IdentityIdentitylstm_745/while/add_1:z:0^lstm_745/while/NoOp*
T0*
_output_shapes
: ?
lstm_745/while/Identity_1Identity0lstm_745_while_lstm_745_while_maximum_iterations^lstm_745/while/NoOp*
T0*
_output_shapes
: t
lstm_745/while/Identity_2Identitylstm_745/while/add:z:0^lstm_745/while/NoOp*
T0*
_output_shapes
: ?
lstm_745/while/Identity_3IdentityClstm_745/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_745/while/NoOp*
T0*
_output_shapes
: ?
lstm_745/while/Identity_4Identity&lstm_745/while/lstm_cell_649/mul_2:z:0^lstm_745/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_745/while/Identity_5Identity&lstm_745/while/lstm_cell_649/add_1:z:0^lstm_745/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_745/while/NoOpNoOp4^lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp3^lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp5^lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_745_while_identity lstm_745/while/Identity:output:0"?
lstm_745_while_identity_1"lstm_745/while/Identity_1:output:0"?
lstm_745_while_identity_2"lstm_745/while/Identity_2:output:0"?
lstm_745_while_identity_3"lstm_745/while/Identity_3:output:0"?
lstm_745_while_identity_4"lstm_745/while/Identity_4:output:0"?
lstm_745_while_identity_5"lstm_745/while/Identity_5:output:0"T
'lstm_745_while_lstm_745_strided_slice_1)lstm_745_while_lstm_745_strided_slice_1_0"~
<lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource>lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0"?
=lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource?lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0"|
;lstm_745_while_lstm_cell_649_matmul_readvariableop_resource=lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0"?
clstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensorelstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp2h
2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp2l
4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935225

inputs#
lstm_744_3935198:	?#
lstm_744_3935200:	d?
lstm_744_3935202:	?#
lstm_745_3935205:	d?#
lstm_745_3935207:	2?
lstm_745_3935209:	?"
lstm_746_3935212:2("
lstm_746_3935214:
(
lstm_746_3935216:(#
dense_248_3935219:

dense_248_3935221:
identity??!dense_248/StatefulPartitionedCall? lstm_744/StatefulPartitionedCall? lstm_745/StatefulPartitionedCall? lstm_746/StatefulPartitionedCall?
 lstm_744/StatefulPartitionedCallStatefulPartitionedCallinputslstm_744_3935198lstm_744_3935200lstm_744_3935202*
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3935157?
 lstm_745/StatefulPartitionedCallStatefulPartitionedCall)lstm_744/StatefulPartitionedCall:output:0lstm_745_3935205lstm_745_3935207lstm_745_3935209*
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934992?
 lstm_746/StatefulPartitionedCallStatefulPartitionedCall)lstm_745/StatefulPartitionedCall:output:0lstm_746_3935212lstm_746_3935214lstm_746_3935216*
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934827?
!dense_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_746/StatefulPartitionedCall:output:0dense_248_3935219dense_248_3935221*
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
F__inference_dense_248_layer_call_and_return_conditional_losses_3934629y
IdentityIdentity*dense_248/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_248/StatefulPartitionedCall!^lstm_744/StatefulPartitionedCall!^lstm_745/StatefulPartitionedCall!^lstm_746/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2D
 lstm_744/StatefulPartitionedCall lstm_744/StatefulPartitionedCall2D
 lstm_745/StatefulPartitionedCall lstm_745/StatefulPartitionedCall2D
 lstm_746/StatefulPartitionedCall lstm_746/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933179

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
?W
?
 __inference__traced_save_3938584
file_prefix/
+savev2_dense_248_kernel_read_readvariableop-
)savev2_dense_248_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_744_lstm_cell_744_kernel_read_readvariableopF
Bsavev2_lstm_744_lstm_cell_744_recurrent_kernel_read_readvariableop:
6savev2_lstm_744_lstm_cell_744_bias_read_readvariableop<
8savev2_lstm_745_lstm_cell_745_kernel_read_readvariableopF
Bsavev2_lstm_745_lstm_cell_745_recurrent_kernel_read_readvariableop:
6savev2_lstm_745_lstm_cell_745_bias_read_readvariableop<
8savev2_lstm_746_lstm_cell_746_kernel_read_readvariableopF
Bsavev2_lstm_746_lstm_cell_746_recurrent_kernel_read_readvariableop:
6savev2_lstm_746_lstm_cell_746_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_248_kernel_m_read_readvariableop4
0savev2_adam_dense_248_bias_m_read_readvariableopC
?savev2_adam_lstm_744_lstm_cell_744_kernel_m_read_readvariableopM
Isavev2_adam_lstm_744_lstm_cell_744_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_744_lstm_cell_744_bias_m_read_readvariableopC
?savev2_adam_lstm_745_lstm_cell_745_kernel_m_read_readvariableopM
Isavev2_adam_lstm_745_lstm_cell_745_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_745_lstm_cell_745_bias_m_read_readvariableopC
?savev2_adam_lstm_746_lstm_cell_746_kernel_m_read_readvariableopM
Isavev2_adam_lstm_746_lstm_cell_746_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_746_lstm_cell_746_bias_m_read_readvariableop6
2savev2_adam_dense_248_kernel_v_read_readvariableop4
0savev2_adam_dense_248_bias_v_read_readvariableopC
?savev2_adam_lstm_744_lstm_cell_744_kernel_v_read_readvariableopM
Isavev2_adam_lstm_744_lstm_cell_744_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_744_lstm_cell_744_bias_v_read_readvariableopC
?savev2_adam_lstm_745_lstm_cell_745_kernel_v_read_readvariableopM
Isavev2_adam_lstm_745_lstm_cell_745_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_745_lstm_cell_745_bias_v_read_readvariableopC
?savev2_adam_lstm_746_lstm_cell_746_kernel_v_read_readvariableopM
Isavev2_adam_lstm_746_lstm_cell_746_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_746_lstm_cell_746_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_248_kernel_read_readvariableop)savev2_dense_248_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_744_lstm_cell_744_kernel_read_readvariableopBsavev2_lstm_744_lstm_cell_744_recurrent_kernel_read_readvariableop6savev2_lstm_744_lstm_cell_744_bias_read_readvariableop8savev2_lstm_745_lstm_cell_745_kernel_read_readvariableopBsavev2_lstm_745_lstm_cell_745_recurrent_kernel_read_readvariableop6savev2_lstm_745_lstm_cell_745_bias_read_readvariableop8savev2_lstm_746_lstm_cell_746_kernel_read_readvariableopBsavev2_lstm_746_lstm_cell_746_recurrent_kernel_read_readvariableop6savev2_lstm_746_lstm_cell_746_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_248_kernel_m_read_readvariableop0savev2_adam_dense_248_bias_m_read_readvariableop?savev2_adam_lstm_744_lstm_cell_744_kernel_m_read_readvariableopIsavev2_adam_lstm_744_lstm_cell_744_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_744_lstm_cell_744_bias_m_read_readvariableop?savev2_adam_lstm_745_lstm_cell_745_kernel_m_read_readvariableopIsavev2_adam_lstm_745_lstm_cell_745_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_745_lstm_cell_745_bias_m_read_readvariableop?savev2_adam_lstm_746_lstm_cell_746_kernel_m_read_readvariableopIsavev2_adam_lstm_746_lstm_cell_746_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_746_lstm_cell_746_bias_m_read_readvariableop2savev2_adam_dense_248_kernel_v_read_readvariableop0savev2_adam_dense_248_bias_v_read_readvariableop?savev2_adam_lstm_744_lstm_cell_744_kernel_v_read_readvariableopIsavev2_adam_lstm_744_lstm_cell_744_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_744_lstm_cell_744_bias_v_read_readvariableop?savev2_adam_lstm_745_lstm_cell_745_kernel_v_read_readvariableopIsavev2_adam_lstm_745_lstm_cell_745_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_745_lstm_cell_745_bias_v_read_readvariableop?savev2_adam_lstm_746_lstm_cell_746_kernel_v_read_readvariableopIsavev2_adam_lstm_746_lstm_cell_746_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_746_lstm_cell_746_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934153

inputs'
lstm_cell_650_3934071:2('
lstm_cell_650_3934073:
(#
lstm_cell_650_3934075:(
identity??%lstm_cell_650/StatefulPartitionedCall?while;
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
%lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_650_3934071lstm_cell_650_3934073lstm_cell_650_3934075*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3934025n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_650_3934071lstm_cell_650_3934073lstm_cell_650_3934075*
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
while_body_3934084*
condR
while_cond_3934083*K
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
NoOpNoOp&^lstm_cell_650/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_650/StatefulPartitionedCall%lstm_cell_650/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_744_layer_call_fn_3936324

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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3935157s
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
while_cond_3936668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3936668___redundant_placeholder05
1while_while_cond_3936668___redundant_placeholder15
1while_while_cond_3936668___redundant_placeholder25
1while_while_cond_3936668___redundant_placeholder3
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
?
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935337
lstm_744_input#
lstm_744_3935310:	?#
lstm_744_3935312:	d?
lstm_744_3935314:	?#
lstm_745_3935317:	d?#
lstm_745_3935319:	2?
lstm_745_3935321:	?"
lstm_746_3935324:2("
lstm_746_3935326:
(
lstm_746_3935328:(#
dense_248_3935331:

dense_248_3935333:
identity??!dense_248/StatefulPartitionedCall? lstm_744/StatefulPartitionedCall? lstm_745/StatefulPartitionedCall? lstm_746/StatefulPartitionedCall?
 lstm_744/StatefulPartitionedCallStatefulPartitionedCalllstm_744_inputlstm_744_3935310lstm_744_3935312lstm_744_3935314*
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3935157?
 lstm_745/StatefulPartitionedCallStatefulPartitionedCall)lstm_744/StatefulPartitionedCall:output:0lstm_745_3935317lstm_745_3935319lstm_745_3935321*
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934992?
 lstm_746/StatefulPartitionedCallStatefulPartitionedCall)lstm_745/StatefulPartitionedCall:output:0lstm_746_3935324lstm_746_3935326lstm_746_3935328*
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934827?
!dense_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_746/StatefulPartitionedCall:output:0dense_248_3935331dense_248_3935333*
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
F__inference_dense_248_layer_call_and_return_conditional_losses_3934629y
IdentityIdentity*dense_248/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_248/StatefulPartitionedCall!^lstm_744/StatefulPartitionedCall!^lstm_745/StatefulPartitionedCall!^lstm_746/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2D
 lstm_744/StatefulPartitionedCall lstm_744/StatefulPartitionedCall2D
 lstm_745/StatefulPartitionedCall lstm_745/StatefulPartitionedCall2D
 lstm_746/StatefulPartitionedCall lstm_746/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_744_input
?C
?

lstm_746_while_body_3935763.
*lstm_746_while_lstm_746_while_loop_counter4
0lstm_746_while_lstm_746_while_maximum_iterations
lstm_746_while_placeholder 
lstm_746_while_placeholder_1 
lstm_746_while_placeholder_2 
lstm_746_while_placeholder_3-
)lstm_746_while_lstm_746_strided_slice_1_0i
elstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0:2(Q
?lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(L
>lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0:(
lstm_746_while_identity
lstm_746_while_identity_1
lstm_746_while_identity_2
lstm_746_while_identity_3
lstm_746_while_identity_4
lstm_746_while_identity_5+
'lstm_746_while_lstm_746_strided_slice_1g
clstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensorM
;lstm_746_while_lstm_cell_650_matmul_readvariableop_resource:2(O
=lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource:
(J
<lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource:(??3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp?2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp?4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp?
@lstm_746/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_746/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensor_0lstm_746_while_placeholderIlstm_746/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp=lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_746/while/lstm_cell_650/MatMulMatMul9lstm_746/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp?lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_746/while/lstm_cell_650/MatMul_1MatMullstm_746_while_placeholder_2<lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_746/while/lstm_cell_650/addAddV2-lstm_746/while/lstm_cell_650/MatMul:product:0/lstm_746/while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp>lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_746/while/lstm_cell_650/BiasAddBiasAdd$lstm_746/while/lstm_cell_650/add:z:0;lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_746/while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_746/while/lstm_cell_650/splitSplit5lstm_746/while/lstm_cell_650/split/split_dim:output:0-lstm_746/while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_746/while/lstm_cell_650/SigmoidSigmoid+lstm_746/while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_746/while/lstm_cell_650/Sigmoid_1Sigmoid+lstm_746/while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_746/while/lstm_cell_650/mulMul*lstm_746/while/lstm_cell_650/Sigmoid_1:y:0lstm_746_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_746/while/lstm_cell_650/ReluRelu+lstm_746/while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_746/while/lstm_cell_650/mul_1Mul(lstm_746/while/lstm_cell_650/Sigmoid:y:0/lstm_746/while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_746/while/lstm_cell_650/add_1AddV2$lstm_746/while/lstm_cell_650/mul:z:0&lstm_746/while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_746/while/lstm_cell_650/Sigmoid_2Sigmoid+lstm_746/while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_746/while/lstm_cell_650/Relu_1Relu&lstm_746/while/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_746/while/lstm_cell_650/mul_2Mul*lstm_746/while/lstm_cell_650/Sigmoid_2:y:01lstm_746/while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_746/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_746_while_placeholder_1lstm_746_while_placeholder&lstm_746/while/lstm_cell_650/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_746/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_746/while/addAddV2lstm_746_while_placeholderlstm_746/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_746/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_746/while/add_1AddV2*lstm_746_while_lstm_746_while_loop_counterlstm_746/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_746/while/IdentityIdentitylstm_746/while/add_1:z:0^lstm_746/while/NoOp*
T0*
_output_shapes
: ?
lstm_746/while/Identity_1Identity0lstm_746_while_lstm_746_while_maximum_iterations^lstm_746/while/NoOp*
T0*
_output_shapes
: t
lstm_746/while/Identity_2Identitylstm_746/while/add:z:0^lstm_746/while/NoOp*
T0*
_output_shapes
: ?
lstm_746/while/Identity_3IdentityClstm_746/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_746/while/NoOp*
T0*
_output_shapes
: ?
lstm_746/while/Identity_4Identity&lstm_746/while/lstm_cell_650/mul_2:z:0^lstm_746/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_746/while/Identity_5Identity&lstm_746/while/lstm_cell_650/add_1:z:0^lstm_746/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_746/while/NoOpNoOp4^lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp3^lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp5^lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_746_while_identity lstm_746/while/Identity:output:0"?
lstm_746_while_identity_1"lstm_746/while/Identity_1:output:0"?
lstm_746_while_identity_2"lstm_746/while/Identity_2:output:0"?
lstm_746_while_identity_3"lstm_746/while/Identity_3:output:0"?
lstm_746_while_identity_4"lstm_746/while/Identity_4:output:0"?
lstm_746_while_identity_5"lstm_746/while/Identity_5:output:0"T
'lstm_746_while_lstm_746_strided_slice_1)lstm_746_while_lstm_746_strided_slice_1_0"~
<lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource>lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0"?
=lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource?lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0"|
;lstm_746_while_lstm_cell_650_matmul_readvariableop_resource=lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0"?
clstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensorelstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp2h
2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp2l
4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3936525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3936525___redundant_placeholder05
1while_while_cond_3936525___redundant_placeholder15
1while_while_cond_3936525___redundant_placeholder25
1while_while_cond_3936525___redundant_placeholder3
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
?T
?
*sequential_248_lstm_745_while_body_3932883L
Hsequential_248_lstm_745_while_sequential_248_lstm_745_while_loop_counterR
Nsequential_248_lstm_745_while_sequential_248_lstm_745_while_maximum_iterations-
)sequential_248_lstm_745_while_placeholder/
+sequential_248_lstm_745_while_placeholder_1/
+sequential_248_lstm_745_while_placeholder_2/
+sequential_248_lstm_745_while_placeholder_3K
Gsequential_248_lstm_745_while_sequential_248_lstm_745_strided_slice_1_0?
?sequential_248_lstm_745_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_745_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_248_lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0:	d?a
Nsequential_248_lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?\
Msequential_248_lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0:	?*
&sequential_248_lstm_745_while_identity,
(sequential_248_lstm_745_while_identity_1,
(sequential_248_lstm_745_while_identity_2,
(sequential_248_lstm_745_while_identity_3,
(sequential_248_lstm_745_while_identity_4,
(sequential_248_lstm_745_while_identity_5I
Esequential_248_lstm_745_while_sequential_248_lstm_745_strided_slice_1?
?sequential_248_lstm_745_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_745_tensorarrayunstack_tensorlistfromtensor]
Jsequential_248_lstm_745_while_lstm_cell_649_matmul_readvariableop_resource:	d?_
Lsequential_248_lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource:	2?Z
Ksequential_248_lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource:	???Bsequential_248/lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp?Asequential_248/lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp?Csequential_248/lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp?
Osequential_248/lstm_745/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_248/lstm_745/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_248_lstm_745_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_745_tensorarrayunstack_tensorlistfromtensor_0)sequential_248_lstm_745_while_placeholderXsequential_248/lstm_745/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_248/lstm_745/while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOpLsequential_248_lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_248/lstm_745/while/lstm_cell_649/MatMulMatMulHsequential_248/lstm_745/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_248/lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_248/lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOpNsequential_248_lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_248/lstm_745/while/lstm_cell_649/MatMul_1MatMul+sequential_248_lstm_745_while_placeholder_2Ksequential_248/lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_248/lstm_745/while/lstm_cell_649/addAddV2<sequential_248/lstm_745/while/lstm_cell_649/MatMul:product:0>sequential_248/lstm_745/while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_248/lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOpMsequential_248_lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_248/lstm_745/while/lstm_cell_649/BiasAddBiasAdd3sequential_248/lstm_745/while/lstm_cell_649/add:z:0Jsequential_248/lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_248/lstm_745/while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_248/lstm_745/while/lstm_cell_649/splitSplitDsequential_248/lstm_745/while/lstm_cell_649/split/split_dim:output:0<sequential_248/lstm_745/while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_248/lstm_745/while/lstm_cell_649/SigmoidSigmoid:sequential_248/lstm_745/while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_248/lstm_745/while/lstm_cell_649/Sigmoid_1Sigmoid:sequential_248/lstm_745/while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_248/lstm_745/while/lstm_cell_649/mulMul9sequential_248/lstm_745/while/lstm_cell_649/Sigmoid_1:y:0+sequential_248_lstm_745_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_248/lstm_745/while/lstm_cell_649/ReluRelu:sequential_248/lstm_745/while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_248/lstm_745/while/lstm_cell_649/mul_1Mul7sequential_248/lstm_745/while/lstm_cell_649/Sigmoid:y:0>sequential_248/lstm_745/while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_248/lstm_745/while/lstm_cell_649/add_1AddV23sequential_248/lstm_745/while/lstm_cell_649/mul:z:05sequential_248/lstm_745/while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_248/lstm_745/while/lstm_cell_649/Sigmoid_2Sigmoid:sequential_248/lstm_745/while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_248/lstm_745/while/lstm_cell_649/Relu_1Relu5sequential_248/lstm_745/while/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_248/lstm_745/while/lstm_cell_649/mul_2Mul9sequential_248/lstm_745/while/lstm_cell_649/Sigmoid_2:y:0@sequential_248/lstm_745/while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_248/lstm_745/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_248_lstm_745_while_placeholder_1)sequential_248_lstm_745_while_placeholder5sequential_248/lstm_745/while/lstm_cell_649/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_248/lstm_745/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_248/lstm_745/while/addAddV2)sequential_248_lstm_745_while_placeholder,sequential_248/lstm_745/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_248/lstm_745/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_248/lstm_745/while/add_1AddV2Hsequential_248_lstm_745_while_sequential_248_lstm_745_while_loop_counter.sequential_248/lstm_745/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_248/lstm_745/while/IdentityIdentity'sequential_248/lstm_745/while/add_1:z:0#^sequential_248/lstm_745/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_745/while/Identity_1IdentityNsequential_248_lstm_745_while_sequential_248_lstm_745_while_maximum_iterations#^sequential_248/lstm_745/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_745/while/Identity_2Identity%sequential_248/lstm_745/while/add:z:0#^sequential_248/lstm_745/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_745/while/Identity_3IdentityRsequential_248/lstm_745/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_248/lstm_745/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_745/while/Identity_4Identity5sequential_248/lstm_745/while/lstm_cell_649/mul_2:z:0#^sequential_248/lstm_745/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_248/lstm_745/while/Identity_5Identity5sequential_248/lstm_745/while/lstm_cell_649/add_1:z:0#^sequential_248/lstm_745/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_248/lstm_745/while/NoOpNoOpC^sequential_248/lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOpB^sequential_248/lstm_745/while/lstm_cell_649/MatMul/ReadVariableOpD^sequential_248/lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_248_lstm_745_while_identity/sequential_248/lstm_745/while/Identity:output:0"]
(sequential_248_lstm_745_while_identity_11sequential_248/lstm_745/while/Identity_1:output:0"]
(sequential_248_lstm_745_while_identity_21sequential_248/lstm_745/while/Identity_2:output:0"]
(sequential_248_lstm_745_while_identity_31sequential_248/lstm_745/while/Identity_3:output:0"]
(sequential_248_lstm_745_while_identity_41sequential_248/lstm_745/while/Identity_4:output:0"]
(sequential_248_lstm_745_while_identity_51sequential_248/lstm_745/while/Identity_5:output:0"?
Ksequential_248_lstm_745_while_lstm_cell_649_biasadd_readvariableop_resourceMsequential_248_lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0"?
Lsequential_248_lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resourceNsequential_248_lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0"?
Jsequential_248_lstm_745_while_lstm_cell_649_matmul_readvariableop_resourceLsequential_248_lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0"?
Esequential_248_lstm_745_while_sequential_248_lstm_745_strided_slice_1Gsequential_248_lstm_745_while_sequential_248_lstm_745_strided_slice_1_0"?
?sequential_248_lstm_745_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_745_tensorarrayunstack_tensorlistfromtensor?sequential_248_lstm_745_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_745_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_248/lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOpBsequential_248/lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp2?
Asequential_248/lstm_745/while/lstm_cell_649/MatMul/ReadVariableOpAsequential_248/lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp2?
Csequential_248/lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOpCsequential_248/lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_744_layer_call_fn_3936313

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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3934311s
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
?
?
K__inference_sequential_248_layer_call_and_return_conditional_losses_3934636

inputs#
lstm_744_3934312:	?#
lstm_744_3934314:	d?
lstm_744_3934316:	?#
lstm_745_3934462:	d?#
lstm_745_3934464:	2?
lstm_745_3934466:	?"
lstm_746_3934612:2("
lstm_746_3934614:
(
lstm_746_3934616:(#
dense_248_3934630:

dense_248_3934632:
identity??!dense_248/StatefulPartitionedCall? lstm_744/StatefulPartitionedCall? lstm_745/StatefulPartitionedCall? lstm_746/StatefulPartitionedCall?
 lstm_744/StatefulPartitionedCallStatefulPartitionedCallinputslstm_744_3934312lstm_744_3934314lstm_744_3934316*
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3934311?
 lstm_745/StatefulPartitionedCallStatefulPartitionedCall)lstm_744/StatefulPartitionedCall:output:0lstm_745_3934462lstm_745_3934464lstm_745_3934466*
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934461?
 lstm_746/StatefulPartitionedCallStatefulPartitionedCall)lstm_745/StatefulPartitionedCall:output:0lstm_746_3934612lstm_746_3934614lstm_746_3934616*
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934611?
!dense_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_746/StatefulPartitionedCall:output:0dense_248_3934630dense_248_3934632*
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
F__inference_dense_248_layer_call_and_return_conditional_losses_3934629y
IdentityIdentity*dense_248/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_248/StatefulPartitionedCall!^lstm_744/StatefulPartitionedCall!^lstm_745/StatefulPartitionedCall!^lstm_746/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2D
 lstm_744/StatefulPartitionedCall lstm_744/StatefulPartitionedCall2D
 lstm_745/StatefulPartitionedCall lstm_745/StatefulPartitionedCall2D
 lstm_746/StatefulPartitionedCall lstm_746/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3934226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3934226___redundant_placeholder05
1while_while_cond_3934226___redundant_placeholder15
1while_while_cond_3934226___redundant_placeholder25
1while_while_cond_3934226___redundant_placeholder3
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
while_body_3933734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_649_3933758_0:	d?0
while_lstm_cell_649_3933760_0:	2?,
while_lstm_cell_649_3933762_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_649_3933758:	d?.
while_lstm_cell_649_3933760:	2?*
while_lstm_cell_649_3933762:	???+while/lstm_cell_649/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_649_3933758_0while_lstm_cell_649_3933760_0while_lstm_cell_649_3933762_0*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933675?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_649/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_649/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_649/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_649/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_649_3933758while_lstm_cell_649_3933758_0"<
while_lstm_cell_649_3933760while_lstm_cell_649_3933760_0"<
while_lstm_cell_649_3933762while_lstm_cell_649_3933762_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_649/StatefulPartitionedCall+while/lstm_cell_649/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_744_layer_call_fn_3936302
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3933453|
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
while_cond_3936998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3936998___redundant_placeholder05
1while_while_cond_3936998___redundant_placeholder15
1while_while_cond_3936998___redundant_placeholder25
1while_while_cond_3936998___redundant_placeholder3
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3933262

inputs(
lstm_cell_648_3933180:	?(
lstm_cell_648_3933182:	d?$
lstm_cell_648_3933184:	?
identity??%lstm_cell_648/StatefulPartitionedCall?while;
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
%lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_648_3933180lstm_cell_648_3933182lstm_cell_648_3933184*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933179n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_648_3933180lstm_cell_648_3933182lstm_cell_648_3933184*
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
while_body_3933193*
condR
while_cond_3933192*K
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
NoOpNoOp&^lstm_cell_648/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_648/StatefulPartitionedCall%lstm_cell_648/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937083
inputs_0?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_3936999*
condR
while_cond_3936998*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_648_layer_call_fn_3938181

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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933325o
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
?
E__inference_lstm_744_layer_call_and_return_conditional_losses_3933453

inputs(
lstm_cell_648_3933371:	?(
lstm_cell_648_3933373:	d?$
lstm_cell_648_3933375:	?
identity??%lstm_cell_648/StatefulPartitionedCall?while;
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
%lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_648_3933371lstm_cell_648_3933373lstm_cell_648_3933375*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933325n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_648_3933371lstm_cell_648_3933373lstm_cell_648_3933375*
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
while_body_3933384*
condR
while_cond_3933383*K
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
NoOpNoOp&^lstm_cell_648/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_648/StatefulPartitionedCall%lstm_cell_648/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3936669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934461

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_3934377*
condR
while_cond_3934376*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_3933384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_648_3933408_0:	?0
while_lstm_cell_648_3933410_0:	d?,
while_lstm_cell_648_3933412_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_648_3933408:	?.
while_lstm_cell_648_3933410:	d?*
while_lstm_cell_648_3933412:	???+while/lstm_cell_648/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_648_3933408_0while_lstm_cell_648_3933410_0while_lstm_cell_648_3933412_0*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933325?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_648/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_648/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_648/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_648/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_648_3933408while_lstm_cell_648_3933408_0"<
while_lstm_cell_648_3933410while_lstm_cell_648_3933410_0"<
while_lstm_cell_648_3933412while_lstm_cell_648_3933412_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_648/StatefulPartitionedCall+while/lstm_cell_648/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936896

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_3936812*
condR
while_cond_3936811*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3936999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3933192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3933192___redundant_placeholder05
1while_while_cond_3933192___redundant_placeholder15
1while_while_cond_3933192___redundant_placeholder25
1while_while_cond_3933192___redundant_placeholder3
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
while_cond_3934083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3934083___redundant_placeholder05
1while_while_cond_3934083___redundant_placeholder15
1while_while_cond_3934083___redundant_placeholder25
1while_while_cond_3934083___redundant_placeholder3
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
while_body_3933543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_649_3933567_0:	d?0
while_lstm_cell_649_3933569_0:	2?,
while_lstm_cell_649_3933571_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_649_3933567:	d?.
while_lstm_cell_649_3933569:	2?*
while_lstm_cell_649_3933571:	???+while/lstm_cell_649/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_649_3933567_0while_lstm_cell_649_3933569_0while_lstm_cell_649_3933571_0*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933529?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_649/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_649/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_649/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_649/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_649_3933567while_lstm_cell_649_3933567_0"<
while_lstm_cell_649_3933569while_lstm_cell_649_3933569_0"<
while_lstm_cell_649_3933571while_lstm_cell_649_3933571_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_649/StatefulPartitionedCall+while/lstm_cell_649/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_745_while_cond_3936050.
*lstm_745_while_lstm_745_while_loop_counter4
0lstm_745_while_lstm_745_while_maximum_iterations
lstm_745_while_placeholder 
lstm_745_while_placeholder_1 
lstm_745_while_placeholder_2 
lstm_745_while_placeholder_30
,lstm_745_while_less_lstm_745_strided_slice_1G
Clstm_745_while_lstm_745_while_cond_3936050___redundant_placeholder0G
Clstm_745_while_lstm_745_while_cond_3936050___redundant_placeholder1G
Clstm_745_while_lstm_745_while_cond_3936050___redundant_placeholder2G
Clstm_745_while_lstm_745_while_cond_3936050___redundant_placeholder3
lstm_745_while_identity
?
lstm_745/while/LessLesslstm_745_while_placeholder,lstm_745_while_less_lstm_745_strided_slice_1*
T0*
_output_shapes
: ]
lstm_745/while/IdentityIdentitylstm_745/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_745_while_identity lstm_745/while/Identity:output:0*(
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3938343

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
while_cond_3934907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3934907___redundant_placeholder05
1while_while_cond_3934907___redundant_placeholder15
1while_while_cond_3934907___redundant_placeholder25
1while_while_cond_3934907___redundant_placeholder3
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
while_cond_3937141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3937141___redundant_placeholder05
1while_while_cond_3937141___redundant_placeholder15
1while_while_cond_3937141___redundant_placeholder25
1while_while_cond_3937141___redundant_placeholder3
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
*__inference_lstm_744_layer_call_fn_3936291
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3933262|
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

lstm_746_while_body_3936190.
*lstm_746_while_lstm_746_while_loop_counter4
0lstm_746_while_lstm_746_while_maximum_iterations
lstm_746_while_placeholder 
lstm_746_while_placeholder_1 
lstm_746_while_placeholder_2 
lstm_746_while_placeholder_3-
)lstm_746_while_lstm_746_strided_slice_1_0i
elstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0:2(Q
?lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(L
>lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0:(
lstm_746_while_identity
lstm_746_while_identity_1
lstm_746_while_identity_2
lstm_746_while_identity_3
lstm_746_while_identity_4
lstm_746_while_identity_5+
'lstm_746_while_lstm_746_strided_slice_1g
clstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensorM
;lstm_746_while_lstm_cell_650_matmul_readvariableop_resource:2(O
=lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource:
(J
<lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource:(??3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp?2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp?4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp?
@lstm_746/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_746/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensor_0lstm_746_while_placeholderIlstm_746/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp=lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_746/while/lstm_cell_650/MatMulMatMul9lstm_746/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp?lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_746/while/lstm_cell_650/MatMul_1MatMullstm_746_while_placeholder_2<lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_746/while/lstm_cell_650/addAddV2-lstm_746/while/lstm_cell_650/MatMul:product:0/lstm_746/while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp>lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_746/while/lstm_cell_650/BiasAddBiasAdd$lstm_746/while/lstm_cell_650/add:z:0;lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_746/while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_746/while/lstm_cell_650/splitSplit5lstm_746/while/lstm_cell_650/split/split_dim:output:0-lstm_746/while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_746/while/lstm_cell_650/SigmoidSigmoid+lstm_746/while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_746/while/lstm_cell_650/Sigmoid_1Sigmoid+lstm_746/while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_746/while/lstm_cell_650/mulMul*lstm_746/while/lstm_cell_650/Sigmoid_1:y:0lstm_746_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_746/while/lstm_cell_650/ReluRelu+lstm_746/while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_746/while/lstm_cell_650/mul_1Mul(lstm_746/while/lstm_cell_650/Sigmoid:y:0/lstm_746/while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_746/while/lstm_cell_650/add_1AddV2$lstm_746/while/lstm_cell_650/mul:z:0&lstm_746/while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_746/while/lstm_cell_650/Sigmoid_2Sigmoid+lstm_746/while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_746/while/lstm_cell_650/Relu_1Relu&lstm_746/while/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_746/while/lstm_cell_650/mul_2Mul*lstm_746/while/lstm_cell_650/Sigmoid_2:y:01lstm_746/while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_746/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_746_while_placeholder_1lstm_746_while_placeholder&lstm_746/while/lstm_cell_650/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_746/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_746/while/addAddV2lstm_746_while_placeholderlstm_746/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_746/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_746/while/add_1AddV2*lstm_746_while_lstm_746_while_loop_counterlstm_746/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_746/while/IdentityIdentitylstm_746/while/add_1:z:0^lstm_746/while/NoOp*
T0*
_output_shapes
: ?
lstm_746/while/Identity_1Identity0lstm_746_while_lstm_746_while_maximum_iterations^lstm_746/while/NoOp*
T0*
_output_shapes
: t
lstm_746/while/Identity_2Identitylstm_746/while/add:z:0^lstm_746/while/NoOp*
T0*
_output_shapes
: ?
lstm_746/while/Identity_3IdentityClstm_746/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_746/while/NoOp*
T0*
_output_shapes
: ?
lstm_746/while/Identity_4Identity&lstm_746/while/lstm_cell_650/mul_2:z:0^lstm_746/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_746/while/Identity_5Identity&lstm_746/while/lstm_cell_650/add_1:z:0^lstm_746/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_746/while/NoOpNoOp4^lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp3^lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp5^lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_746_while_identity lstm_746/while/Identity:output:0"?
lstm_746_while_identity_1"lstm_746/while/Identity_1:output:0"?
lstm_746_while_identity_2"lstm_746/while/Identity_2:output:0"?
lstm_746_while_identity_3"lstm_746/while/Identity_3:output:0"?
lstm_746_while_identity_4"lstm_746/while/Identity_4:output:0"?
lstm_746_while_identity_5"lstm_746/while/Identity_5:output:0"T
'lstm_746_while_lstm_746_strided_slice_1)lstm_746_while_lstm_746_strided_slice_1_0"~
<lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource>lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0"?
=lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource?lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0"|
;lstm_746_while_lstm_cell_650_matmul_readvariableop_resource=lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0"?
clstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensorelstm_746_while_tensorarrayv2read_tensorlistgetitem_lstm_746_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp3lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp2h
2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp2lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp2l
4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp4lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3933893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_650_3933917_0:2(/
while_lstm_cell_650_3933919_0:
(+
while_lstm_cell_650_3933921_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_650_3933917:2(-
while_lstm_cell_650_3933919:
()
while_lstm_cell_650_3933921:(??+while/lstm_cell_650/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_650_3933917_0while_lstm_cell_650_3933919_0while_lstm_cell_650_3933921_0*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3933879?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_650/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_650/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_650/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_650_3933917while_lstm_cell_650_3933917_0"<
while_lstm_cell_650_3933919while_lstm_cell_650_3933919_0"<
while_lstm_cell_650_3933921while_lstm_cell_650_3933921_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_650/StatefulPartitionedCall+while/lstm_cell_650/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3937757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3937757___redundant_placeholder05
1while_while_cond_3937757___redundant_placeholder15
1while_while_cond_3937757___redundant_placeholder25
1while_while_cond_3937757___redundant_placeholder3
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
*__inference_lstm_746_layer_call_fn_3937545

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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934611o
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
?T
?
*sequential_248_lstm_746_while_body_3933022L
Hsequential_248_lstm_746_while_sequential_248_lstm_746_while_loop_counterR
Nsequential_248_lstm_746_while_sequential_248_lstm_746_while_maximum_iterations-
)sequential_248_lstm_746_while_placeholder/
+sequential_248_lstm_746_while_placeholder_1/
+sequential_248_lstm_746_while_placeholder_2/
+sequential_248_lstm_746_while_placeholder_3K
Gsequential_248_lstm_746_while_sequential_248_lstm_746_strided_slice_1_0?
?sequential_248_lstm_746_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_746_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_248_lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0:2(`
Nsequential_248_lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0:
([
Msequential_248_lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0:(*
&sequential_248_lstm_746_while_identity,
(sequential_248_lstm_746_while_identity_1,
(sequential_248_lstm_746_while_identity_2,
(sequential_248_lstm_746_while_identity_3,
(sequential_248_lstm_746_while_identity_4,
(sequential_248_lstm_746_while_identity_5I
Esequential_248_lstm_746_while_sequential_248_lstm_746_strided_slice_1?
?sequential_248_lstm_746_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_746_tensorarrayunstack_tensorlistfromtensor\
Jsequential_248_lstm_746_while_lstm_cell_650_matmul_readvariableop_resource:2(^
Lsequential_248_lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource:
(Y
Ksequential_248_lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource:(??Bsequential_248/lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp?Asequential_248/lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp?Csequential_248/lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp?
Osequential_248/lstm_746/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_248/lstm_746/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_248_lstm_746_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_746_tensorarrayunstack_tensorlistfromtensor_0)sequential_248_lstm_746_while_placeholderXsequential_248/lstm_746/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_248/lstm_746/while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOpLsequential_248_lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_248/lstm_746/while/lstm_cell_650/MatMulMatMulHsequential_248/lstm_746/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_248/lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_248/lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOpNsequential_248_lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_248/lstm_746/while/lstm_cell_650/MatMul_1MatMul+sequential_248_lstm_746_while_placeholder_2Ksequential_248/lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_248/lstm_746/while/lstm_cell_650/addAddV2<sequential_248/lstm_746/while/lstm_cell_650/MatMul:product:0>sequential_248/lstm_746/while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_248/lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOpMsequential_248_lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_248/lstm_746/while/lstm_cell_650/BiasAddBiasAdd3sequential_248/lstm_746/while/lstm_cell_650/add:z:0Jsequential_248/lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_248/lstm_746/while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_248/lstm_746/while/lstm_cell_650/splitSplitDsequential_248/lstm_746/while/lstm_cell_650/split/split_dim:output:0<sequential_248/lstm_746/while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_248/lstm_746/while/lstm_cell_650/SigmoidSigmoid:sequential_248/lstm_746/while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_248/lstm_746/while/lstm_cell_650/Sigmoid_1Sigmoid:sequential_248/lstm_746/while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_248/lstm_746/while/lstm_cell_650/mulMul9sequential_248/lstm_746/while/lstm_cell_650/Sigmoid_1:y:0+sequential_248_lstm_746_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_248/lstm_746/while/lstm_cell_650/ReluRelu:sequential_248/lstm_746/while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_248/lstm_746/while/lstm_cell_650/mul_1Mul7sequential_248/lstm_746/while/lstm_cell_650/Sigmoid:y:0>sequential_248/lstm_746/while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_248/lstm_746/while/lstm_cell_650/add_1AddV23sequential_248/lstm_746/while/lstm_cell_650/mul:z:05sequential_248/lstm_746/while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_248/lstm_746/while/lstm_cell_650/Sigmoid_2Sigmoid:sequential_248/lstm_746/while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_248/lstm_746/while/lstm_cell_650/Relu_1Relu5sequential_248/lstm_746/while/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_248/lstm_746/while/lstm_cell_650/mul_2Mul9sequential_248/lstm_746/while/lstm_cell_650/Sigmoid_2:y:0@sequential_248/lstm_746/while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_248/lstm_746/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_248_lstm_746_while_placeholder_1)sequential_248_lstm_746_while_placeholder5sequential_248/lstm_746/while/lstm_cell_650/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_248/lstm_746/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_248/lstm_746/while/addAddV2)sequential_248_lstm_746_while_placeholder,sequential_248/lstm_746/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_248/lstm_746/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_248/lstm_746/while/add_1AddV2Hsequential_248_lstm_746_while_sequential_248_lstm_746_while_loop_counter.sequential_248/lstm_746/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_248/lstm_746/while/IdentityIdentity'sequential_248/lstm_746/while/add_1:z:0#^sequential_248/lstm_746/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_746/while/Identity_1IdentityNsequential_248_lstm_746_while_sequential_248_lstm_746_while_maximum_iterations#^sequential_248/lstm_746/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_746/while/Identity_2Identity%sequential_248/lstm_746/while/add:z:0#^sequential_248/lstm_746/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_746/while/Identity_3IdentityRsequential_248/lstm_746/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_248/lstm_746/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_746/while/Identity_4Identity5sequential_248/lstm_746/while/lstm_cell_650/mul_2:z:0#^sequential_248/lstm_746/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_248/lstm_746/while/Identity_5Identity5sequential_248/lstm_746/while/lstm_cell_650/add_1:z:0#^sequential_248/lstm_746/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_248/lstm_746/while/NoOpNoOpC^sequential_248/lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOpB^sequential_248/lstm_746/while/lstm_cell_650/MatMul/ReadVariableOpD^sequential_248/lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_248_lstm_746_while_identity/sequential_248/lstm_746/while/Identity:output:0"]
(sequential_248_lstm_746_while_identity_11sequential_248/lstm_746/while/Identity_1:output:0"]
(sequential_248_lstm_746_while_identity_21sequential_248/lstm_746/while/Identity_2:output:0"]
(sequential_248_lstm_746_while_identity_31sequential_248/lstm_746/while/Identity_3:output:0"]
(sequential_248_lstm_746_while_identity_41sequential_248/lstm_746/while/Identity_4:output:0"]
(sequential_248_lstm_746_while_identity_51sequential_248/lstm_746/while/Identity_5:output:0"?
Ksequential_248_lstm_746_while_lstm_cell_650_biasadd_readvariableop_resourceMsequential_248_lstm_746_while_lstm_cell_650_biasadd_readvariableop_resource_0"?
Lsequential_248_lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resourceNsequential_248_lstm_746_while_lstm_cell_650_matmul_1_readvariableop_resource_0"?
Jsequential_248_lstm_746_while_lstm_cell_650_matmul_readvariableop_resourceLsequential_248_lstm_746_while_lstm_cell_650_matmul_readvariableop_resource_0"?
Esequential_248_lstm_746_while_sequential_248_lstm_746_strided_slice_1Gsequential_248_lstm_746_while_sequential_248_lstm_746_strided_slice_1_0"?
?sequential_248_lstm_746_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_746_tensorarrayunstack_tensorlistfromtensor?sequential_248_lstm_746_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_746_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_248/lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOpBsequential_248/lstm_746/while/lstm_cell_650/BiasAdd/ReadVariableOp2?
Asequential_248/lstm_746/while/lstm_cell_650/MatMul/ReadVariableOpAsequential_248/lstm_746/while/lstm_cell_650/MatMul/ReadVariableOp2?
Csequential_248/lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOpCsequential_248/lstm_746/while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3935157

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_3935073*
condR
while_cond_3935072*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_248_layer_call_and_return_conditional_losses_3936280

inputsH
5lstm_744_lstm_cell_648_matmul_readvariableop_resource:	?J
7lstm_744_lstm_cell_648_matmul_1_readvariableop_resource:	d?E
6lstm_744_lstm_cell_648_biasadd_readvariableop_resource:	?H
5lstm_745_lstm_cell_649_matmul_readvariableop_resource:	d?J
7lstm_745_lstm_cell_649_matmul_1_readvariableop_resource:	2?E
6lstm_745_lstm_cell_649_biasadd_readvariableop_resource:	?G
5lstm_746_lstm_cell_650_matmul_readvariableop_resource:2(I
7lstm_746_lstm_cell_650_matmul_1_readvariableop_resource:
(D
6lstm_746_lstm_cell_650_biasadd_readvariableop_resource:(:
(dense_248_matmul_readvariableop_resource:
7
)dense_248_biasadd_readvariableop_resource:
identity?? dense_248/BiasAdd/ReadVariableOp?dense_248/MatMul/ReadVariableOp?-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp?,lstm_744/lstm_cell_648/MatMul/ReadVariableOp?.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp?lstm_744/while?-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp?,lstm_745/lstm_cell_649/MatMul/ReadVariableOp?.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp?lstm_745/while?-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp?,lstm_746/lstm_cell_650/MatMul/ReadVariableOp?.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp?lstm_746/whileD
lstm_744/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_744/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_744/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_744/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_sliceStridedSlicelstm_744/Shape:output:0%lstm_744/strided_slice/stack:output:0'lstm_744/strided_slice/stack_1:output:0'lstm_744/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_744/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_744/zeros/packedPacklstm_744/strided_slice:output:0 lstm_744/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_744/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_744/zerosFilllstm_744/zeros/packed:output:0lstm_744/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_744/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_744/zeros_1/packedPacklstm_744/strided_slice:output:0"lstm_744/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_744/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_744/zeros_1Fill lstm_744/zeros_1/packed:output:0lstm_744/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_744/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_744/transpose	Transposeinputs lstm_744/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_744/Shape_1Shapelstm_744/transpose:y:0*
T0*
_output_shapes
:h
lstm_744/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_744/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_744/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_slice_1StridedSlicelstm_744/Shape_1:output:0'lstm_744/strided_slice_1/stack:output:0)lstm_744/strided_slice_1/stack_1:output:0)lstm_744/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_744/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_744/TensorArrayV2TensorListReserve-lstm_744/TensorArrayV2/element_shape:output:0!lstm_744/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_744/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_744/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_744/transpose:y:0Glstm_744/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_744/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_744/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_744/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_slice_2StridedSlicelstm_744/transpose:y:0'lstm_744/strided_slice_2/stack:output:0)lstm_744/strided_slice_2/stack_1:output:0)lstm_744/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_744/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp5lstm_744_lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_744/lstm_cell_648/MatMulMatMul!lstm_744/strided_slice_2:output:04lstm_744/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp7lstm_744_lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_744/lstm_cell_648/MatMul_1MatMullstm_744/zeros:output:06lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_744/lstm_cell_648/addAddV2'lstm_744/lstm_cell_648/MatMul:product:0)lstm_744/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp6lstm_744_lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_744/lstm_cell_648/BiasAddBiasAddlstm_744/lstm_cell_648/add:z:05lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_744/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_744/lstm_cell_648/splitSplit/lstm_744/lstm_cell_648/split/split_dim:output:0'lstm_744/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_744/lstm_cell_648/SigmoidSigmoid%lstm_744/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_744/lstm_cell_648/Sigmoid_1Sigmoid%lstm_744/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/mulMul$lstm_744/lstm_cell_648/Sigmoid_1:y:0lstm_744/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_744/lstm_cell_648/ReluRelu%lstm_744/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/mul_1Mul"lstm_744/lstm_cell_648/Sigmoid:y:0)lstm_744/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/add_1AddV2lstm_744/lstm_cell_648/mul:z:0 lstm_744/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_744/lstm_cell_648/Sigmoid_2Sigmoid%lstm_744/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_744/lstm_cell_648/Relu_1Relu lstm_744/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_744/lstm_cell_648/mul_2Mul$lstm_744/lstm_cell_648/Sigmoid_2:y:0+lstm_744/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_744/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_744/TensorArrayV2_1TensorListReserve/lstm_744/TensorArrayV2_1/element_shape:output:0!lstm_744/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_744/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_744/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_744/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_744/whileWhile$lstm_744/while/loop_counter:output:0*lstm_744/while/maximum_iterations:output:0lstm_744/time:output:0!lstm_744/TensorArrayV2_1:handle:0lstm_744/zeros:output:0lstm_744/zeros_1:output:0!lstm_744/strided_slice_1:output:0@lstm_744/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_744_lstm_cell_648_matmul_readvariableop_resource7lstm_744_lstm_cell_648_matmul_1_readvariableop_resource6lstm_744_lstm_cell_648_biasadd_readvariableop_resource*
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
lstm_744_while_body_3935912*'
condR
lstm_744_while_cond_3935911*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_744/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_744/TensorArrayV2Stack/TensorListStackTensorListStacklstm_744/while:output:3Blstm_744/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_744/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_744/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_744/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_744/strided_slice_3StridedSlice4lstm_744/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_744/strided_slice_3/stack:output:0)lstm_744/strided_slice_3/stack_1:output:0)lstm_744/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_744/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_744/transpose_1	Transpose4lstm_744/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_744/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_744/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_745/ShapeShapelstm_744/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_745/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_745/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_745/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_sliceStridedSlicelstm_745/Shape:output:0%lstm_745/strided_slice/stack:output:0'lstm_745/strided_slice/stack_1:output:0'lstm_745/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_745/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_745/zeros/packedPacklstm_745/strided_slice:output:0 lstm_745/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_745/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_745/zerosFilllstm_745/zeros/packed:output:0lstm_745/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_745/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_745/zeros_1/packedPacklstm_745/strided_slice:output:0"lstm_745/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_745/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_745/zeros_1Fill lstm_745/zeros_1/packed:output:0lstm_745/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_745/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_745/transpose	Transposelstm_744/transpose_1:y:0 lstm_745/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_745/Shape_1Shapelstm_745/transpose:y:0*
T0*
_output_shapes
:h
lstm_745/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_745/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_745/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_slice_1StridedSlicelstm_745/Shape_1:output:0'lstm_745/strided_slice_1/stack:output:0)lstm_745/strided_slice_1/stack_1:output:0)lstm_745/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_745/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_745/TensorArrayV2TensorListReserve-lstm_745/TensorArrayV2/element_shape:output:0!lstm_745/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_745/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_745/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_745/transpose:y:0Glstm_745/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_745/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_745/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_745/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_slice_2StridedSlicelstm_745/transpose:y:0'lstm_745/strided_slice_2/stack:output:0)lstm_745/strided_slice_2/stack_1:output:0)lstm_745/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_745/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp5lstm_745_lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_745/lstm_cell_649/MatMulMatMul!lstm_745/strided_slice_2:output:04lstm_745/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp7lstm_745_lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_745/lstm_cell_649/MatMul_1MatMullstm_745/zeros:output:06lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_745/lstm_cell_649/addAddV2'lstm_745/lstm_cell_649/MatMul:product:0)lstm_745/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp6lstm_745_lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_745/lstm_cell_649/BiasAddBiasAddlstm_745/lstm_cell_649/add:z:05lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_745/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_745/lstm_cell_649/splitSplit/lstm_745/lstm_cell_649/split/split_dim:output:0'lstm_745/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_745/lstm_cell_649/SigmoidSigmoid%lstm_745/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_745/lstm_cell_649/Sigmoid_1Sigmoid%lstm_745/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/mulMul$lstm_745/lstm_cell_649/Sigmoid_1:y:0lstm_745/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_745/lstm_cell_649/ReluRelu%lstm_745/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/mul_1Mul"lstm_745/lstm_cell_649/Sigmoid:y:0)lstm_745/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/add_1AddV2lstm_745/lstm_cell_649/mul:z:0 lstm_745/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_745/lstm_cell_649/Sigmoid_2Sigmoid%lstm_745/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_745/lstm_cell_649/Relu_1Relu lstm_745/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_745/lstm_cell_649/mul_2Mul$lstm_745/lstm_cell_649/Sigmoid_2:y:0+lstm_745/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_745/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_745/TensorArrayV2_1TensorListReserve/lstm_745/TensorArrayV2_1/element_shape:output:0!lstm_745/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_745/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_745/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_745/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_745/whileWhile$lstm_745/while/loop_counter:output:0*lstm_745/while/maximum_iterations:output:0lstm_745/time:output:0!lstm_745/TensorArrayV2_1:handle:0lstm_745/zeros:output:0lstm_745/zeros_1:output:0!lstm_745/strided_slice_1:output:0@lstm_745/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_745_lstm_cell_649_matmul_readvariableop_resource7lstm_745_lstm_cell_649_matmul_1_readvariableop_resource6lstm_745_lstm_cell_649_biasadd_readvariableop_resource*
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
lstm_745_while_body_3936051*'
condR
lstm_745_while_cond_3936050*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_745/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_745/TensorArrayV2Stack/TensorListStackTensorListStacklstm_745/while:output:3Blstm_745/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_745/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_745/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_745/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_745/strided_slice_3StridedSlice4lstm_745/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_745/strided_slice_3/stack:output:0)lstm_745/strided_slice_3/stack_1:output:0)lstm_745/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_745/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_745/transpose_1	Transpose4lstm_745/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_745/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_745/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_746/ShapeShapelstm_745/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_746/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_746/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_746/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_sliceStridedSlicelstm_746/Shape:output:0%lstm_746/strided_slice/stack:output:0'lstm_746/strided_slice/stack_1:output:0'lstm_746/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_746/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_746/zeros/packedPacklstm_746/strided_slice:output:0 lstm_746/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_746/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_746/zerosFilllstm_746/zeros/packed:output:0lstm_746/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_746/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_746/zeros_1/packedPacklstm_746/strided_slice:output:0"lstm_746/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_746/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_746/zeros_1Fill lstm_746/zeros_1/packed:output:0lstm_746/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_746/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_746/transpose	Transposelstm_745/transpose_1:y:0 lstm_746/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_746/Shape_1Shapelstm_746/transpose:y:0*
T0*
_output_shapes
:h
lstm_746/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_746/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_746/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_slice_1StridedSlicelstm_746/Shape_1:output:0'lstm_746/strided_slice_1/stack:output:0)lstm_746/strided_slice_1/stack_1:output:0)lstm_746/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_746/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_746/TensorArrayV2TensorListReserve-lstm_746/TensorArrayV2/element_shape:output:0!lstm_746/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_746/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_746/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_746/transpose:y:0Glstm_746/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_746/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_746/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_746/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_slice_2StridedSlicelstm_746/transpose:y:0'lstm_746/strided_slice_2/stack:output:0)lstm_746/strided_slice_2/stack_1:output:0)lstm_746/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_746/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp5lstm_746_lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_746/lstm_cell_650/MatMulMatMul!lstm_746/strided_slice_2:output:04lstm_746/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp7lstm_746_lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_746/lstm_cell_650/MatMul_1MatMullstm_746/zeros:output:06lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_746/lstm_cell_650/addAddV2'lstm_746/lstm_cell_650/MatMul:product:0)lstm_746/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp6lstm_746_lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_746/lstm_cell_650/BiasAddBiasAddlstm_746/lstm_cell_650/add:z:05lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_746/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_746/lstm_cell_650/splitSplit/lstm_746/lstm_cell_650/split/split_dim:output:0'lstm_746/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_746/lstm_cell_650/SigmoidSigmoid%lstm_746/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_746/lstm_cell_650/Sigmoid_1Sigmoid%lstm_746/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/mulMul$lstm_746/lstm_cell_650/Sigmoid_1:y:0lstm_746/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_746/lstm_cell_650/ReluRelu%lstm_746/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/mul_1Mul"lstm_746/lstm_cell_650/Sigmoid:y:0)lstm_746/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/add_1AddV2lstm_746/lstm_cell_650/mul:z:0 lstm_746/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_746/lstm_cell_650/Sigmoid_2Sigmoid%lstm_746/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_746/lstm_cell_650/Relu_1Relu lstm_746/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_746/lstm_cell_650/mul_2Mul$lstm_746/lstm_cell_650/Sigmoid_2:y:0+lstm_746/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_746/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_746/TensorArrayV2_1TensorListReserve/lstm_746/TensorArrayV2_1/element_shape:output:0!lstm_746/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_746/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_746/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_746/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_746/whileWhile$lstm_746/while/loop_counter:output:0*lstm_746/while/maximum_iterations:output:0lstm_746/time:output:0!lstm_746/TensorArrayV2_1:handle:0lstm_746/zeros:output:0lstm_746/zeros_1:output:0!lstm_746/strided_slice_1:output:0@lstm_746/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_746_lstm_cell_650_matmul_readvariableop_resource7lstm_746_lstm_cell_650_matmul_1_readvariableop_resource6lstm_746_lstm_cell_650_biasadd_readvariableop_resource*
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
lstm_746_while_body_3936190*'
condR
lstm_746_while_cond_3936189*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_746/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_746/TensorArrayV2Stack/TensorListStackTensorListStacklstm_746/while:output:3Blstm_746/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_746/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_746/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_746/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_746/strided_slice_3StridedSlice4lstm_746/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_746/strided_slice_3/stack:output:0)lstm_746/strided_slice_3/stack_1:output:0)lstm_746/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_746/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_746/transpose_1	Transpose4lstm_746/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_746/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_746/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_248/MatMul/ReadVariableOpReadVariableOp(dense_248_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_248/MatMulMatMul!lstm_746/strided_slice_3:output:0'dense_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_248/BiasAdd/ReadVariableOpReadVariableOp)dense_248_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_248/BiasAddBiasAdddense_248/MatMul:product:0(dense_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_248/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_248/BiasAdd/ReadVariableOp ^dense_248/MatMul/ReadVariableOp.^lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp-^lstm_744/lstm_cell_648/MatMul/ReadVariableOp/^lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp^lstm_744/while.^lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp-^lstm_745/lstm_cell_649/MatMul/ReadVariableOp/^lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp^lstm_745/while.^lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp-^lstm_746/lstm_cell_650/MatMul/ReadVariableOp/^lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp^lstm_746/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_248/BiasAdd/ReadVariableOp dense_248/BiasAdd/ReadVariableOp2B
dense_248/MatMul/ReadVariableOpdense_248/MatMul/ReadVariableOp2^
-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp-lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp2\
,lstm_744/lstm_cell_648/MatMul/ReadVariableOp,lstm_744/lstm_cell_648/MatMul/ReadVariableOp2`
.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp.lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp2 
lstm_744/whilelstm_744/while2^
-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp-lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp2\
,lstm_745/lstm_cell_649/MatMul/ReadVariableOp,lstm_745/lstm_cell_649/MatMul/ReadVariableOp2`
.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp.lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp2 
lstm_745/whilelstm_745/while2^
-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp-lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp2\
,lstm_746/lstm_cell_650/MatMul/ReadVariableOp,lstm_746/lstm_cell_650/MatMul/ReadVariableOp2`
.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp.lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp2 
lstm_746/whilelstm_746/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3937142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_248_layer_call_and_return_conditional_losses_3938147

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

?
%__inference_signature_wrapper_3935372
lstm_744_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_744_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3933112o
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
_user_specified_namelstm_744_input
?8
?
while_body_3936383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934992

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_3934908*
condR
while_cond_3934907*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_745_layer_call_fn_3936907
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3933612|
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934611

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_3934527*
condR
while_cond_3934526*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_744_while_cond_3935911.
*lstm_744_while_lstm_744_while_loop_counter4
0lstm_744_while_lstm_744_while_maximum_iterations
lstm_744_while_placeholder 
lstm_744_while_placeholder_1 
lstm_744_while_placeholder_2 
lstm_744_while_placeholder_30
,lstm_744_while_less_lstm_744_strided_slice_1G
Clstm_744_while_lstm_744_while_cond_3935911___redundant_placeholder0G
Clstm_744_while_lstm_744_while_cond_3935911___redundant_placeholder1G
Clstm_744_while_lstm_744_while_cond_3935911___redundant_placeholder2G
Clstm_744_while_lstm_744_while_cond_3935911___redundant_placeholder3
lstm_744_while_identity
?
lstm_744/while/LessLesslstm_744_while_placeholder,lstm_744_while_less_lstm_744_strided_slice_1*
T0*
_output_shapes
: ]
lstm_744/while/IdentityIdentitylstm_744/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_744_while_identity lstm_744/while/Identity:output:0*(
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
*__inference_lstm_746_layer_call_fn_3937523
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3933962o
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
while_body_3937428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_745_layer_call_fn_3936918
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3933803|
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
F__inference_dense_248_layer_call_and_return_conditional_losses_3934629

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
lstm_745_while_cond_3935623.
*lstm_745_while_lstm_745_while_loop_counter4
0lstm_745_while_lstm_745_while_maximum_iterations
lstm_745_while_placeholder 
lstm_745_while_placeholder_1 
lstm_745_while_placeholder_2 
lstm_745_while_placeholder_30
,lstm_745_while_less_lstm_745_strided_slice_1G
Clstm_745_while_lstm_745_while_cond_3935623___redundant_placeholder0G
Clstm_745_while_lstm_745_while_cond_3935623___redundant_placeholder1G
Clstm_745_while_lstm_745_while_cond_3935623___redundant_placeholder2G
Clstm_745_while_lstm_745_while_cond_3935623___redundant_placeholder3
lstm_745_while_identity
?
lstm_745/while/LessLesslstm_745_while_placeholder,lstm_745_while_less_lstm_745_strided_slice_1*
T0*
_output_shapes
: ]
lstm_745/while/IdentityIdentitylstm_745/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_745_while_identity lstm_745/while/Identity:output:0*(
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
while_cond_3933383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3933383___redundant_placeholder05
1while_while_cond_3933383___redundant_placeholder15
1while_while_cond_3933383___redundant_placeholder25
1while_while_cond_3933383___redundant_placeholder3
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
while_body_3934227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_745_while_body_3936051.
*lstm_745_while_lstm_745_while_loop_counter4
0lstm_745_while_lstm_745_while_maximum_iterations
lstm_745_while_placeholder 
lstm_745_while_placeholder_1 
lstm_745_while_placeholder_2 
lstm_745_while_placeholder_3-
)lstm_745_while_lstm_745_strided_slice_1_0i
elstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0:	d?R
?lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?M
>lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
lstm_745_while_identity
lstm_745_while_identity_1
lstm_745_while_identity_2
lstm_745_while_identity_3
lstm_745_while_identity_4
lstm_745_while_identity_5+
'lstm_745_while_lstm_745_strided_slice_1g
clstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensorN
;lstm_745_while_lstm_cell_649_matmul_readvariableop_resource:	d?P
=lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource:	2?K
<lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource:	???3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp?2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp?4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp?
@lstm_745/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_745/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensor_0lstm_745_while_placeholderIlstm_745/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp=lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_745/while/lstm_cell_649/MatMulMatMul9lstm_745/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp?lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_745/while/lstm_cell_649/MatMul_1MatMullstm_745_while_placeholder_2<lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_745/while/lstm_cell_649/addAddV2-lstm_745/while/lstm_cell_649/MatMul:product:0/lstm_745/while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp>lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_745/while/lstm_cell_649/BiasAddBiasAdd$lstm_745/while/lstm_cell_649/add:z:0;lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_745/while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_745/while/lstm_cell_649/splitSplit5lstm_745/while/lstm_cell_649/split/split_dim:output:0-lstm_745/while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_745/while/lstm_cell_649/SigmoidSigmoid+lstm_745/while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_745/while/lstm_cell_649/Sigmoid_1Sigmoid+lstm_745/while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_745/while/lstm_cell_649/mulMul*lstm_745/while/lstm_cell_649/Sigmoid_1:y:0lstm_745_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_745/while/lstm_cell_649/ReluRelu+lstm_745/while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_745/while/lstm_cell_649/mul_1Mul(lstm_745/while/lstm_cell_649/Sigmoid:y:0/lstm_745/while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_745/while/lstm_cell_649/add_1AddV2$lstm_745/while/lstm_cell_649/mul:z:0&lstm_745/while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_745/while/lstm_cell_649/Sigmoid_2Sigmoid+lstm_745/while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_745/while/lstm_cell_649/Relu_1Relu&lstm_745/while/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_745/while/lstm_cell_649/mul_2Mul*lstm_745/while/lstm_cell_649/Sigmoid_2:y:01lstm_745/while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_745/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_745_while_placeholder_1lstm_745_while_placeholder&lstm_745/while/lstm_cell_649/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_745/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_745/while/addAddV2lstm_745_while_placeholderlstm_745/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_745/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_745/while/add_1AddV2*lstm_745_while_lstm_745_while_loop_counterlstm_745/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_745/while/IdentityIdentitylstm_745/while/add_1:z:0^lstm_745/while/NoOp*
T0*
_output_shapes
: ?
lstm_745/while/Identity_1Identity0lstm_745_while_lstm_745_while_maximum_iterations^lstm_745/while/NoOp*
T0*
_output_shapes
: t
lstm_745/while/Identity_2Identitylstm_745/while/add:z:0^lstm_745/while/NoOp*
T0*
_output_shapes
: ?
lstm_745/while/Identity_3IdentityClstm_745/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_745/while/NoOp*
T0*
_output_shapes
: ?
lstm_745/while/Identity_4Identity&lstm_745/while/lstm_cell_649/mul_2:z:0^lstm_745/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_745/while/Identity_5Identity&lstm_745/while/lstm_cell_649/add_1:z:0^lstm_745/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_745/while/NoOpNoOp4^lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp3^lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp5^lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_745_while_identity lstm_745/while/Identity:output:0"?
lstm_745_while_identity_1"lstm_745/while/Identity_1:output:0"?
lstm_745_while_identity_2"lstm_745/while/Identity_2:output:0"?
lstm_745_while_identity_3"lstm_745/while/Identity_3:output:0"?
lstm_745_while_identity_4"lstm_745/while/Identity_4:output:0"?
lstm_745_while_identity_5"lstm_745/while/Identity_5:output:0"T
'lstm_745_while_lstm_745_strided_slice_1)lstm_745_while_lstm_745_strided_slice_1_0"~
<lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource>lstm_745_while_lstm_cell_649_biasadd_readvariableop_resource_0"?
=lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource?lstm_745_while_lstm_cell_649_matmul_1_readvariableop_resource_0"|
;lstm_745_while_lstm_cell_649_matmul_readvariableop_resource=lstm_745_while_lstm_cell_649_matmul_readvariableop_resource_0"?
clstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensorelstm_745_while_tensorarrayv2read_tensorlistgetitem_lstm_745_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp3lstm_745/while/lstm_cell_649/BiasAdd/ReadVariableOp2h
2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp2lstm_745/while/lstm_cell_649/MatMul/ReadVariableOp2l
4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp4lstm_745/while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_248_layer_call_fn_3935426

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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935225o
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

lstm_744_while_body_3935485.
*lstm_744_while_lstm_744_while_loop_counter4
0lstm_744_while_lstm_744_while_maximum_iterations
lstm_744_while_placeholder 
lstm_744_while_placeholder_1 
lstm_744_while_placeholder_2 
lstm_744_while_placeholder_3-
)lstm_744_while_lstm_744_strided_slice_1_0i
elstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0:	?R
?lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?M
>lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
lstm_744_while_identity
lstm_744_while_identity_1
lstm_744_while_identity_2
lstm_744_while_identity_3
lstm_744_while_identity_4
lstm_744_while_identity_5+
'lstm_744_while_lstm_744_strided_slice_1g
clstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensorN
;lstm_744_while_lstm_cell_648_matmul_readvariableop_resource:	?P
=lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource:	d?K
<lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource:	???3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp?2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp?4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp?
@lstm_744/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_744/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensor_0lstm_744_while_placeholderIlstm_744/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp=lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_744/while/lstm_cell_648/MatMulMatMul9lstm_744/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp?lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_744/while/lstm_cell_648/MatMul_1MatMullstm_744_while_placeholder_2<lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_744/while/lstm_cell_648/addAddV2-lstm_744/while/lstm_cell_648/MatMul:product:0/lstm_744/while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp>lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_744/while/lstm_cell_648/BiasAddBiasAdd$lstm_744/while/lstm_cell_648/add:z:0;lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_744/while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_744/while/lstm_cell_648/splitSplit5lstm_744/while/lstm_cell_648/split/split_dim:output:0-lstm_744/while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_744/while/lstm_cell_648/SigmoidSigmoid+lstm_744/while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_744/while/lstm_cell_648/Sigmoid_1Sigmoid+lstm_744/while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_744/while/lstm_cell_648/mulMul*lstm_744/while/lstm_cell_648/Sigmoid_1:y:0lstm_744_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_744/while/lstm_cell_648/ReluRelu+lstm_744/while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_744/while/lstm_cell_648/mul_1Mul(lstm_744/while/lstm_cell_648/Sigmoid:y:0/lstm_744/while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_744/while/lstm_cell_648/add_1AddV2$lstm_744/while/lstm_cell_648/mul:z:0&lstm_744/while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_744/while/lstm_cell_648/Sigmoid_2Sigmoid+lstm_744/while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_744/while/lstm_cell_648/Relu_1Relu&lstm_744/while/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_744/while/lstm_cell_648/mul_2Mul*lstm_744/while/lstm_cell_648/Sigmoid_2:y:01lstm_744/while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_744/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_744_while_placeholder_1lstm_744_while_placeholder&lstm_744/while/lstm_cell_648/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_744/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_744/while/addAddV2lstm_744_while_placeholderlstm_744/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_744/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_744/while/add_1AddV2*lstm_744_while_lstm_744_while_loop_counterlstm_744/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_744/while/IdentityIdentitylstm_744/while/add_1:z:0^lstm_744/while/NoOp*
T0*
_output_shapes
: ?
lstm_744/while/Identity_1Identity0lstm_744_while_lstm_744_while_maximum_iterations^lstm_744/while/NoOp*
T0*
_output_shapes
: t
lstm_744/while/Identity_2Identitylstm_744/while/add:z:0^lstm_744/while/NoOp*
T0*
_output_shapes
: ?
lstm_744/while/Identity_3IdentityClstm_744/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_744/while/NoOp*
T0*
_output_shapes
: ?
lstm_744/while/Identity_4Identity&lstm_744/while/lstm_cell_648/mul_2:z:0^lstm_744/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_744/while/Identity_5Identity&lstm_744/while/lstm_cell_648/add_1:z:0^lstm_744/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_744/while/NoOpNoOp4^lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp3^lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp5^lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_744_while_identity lstm_744/while/Identity:output:0"?
lstm_744_while_identity_1"lstm_744/while/Identity_1:output:0"?
lstm_744_while_identity_2"lstm_744/while/Identity_2:output:0"?
lstm_744_while_identity_3"lstm_744/while/Identity_3:output:0"?
lstm_744_while_identity_4"lstm_744/while/Identity_4:output:0"?
lstm_744_while_identity_5"lstm_744/while/Identity_5:output:0"T
'lstm_744_while_lstm_744_strided_slice_1)lstm_744_while_lstm_744_strided_slice_1_0"~
<lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource>lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0"?
=lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource?lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0"|
;lstm_744_while_lstm_cell_648_matmul_readvariableop_resource=lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0"?
clstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensorelstm_744_while_tensorarrayv2read_tensorlistgetitem_lstm_744_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp3lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp2h
2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp2lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp2l
4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp4lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_746_while_cond_3935762.
*lstm_746_while_lstm_746_while_loop_counter4
0lstm_746_while_lstm_746_while_maximum_iterations
lstm_746_while_placeholder 
lstm_746_while_placeholder_1 
lstm_746_while_placeholder_2 
lstm_746_while_placeholder_30
,lstm_746_while_less_lstm_746_strided_slice_1G
Clstm_746_while_lstm_746_while_cond_3935762___redundant_placeholder0G
Clstm_746_while_lstm_746_while_cond_3935762___redundant_placeholder1G
Clstm_746_while_lstm_746_while_cond_3935762___redundant_placeholder2G
Clstm_746_while_lstm_746_while_cond_3935762___redundant_placeholder3
lstm_746_while_identity
?
lstm_746/while/LessLesslstm_746_while_placeholder,lstm_746_while_less_lstm_746_strided_slice_1*
T0*
_output_shapes
: ]
lstm_746/while/IdentityIdentitylstm_746/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_746_while_identity lstm_746/while/Identity:output:0*(
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
while_body_3936812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3933193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_648_3933217_0:	?0
while_lstm_cell_648_3933219_0:	d?,
while_lstm_cell_648_3933221_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_648_3933217:	?.
while_lstm_cell_648_3933219:	d?*
while_lstm_cell_648_3933221:	???+while/lstm_cell_648/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_648/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_648_3933217_0while_lstm_cell_648_3933219_0while_lstm_cell_648_3933221_0*
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933179?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_648/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_648/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_648/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_648/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_648_3933217while_lstm_cell_648_3933217_0"<
while_lstm_cell_648_3933219while_lstm_cell_648_3933219_0"<
while_lstm_cell_648_3933221while_lstm_cell_648_3933221_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_648/StatefulPartitionedCall+while/lstm_cell_648/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_3938714
file_prefix3
!assignvariableop_dense_248_kernel:
/
!assignvariableop_1_dense_248_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_744_lstm_cell_744_kernel:	?M
:assignvariableop_8_lstm_744_lstm_cell_744_recurrent_kernel:	d?=
.assignvariableop_9_lstm_744_lstm_cell_744_bias:	?D
1assignvariableop_10_lstm_745_lstm_cell_745_kernel:	d?N
;assignvariableop_11_lstm_745_lstm_cell_745_recurrent_kernel:	2?>
/assignvariableop_12_lstm_745_lstm_cell_745_bias:	?C
1assignvariableop_13_lstm_746_lstm_cell_746_kernel:2(M
;assignvariableop_14_lstm_746_lstm_cell_746_recurrent_kernel:
(=
/assignvariableop_15_lstm_746_lstm_cell_746_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_248_kernel_m:
7
)assignvariableop_19_adam_dense_248_bias_m:K
8assignvariableop_20_adam_lstm_744_lstm_cell_744_kernel_m:	?U
Bassignvariableop_21_adam_lstm_744_lstm_cell_744_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_744_lstm_cell_744_bias_m:	?K
8assignvariableop_23_adam_lstm_745_lstm_cell_745_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_745_lstm_cell_745_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_745_lstm_cell_745_bias_m:	?J
8assignvariableop_26_adam_lstm_746_lstm_cell_746_kernel_m:2(T
Bassignvariableop_27_adam_lstm_746_lstm_cell_746_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_746_lstm_cell_746_bias_m:(=
+assignvariableop_29_adam_dense_248_kernel_v:
7
)assignvariableop_30_adam_dense_248_bias_v:K
8assignvariableop_31_adam_lstm_744_lstm_cell_744_kernel_v:	?U
Bassignvariableop_32_adam_lstm_744_lstm_cell_744_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_744_lstm_cell_744_bias_v:	?K
8assignvariableop_34_adam_lstm_745_lstm_cell_745_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_745_lstm_cell_745_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_745_lstm_cell_745_bias_v:	?J
8assignvariableop_37_adam_lstm_746_lstm_cell_746_kernel_v:2(T
Bassignvariableop_38_adam_lstm_746_lstm_cell_746_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_746_lstm_cell_746_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_248_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_248_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_744_lstm_cell_744_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_744_lstm_cell_744_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_744_lstm_cell_744_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_745_lstm_cell_745_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_745_lstm_cell_745_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_745_lstm_cell_745_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_746_lstm_cell_746_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_746_lstm_cell_746_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_746_lstm_cell_746_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_248_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_248_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_744_lstm_cell_744_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_744_lstm_cell_744_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_744_lstm_cell_744_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_745_lstm_cell_745_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_745_lstm_cell_745_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_745_lstm_cell_745_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_746_lstm_cell_746_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_746_lstm_cell_746_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_746_lstm_cell_746_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_248_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_248_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_744_lstm_cell_744_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_744_lstm_cell_744_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_744_lstm_cell_744_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_745_lstm_cell_745_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_745_lstm_cell_745_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_745_lstm_cell_745_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_746_lstm_cell_746_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_746_lstm_cell_746_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_746_lstm_cell_746_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3933879

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
while_body_3936526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937699
inputs_0>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_3937615*
condR
while_cond_3937614*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936753

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_3936669*
condR
while_cond_3936668*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_746_layer_call_fn_3937534
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934153o
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
while_cond_3934376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3934376___redundant_placeholder05
1while_while_cond_3934376___redundant_placeholder15
1while_while_cond_3934376___redundant_placeholder25
1while_while_cond_3934376___redundant_placeholder3
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
while_body_3937758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3938044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3934526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3934526___redundant_placeholder05
1while_while_cond_3934526___redundant_placeholder15
1while_while_cond_3934526___redundant_placeholder25
1while_while_cond_3934526___redundant_placeholder3
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
*sequential_248_lstm_744_while_cond_3932743L
Hsequential_248_lstm_744_while_sequential_248_lstm_744_while_loop_counterR
Nsequential_248_lstm_744_while_sequential_248_lstm_744_while_maximum_iterations-
)sequential_248_lstm_744_while_placeholder/
+sequential_248_lstm_744_while_placeholder_1/
+sequential_248_lstm_744_while_placeholder_2/
+sequential_248_lstm_744_while_placeholder_3N
Jsequential_248_lstm_744_while_less_sequential_248_lstm_744_strided_slice_1e
asequential_248_lstm_744_while_sequential_248_lstm_744_while_cond_3932743___redundant_placeholder0e
asequential_248_lstm_744_while_sequential_248_lstm_744_while_cond_3932743___redundant_placeholder1e
asequential_248_lstm_744_while_sequential_248_lstm_744_while_cond_3932743___redundant_placeholder2e
asequential_248_lstm_744_while_sequential_248_lstm_744_while_cond_3932743___redundant_placeholder3*
&sequential_248_lstm_744_while_identity
?
"sequential_248/lstm_744/while/LessLess)sequential_248_lstm_744_while_placeholderJsequential_248_lstm_744_while_less_sequential_248_lstm_744_strided_slice_1*
T0*
_output_shapes
: {
&sequential_248/lstm_744/while/IdentityIdentity&sequential_248/lstm_744/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_248_lstm_744_while_identity/sequential_248/lstm_744/while/Identity:output:0*(
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3933612

inputs(
lstm_cell_649_3933530:	d?(
lstm_cell_649_3933532:	2?$
lstm_cell_649_3933534:	?
identity??%lstm_cell_649/StatefulPartitionedCall?while;
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
%lstm_cell_649/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_649_3933530lstm_cell_649_3933532lstm_cell_649_3933534*
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933529n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_649_3933530lstm_cell_649_3933532lstm_cell_649_3933534*
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
while_body_3933543*
condR
while_cond_3933542*K
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
NoOpNoOp&^lstm_cell_649/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_649/StatefulPartitionedCall%lstm_cell_649/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_3934743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_248_layer_call_fn_3934661
lstm_744_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_744_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3934636o
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
_user_specified_namelstm_744_input
?K
?
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937842
inputs_0>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_3937758*
condR
while_cond_3937757*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_746_while_cond_3936189.
*lstm_746_while_lstm_746_while_loop_counter4
0lstm_746_while_lstm_746_while_maximum_iterations
lstm_746_while_placeholder 
lstm_746_while_placeholder_1 
lstm_746_while_placeholder_2 
lstm_746_while_placeholder_30
,lstm_746_while_less_lstm_746_strided_slice_1G
Clstm_746_while_lstm_746_while_cond_3936189___redundant_placeholder0G
Clstm_746_while_lstm_746_while_cond_3936189___redundant_placeholder1G
Clstm_746_while_lstm_746_while_cond_3936189___redundant_placeholder2G
Clstm_746_while_lstm_746_while_cond_3936189___redundant_placeholder3
lstm_746_while_identity
?
lstm_746/while/LessLesslstm_746_while_placeholder,lstm_746_while_less_lstm_746_strided_slice_1*
T0*
_output_shapes
: ]
lstm_746/while/IdentityIdentitylstm_746/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_746_while_identity lstm_746/while/Identity:output:0*(
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3938128

inputs>
,lstm_cell_650_matmul_readvariableop_resource:2(@
.lstm_cell_650_matmul_1_readvariableop_resource:
(;
-lstm_cell_650_biasadd_readvariableop_resource:(
identity??$lstm_cell_650/BiasAdd/ReadVariableOp?#lstm_cell_650/MatMul/ReadVariableOp?%lstm_cell_650/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_650/MatMul/ReadVariableOpReadVariableOp,lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_650/MatMulMatMulstrided_slice_2:output:0+lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_650/MatMul_1MatMulzeros:output:0-lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_650/addAddV2lstm_cell_650/MatMul:product:0 lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_650/BiasAddBiasAddlstm_cell_650/add:z:0,lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_650/splitSplit&lstm_cell_650/split/split_dim:output:0lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_650/SigmoidSigmoidlstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_1Sigmoidlstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_650/mulMullstm_cell_650/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_650/ReluRelulstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_1Mullstm_cell_650/Sigmoid:y:0 lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_650/add_1AddV2lstm_cell_650/mul:z:0lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_650/Sigmoid_2Sigmoidlstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_650/Relu_1Relulstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_650/mul_2Mullstm_cell_650/Sigmoid_2:y:0"lstm_cell_650/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_650_matmul_readvariableop_resource.lstm_cell_650_matmul_1_readvariableop_resource-lstm_cell_650_biasadd_readvariableop_resource*
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
while_body_3938044*
condR
while_cond_3938043*K
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
NoOpNoOp%^lstm_cell_650/BiasAdd/ReadVariableOp$^lstm_cell_650/MatMul/ReadVariableOp&^lstm_cell_650/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_650/BiasAdd/ReadVariableOp$lstm_cell_650/BiasAdd/ReadVariableOp2J
#lstm_cell_650/MatMul/ReadVariableOp#lstm_cell_650/MatMul/ReadVariableOp2N
%lstm_cell_650/MatMul_1/ReadVariableOp%lstm_cell_650/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_744_layer_call_and_return_conditional_losses_3934311

inputs?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_3934227*
condR
while_cond_3934226*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935307
lstm_744_input#
lstm_744_3935280:	?#
lstm_744_3935282:	d?
lstm_744_3935284:	?#
lstm_745_3935287:	d?#
lstm_745_3935289:	2?
lstm_745_3935291:	?"
lstm_746_3935294:2("
lstm_746_3935296:
(
lstm_746_3935298:(#
dense_248_3935301:

dense_248_3935303:
identity??!dense_248/StatefulPartitionedCall? lstm_744/StatefulPartitionedCall? lstm_745/StatefulPartitionedCall? lstm_746/StatefulPartitionedCall?
 lstm_744/StatefulPartitionedCallStatefulPartitionedCalllstm_744_inputlstm_744_3935280lstm_744_3935282lstm_744_3935284*
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3934311?
 lstm_745/StatefulPartitionedCallStatefulPartitionedCall)lstm_744/StatefulPartitionedCall:output:0lstm_745_3935287lstm_745_3935289lstm_745_3935291*
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934461?
 lstm_746/StatefulPartitionedCallStatefulPartitionedCall)lstm_745/StatefulPartitionedCall:output:0lstm_746_3935294lstm_746_3935296lstm_746_3935298*
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3934611?
!dense_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_746/StatefulPartitionedCall:output:0dense_248_3935301dense_248_3935303*
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
F__inference_dense_248_layer_call_and_return_conditional_losses_3934629y
IdentityIdentity*dense_248/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_248/StatefulPartitionedCall!^lstm_744/StatefulPartitionedCall!^lstm_745/StatefulPartitionedCall!^lstm_746/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2D
 lstm_744/StatefulPartitionedCall lstm_744/StatefulPartitionedCall2D
 lstm_745/StatefulPartitionedCall lstm_745/StatefulPartitionedCall2D
 lstm_746/StatefulPartitionedCall lstm_746/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_744_input
?8
?
while_body_3937285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_248_lstm_745_while_cond_3932882L
Hsequential_248_lstm_745_while_sequential_248_lstm_745_while_loop_counterR
Nsequential_248_lstm_745_while_sequential_248_lstm_745_while_maximum_iterations-
)sequential_248_lstm_745_while_placeholder/
+sequential_248_lstm_745_while_placeholder_1/
+sequential_248_lstm_745_while_placeholder_2/
+sequential_248_lstm_745_while_placeholder_3N
Jsequential_248_lstm_745_while_less_sequential_248_lstm_745_strided_slice_1e
asequential_248_lstm_745_while_sequential_248_lstm_745_while_cond_3932882___redundant_placeholder0e
asequential_248_lstm_745_while_sequential_248_lstm_745_while_cond_3932882___redundant_placeholder1e
asequential_248_lstm_745_while_sequential_248_lstm_745_while_cond_3932882___redundant_placeholder2e
asequential_248_lstm_745_while_sequential_248_lstm_745_while_cond_3932882___redundant_placeholder3*
&sequential_248_lstm_745_while_identity
?
"sequential_248/lstm_745/while/LessLess)sequential_248_lstm_745_while_placeholderJsequential_248_lstm_745_while_less_sequential_248_lstm_745_strided_slice_1*
T0*
_output_shapes
: {
&sequential_248/lstm_745/while/IdentityIdentity&sequential_248/lstm_745/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_248_lstm_745_while_identity/sequential_248/lstm_745/while/Identity:output:0*(
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3938409

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
*__inference_lstm_745_layer_call_fn_3936929

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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934461s
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933529

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
*__inference_lstm_745_layer_call_fn_3936940

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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3934992s
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933675

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
while_cond_3935072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3935072___redundant_placeholder05
1while_while_cond_3935072___redundant_placeholder15
1while_while_cond_3935072___redundant_placeholder25
1while_while_cond_3935072___redundant_placeholder3
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
while_cond_3934742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3934742___redundant_placeholder05
1while_while_cond_3934742___redundant_placeholder15
1while_while_cond_3934742___redundant_placeholder25
1while_while_cond_3934742___redundant_placeholder3
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
while_body_3937901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3936811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3936811___redundant_placeholder05
1while_while_cond_3936811___redundant_placeholder15
1while_while_cond_3936811___redundant_placeholder25
1while_while_cond_3936811___redundant_placeholder3
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
while_cond_3937614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3937614___redundant_placeholder05
1while_while_cond_3937614___redundant_placeholder15
1while_while_cond_3937614___redundant_placeholder25
1while_while_cond_3937614___redundant_placeholder3
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937226
inputs_0?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_3937142*
condR
while_cond_3937141*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3933733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3933733___redundant_placeholder05
1while_while_cond_3933733___redundant_placeholder15
1while_while_cond_3933733___redundant_placeholder25
1while_while_cond_3933733___redundant_placeholder3
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
0__inference_sequential_248_layer_call_fn_3935277
lstm_744_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_744_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935225o
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
_user_specified_namelstm_744_input
?
?
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3938441

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
?K
?
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936610
inputs_0?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_3936526*
condR
while_cond_3936525*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?#
?
while_body_3934084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_650_3934108_0:2(/
while_lstm_cell_650_3934110_0:
(+
while_lstm_cell_650_3934112_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_650_3934108:2(-
while_lstm_cell_650_3934110:
()
while_lstm_cell_650_3934112:(??+while/lstm_cell_650/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_650/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_650_3934108_0while_lstm_cell_650_3934110_0while_lstm_cell_650_3934112_0*
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3934025?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_650/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_650/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_650/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_650/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_650_3934108while_lstm_cell_650_3934108_0"<
while_lstm_cell_650_3934110while_lstm_cell_650_3934110_0"<
while_lstm_cell_650_3934112while_lstm_cell_650_3934112_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_650/StatefulPartitionedCall+while/lstm_cell_650/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3937900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3937900___redundant_placeholder05
1while_while_cond_3937900___redundant_placeholder15
1while_while_cond_3937900___redundant_placeholder25
1while_while_cond_3937900___redundant_placeholder3
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
/__inference_lstm_cell_650_layer_call_fn_3938360

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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3933879o
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
while_cond_3933542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3933542___redundant_placeholder05
1while_while_cond_3933542___redundant_placeholder15
1while_while_cond_3933542___redundant_placeholder25
1while_while_cond_3933542___redundant_placeholder3
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
lstm_744_while_cond_3935484.
*lstm_744_while_lstm_744_while_loop_counter4
0lstm_744_while_lstm_744_while_maximum_iterations
lstm_744_while_placeholder 
lstm_744_while_placeholder_1 
lstm_744_while_placeholder_2 
lstm_744_while_placeholder_30
,lstm_744_while_less_lstm_744_strided_slice_1G
Clstm_744_while_lstm_744_while_cond_3935484___redundant_placeholder0G
Clstm_744_while_lstm_744_while_cond_3935484___redundant_placeholder1G
Clstm_744_while_lstm_744_while_cond_3935484___redundant_placeholder2G
Clstm_744_while_lstm_744_while_cond_3935484___redundant_placeholder3
lstm_744_while_identity
?
lstm_744/while/LessLesslstm_744_while_placeholder,lstm_744_while_less_lstm_744_strided_slice_1*
T0*
_output_shapes
: ]
lstm_744/while/IdentityIdentitylstm_744/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_744_while_identity lstm_744/while/Identity:output:0*(
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936467
inputs_0?
,lstm_cell_648_matmul_readvariableop_resource:	?A
.lstm_cell_648_matmul_1_readvariableop_resource:	d?<
-lstm_cell_648_biasadd_readvariableop_resource:	?
identity??$lstm_cell_648/BiasAdd/ReadVariableOp?#lstm_cell_648/MatMul/ReadVariableOp?%lstm_cell_648/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_648/MatMul/ReadVariableOpReadVariableOp,lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_648/MatMulMatMulstrided_slice_2:output:0+lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_648/MatMul_1MatMulzeros:output:0-lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_648/addAddV2lstm_cell_648/MatMul:product:0 lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_648/BiasAddBiasAddlstm_cell_648/add:z:0,lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_648/splitSplit&lstm_cell_648/split/split_dim:output:0lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_648/SigmoidSigmoidlstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_1Sigmoidlstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_648/mulMullstm_cell_648/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_648/ReluRelulstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_1Mullstm_cell_648/Sigmoid:y:0 lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_648/add_1AddV2lstm_cell_648/mul:z:0lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_648/Sigmoid_2Sigmoidlstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_648/Relu_1Relulstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_648/mul_2Mullstm_cell_648/Sigmoid_2:y:0"lstm_cell_648/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_648_matmul_readvariableop_resource.lstm_cell_648_matmul_1_readvariableop_resource-lstm_cell_648_biasadd_readvariableop_resource*
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
while_body_3936383*
condR
while_cond_3936382*K
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
NoOpNoOp%^lstm_cell_648/BiasAdd/ReadVariableOp$^lstm_cell_648/MatMul/ReadVariableOp&^lstm_cell_648/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_648/BiasAdd/ReadVariableOp$lstm_cell_648/BiasAdd/ReadVariableOp2J
#lstm_cell_648/MatMul/ReadVariableOp#lstm_cell_648/MatMul/ReadVariableOp2N
%lstm_cell_648/MatMul_1/ReadVariableOp%lstm_cell_648/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?T
?
*sequential_248_lstm_744_while_body_3932744L
Hsequential_248_lstm_744_while_sequential_248_lstm_744_while_loop_counterR
Nsequential_248_lstm_744_while_sequential_248_lstm_744_while_maximum_iterations-
)sequential_248_lstm_744_while_placeholder/
+sequential_248_lstm_744_while_placeholder_1/
+sequential_248_lstm_744_while_placeholder_2/
+sequential_248_lstm_744_while_placeholder_3K
Gsequential_248_lstm_744_while_sequential_248_lstm_744_strided_slice_1_0?
?sequential_248_lstm_744_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_744_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_248_lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0:	?a
Nsequential_248_lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?\
Msequential_248_lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0:	?*
&sequential_248_lstm_744_while_identity,
(sequential_248_lstm_744_while_identity_1,
(sequential_248_lstm_744_while_identity_2,
(sequential_248_lstm_744_while_identity_3,
(sequential_248_lstm_744_while_identity_4,
(sequential_248_lstm_744_while_identity_5I
Esequential_248_lstm_744_while_sequential_248_lstm_744_strided_slice_1?
?sequential_248_lstm_744_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_744_tensorarrayunstack_tensorlistfromtensor]
Jsequential_248_lstm_744_while_lstm_cell_648_matmul_readvariableop_resource:	?_
Lsequential_248_lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource:	d?Z
Ksequential_248_lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource:	???Bsequential_248/lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp?Asequential_248/lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp?Csequential_248/lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp?
Osequential_248/lstm_744/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_248/lstm_744/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_248_lstm_744_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_744_tensorarrayunstack_tensorlistfromtensor_0)sequential_248_lstm_744_while_placeholderXsequential_248/lstm_744/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_248/lstm_744/while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOpLsequential_248_lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_248/lstm_744/while/lstm_cell_648/MatMulMatMulHsequential_248/lstm_744/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_248/lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_248/lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOpNsequential_248_lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_248/lstm_744/while/lstm_cell_648/MatMul_1MatMul+sequential_248_lstm_744_while_placeholder_2Ksequential_248/lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_248/lstm_744/while/lstm_cell_648/addAddV2<sequential_248/lstm_744/while/lstm_cell_648/MatMul:product:0>sequential_248/lstm_744/while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_248/lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOpMsequential_248_lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_248/lstm_744/while/lstm_cell_648/BiasAddBiasAdd3sequential_248/lstm_744/while/lstm_cell_648/add:z:0Jsequential_248/lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_248/lstm_744/while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_248/lstm_744/while/lstm_cell_648/splitSplitDsequential_248/lstm_744/while/lstm_cell_648/split/split_dim:output:0<sequential_248/lstm_744/while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_248/lstm_744/while/lstm_cell_648/SigmoidSigmoid:sequential_248/lstm_744/while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_248/lstm_744/while/lstm_cell_648/Sigmoid_1Sigmoid:sequential_248/lstm_744/while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_248/lstm_744/while/lstm_cell_648/mulMul9sequential_248/lstm_744/while/lstm_cell_648/Sigmoid_1:y:0+sequential_248_lstm_744_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_248/lstm_744/while/lstm_cell_648/ReluRelu:sequential_248/lstm_744/while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_248/lstm_744/while/lstm_cell_648/mul_1Mul7sequential_248/lstm_744/while/lstm_cell_648/Sigmoid:y:0>sequential_248/lstm_744/while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_248/lstm_744/while/lstm_cell_648/add_1AddV23sequential_248/lstm_744/while/lstm_cell_648/mul:z:05sequential_248/lstm_744/while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_248/lstm_744/while/lstm_cell_648/Sigmoid_2Sigmoid:sequential_248/lstm_744/while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_248/lstm_744/while/lstm_cell_648/Relu_1Relu5sequential_248/lstm_744/while/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_248/lstm_744/while/lstm_cell_648/mul_2Mul9sequential_248/lstm_744/while/lstm_cell_648/Sigmoid_2:y:0@sequential_248/lstm_744/while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_248/lstm_744/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_248_lstm_744_while_placeholder_1)sequential_248_lstm_744_while_placeholder5sequential_248/lstm_744/while/lstm_cell_648/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_248/lstm_744/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_248/lstm_744/while/addAddV2)sequential_248_lstm_744_while_placeholder,sequential_248/lstm_744/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_248/lstm_744/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_248/lstm_744/while/add_1AddV2Hsequential_248_lstm_744_while_sequential_248_lstm_744_while_loop_counter.sequential_248/lstm_744/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_248/lstm_744/while/IdentityIdentity'sequential_248/lstm_744/while/add_1:z:0#^sequential_248/lstm_744/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_744/while/Identity_1IdentityNsequential_248_lstm_744_while_sequential_248_lstm_744_while_maximum_iterations#^sequential_248/lstm_744/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_744/while/Identity_2Identity%sequential_248/lstm_744/while/add:z:0#^sequential_248/lstm_744/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_744/while/Identity_3IdentityRsequential_248/lstm_744/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_248/lstm_744/while/NoOp*
T0*
_output_shapes
: ?
(sequential_248/lstm_744/while/Identity_4Identity5sequential_248/lstm_744/while/lstm_cell_648/mul_2:z:0#^sequential_248/lstm_744/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_248/lstm_744/while/Identity_5Identity5sequential_248/lstm_744/while/lstm_cell_648/add_1:z:0#^sequential_248/lstm_744/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_248/lstm_744/while/NoOpNoOpC^sequential_248/lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOpB^sequential_248/lstm_744/while/lstm_cell_648/MatMul/ReadVariableOpD^sequential_248/lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_248_lstm_744_while_identity/sequential_248/lstm_744/while/Identity:output:0"]
(sequential_248_lstm_744_while_identity_11sequential_248/lstm_744/while/Identity_1:output:0"]
(sequential_248_lstm_744_while_identity_21sequential_248/lstm_744/while/Identity_2:output:0"]
(sequential_248_lstm_744_while_identity_31sequential_248/lstm_744/while/Identity_3:output:0"]
(sequential_248_lstm_744_while_identity_41sequential_248/lstm_744/while/Identity_4:output:0"]
(sequential_248_lstm_744_while_identity_51sequential_248/lstm_744/while/Identity_5:output:0"?
Ksequential_248_lstm_744_while_lstm_cell_648_biasadd_readvariableop_resourceMsequential_248_lstm_744_while_lstm_cell_648_biasadd_readvariableop_resource_0"?
Lsequential_248_lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resourceNsequential_248_lstm_744_while_lstm_cell_648_matmul_1_readvariableop_resource_0"?
Jsequential_248_lstm_744_while_lstm_cell_648_matmul_readvariableop_resourceLsequential_248_lstm_744_while_lstm_cell_648_matmul_readvariableop_resource_0"?
Esequential_248_lstm_744_while_sequential_248_lstm_744_strided_slice_1Gsequential_248_lstm_744_while_sequential_248_lstm_744_strided_slice_1_0"?
?sequential_248_lstm_744_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_744_tensorarrayunstack_tensorlistfromtensor?sequential_248_lstm_744_while_tensorarrayv2read_tensorlistgetitem_sequential_248_lstm_744_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_248/lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOpBsequential_248/lstm_744/while/lstm_cell_648/BiasAdd/ReadVariableOp2?
Asequential_248/lstm_744/while/lstm_cell_648/MatMul/ReadVariableOpAsequential_248/lstm_744/while/lstm_cell_648/MatMul/ReadVariableOp2?
Csequential_248/lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOpCsequential_248/lstm_744/while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3935073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_648_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_648_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_648_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_648_matmul_readvariableop_resource:	?G
4while_lstm_cell_648_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_648_biasadd_readvariableop_resource:	???*while/lstm_cell_648/BiasAdd/ReadVariableOp?)while/lstm_cell_648/MatMul/ReadVariableOp?+while/lstm_cell_648/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_648/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_648_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_648/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_648_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_648/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_648/addAddV2$while/lstm_cell_648/MatMul:product:0&while/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_648_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_648/BiasAddBiasAddwhile/lstm_cell_648/add:z:02while/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_648/splitSplit,while/lstm_cell_648/split/split_dim:output:0$while/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_648/SigmoidSigmoid"while/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_1Sigmoid"while/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mulMul!while/lstm_cell_648/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_648/ReluRelu"while/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_1Mulwhile/lstm_cell_648/Sigmoid:y:0&while/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/add_1AddV2while/lstm_cell_648/mul:z:0while/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_648/Sigmoid_2Sigmoid"while/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_648/Relu_1Reluwhile/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_648/mul_2Mul!while/lstm_cell_648/Sigmoid_2:y:0(while/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_648/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_648/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_648/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_648/BiasAdd/ReadVariableOp*^while/lstm_cell_648/MatMul/ReadVariableOp,^while/lstm_cell_648/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_648_biasadd_readvariableop_resource5while_lstm_cell_648_biasadd_readvariableop_resource_0"n
4while_lstm_cell_648_matmul_1_readvariableop_resource6while_lstm_cell_648_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_648_matmul_readvariableop_resource4while_lstm_cell_648_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_648/BiasAdd/ReadVariableOp*while/lstm_cell_648/BiasAdd/ReadVariableOp2V
)while/lstm_cell_648/MatMul/ReadVariableOp)while/lstm_cell_648/MatMul/ReadVariableOp2Z
+while/lstm_cell_648/MatMul_1/ReadVariableOp+while/lstm_cell_648/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3934025

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
while_cond_3933892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3933892___redundant_placeholder05
1while_while_cond_3933892___redundant_placeholder15
1while_while_cond_3933892___redundant_placeholder25
1while_while_cond_3933892___redundant_placeholder3
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
while_body_3934377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_3933112
lstm_744_inputW
Dsequential_248_lstm_744_lstm_cell_648_matmul_readvariableop_resource:	?Y
Fsequential_248_lstm_744_lstm_cell_648_matmul_1_readvariableop_resource:	d?T
Esequential_248_lstm_744_lstm_cell_648_biasadd_readvariableop_resource:	?W
Dsequential_248_lstm_745_lstm_cell_649_matmul_readvariableop_resource:	d?Y
Fsequential_248_lstm_745_lstm_cell_649_matmul_1_readvariableop_resource:	2?T
Esequential_248_lstm_745_lstm_cell_649_biasadd_readvariableop_resource:	?V
Dsequential_248_lstm_746_lstm_cell_650_matmul_readvariableop_resource:2(X
Fsequential_248_lstm_746_lstm_cell_650_matmul_1_readvariableop_resource:
(S
Esequential_248_lstm_746_lstm_cell_650_biasadd_readvariableop_resource:(I
7sequential_248_dense_248_matmul_readvariableop_resource:
F
8sequential_248_dense_248_biasadd_readvariableop_resource:
identity??/sequential_248/dense_248/BiasAdd/ReadVariableOp?.sequential_248/dense_248/MatMul/ReadVariableOp?<sequential_248/lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp?;sequential_248/lstm_744/lstm_cell_648/MatMul/ReadVariableOp?=sequential_248/lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp?sequential_248/lstm_744/while?<sequential_248/lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp?;sequential_248/lstm_745/lstm_cell_649/MatMul/ReadVariableOp?=sequential_248/lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp?sequential_248/lstm_745/while?<sequential_248/lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp?;sequential_248/lstm_746/lstm_cell_650/MatMul/ReadVariableOp?=sequential_248/lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp?sequential_248/lstm_746/while[
sequential_248/lstm_744/ShapeShapelstm_744_input*
T0*
_output_shapes
:u
+sequential_248/lstm_744/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_248/lstm_744/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_248/lstm_744/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_248/lstm_744/strided_sliceStridedSlice&sequential_248/lstm_744/Shape:output:04sequential_248/lstm_744/strided_slice/stack:output:06sequential_248/lstm_744/strided_slice/stack_1:output:06sequential_248/lstm_744/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_248/lstm_744/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_248/lstm_744/zeros/packedPack.sequential_248/lstm_744/strided_slice:output:0/sequential_248/lstm_744/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_248/lstm_744/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_248/lstm_744/zerosFill-sequential_248/lstm_744/zeros/packed:output:0,sequential_248/lstm_744/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_248/lstm_744/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_248/lstm_744/zeros_1/packedPack.sequential_248/lstm_744/strided_slice:output:01sequential_248/lstm_744/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_248/lstm_744/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_248/lstm_744/zeros_1Fill/sequential_248/lstm_744/zeros_1/packed:output:0.sequential_248/lstm_744/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_248/lstm_744/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_248/lstm_744/transpose	Transposelstm_744_input/sequential_248/lstm_744/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_248/lstm_744/Shape_1Shape%sequential_248/lstm_744/transpose:y:0*
T0*
_output_shapes
:w
-sequential_248/lstm_744/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_744/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_248/lstm_744/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_744/strided_slice_1StridedSlice(sequential_248/lstm_744/Shape_1:output:06sequential_248/lstm_744/strided_slice_1/stack:output:08sequential_248/lstm_744/strided_slice_1/stack_1:output:08sequential_248/lstm_744/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_248/lstm_744/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_248/lstm_744/TensorArrayV2TensorListReserve<sequential_248/lstm_744/TensorArrayV2/element_shape:output:00sequential_248/lstm_744/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_248/lstm_744/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_248/lstm_744/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_248/lstm_744/transpose:y:0Vsequential_248/lstm_744/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_248/lstm_744/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_744/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_248/lstm_744/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_744/strided_slice_2StridedSlice%sequential_248/lstm_744/transpose:y:06sequential_248/lstm_744/strided_slice_2/stack:output:08sequential_248/lstm_744/strided_slice_2/stack_1:output:08sequential_248/lstm_744/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_248/lstm_744/lstm_cell_648/MatMul/ReadVariableOpReadVariableOpDsequential_248_lstm_744_lstm_cell_648_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_248/lstm_744/lstm_cell_648/MatMulMatMul0sequential_248/lstm_744/strided_slice_2:output:0Csequential_248/lstm_744/lstm_cell_648/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_248/lstm_744/lstm_cell_648/MatMul_1/ReadVariableOpReadVariableOpFsequential_248_lstm_744_lstm_cell_648_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_248/lstm_744/lstm_cell_648/MatMul_1MatMul&sequential_248/lstm_744/zeros:output:0Esequential_248/lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_248/lstm_744/lstm_cell_648/addAddV26sequential_248/lstm_744/lstm_cell_648/MatMul:product:08sequential_248/lstm_744/lstm_cell_648/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_248/lstm_744/lstm_cell_648/BiasAdd/ReadVariableOpReadVariableOpEsequential_248_lstm_744_lstm_cell_648_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_248/lstm_744/lstm_cell_648/BiasAddBiasAdd-sequential_248/lstm_744/lstm_cell_648/add:z:0Dsequential_248/lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_248/lstm_744/lstm_cell_648/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_248/lstm_744/lstm_cell_648/splitSplit>sequential_248/lstm_744/lstm_cell_648/split/split_dim:output:06sequential_248/lstm_744/lstm_cell_648/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_248/lstm_744/lstm_cell_648/SigmoidSigmoid4sequential_248/lstm_744/lstm_cell_648/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_248/lstm_744/lstm_cell_648/Sigmoid_1Sigmoid4sequential_248/lstm_744/lstm_cell_648/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_248/lstm_744/lstm_cell_648/mulMul3sequential_248/lstm_744/lstm_cell_648/Sigmoid_1:y:0(sequential_248/lstm_744/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_248/lstm_744/lstm_cell_648/ReluRelu4sequential_248/lstm_744/lstm_cell_648/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_248/lstm_744/lstm_cell_648/mul_1Mul1sequential_248/lstm_744/lstm_cell_648/Sigmoid:y:08sequential_248/lstm_744/lstm_cell_648/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_248/lstm_744/lstm_cell_648/add_1AddV2-sequential_248/lstm_744/lstm_cell_648/mul:z:0/sequential_248/lstm_744/lstm_cell_648/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_248/lstm_744/lstm_cell_648/Sigmoid_2Sigmoid4sequential_248/lstm_744/lstm_cell_648/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_248/lstm_744/lstm_cell_648/Relu_1Relu/sequential_248/lstm_744/lstm_cell_648/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_248/lstm_744/lstm_cell_648/mul_2Mul3sequential_248/lstm_744/lstm_cell_648/Sigmoid_2:y:0:sequential_248/lstm_744/lstm_cell_648/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_248/lstm_744/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_248/lstm_744/TensorArrayV2_1TensorListReserve>sequential_248/lstm_744/TensorArrayV2_1/element_shape:output:00sequential_248/lstm_744/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_248/lstm_744/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_248/lstm_744/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_248/lstm_744/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_248/lstm_744/whileWhile3sequential_248/lstm_744/while/loop_counter:output:09sequential_248/lstm_744/while/maximum_iterations:output:0%sequential_248/lstm_744/time:output:00sequential_248/lstm_744/TensorArrayV2_1:handle:0&sequential_248/lstm_744/zeros:output:0(sequential_248/lstm_744/zeros_1:output:00sequential_248/lstm_744/strided_slice_1:output:0Osequential_248/lstm_744/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_248_lstm_744_lstm_cell_648_matmul_readvariableop_resourceFsequential_248_lstm_744_lstm_cell_648_matmul_1_readvariableop_resourceEsequential_248_lstm_744_lstm_cell_648_biasadd_readvariableop_resource*
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
*sequential_248_lstm_744_while_body_3932744*6
cond.R,
*sequential_248_lstm_744_while_cond_3932743*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_248/lstm_744/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_248/lstm_744/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_248/lstm_744/while:output:3Qsequential_248/lstm_744/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_248/lstm_744/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_248/lstm_744/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_744/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_744/strided_slice_3StridedSliceCsequential_248/lstm_744/TensorArrayV2Stack/TensorListStack:tensor:06sequential_248/lstm_744/strided_slice_3/stack:output:08sequential_248/lstm_744/strided_slice_3/stack_1:output:08sequential_248/lstm_744/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_248/lstm_744/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_248/lstm_744/transpose_1	TransposeCsequential_248/lstm_744/TensorArrayV2Stack/TensorListStack:tensor:01sequential_248/lstm_744/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_248/lstm_744/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_248/lstm_745/ShapeShape'sequential_248/lstm_744/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_248/lstm_745/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_248/lstm_745/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_248/lstm_745/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_248/lstm_745/strided_sliceStridedSlice&sequential_248/lstm_745/Shape:output:04sequential_248/lstm_745/strided_slice/stack:output:06sequential_248/lstm_745/strided_slice/stack_1:output:06sequential_248/lstm_745/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_248/lstm_745/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_248/lstm_745/zeros/packedPack.sequential_248/lstm_745/strided_slice:output:0/sequential_248/lstm_745/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_248/lstm_745/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_248/lstm_745/zerosFill-sequential_248/lstm_745/zeros/packed:output:0,sequential_248/lstm_745/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_248/lstm_745/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_248/lstm_745/zeros_1/packedPack.sequential_248/lstm_745/strided_slice:output:01sequential_248/lstm_745/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_248/lstm_745/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_248/lstm_745/zeros_1Fill/sequential_248/lstm_745/zeros_1/packed:output:0.sequential_248/lstm_745/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_248/lstm_745/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_248/lstm_745/transpose	Transpose'sequential_248/lstm_744/transpose_1:y:0/sequential_248/lstm_745/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_248/lstm_745/Shape_1Shape%sequential_248/lstm_745/transpose:y:0*
T0*
_output_shapes
:w
-sequential_248/lstm_745/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_745/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_248/lstm_745/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_745/strided_slice_1StridedSlice(sequential_248/lstm_745/Shape_1:output:06sequential_248/lstm_745/strided_slice_1/stack:output:08sequential_248/lstm_745/strided_slice_1/stack_1:output:08sequential_248/lstm_745/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_248/lstm_745/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_248/lstm_745/TensorArrayV2TensorListReserve<sequential_248/lstm_745/TensorArrayV2/element_shape:output:00sequential_248/lstm_745/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_248/lstm_745/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_248/lstm_745/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_248/lstm_745/transpose:y:0Vsequential_248/lstm_745/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_248/lstm_745/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_745/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_248/lstm_745/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_745/strided_slice_2StridedSlice%sequential_248/lstm_745/transpose:y:06sequential_248/lstm_745/strided_slice_2/stack:output:08sequential_248/lstm_745/strided_slice_2/stack_1:output:08sequential_248/lstm_745/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_248/lstm_745/lstm_cell_649/MatMul/ReadVariableOpReadVariableOpDsequential_248_lstm_745_lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_248/lstm_745/lstm_cell_649/MatMulMatMul0sequential_248/lstm_745/strided_slice_2:output:0Csequential_248/lstm_745/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_248/lstm_745/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOpFsequential_248_lstm_745_lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_248/lstm_745/lstm_cell_649/MatMul_1MatMul&sequential_248/lstm_745/zeros:output:0Esequential_248/lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_248/lstm_745/lstm_cell_649/addAddV26sequential_248/lstm_745/lstm_cell_649/MatMul:product:08sequential_248/lstm_745/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_248/lstm_745/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOpEsequential_248_lstm_745_lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_248/lstm_745/lstm_cell_649/BiasAddBiasAdd-sequential_248/lstm_745/lstm_cell_649/add:z:0Dsequential_248/lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_248/lstm_745/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_248/lstm_745/lstm_cell_649/splitSplit>sequential_248/lstm_745/lstm_cell_649/split/split_dim:output:06sequential_248/lstm_745/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_248/lstm_745/lstm_cell_649/SigmoidSigmoid4sequential_248/lstm_745/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_248/lstm_745/lstm_cell_649/Sigmoid_1Sigmoid4sequential_248/lstm_745/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_248/lstm_745/lstm_cell_649/mulMul3sequential_248/lstm_745/lstm_cell_649/Sigmoid_1:y:0(sequential_248/lstm_745/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_248/lstm_745/lstm_cell_649/ReluRelu4sequential_248/lstm_745/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_248/lstm_745/lstm_cell_649/mul_1Mul1sequential_248/lstm_745/lstm_cell_649/Sigmoid:y:08sequential_248/lstm_745/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_248/lstm_745/lstm_cell_649/add_1AddV2-sequential_248/lstm_745/lstm_cell_649/mul:z:0/sequential_248/lstm_745/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_248/lstm_745/lstm_cell_649/Sigmoid_2Sigmoid4sequential_248/lstm_745/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_248/lstm_745/lstm_cell_649/Relu_1Relu/sequential_248/lstm_745/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_248/lstm_745/lstm_cell_649/mul_2Mul3sequential_248/lstm_745/lstm_cell_649/Sigmoid_2:y:0:sequential_248/lstm_745/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_248/lstm_745/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_248/lstm_745/TensorArrayV2_1TensorListReserve>sequential_248/lstm_745/TensorArrayV2_1/element_shape:output:00sequential_248/lstm_745/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_248/lstm_745/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_248/lstm_745/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_248/lstm_745/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_248/lstm_745/whileWhile3sequential_248/lstm_745/while/loop_counter:output:09sequential_248/lstm_745/while/maximum_iterations:output:0%sequential_248/lstm_745/time:output:00sequential_248/lstm_745/TensorArrayV2_1:handle:0&sequential_248/lstm_745/zeros:output:0(sequential_248/lstm_745/zeros_1:output:00sequential_248/lstm_745/strided_slice_1:output:0Osequential_248/lstm_745/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_248_lstm_745_lstm_cell_649_matmul_readvariableop_resourceFsequential_248_lstm_745_lstm_cell_649_matmul_1_readvariableop_resourceEsequential_248_lstm_745_lstm_cell_649_biasadd_readvariableop_resource*
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
*sequential_248_lstm_745_while_body_3932883*6
cond.R,
*sequential_248_lstm_745_while_cond_3932882*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_248/lstm_745/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_248/lstm_745/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_248/lstm_745/while:output:3Qsequential_248/lstm_745/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_248/lstm_745/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_248/lstm_745/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_745/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_745/strided_slice_3StridedSliceCsequential_248/lstm_745/TensorArrayV2Stack/TensorListStack:tensor:06sequential_248/lstm_745/strided_slice_3/stack:output:08sequential_248/lstm_745/strided_slice_3/stack_1:output:08sequential_248/lstm_745/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_248/lstm_745/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_248/lstm_745/transpose_1	TransposeCsequential_248/lstm_745/TensorArrayV2Stack/TensorListStack:tensor:01sequential_248/lstm_745/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_248/lstm_745/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_248/lstm_746/ShapeShape'sequential_248/lstm_745/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_248/lstm_746/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_248/lstm_746/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_248/lstm_746/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_248/lstm_746/strided_sliceStridedSlice&sequential_248/lstm_746/Shape:output:04sequential_248/lstm_746/strided_slice/stack:output:06sequential_248/lstm_746/strided_slice/stack_1:output:06sequential_248/lstm_746/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_248/lstm_746/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_248/lstm_746/zeros/packedPack.sequential_248/lstm_746/strided_slice:output:0/sequential_248/lstm_746/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_248/lstm_746/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_248/lstm_746/zerosFill-sequential_248/lstm_746/zeros/packed:output:0,sequential_248/lstm_746/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_248/lstm_746/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_248/lstm_746/zeros_1/packedPack.sequential_248/lstm_746/strided_slice:output:01sequential_248/lstm_746/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_248/lstm_746/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_248/lstm_746/zeros_1Fill/sequential_248/lstm_746/zeros_1/packed:output:0.sequential_248/lstm_746/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_248/lstm_746/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_248/lstm_746/transpose	Transpose'sequential_248/lstm_745/transpose_1:y:0/sequential_248/lstm_746/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_248/lstm_746/Shape_1Shape%sequential_248/lstm_746/transpose:y:0*
T0*
_output_shapes
:w
-sequential_248/lstm_746/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_746/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_248/lstm_746/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_746/strided_slice_1StridedSlice(sequential_248/lstm_746/Shape_1:output:06sequential_248/lstm_746/strided_slice_1/stack:output:08sequential_248/lstm_746/strided_slice_1/stack_1:output:08sequential_248/lstm_746/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_248/lstm_746/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_248/lstm_746/TensorArrayV2TensorListReserve<sequential_248/lstm_746/TensorArrayV2/element_shape:output:00sequential_248/lstm_746/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_248/lstm_746/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_248/lstm_746/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_248/lstm_746/transpose:y:0Vsequential_248/lstm_746/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_248/lstm_746/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_746/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_248/lstm_746/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_746/strided_slice_2StridedSlice%sequential_248/lstm_746/transpose:y:06sequential_248/lstm_746/strided_slice_2/stack:output:08sequential_248/lstm_746/strided_slice_2/stack_1:output:08sequential_248/lstm_746/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_248/lstm_746/lstm_cell_650/MatMul/ReadVariableOpReadVariableOpDsequential_248_lstm_746_lstm_cell_650_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_248/lstm_746/lstm_cell_650/MatMulMatMul0sequential_248/lstm_746/strided_slice_2:output:0Csequential_248/lstm_746/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_248/lstm_746/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOpFsequential_248_lstm_746_lstm_cell_650_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_248/lstm_746/lstm_cell_650/MatMul_1MatMul&sequential_248/lstm_746/zeros:output:0Esequential_248/lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_248/lstm_746/lstm_cell_650/addAddV26sequential_248/lstm_746/lstm_cell_650/MatMul:product:08sequential_248/lstm_746/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_248/lstm_746/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOpEsequential_248_lstm_746_lstm_cell_650_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_248/lstm_746/lstm_cell_650/BiasAddBiasAdd-sequential_248/lstm_746/lstm_cell_650/add:z:0Dsequential_248/lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_248/lstm_746/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_248/lstm_746/lstm_cell_650/splitSplit>sequential_248/lstm_746/lstm_cell_650/split/split_dim:output:06sequential_248/lstm_746/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_248/lstm_746/lstm_cell_650/SigmoidSigmoid4sequential_248/lstm_746/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_248/lstm_746/lstm_cell_650/Sigmoid_1Sigmoid4sequential_248/lstm_746/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_248/lstm_746/lstm_cell_650/mulMul3sequential_248/lstm_746/lstm_cell_650/Sigmoid_1:y:0(sequential_248/lstm_746/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_248/lstm_746/lstm_cell_650/ReluRelu4sequential_248/lstm_746/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_248/lstm_746/lstm_cell_650/mul_1Mul1sequential_248/lstm_746/lstm_cell_650/Sigmoid:y:08sequential_248/lstm_746/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_248/lstm_746/lstm_cell_650/add_1AddV2-sequential_248/lstm_746/lstm_cell_650/mul:z:0/sequential_248/lstm_746/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_248/lstm_746/lstm_cell_650/Sigmoid_2Sigmoid4sequential_248/lstm_746/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_248/lstm_746/lstm_cell_650/Relu_1Relu/sequential_248/lstm_746/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_248/lstm_746/lstm_cell_650/mul_2Mul3sequential_248/lstm_746/lstm_cell_650/Sigmoid_2:y:0:sequential_248/lstm_746/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_248/lstm_746/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_248/lstm_746/TensorArrayV2_1TensorListReserve>sequential_248/lstm_746/TensorArrayV2_1/element_shape:output:00sequential_248/lstm_746/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_248/lstm_746/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_248/lstm_746/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_248/lstm_746/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_248/lstm_746/whileWhile3sequential_248/lstm_746/while/loop_counter:output:09sequential_248/lstm_746/while/maximum_iterations:output:0%sequential_248/lstm_746/time:output:00sequential_248/lstm_746/TensorArrayV2_1:handle:0&sequential_248/lstm_746/zeros:output:0(sequential_248/lstm_746/zeros_1:output:00sequential_248/lstm_746/strided_slice_1:output:0Osequential_248/lstm_746/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_248_lstm_746_lstm_cell_650_matmul_readvariableop_resourceFsequential_248_lstm_746_lstm_cell_650_matmul_1_readvariableop_resourceEsequential_248_lstm_746_lstm_cell_650_biasadd_readvariableop_resource*
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
*sequential_248_lstm_746_while_body_3933022*6
cond.R,
*sequential_248_lstm_746_while_cond_3933021*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_248/lstm_746/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_248/lstm_746/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_248/lstm_746/while:output:3Qsequential_248/lstm_746/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_248/lstm_746/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_248/lstm_746/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_248/lstm_746/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_248/lstm_746/strided_slice_3StridedSliceCsequential_248/lstm_746/TensorArrayV2Stack/TensorListStack:tensor:06sequential_248/lstm_746/strided_slice_3/stack:output:08sequential_248/lstm_746/strided_slice_3/stack_1:output:08sequential_248/lstm_746/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_248/lstm_746/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_248/lstm_746/transpose_1	TransposeCsequential_248/lstm_746/TensorArrayV2Stack/TensorListStack:tensor:01sequential_248/lstm_746/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_248/lstm_746/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_248/dense_248/MatMul/ReadVariableOpReadVariableOp7sequential_248_dense_248_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_248/dense_248/MatMulMatMul0sequential_248/lstm_746/strided_slice_3:output:06sequential_248/dense_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_248/dense_248/BiasAdd/ReadVariableOpReadVariableOp8sequential_248_dense_248_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_248/dense_248/BiasAddBiasAdd)sequential_248/dense_248/MatMul:product:07sequential_248/dense_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_248/dense_248/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_248/dense_248/BiasAdd/ReadVariableOp/^sequential_248/dense_248/MatMul/ReadVariableOp=^sequential_248/lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp<^sequential_248/lstm_744/lstm_cell_648/MatMul/ReadVariableOp>^sequential_248/lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp^sequential_248/lstm_744/while=^sequential_248/lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp<^sequential_248/lstm_745/lstm_cell_649/MatMul/ReadVariableOp>^sequential_248/lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp^sequential_248/lstm_745/while=^sequential_248/lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp<^sequential_248/lstm_746/lstm_cell_650/MatMul/ReadVariableOp>^sequential_248/lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp^sequential_248/lstm_746/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_248/dense_248/BiasAdd/ReadVariableOp/sequential_248/dense_248/BiasAdd/ReadVariableOp2`
.sequential_248/dense_248/MatMul/ReadVariableOp.sequential_248/dense_248/MatMul/ReadVariableOp2|
<sequential_248/lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp<sequential_248/lstm_744/lstm_cell_648/BiasAdd/ReadVariableOp2z
;sequential_248/lstm_744/lstm_cell_648/MatMul/ReadVariableOp;sequential_248/lstm_744/lstm_cell_648/MatMul/ReadVariableOp2~
=sequential_248/lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp=sequential_248/lstm_744/lstm_cell_648/MatMul_1/ReadVariableOp2>
sequential_248/lstm_744/whilesequential_248/lstm_744/while2|
<sequential_248/lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp<sequential_248/lstm_745/lstm_cell_649/BiasAdd/ReadVariableOp2z
;sequential_248/lstm_745/lstm_cell_649/MatMul/ReadVariableOp;sequential_248/lstm_745/lstm_cell_649/MatMul/ReadVariableOp2~
=sequential_248/lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp=sequential_248/lstm_745/lstm_cell_649/MatMul_1/ReadVariableOp2>
sequential_248/lstm_745/whilesequential_248/lstm_745/while2|
<sequential_248/lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp<sequential_248/lstm_746/lstm_cell_650/BiasAdd/ReadVariableOp2z
;sequential_248/lstm_746/lstm_cell_650/MatMul/ReadVariableOp;sequential_248/lstm_746/lstm_cell_650/MatMul/ReadVariableOp2~
=sequential_248/lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp=sequential_248/lstm_746/lstm_cell_650/MatMul_1/ReadVariableOp2>
sequential_248/lstm_746/whilesequential_248/lstm_746/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_744_input
?
?
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3933325

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
?
?
/__inference_lstm_cell_650_layer_call_fn_3938377

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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3934025o
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3938245

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
?J
?
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937369

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_3937285*
condR
while_cond_3937284*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3934527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_650_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_650_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_650_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_650_matmul_readvariableop_resource:2(F
4while_lstm_cell_650_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_650_biasadd_readvariableop_resource:(??*while/lstm_cell_650/BiasAdd/ReadVariableOp?)while/lstm_cell_650/MatMul/ReadVariableOp?+while/lstm_cell_650/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_650/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_650_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_650/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_650/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_650/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_650_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_650/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_650/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_650/addAddV2$while/lstm_cell_650/MatMul:product:0&while/lstm_cell_650/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_650/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_650_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_650/BiasAddBiasAddwhile/lstm_cell_650/add:z:02while/lstm_cell_650/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_650/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_650/splitSplit,while/lstm_cell_650/split/split_dim:output:0$while/lstm_cell_650/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_650/SigmoidSigmoid"while/lstm_cell_650/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_1Sigmoid"while/lstm_cell_650/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mulMul!while/lstm_cell_650/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_650/ReluRelu"while/lstm_cell_650/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_1Mulwhile/lstm_cell_650/Sigmoid:y:0&while/lstm_cell_650/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/add_1AddV2while/lstm_cell_650/mul:z:0while/lstm_cell_650/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_650/Sigmoid_2Sigmoid"while/lstm_cell_650/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_650/Relu_1Reluwhile/lstm_cell_650/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_650/mul_2Mul!while/lstm_cell_650/Sigmoid_2:y:0(while/lstm_cell_650/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_650/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_650/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_650/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_650/BiasAdd/ReadVariableOp*^while/lstm_cell_650/MatMul/ReadVariableOp,^while/lstm_cell_650/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_650_biasadd_readvariableop_resource5while_lstm_cell_650_biasadd_readvariableop_resource_0"n
4while_lstm_cell_650_matmul_1_readvariableop_resource6while_lstm_cell_650_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_650_matmul_readvariableop_resource4while_lstm_cell_650_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_650/BiasAdd/ReadVariableOp*while/lstm_cell_650/BiasAdd/ReadVariableOp2V
)while/lstm_cell_650/MatMul/ReadVariableOp)while/lstm_cell_650/MatMul/ReadVariableOp2Z
+while/lstm_cell_650/MatMul_1/ReadVariableOp+while/lstm_cell_650/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937512

inputs?
,lstm_cell_649_matmul_readvariableop_resource:	d?A
.lstm_cell_649_matmul_1_readvariableop_resource:	2?<
-lstm_cell_649_biasadd_readvariableop_resource:	?
identity??$lstm_cell_649/BiasAdd/ReadVariableOp?#lstm_cell_649/MatMul/ReadVariableOp?%lstm_cell_649/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_649/MatMul/ReadVariableOpReadVariableOp,lstm_cell_649_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_649/MatMulMatMulstrided_slice_2:output:0+lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_649_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_649/MatMul_1MatMulzeros:output:0-lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_649/addAddV2lstm_cell_649/MatMul:product:0 lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_649_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_649/BiasAddBiasAddlstm_cell_649/add:z:0,lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_649/splitSplit&lstm_cell_649/split/split_dim:output:0lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_649/SigmoidSigmoidlstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_1Sigmoidlstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_649/mulMullstm_cell_649/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_649/ReluRelulstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_1Mullstm_cell_649/Sigmoid:y:0 lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_649/add_1AddV2lstm_cell_649/mul:z:0lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_649/Sigmoid_2Sigmoidlstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_649/Relu_1Relulstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_649/mul_2Mullstm_cell_649/Sigmoid_2:y:0"lstm_cell_649/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_649_matmul_readvariableop_resource.lstm_cell_649_matmul_1_readvariableop_resource-lstm_cell_649_biasadd_readvariableop_resource*
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
while_body_3937428*
condR
while_cond_3937427*K
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
NoOpNoOp%^lstm_cell_649/BiasAdd/ReadVariableOp$^lstm_cell_649/MatMul/ReadVariableOp&^lstm_cell_649/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_649/BiasAdd/ReadVariableOp$lstm_cell_649/BiasAdd/ReadVariableOp2J
#lstm_cell_649/MatMul/ReadVariableOp#lstm_cell_649/MatMul/ReadVariableOp2N
%lstm_cell_649/MatMul_1/ReadVariableOp%lstm_cell_649/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3936382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3936382___redundant_placeholder05
1while_while_cond_3936382___redundant_placeholder15
1while_while_cond_3936382___redundant_placeholder25
1while_while_cond_3936382___redundant_placeholder3
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
*sequential_248_lstm_746_while_cond_3933021L
Hsequential_248_lstm_746_while_sequential_248_lstm_746_while_loop_counterR
Nsequential_248_lstm_746_while_sequential_248_lstm_746_while_maximum_iterations-
)sequential_248_lstm_746_while_placeholder/
+sequential_248_lstm_746_while_placeholder_1/
+sequential_248_lstm_746_while_placeholder_2/
+sequential_248_lstm_746_while_placeholder_3N
Jsequential_248_lstm_746_while_less_sequential_248_lstm_746_strided_slice_1e
asequential_248_lstm_746_while_sequential_248_lstm_746_while_cond_3933021___redundant_placeholder0e
asequential_248_lstm_746_while_sequential_248_lstm_746_while_cond_3933021___redundant_placeholder1e
asequential_248_lstm_746_while_sequential_248_lstm_746_while_cond_3933021___redundant_placeholder2e
asequential_248_lstm_746_while_sequential_248_lstm_746_while_cond_3933021___redundant_placeholder3*
&sequential_248_lstm_746_while_identity
?
"sequential_248/lstm_746/while/LessLess)sequential_248_lstm_746_while_placeholderJsequential_248_lstm_746_while_less_sequential_248_lstm_746_strided_slice_1*
T0*
_output_shapes
: {
&sequential_248/lstm_746/while/IdentityIdentity&sequential_248/lstm_746/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_248_lstm_746_while_identity/sequential_248/lstm_746/while/Identity:output:0*(
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3938311

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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3938213

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
?
/__inference_lstm_cell_649_layer_call_fn_3938279

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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3933675o
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
while_cond_3937427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3937427___redundant_placeholder05
1while_while_cond_3937427___redundant_placeholder15
1while_while_cond_3937427___redundant_placeholder25
1while_while_cond_3937427___redundant_placeholder3
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
while_body_3934908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_649_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_649_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_649_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_649_matmul_readvariableop_resource:	d?G
4while_lstm_cell_649_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_649_biasadd_readvariableop_resource:	???*while/lstm_cell_649/BiasAdd/ReadVariableOp?)while/lstm_cell_649/MatMul/ReadVariableOp?+while/lstm_cell_649/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_649/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_649_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_649/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_649/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_649/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_649_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_649/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_649/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_649/addAddV2$while/lstm_cell_649/MatMul:product:0&while/lstm_cell_649/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_649/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_649_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_649/BiasAddBiasAddwhile/lstm_cell_649/add:z:02while/lstm_cell_649/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_649/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_649/splitSplit,while/lstm_cell_649/split/split_dim:output:0$while/lstm_cell_649/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_649/SigmoidSigmoid"while/lstm_cell_649/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_1Sigmoid"while/lstm_cell_649/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mulMul!while/lstm_cell_649/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_649/ReluRelu"while/lstm_cell_649/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_1Mulwhile/lstm_cell_649/Sigmoid:y:0&while/lstm_cell_649/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/add_1AddV2while/lstm_cell_649/mul:z:0while/lstm_cell_649/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_649/Sigmoid_2Sigmoid"while/lstm_cell_649/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_649/Relu_1Reluwhile/lstm_cell_649/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_649/mul_2Mul!while/lstm_cell_649/Sigmoid_2:y:0(while/lstm_cell_649/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_649/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_649/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_649/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_649/BiasAdd/ReadVariableOp*^while/lstm_cell_649/MatMul/ReadVariableOp,^while/lstm_cell_649/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_649_biasadd_readvariableop_resource5while_lstm_cell_649_biasadd_readvariableop_resource_0"n
4while_lstm_cell_649_matmul_1_readvariableop_resource6while_lstm_cell_649_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_649_matmul_readvariableop_resource4while_lstm_cell_649_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_649/BiasAdd/ReadVariableOp*while/lstm_cell_649/BiasAdd/ReadVariableOp2V
)while/lstm_cell_649/MatMul/ReadVariableOp)while/lstm_cell_649/MatMul/ReadVariableOp2Z
+while/lstm_cell_649/MatMul_1/ReadVariableOp+while/lstm_cell_649/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_744_input;
 serving_default_lstm_744_input:0?????????=
	dense_2480
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
2dense_248/kernel
:2dense_248/bias
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
0:.	?2lstm_744/lstm_cell_744/kernel
::8	d?2'lstm_744/lstm_cell_744/recurrent_kernel
*:(?2lstm_744/lstm_cell_744/bias
0:.	d?2lstm_745/lstm_cell_745/kernel
::8	2?2'lstm_745/lstm_cell_745/recurrent_kernel
*:(?2lstm_745/lstm_cell_745/bias
/:-2(2lstm_746/lstm_cell_746/kernel
9:7
(2'lstm_746/lstm_cell_746/recurrent_kernel
):'(2lstm_746/lstm_cell_746/bias
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
2Adam/dense_248/kernel/m
!:2Adam/dense_248/bias/m
5:3	?2$Adam/lstm_744/lstm_cell_744/kernel/m
?:=	d?2.Adam/lstm_744/lstm_cell_744/recurrent_kernel/m
/:-?2"Adam/lstm_744/lstm_cell_744/bias/m
5:3	d?2$Adam/lstm_745/lstm_cell_745/kernel/m
?:=	2?2.Adam/lstm_745/lstm_cell_745/recurrent_kernel/m
/:-?2"Adam/lstm_745/lstm_cell_745/bias/m
4:22(2$Adam/lstm_746/lstm_cell_746/kernel/m
>:<
(2.Adam/lstm_746/lstm_cell_746/recurrent_kernel/m
.:,(2"Adam/lstm_746/lstm_cell_746/bias/m
':%
2Adam/dense_248/kernel/v
!:2Adam/dense_248/bias/v
5:3	?2$Adam/lstm_744/lstm_cell_744/kernel/v
?:=	d?2.Adam/lstm_744/lstm_cell_744/recurrent_kernel/v
/:-?2"Adam/lstm_744/lstm_cell_744/bias/v
5:3	d?2$Adam/lstm_745/lstm_cell_745/kernel/v
?:=	2?2.Adam/lstm_745/lstm_cell_745/recurrent_kernel/v
/:-?2"Adam/lstm_745/lstm_cell_745/bias/v
4:22(2$Adam/lstm_746/lstm_cell_746/kernel/v
>:<
(2.Adam/lstm_746/lstm_cell_746/recurrent_kernel/v
.:,(2"Adam/lstm_746/lstm_cell_746/bias/v
?2?
0__inference_sequential_248_layer_call_fn_3934661
0__inference_sequential_248_layer_call_fn_3935399
0__inference_sequential_248_layer_call_fn_3935426
0__inference_sequential_248_layer_call_fn_3935277?
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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935853
K__inference_sequential_248_layer_call_and_return_conditional_losses_3936280
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935307
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935337?
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
"__inference__wrapped_model_3933112lstm_744_input"?
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
*__inference_lstm_744_layer_call_fn_3936291
*__inference_lstm_744_layer_call_fn_3936302
*__inference_lstm_744_layer_call_fn_3936313
*__inference_lstm_744_layer_call_fn_3936324?
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936467
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936610
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936753
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936896?
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
*__inference_lstm_745_layer_call_fn_3936907
*__inference_lstm_745_layer_call_fn_3936918
*__inference_lstm_745_layer_call_fn_3936929
*__inference_lstm_745_layer_call_fn_3936940?
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937083
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937226
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937369
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937512?
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
*__inference_lstm_746_layer_call_fn_3937523
*__inference_lstm_746_layer_call_fn_3937534
*__inference_lstm_746_layer_call_fn_3937545
*__inference_lstm_746_layer_call_fn_3937556?
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937699
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937842
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937985
E__inference_lstm_746_layer_call_and_return_conditional_losses_3938128?
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
+__inference_dense_248_layer_call_fn_3938137?
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
F__inference_dense_248_layer_call_and_return_conditional_losses_3938147?
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
%__inference_signature_wrapper_3935372lstm_744_input"?
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
/__inference_lstm_cell_648_layer_call_fn_3938164
/__inference_lstm_cell_648_layer_call_fn_3938181?
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3938213
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3938245?
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
/__inference_lstm_cell_649_layer_call_fn_3938262
/__inference_lstm_cell_649_layer_call_fn_3938279?
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3938311
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3938343?
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
/__inference_lstm_cell_650_layer_call_fn_3938360
/__inference_lstm_cell_650_layer_call_fn_3938377?
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3938409
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3938441?
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
"__inference__wrapped_model_3933112?-./012345!";?8
1?.
,?)
lstm_744_input?????????
? "5?2
0
	dense_248#? 
	dense_248??????????
F__inference_dense_248_layer_call_and_return_conditional_losses_3938147\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_248_layer_call_fn_3938137O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936467?-./O?L
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936610?-./O?L
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936753q-./??<
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
E__inference_lstm_744_layer_call_and_return_conditional_losses_3936896q-./??<
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
*__inference_lstm_744_layer_call_fn_3936291}-./O?L
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
*__inference_lstm_744_layer_call_fn_3936302}-./O?L
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
*__inference_lstm_744_layer_call_fn_3936313d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_744_layer_call_fn_3936324d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937083?012O?L
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937226?012O?L
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937369q012??<
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
E__inference_lstm_745_layer_call_and_return_conditional_losses_3937512q012??<
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
*__inference_lstm_745_layer_call_fn_3936907}012O?L
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
*__inference_lstm_745_layer_call_fn_3936918}012O?L
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
*__inference_lstm_745_layer_call_fn_3936929d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_745_layer_call_fn_3936940d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937699}345O?L
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937842}345O?L
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3937985m345??<
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
E__inference_lstm_746_layer_call_and_return_conditional_losses_3938128m345??<
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
*__inference_lstm_746_layer_call_fn_3937523p345O?L
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
*__inference_lstm_746_layer_call_fn_3937534p345O?L
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
*__inference_lstm_746_layer_call_fn_3937545`345??<
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
*__inference_lstm_746_layer_call_fn_3937556`345??<
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3938213?-./??}
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
J__inference_lstm_cell_648_layer_call_and_return_conditional_losses_3938245?-./??}
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
/__inference_lstm_cell_648_layer_call_fn_3938164?-./??}
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
/__inference_lstm_cell_648_layer_call_fn_3938181?-./??}
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3938311?012??}
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
J__inference_lstm_cell_649_layer_call_and_return_conditional_losses_3938343?012??}
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
/__inference_lstm_cell_649_layer_call_fn_3938262?012??}
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
/__inference_lstm_cell_649_layer_call_fn_3938279?012??}
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3938409?345??}
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
J__inference_lstm_cell_650_layer_call_and_return_conditional_losses_3938441?345??}
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
/__inference_lstm_cell_650_layer_call_fn_3938360?345??}
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
/__inference_lstm_cell_650_layer_call_fn_3938377?345??}
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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935307y-./012345!"C?@
9?6
,?)
lstm_744_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935337y-./012345!"C?@
9?6
,?)
lstm_744_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_248_layer_call_and_return_conditional_losses_3935853q-./012345!";?8
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
K__inference_sequential_248_layer_call_and_return_conditional_losses_3936280q-./012345!";?8
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
0__inference_sequential_248_layer_call_fn_3934661l-./012345!"C?@
9?6
,?)
lstm_744_input?????????
p 

 
? "???????????
0__inference_sequential_248_layer_call_fn_3935277l-./012345!"C?@
9?6
,?)
lstm_744_input?????????
p

 
? "???????????
0__inference_sequential_248_layer_call_fn_3935399d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_248_layer_call_fn_3935426d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3935372?-./012345!"M?J
? 
C?@
>
lstm_744_input,?)
lstm_744_input?????????"5?2
0
	dense_248#? 
	dense_248?????????