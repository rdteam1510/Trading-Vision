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
dense_243/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_243/kernel
u
$dense_243/kernel/Read/ReadVariableOpReadVariableOpdense_243/kernel*
_output_shapes

:
*
dtype0
t
dense_243/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_243/bias
m
"dense_243/bias/Read/ReadVariableOpReadVariableOpdense_243/bias*
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
lstm_729/lstm_cell_729/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_729/lstm_cell_729/kernel
?
1lstm_729/lstm_cell_729/kernel/Read/ReadVariableOpReadVariableOplstm_729/lstm_cell_729/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_729/lstm_cell_729/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_729/lstm_cell_729/recurrent_kernel
?
;lstm_729/lstm_cell_729/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_729/lstm_cell_729/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_729/lstm_cell_729/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_729/lstm_cell_729/bias
?
/lstm_729/lstm_cell_729/bias/Read/ReadVariableOpReadVariableOplstm_729/lstm_cell_729/bias*
_output_shapes	
:?*
dtype0
?
lstm_730/lstm_cell_730/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_730/lstm_cell_730/kernel
?
1lstm_730/lstm_cell_730/kernel/Read/ReadVariableOpReadVariableOplstm_730/lstm_cell_730/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_730/lstm_cell_730/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_730/lstm_cell_730/recurrent_kernel
?
;lstm_730/lstm_cell_730/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_730/lstm_cell_730/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_730/lstm_cell_730/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_730/lstm_cell_730/bias
?
/lstm_730/lstm_cell_730/bias/Read/ReadVariableOpReadVariableOplstm_730/lstm_cell_730/bias*
_output_shapes	
:?*
dtype0
?
lstm_731/lstm_cell_731/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_731/lstm_cell_731/kernel
?
1lstm_731/lstm_cell_731/kernel/Read/ReadVariableOpReadVariableOplstm_731/lstm_cell_731/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_731/lstm_cell_731/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_731/lstm_cell_731/recurrent_kernel
?
;lstm_731/lstm_cell_731/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_731/lstm_cell_731/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_731/lstm_cell_731/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_731/lstm_cell_731/bias
?
/lstm_731/lstm_cell_731/bias/Read/ReadVariableOpReadVariableOplstm_731/lstm_cell_731/bias*
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
Adam/dense_243/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_243/kernel/m
?
+Adam/dense_243/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_243/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_243/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_243/bias/m
{
)Adam/dense_243/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_243/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_729/lstm_cell_729/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_729/lstm_cell_729/kernel/m
?
8Adam/lstm_729/lstm_cell_729/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_729/lstm_cell_729/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_729/lstm_cell_729/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_729/lstm_cell_729/recurrent_kernel/m
?
BAdam/lstm_729/lstm_cell_729/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_729/lstm_cell_729/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_729/lstm_cell_729/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_729/lstm_cell_729/bias/m
?
6Adam/lstm_729/lstm_cell_729/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_729/lstm_cell_729/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_730/lstm_cell_730/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_730/lstm_cell_730/kernel/m
?
8Adam/lstm_730/lstm_cell_730/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_730/lstm_cell_730/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_730/lstm_cell_730/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_730/lstm_cell_730/recurrent_kernel/m
?
BAdam/lstm_730/lstm_cell_730/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_730/lstm_cell_730/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_730/lstm_cell_730/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_730/lstm_cell_730/bias/m
?
6Adam/lstm_730/lstm_cell_730/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_730/lstm_cell_730/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_731/lstm_cell_731/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_731/lstm_cell_731/kernel/m
?
8Adam/lstm_731/lstm_cell_731/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_731/lstm_cell_731/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_731/lstm_cell_731/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_731/lstm_cell_731/recurrent_kernel/m
?
BAdam/lstm_731/lstm_cell_731/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_731/lstm_cell_731/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_731/lstm_cell_731/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_731/lstm_cell_731/bias/m
?
6Adam/lstm_731/lstm_cell_731/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_731/lstm_cell_731/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_243/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_243/kernel/v
?
+Adam/dense_243/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_243/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_243/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_243/bias/v
{
)Adam/dense_243/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_243/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_729/lstm_cell_729/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_729/lstm_cell_729/kernel/v
?
8Adam/lstm_729/lstm_cell_729/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_729/lstm_cell_729/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_729/lstm_cell_729/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_729/lstm_cell_729/recurrent_kernel/v
?
BAdam/lstm_729/lstm_cell_729/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_729/lstm_cell_729/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_729/lstm_cell_729/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_729/lstm_cell_729/bias/v
?
6Adam/lstm_729/lstm_cell_729/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_729/lstm_cell_729/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_730/lstm_cell_730/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_730/lstm_cell_730/kernel/v
?
8Adam/lstm_730/lstm_cell_730/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_730/lstm_cell_730/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_730/lstm_cell_730/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_730/lstm_cell_730/recurrent_kernel/v
?
BAdam/lstm_730/lstm_cell_730/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_730/lstm_cell_730/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_730/lstm_cell_730/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_730/lstm_cell_730/bias/v
?
6Adam/lstm_730/lstm_cell_730/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_730/lstm_cell_730/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_731/lstm_cell_731/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_731/lstm_cell_731/kernel/v
?
8Adam/lstm_731/lstm_cell_731/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_731/lstm_cell_731/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_731/lstm_cell_731/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_731/lstm_cell_731/recurrent_kernel/v
?
BAdam/lstm_731/lstm_cell_731/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_731/lstm_cell_731/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_731/lstm_cell_731/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_731/lstm_cell_731/bias/v
?
6Adam/lstm_731/lstm_cell_731/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_731/lstm_cell_731/bias/v*
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
VARIABLE_VALUEdense_243/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_243/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_729/lstm_cell_729/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_729/lstm_cell_729/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_729/lstm_cell_729/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_730/lstm_cell_730/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_730/lstm_cell_730/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_730/lstm_cell_730/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_731/lstm_cell_731/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_731/lstm_cell_731/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_731/lstm_cell_731/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_243/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_243/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_729/lstm_cell_729/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_729/lstm_cell_729/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_729/lstm_cell_729/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_730/lstm_cell_730/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_730/lstm_cell_730/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_730/lstm_cell_730/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_731/lstm_cell_731/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_731/lstm_cell_731/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_731/lstm_cell_731/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_243/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_243/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_729/lstm_cell_729/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_729/lstm_cell_729/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_729/lstm_cell_729/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_730/lstm_cell_730/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_730/lstm_cell_730/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_730/lstm_cell_730/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_731/lstm_cell_731/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_731/lstm_cell_731/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_731/lstm_cell_731/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_729_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_729_inputlstm_729/lstm_cell_729/kernel'lstm_729/lstm_cell_729/recurrent_kernellstm_729/lstm_cell_729/biaslstm_730/lstm_cell_730/kernel'lstm_730/lstm_cell_730/recurrent_kernellstm_730/lstm_cell_730/biaslstm_731/lstm_cell_731/kernel'lstm_731/lstm_cell_731/recurrent_kernellstm_731/lstm_cell_731/biasdense_243/kerneldense_243/bias*
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
%__inference_signature_wrapper_4406562
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_243/kernel/Read/ReadVariableOp"dense_243/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_729/lstm_cell_729/kernel/Read/ReadVariableOp;lstm_729/lstm_cell_729/recurrent_kernel/Read/ReadVariableOp/lstm_729/lstm_cell_729/bias/Read/ReadVariableOp1lstm_730/lstm_cell_730/kernel/Read/ReadVariableOp;lstm_730/lstm_cell_730/recurrent_kernel/Read/ReadVariableOp/lstm_730/lstm_cell_730/bias/Read/ReadVariableOp1lstm_731/lstm_cell_731/kernel/Read/ReadVariableOp;lstm_731/lstm_cell_731/recurrent_kernel/Read/ReadVariableOp/lstm_731/lstm_cell_731/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_243/kernel/m/Read/ReadVariableOp)Adam/dense_243/bias/m/Read/ReadVariableOp8Adam/lstm_729/lstm_cell_729/kernel/m/Read/ReadVariableOpBAdam/lstm_729/lstm_cell_729/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_729/lstm_cell_729/bias/m/Read/ReadVariableOp8Adam/lstm_730/lstm_cell_730/kernel/m/Read/ReadVariableOpBAdam/lstm_730/lstm_cell_730/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_730/lstm_cell_730/bias/m/Read/ReadVariableOp8Adam/lstm_731/lstm_cell_731/kernel/m/Read/ReadVariableOpBAdam/lstm_731/lstm_cell_731/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_731/lstm_cell_731/bias/m/Read/ReadVariableOp+Adam/dense_243/kernel/v/Read/ReadVariableOp)Adam/dense_243/bias/v/Read/ReadVariableOp8Adam/lstm_729/lstm_cell_729/kernel/v/Read/ReadVariableOpBAdam/lstm_729/lstm_cell_729/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_729/lstm_cell_729/bias/v/Read/ReadVariableOp8Adam/lstm_730/lstm_cell_730/kernel/v/Read/ReadVariableOpBAdam/lstm_730/lstm_cell_730/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_730/lstm_cell_730/bias/v/Read/ReadVariableOp8Adam/lstm_731/lstm_cell_731/kernel/v/Read/ReadVariableOpBAdam/lstm_731/lstm_cell_731/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_731/lstm_cell_731/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4409774
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_243/kerneldense_243/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_729/lstm_cell_729/kernel'lstm_729/lstm_cell_729/recurrent_kernellstm_729/lstm_cell_729/biaslstm_730/lstm_cell_730/kernel'lstm_730/lstm_cell_730/recurrent_kernellstm_730/lstm_cell_730/biaslstm_731/lstm_cell_731/kernel'lstm_731/lstm_cell_731/recurrent_kernellstm_731/lstm_cell_731/biastotalcountAdam/dense_243/kernel/mAdam/dense_243/bias/m$Adam/lstm_729/lstm_cell_729/kernel/m.Adam/lstm_729/lstm_cell_729/recurrent_kernel/m"Adam/lstm_729/lstm_cell_729/bias/m$Adam/lstm_730/lstm_cell_730/kernel/m.Adam/lstm_730/lstm_cell_730/recurrent_kernel/m"Adam/lstm_730/lstm_cell_730/bias/m$Adam/lstm_731/lstm_cell_731/kernel/m.Adam/lstm_731/lstm_cell_731/recurrent_kernel/m"Adam/lstm_731/lstm_cell_731/bias/mAdam/dense_243/kernel/vAdam/dense_243/bias/v$Adam/lstm_729/lstm_cell_729/kernel/v.Adam/lstm_729/lstm_cell_729/recurrent_kernel/v"Adam/lstm_729/lstm_cell_729/bias/v$Adam/lstm_730/lstm_cell_730/kernel/v.Adam/lstm_730/lstm_cell_730/recurrent_kernel/v"Adam/lstm_730/lstm_cell_730/bias/v$Adam/lstm_731/lstm_cell_731/kernel/v.Adam/lstm_731/lstm_cell_731/recurrent_kernel/v"Adam/lstm_731/lstm_cell_731/bias/v*4
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
#__inference__traced_restore_4409904??+
?C
?

lstm_731_while_body_4406953.
*lstm_731_while_lstm_731_while_loop_counter4
0lstm_731_while_lstm_731_while_maximum_iterations
lstm_731_while_placeholder 
lstm_731_while_placeholder_1 
lstm_731_while_placeholder_2 
lstm_731_while_placeholder_3-
)lstm_731_while_lstm_731_strided_slice_1_0i
elstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0:2(Q
?lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(L
>lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0:(
lstm_731_while_identity
lstm_731_while_identity_1
lstm_731_while_identity_2
lstm_731_while_identity_3
lstm_731_while_identity_4
lstm_731_while_identity_5+
'lstm_731_while_lstm_731_strided_slice_1g
clstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensorM
;lstm_731_while_lstm_cell_728_matmul_readvariableop_resource:2(O
=lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource:
(J
<lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource:(??3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp?2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp?4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp?
@lstm_731/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_731/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensor_0lstm_731_while_placeholderIlstm_731/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp=lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_731/while/lstm_cell_728/MatMulMatMul9lstm_731/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp?lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_731/while/lstm_cell_728/MatMul_1MatMullstm_731_while_placeholder_2<lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_731/while/lstm_cell_728/addAddV2-lstm_731/while/lstm_cell_728/MatMul:product:0/lstm_731/while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp>lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_731/while/lstm_cell_728/BiasAddBiasAdd$lstm_731/while/lstm_cell_728/add:z:0;lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_731/while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_731/while/lstm_cell_728/splitSplit5lstm_731/while/lstm_cell_728/split/split_dim:output:0-lstm_731/while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_731/while/lstm_cell_728/SigmoidSigmoid+lstm_731/while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_731/while/lstm_cell_728/Sigmoid_1Sigmoid+lstm_731/while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_731/while/lstm_cell_728/mulMul*lstm_731/while/lstm_cell_728/Sigmoid_1:y:0lstm_731_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_731/while/lstm_cell_728/ReluRelu+lstm_731/while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_731/while/lstm_cell_728/mul_1Mul(lstm_731/while/lstm_cell_728/Sigmoid:y:0/lstm_731/while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_731/while/lstm_cell_728/add_1AddV2$lstm_731/while/lstm_cell_728/mul:z:0&lstm_731/while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_731/while/lstm_cell_728/Sigmoid_2Sigmoid+lstm_731/while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_731/while/lstm_cell_728/Relu_1Relu&lstm_731/while/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_731/while/lstm_cell_728/mul_2Mul*lstm_731/while/lstm_cell_728/Sigmoid_2:y:01lstm_731/while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_731/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_731_while_placeholder_1lstm_731_while_placeholder&lstm_731/while/lstm_cell_728/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_731/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_731/while/addAddV2lstm_731_while_placeholderlstm_731/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_731/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_731/while/add_1AddV2*lstm_731_while_lstm_731_while_loop_counterlstm_731/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_731/while/IdentityIdentitylstm_731/while/add_1:z:0^lstm_731/while/NoOp*
T0*
_output_shapes
: ?
lstm_731/while/Identity_1Identity0lstm_731_while_lstm_731_while_maximum_iterations^lstm_731/while/NoOp*
T0*
_output_shapes
: t
lstm_731/while/Identity_2Identitylstm_731/while/add:z:0^lstm_731/while/NoOp*
T0*
_output_shapes
: ?
lstm_731/while/Identity_3IdentityClstm_731/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_731/while/NoOp*
T0*
_output_shapes
: ?
lstm_731/while/Identity_4Identity&lstm_731/while/lstm_cell_728/mul_2:z:0^lstm_731/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_731/while/Identity_5Identity&lstm_731/while/lstm_cell_728/add_1:z:0^lstm_731/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_731/while/NoOpNoOp4^lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp3^lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp5^lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_731_while_identity lstm_731/while/Identity:output:0"?
lstm_731_while_identity_1"lstm_731/while/Identity_1:output:0"?
lstm_731_while_identity_2"lstm_731/while/Identity_2:output:0"?
lstm_731_while_identity_3"lstm_731/while/Identity_3:output:0"?
lstm_731_while_identity_4"lstm_731/while/Identity_4:output:0"?
lstm_731_while_identity_5"lstm_731/while/Identity_5:output:0"T
'lstm_731_while_lstm_731_strided_slice_1)lstm_731_while_lstm_731_strided_slice_1_0"~
<lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource>lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0"?
=lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource?lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0"|
;lstm_731_while_lstm_cell_728_matmul_readvariableop_resource=lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0"?
clstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensorelstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp2h
2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp2l
4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4404382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4404382___redundant_placeholder05
1while_while_cond_4404382___redundant_placeholder15
1while_while_cond_4404382___redundant_placeholder25
1while_while_cond_4404382___redundant_placeholder3
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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4407470

inputsH
5lstm_729_lstm_cell_726_matmul_readvariableop_resource:	?J
7lstm_729_lstm_cell_726_matmul_1_readvariableop_resource:	d?E
6lstm_729_lstm_cell_726_biasadd_readvariableop_resource:	?H
5lstm_730_lstm_cell_727_matmul_readvariableop_resource:	d?J
7lstm_730_lstm_cell_727_matmul_1_readvariableop_resource:	2?E
6lstm_730_lstm_cell_727_biasadd_readvariableop_resource:	?G
5lstm_731_lstm_cell_728_matmul_readvariableop_resource:2(I
7lstm_731_lstm_cell_728_matmul_1_readvariableop_resource:
(D
6lstm_731_lstm_cell_728_biasadd_readvariableop_resource:(:
(dense_243_matmul_readvariableop_resource:
7
)dense_243_biasadd_readvariableop_resource:
identity?? dense_243/BiasAdd/ReadVariableOp?dense_243/MatMul/ReadVariableOp?-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp?,lstm_729/lstm_cell_726/MatMul/ReadVariableOp?.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp?lstm_729/while?-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp?,lstm_730/lstm_cell_727/MatMul/ReadVariableOp?.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp?lstm_730/while?-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp?,lstm_731/lstm_cell_728/MatMul/ReadVariableOp?.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp?lstm_731/whileD
lstm_729/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_729/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_729/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_729/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_sliceStridedSlicelstm_729/Shape:output:0%lstm_729/strided_slice/stack:output:0'lstm_729/strided_slice/stack_1:output:0'lstm_729/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_729/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_729/zeros/packedPacklstm_729/strided_slice:output:0 lstm_729/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_729/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_729/zerosFilllstm_729/zeros/packed:output:0lstm_729/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_729/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_729/zeros_1/packedPacklstm_729/strided_slice:output:0"lstm_729/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_729/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_729/zeros_1Fill lstm_729/zeros_1/packed:output:0lstm_729/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_729/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_729/transpose	Transposeinputs lstm_729/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_729/Shape_1Shapelstm_729/transpose:y:0*
T0*
_output_shapes
:h
lstm_729/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_729/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_729/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_slice_1StridedSlicelstm_729/Shape_1:output:0'lstm_729/strided_slice_1/stack:output:0)lstm_729/strided_slice_1/stack_1:output:0)lstm_729/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_729/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_729/TensorArrayV2TensorListReserve-lstm_729/TensorArrayV2/element_shape:output:0!lstm_729/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_729/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_729/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_729/transpose:y:0Glstm_729/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_729/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_729/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_729/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_slice_2StridedSlicelstm_729/transpose:y:0'lstm_729/strided_slice_2/stack:output:0)lstm_729/strided_slice_2/stack_1:output:0)lstm_729/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_729/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp5lstm_729_lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_729/lstm_cell_726/MatMulMatMul!lstm_729/strided_slice_2:output:04lstm_729/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp7lstm_729_lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_729/lstm_cell_726/MatMul_1MatMullstm_729/zeros:output:06lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_729/lstm_cell_726/addAddV2'lstm_729/lstm_cell_726/MatMul:product:0)lstm_729/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp6lstm_729_lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_729/lstm_cell_726/BiasAddBiasAddlstm_729/lstm_cell_726/add:z:05lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_729/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_729/lstm_cell_726/splitSplit/lstm_729/lstm_cell_726/split/split_dim:output:0'lstm_729/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_729/lstm_cell_726/SigmoidSigmoid%lstm_729/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_729/lstm_cell_726/Sigmoid_1Sigmoid%lstm_729/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/mulMul$lstm_729/lstm_cell_726/Sigmoid_1:y:0lstm_729/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_729/lstm_cell_726/ReluRelu%lstm_729/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/mul_1Mul"lstm_729/lstm_cell_726/Sigmoid:y:0)lstm_729/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/add_1AddV2lstm_729/lstm_cell_726/mul:z:0 lstm_729/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_729/lstm_cell_726/Sigmoid_2Sigmoid%lstm_729/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_729/lstm_cell_726/Relu_1Relu lstm_729/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/mul_2Mul$lstm_729/lstm_cell_726/Sigmoid_2:y:0+lstm_729/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_729/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_729/TensorArrayV2_1TensorListReserve/lstm_729/TensorArrayV2_1/element_shape:output:0!lstm_729/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_729/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_729/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_729/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_729/whileWhile$lstm_729/while/loop_counter:output:0*lstm_729/while/maximum_iterations:output:0lstm_729/time:output:0!lstm_729/TensorArrayV2_1:handle:0lstm_729/zeros:output:0lstm_729/zeros_1:output:0!lstm_729/strided_slice_1:output:0@lstm_729/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_729_lstm_cell_726_matmul_readvariableop_resource7lstm_729_lstm_cell_726_matmul_1_readvariableop_resource6lstm_729_lstm_cell_726_biasadd_readvariableop_resource*
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
lstm_729_while_body_4407102*'
condR
lstm_729_while_cond_4407101*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_729/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_729/TensorArrayV2Stack/TensorListStackTensorListStacklstm_729/while:output:3Blstm_729/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_729/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_729/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_729/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_slice_3StridedSlice4lstm_729/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_729/strided_slice_3/stack:output:0)lstm_729/strided_slice_3/stack_1:output:0)lstm_729/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_729/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_729/transpose_1	Transpose4lstm_729/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_729/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_729/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_730/ShapeShapelstm_729/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_730/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_730/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_730/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_sliceStridedSlicelstm_730/Shape:output:0%lstm_730/strided_slice/stack:output:0'lstm_730/strided_slice/stack_1:output:0'lstm_730/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_730/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_730/zeros/packedPacklstm_730/strided_slice:output:0 lstm_730/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_730/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_730/zerosFilllstm_730/zeros/packed:output:0lstm_730/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_730/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_730/zeros_1/packedPacklstm_730/strided_slice:output:0"lstm_730/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_730/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_730/zeros_1Fill lstm_730/zeros_1/packed:output:0lstm_730/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_730/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_730/transpose	Transposelstm_729/transpose_1:y:0 lstm_730/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_730/Shape_1Shapelstm_730/transpose:y:0*
T0*
_output_shapes
:h
lstm_730/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_730/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_730/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_slice_1StridedSlicelstm_730/Shape_1:output:0'lstm_730/strided_slice_1/stack:output:0)lstm_730/strided_slice_1/stack_1:output:0)lstm_730/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_730/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_730/TensorArrayV2TensorListReserve-lstm_730/TensorArrayV2/element_shape:output:0!lstm_730/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_730/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_730/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_730/transpose:y:0Glstm_730/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_730/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_730/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_730/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_slice_2StridedSlicelstm_730/transpose:y:0'lstm_730/strided_slice_2/stack:output:0)lstm_730/strided_slice_2/stack_1:output:0)lstm_730/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_730/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp5lstm_730_lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_730/lstm_cell_727/MatMulMatMul!lstm_730/strided_slice_2:output:04lstm_730/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp7lstm_730_lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_730/lstm_cell_727/MatMul_1MatMullstm_730/zeros:output:06lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_730/lstm_cell_727/addAddV2'lstm_730/lstm_cell_727/MatMul:product:0)lstm_730/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp6lstm_730_lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_730/lstm_cell_727/BiasAddBiasAddlstm_730/lstm_cell_727/add:z:05lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_730/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_730/lstm_cell_727/splitSplit/lstm_730/lstm_cell_727/split/split_dim:output:0'lstm_730/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_730/lstm_cell_727/SigmoidSigmoid%lstm_730/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_730/lstm_cell_727/Sigmoid_1Sigmoid%lstm_730/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/mulMul$lstm_730/lstm_cell_727/Sigmoid_1:y:0lstm_730/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_730/lstm_cell_727/ReluRelu%lstm_730/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/mul_1Mul"lstm_730/lstm_cell_727/Sigmoid:y:0)lstm_730/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/add_1AddV2lstm_730/lstm_cell_727/mul:z:0 lstm_730/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_730/lstm_cell_727/Sigmoid_2Sigmoid%lstm_730/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_730/lstm_cell_727/Relu_1Relu lstm_730/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/mul_2Mul$lstm_730/lstm_cell_727/Sigmoid_2:y:0+lstm_730/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_730/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_730/TensorArrayV2_1TensorListReserve/lstm_730/TensorArrayV2_1/element_shape:output:0!lstm_730/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_730/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_730/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_730/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_730/whileWhile$lstm_730/while/loop_counter:output:0*lstm_730/while/maximum_iterations:output:0lstm_730/time:output:0!lstm_730/TensorArrayV2_1:handle:0lstm_730/zeros:output:0lstm_730/zeros_1:output:0!lstm_730/strided_slice_1:output:0@lstm_730/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_730_lstm_cell_727_matmul_readvariableop_resource7lstm_730_lstm_cell_727_matmul_1_readvariableop_resource6lstm_730_lstm_cell_727_biasadd_readvariableop_resource*
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
lstm_730_while_body_4407241*'
condR
lstm_730_while_cond_4407240*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_730/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_730/TensorArrayV2Stack/TensorListStackTensorListStacklstm_730/while:output:3Blstm_730/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_730/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_730/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_730/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_slice_3StridedSlice4lstm_730/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_730/strided_slice_3/stack:output:0)lstm_730/strided_slice_3/stack_1:output:0)lstm_730/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_730/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_730/transpose_1	Transpose4lstm_730/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_730/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_730/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_731/ShapeShapelstm_730/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_731/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_731/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_731/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_sliceStridedSlicelstm_731/Shape:output:0%lstm_731/strided_slice/stack:output:0'lstm_731/strided_slice/stack_1:output:0'lstm_731/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_731/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_731/zeros/packedPacklstm_731/strided_slice:output:0 lstm_731/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_731/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_731/zerosFilllstm_731/zeros/packed:output:0lstm_731/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_731/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_731/zeros_1/packedPacklstm_731/strided_slice:output:0"lstm_731/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_731/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_731/zeros_1Fill lstm_731/zeros_1/packed:output:0lstm_731/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_731/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_731/transpose	Transposelstm_730/transpose_1:y:0 lstm_731/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_731/Shape_1Shapelstm_731/transpose:y:0*
T0*
_output_shapes
:h
lstm_731/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_731/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_731/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_slice_1StridedSlicelstm_731/Shape_1:output:0'lstm_731/strided_slice_1/stack:output:0)lstm_731/strided_slice_1/stack_1:output:0)lstm_731/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_731/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_731/TensorArrayV2TensorListReserve-lstm_731/TensorArrayV2/element_shape:output:0!lstm_731/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_731/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_731/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_731/transpose:y:0Glstm_731/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_731/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_731/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_731/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_slice_2StridedSlicelstm_731/transpose:y:0'lstm_731/strided_slice_2/stack:output:0)lstm_731/strided_slice_2/stack_1:output:0)lstm_731/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_731/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp5lstm_731_lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_731/lstm_cell_728/MatMulMatMul!lstm_731/strided_slice_2:output:04lstm_731/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp7lstm_731_lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_731/lstm_cell_728/MatMul_1MatMullstm_731/zeros:output:06lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_731/lstm_cell_728/addAddV2'lstm_731/lstm_cell_728/MatMul:product:0)lstm_731/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp6lstm_731_lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_731/lstm_cell_728/BiasAddBiasAddlstm_731/lstm_cell_728/add:z:05lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_731/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_731/lstm_cell_728/splitSplit/lstm_731/lstm_cell_728/split/split_dim:output:0'lstm_731/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_731/lstm_cell_728/SigmoidSigmoid%lstm_731/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_731/lstm_cell_728/Sigmoid_1Sigmoid%lstm_731/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/mulMul$lstm_731/lstm_cell_728/Sigmoid_1:y:0lstm_731/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_731/lstm_cell_728/ReluRelu%lstm_731/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/mul_1Mul"lstm_731/lstm_cell_728/Sigmoid:y:0)lstm_731/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/add_1AddV2lstm_731/lstm_cell_728/mul:z:0 lstm_731/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_731/lstm_cell_728/Sigmoid_2Sigmoid%lstm_731/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_731/lstm_cell_728/Relu_1Relu lstm_731/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/mul_2Mul$lstm_731/lstm_cell_728/Sigmoid_2:y:0+lstm_731/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_731/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_731/TensorArrayV2_1TensorListReserve/lstm_731/TensorArrayV2_1/element_shape:output:0!lstm_731/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_731/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_731/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_731/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_731/whileWhile$lstm_731/while/loop_counter:output:0*lstm_731/while/maximum_iterations:output:0lstm_731/time:output:0!lstm_731/TensorArrayV2_1:handle:0lstm_731/zeros:output:0lstm_731/zeros_1:output:0!lstm_731/strided_slice_1:output:0@lstm_731/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_731_lstm_cell_728_matmul_readvariableop_resource7lstm_731_lstm_cell_728_matmul_1_readvariableop_resource6lstm_731_lstm_cell_728_biasadd_readvariableop_resource*
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
lstm_731_while_body_4407380*'
condR
lstm_731_while_cond_4407379*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_731/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_731/TensorArrayV2Stack/TensorListStackTensorListStacklstm_731/while:output:3Blstm_731/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_731/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_731/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_731/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_slice_3StridedSlice4lstm_731/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_731/strided_slice_3/stack:output:0)lstm_731/strided_slice_3/stack_1:output:0)lstm_731/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_731/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_731/transpose_1	Transpose4lstm_731/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_731/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_731/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_243/MatMul/ReadVariableOpReadVariableOp(dense_243_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_243/MatMulMatMul!lstm_731/strided_slice_3:output:0'dense_243/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_243/BiasAdd/ReadVariableOpReadVariableOp)dense_243_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_243/BiasAddBiasAdddense_243/MatMul:product:0(dense_243/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_243/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_243/BiasAdd/ReadVariableOp ^dense_243/MatMul/ReadVariableOp.^lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp-^lstm_729/lstm_cell_726/MatMul/ReadVariableOp/^lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp^lstm_729/while.^lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp-^lstm_730/lstm_cell_727/MatMul/ReadVariableOp/^lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp^lstm_730/while.^lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp-^lstm_731/lstm_cell_728/MatMul/ReadVariableOp/^lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp^lstm_731/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_243/BiasAdd/ReadVariableOp dense_243/BiasAdd/ReadVariableOp2B
dense_243/MatMul/ReadVariableOpdense_243/MatMul/ReadVariableOp2^
-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp2\
,lstm_729/lstm_cell_726/MatMul/ReadVariableOp,lstm_729/lstm_cell_726/MatMul/ReadVariableOp2`
.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp2 
lstm_729/whilelstm_729/while2^
-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp2\
,lstm_730/lstm_cell_727/MatMul/ReadVariableOp,lstm_730/lstm_cell_727/MatMul/ReadVariableOp2`
.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp2 
lstm_730/whilelstm_730/while2^
-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp2\
,lstm_731/lstm_cell_728/MatMul/ReadVariableOp,lstm_731/lstm_cell_728/MatMul/ReadVariableOp2`
.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp2 
lstm_731/whilelstm_731/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_729_layer_call_fn_4407481
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4404452|
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
?
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406497
lstm_729_input#
lstm_729_4406470:	?#
lstm_729_4406472:	d?
lstm_729_4406474:	?#
lstm_730_4406477:	d?#
lstm_730_4406479:	2?
lstm_730_4406481:	?"
lstm_731_4406484:2("
lstm_731_4406486:
(
lstm_731_4406488:(#
dense_243_4406491:

dense_243_4406493:
identity??!dense_243/StatefulPartitionedCall? lstm_729/StatefulPartitionedCall? lstm_730/StatefulPartitionedCall? lstm_731/StatefulPartitionedCall?
 lstm_729/StatefulPartitionedCallStatefulPartitionedCalllstm_729_inputlstm_729_4406470lstm_729_4406472lstm_729_4406474*
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4405501?
 lstm_730/StatefulPartitionedCallStatefulPartitionedCall)lstm_729/StatefulPartitionedCall:output:0lstm_730_4406477lstm_730_4406479lstm_730_4406481*
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4405651?
 lstm_731/StatefulPartitionedCallStatefulPartitionedCall)lstm_730/StatefulPartitionedCall:output:0lstm_731_4406484lstm_731_4406486lstm_731_4406488*
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405801?
!dense_243/StatefulPartitionedCallStatefulPartitionedCall)lstm_731/StatefulPartitionedCall:output:0dense_243_4406491dense_243_4406493*
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
F__inference_dense_243_layer_call_and_return_conditional_losses_4405819y
IdentityIdentity*dense_243/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_243/StatefulPartitionedCall!^lstm_729/StatefulPartitionedCall!^lstm_730/StatefulPartitionedCall!^lstm_731/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2D
 lstm_729/StatefulPartitionedCall lstm_729/StatefulPartitionedCall2D
 lstm_730/StatefulPartitionedCall lstm_730/StatefulPartitionedCall2D
 lstm_731/StatefulPartitionedCall lstm_731/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_729_input
?
?
*sequential_243_lstm_729_while_cond_4403933L
Hsequential_243_lstm_729_while_sequential_243_lstm_729_while_loop_counterR
Nsequential_243_lstm_729_while_sequential_243_lstm_729_while_maximum_iterations-
)sequential_243_lstm_729_while_placeholder/
+sequential_243_lstm_729_while_placeholder_1/
+sequential_243_lstm_729_while_placeholder_2/
+sequential_243_lstm_729_while_placeholder_3N
Jsequential_243_lstm_729_while_less_sequential_243_lstm_729_strided_slice_1e
asequential_243_lstm_729_while_sequential_243_lstm_729_while_cond_4403933___redundant_placeholder0e
asequential_243_lstm_729_while_sequential_243_lstm_729_while_cond_4403933___redundant_placeholder1e
asequential_243_lstm_729_while_sequential_243_lstm_729_while_cond_4403933___redundant_placeholder2e
asequential_243_lstm_729_while_sequential_243_lstm_729_while_cond_4403933___redundant_placeholder3*
&sequential_243_lstm_729_while_identity
?
"sequential_243/lstm_729/while/LessLess)sequential_243_lstm_729_while_placeholderJsequential_243_lstm_729_while_less_sequential_243_lstm_729_strided_slice_1*
T0*
_output_shapes
: {
&sequential_243/lstm_729/while/IdentityIdentity&sequential_243/lstm_729/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_243_lstm_729_while_identity/sequential_243/lstm_729/while/Identity:output:0*(
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
while_cond_4405566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4405566___redundant_placeholder05
1while_while_cond_4405566___redundant_placeholder15
1while_while_cond_4405566___redundant_placeholder25
1while_while_cond_4405566___redundant_placeholder3
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
while_body_4404924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_727_4404948_0:	d?0
while_lstm_cell_727_4404950_0:	2?,
while_lstm_cell_727_4404952_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_727_4404948:	d?.
while_lstm_cell_727_4404950:	2?*
while_lstm_cell_727_4404952:	???+while/lstm_cell_727/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_727/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_727_4404948_0while_lstm_cell_727_4404950_0while_lstm_cell_727_4404952_0*
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404865?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_727/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_727/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_727/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_727/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_727_4404948while_lstm_cell_727_4404948_0"<
while_lstm_cell_727_4404950while_lstm_cell_727_4404950_0"<
while_lstm_cell_727_4404952while_lstm_cell_727_4404952_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_727/StatefulPartitionedCall+while/lstm_cell_727/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4409501

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
F__inference_dense_243_layer_call_and_return_conditional_losses_4405819

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
while_cond_4409090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4409090___redundant_placeholder05
1while_while_cond_4409090___redundant_placeholder15
1while_while_cond_4409090___redundant_placeholder25
1while_while_cond_4409090___redundant_placeholder3
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
0__inference_sequential_243_layer_call_fn_4406467
lstm_729_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_729_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406415o
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
_user_specified_namelstm_729_input
?

?
0__inference_sequential_243_layer_call_fn_4406589

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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4405826o
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
?
?
*__inference_lstm_731_layer_call_fn_4408735

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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405801o
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
?J
?
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409318

inputs>
,lstm_cell_728_matmul_readvariableop_resource:2(@
.lstm_cell_728_matmul_1_readvariableop_resource:
(;
-lstm_cell_728_biasadd_readvariableop_resource:(
identity??$lstm_cell_728/BiasAdd/ReadVariableOp?#lstm_cell_728/MatMul/ReadVariableOp?%lstm_cell_728/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_728/MatMul/ReadVariableOpReadVariableOp,lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_728/MatMulMatMulstrided_slice_2:output:0+lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_728/MatMul_1MatMulzeros:output:0-lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_728/addAddV2lstm_cell_728/MatMul:product:0 lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_728/BiasAddBiasAddlstm_cell_728/add:z:0,lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_728/splitSplit&lstm_cell_728/split/split_dim:output:0lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_728/SigmoidSigmoidlstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_1Sigmoidlstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_728/mulMullstm_cell_728/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_728/ReluRelulstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_1Mullstm_cell_728/Sigmoid:y:0 lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_728/add_1AddV2lstm_cell_728/mul:z:0lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_2Sigmoidlstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_728/Relu_1Relulstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_2Mullstm_cell_728/Sigmoid_2:y:0"lstm_cell_728/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_728_matmul_readvariableop_resource.lstm_cell_728_matmul_1_readvariableop_resource-lstm_cell_728_biasadd_readvariableop_resource*
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
while_body_4409234*
condR
while_cond_4409233*K
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
NoOpNoOp%^lstm_cell_728/BiasAdd/ReadVariableOp$^lstm_cell_728/MatMul/ReadVariableOp&^lstm_cell_728/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_728/BiasAdd/ReadVariableOp$lstm_cell_728/BiasAdd/ReadVariableOp2J
#lstm_cell_728/MatMul/ReadVariableOp#lstm_cell_728/MatMul/ReadVariableOp2N
%lstm_cell_728/MatMul_1/ReadVariableOp%lstm_cell_728/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_729_layer_call_fn_4407503

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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4405501s
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
?
/__inference_lstm_cell_727_layer_call_fn_4409469

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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404865o
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
while_cond_4408188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4408188___redundant_placeholder05
1while_while_cond_4408188___redundant_placeholder15
1while_while_cond_4408188___redundant_placeholder25
1while_while_cond_4408188___redundant_placeholder3
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
while_body_4409091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_728_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_728_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_728_matmul_readvariableop_resource:2(F
4while_lstm_cell_728_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_728_biasadd_readvariableop_resource:(??*while/lstm_cell_728/BiasAdd/ReadVariableOp?)while/lstm_cell_728/MatMul/ReadVariableOp?+while/lstm_cell_728/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_728/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_728/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_728/addAddV2$while/lstm_cell_728/MatMul:product:0&while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_728/BiasAddBiasAddwhile/lstm_cell_728/add:z:02while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_728/splitSplit,while/lstm_cell_728/split/split_dim:output:0$while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_728/SigmoidSigmoid"while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_1Sigmoid"while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mulMul!while/lstm_cell_728/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_728/ReluRelu"while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_1Mulwhile/lstm_cell_728/Sigmoid:y:0&while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/add_1AddV2while/lstm_cell_728/mul:z:0while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_2Sigmoid"while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_728/Relu_1Reluwhile/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_2Mul!while/lstm_cell_728/Sigmoid_2:y:0(while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_728/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_728/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_728/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_728/BiasAdd/ReadVariableOp*^while/lstm_cell_728/MatMul/ReadVariableOp,^while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_728_biasadd_readvariableop_resource5while_lstm_cell_728_biasadd_readvariableop_resource_0"n
4while_lstm_cell_728_matmul_1_readvariableop_resource6while_lstm_cell_728_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_728_matmul_readvariableop_resource4while_lstm_cell_728_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_728/BiasAdd/ReadVariableOp*while/lstm_cell_728/BiasAdd/ReadVariableOp2V
)while/lstm_cell_728/MatMul/ReadVariableOp)while/lstm_cell_728/MatMul/ReadVariableOp2Z
+while/lstm_cell_728/MatMul_1/ReadVariableOp+while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4409631

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
*__inference_lstm_731_layer_call_fn_4408713
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405152o
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
??
?
#__inference__traced_restore_4409904
file_prefix3
!assignvariableop_dense_243_kernel:
/
!assignvariableop_1_dense_243_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_729_lstm_cell_729_kernel:	?M
:assignvariableop_8_lstm_729_lstm_cell_729_recurrent_kernel:	d?=
.assignvariableop_9_lstm_729_lstm_cell_729_bias:	?D
1assignvariableop_10_lstm_730_lstm_cell_730_kernel:	d?N
;assignvariableop_11_lstm_730_lstm_cell_730_recurrent_kernel:	2?>
/assignvariableop_12_lstm_730_lstm_cell_730_bias:	?C
1assignvariableop_13_lstm_731_lstm_cell_731_kernel:2(M
;assignvariableop_14_lstm_731_lstm_cell_731_recurrent_kernel:
(=
/assignvariableop_15_lstm_731_lstm_cell_731_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_243_kernel_m:
7
)assignvariableop_19_adam_dense_243_bias_m:K
8assignvariableop_20_adam_lstm_729_lstm_cell_729_kernel_m:	?U
Bassignvariableop_21_adam_lstm_729_lstm_cell_729_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_729_lstm_cell_729_bias_m:	?K
8assignvariableop_23_adam_lstm_730_lstm_cell_730_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_730_lstm_cell_730_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_730_lstm_cell_730_bias_m:	?J
8assignvariableop_26_adam_lstm_731_lstm_cell_731_kernel_m:2(T
Bassignvariableop_27_adam_lstm_731_lstm_cell_731_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_731_lstm_cell_731_bias_m:(=
+assignvariableop_29_adam_dense_243_kernel_v:
7
)assignvariableop_30_adam_dense_243_bias_v:K
8assignvariableop_31_adam_lstm_729_lstm_cell_729_kernel_v:	?U
Bassignvariableop_32_adam_lstm_729_lstm_cell_729_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_729_lstm_cell_729_bias_v:	?K
8assignvariableop_34_adam_lstm_730_lstm_cell_730_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_730_lstm_cell_730_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_730_lstm_cell_730_bias_v:	?J
8assignvariableop_37_adam_lstm_731_lstm_cell_731_kernel_v:2(T
Bassignvariableop_38_adam_lstm_731_lstm_cell_731_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_731_lstm_cell_731_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_243_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_243_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_729_lstm_cell_729_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_729_lstm_cell_729_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_729_lstm_cell_729_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_730_lstm_cell_730_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_730_lstm_cell_730_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_730_lstm_cell_730_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_731_lstm_cell_731_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_731_lstm_cell_731_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_731_lstm_cell_731_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_243_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_243_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_729_lstm_cell_729_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_729_lstm_cell_729_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_729_lstm_cell_729_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_730_lstm_cell_730_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_730_lstm_cell_730_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_730_lstm_cell_730_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_731_lstm_cell_731_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_731_lstm_cell_731_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_731_lstm_cell_731_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_243_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_243_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_729_lstm_cell_729_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_729_lstm_cell_729_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_729_lstm_cell_729_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_730_lstm_cell_730_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_730_lstm_cell_730_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_730_lstm_cell_730_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_731_lstm_cell_731_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_731_lstm_cell_731_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_731_lstm_cell_731_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406415

inputs#
lstm_729_4406388:	?#
lstm_729_4406390:	d?
lstm_729_4406392:	?#
lstm_730_4406395:	d?#
lstm_730_4406397:	2?
lstm_730_4406399:	?"
lstm_731_4406402:2("
lstm_731_4406404:
(
lstm_731_4406406:(#
dense_243_4406409:

dense_243_4406411:
identity??!dense_243/StatefulPartitionedCall? lstm_729/StatefulPartitionedCall? lstm_730/StatefulPartitionedCall? lstm_731/StatefulPartitionedCall?
 lstm_729/StatefulPartitionedCallStatefulPartitionedCallinputslstm_729_4406388lstm_729_4406390lstm_729_4406392*
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4406347?
 lstm_730/StatefulPartitionedCallStatefulPartitionedCall)lstm_729/StatefulPartitionedCall:output:0lstm_730_4406395lstm_730_4406397lstm_730_4406399*
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4406182?
 lstm_731/StatefulPartitionedCallStatefulPartitionedCall)lstm_730/StatefulPartitionedCall:output:0lstm_731_4406402lstm_731_4406404lstm_731_4406406*
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4406017?
!dense_243/StatefulPartitionedCallStatefulPartitionedCall)lstm_731/StatefulPartitionedCall:output:0dense_243_4406409dense_243_4406411*
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
F__inference_dense_243_layer_call_and_return_conditional_losses_4405819y
IdentityIdentity*dense_243/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_243/StatefulPartitionedCall!^lstm_729/StatefulPartitionedCall!^lstm_730/StatefulPartitionedCall!^lstm_731/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2D
 lstm_729/StatefulPartitionedCall lstm_729/StatefulPartitionedCall2D
 lstm_730/StatefulPartitionedCall lstm_730/StatefulPartitionedCall2D
 lstm_731/StatefulPartitionedCall lstm_731/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4405416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4405416___redundant_placeholder05
1while_while_cond_4405416___redundant_placeholder15
1while_while_cond_4405416___redundant_placeholder25
1while_while_cond_4405416___redundant_placeholder3
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

lstm_729_while_body_4407102.
*lstm_729_while_lstm_729_while_loop_counter4
0lstm_729_while_lstm_729_while_maximum_iterations
lstm_729_while_placeholder 
lstm_729_while_placeholder_1 
lstm_729_while_placeholder_2 
lstm_729_while_placeholder_3-
)lstm_729_while_lstm_729_strided_slice_1_0i
elstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0:	?R
?lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?M
>lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
lstm_729_while_identity
lstm_729_while_identity_1
lstm_729_while_identity_2
lstm_729_while_identity_3
lstm_729_while_identity_4
lstm_729_while_identity_5+
'lstm_729_while_lstm_729_strided_slice_1g
clstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensorN
;lstm_729_while_lstm_cell_726_matmul_readvariableop_resource:	?P
=lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource:	d?K
<lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource:	???3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp?2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp?4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp?
@lstm_729/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_729/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensor_0lstm_729_while_placeholderIlstm_729/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp=lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_729/while/lstm_cell_726/MatMulMatMul9lstm_729/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp?lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_729/while/lstm_cell_726/MatMul_1MatMullstm_729_while_placeholder_2<lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_729/while/lstm_cell_726/addAddV2-lstm_729/while/lstm_cell_726/MatMul:product:0/lstm_729/while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp>lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_729/while/lstm_cell_726/BiasAddBiasAdd$lstm_729/while/lstm_cell_726/add:z:0;lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_729/while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_729/while/lstm_cell_726/splitSplit5lstm_729/while/lstm_cell_726/split/split_dim:output:0-lstm_729/while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_729/while/lstm_cell_726/SigmoidSigmoid+lstm_729/while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_729/while/lstm_cell_726/Sigmoid_1Sigmoid+lstm_729/while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_729/while/lstm_cell_726/mulMul*lstm_729/while/lstm_cell_726/Sigmoid_1:y:0lstm_729_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_729/while/lstm_cell_726/ReluRelu+lstm_729/while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_729/while/lstm_cell_726/mul_1Mul(lstm_729/while/lstm_cell_726/Sigmoid:y:0/lstm_729/while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_729/while/lstm_cell_726/add_1AddV2$lstm_729/while/lstm_cell_726/mul:z:0&lstm_729/while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_729/while/lstm_cell_726/Sigmoid_2Sigmoid+lstm_729/while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_729/while/lstm_cell_726/Relu_1Relu&lstm_729/while/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_729/while/lstm_cell_726/mul_2Mul*lstm_729/while/lstm_cell_726/Sigmoid_2:y:01lstm_729/while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_729/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_729_while_placeholder_1lstm_729_while_placeholder&lstm_729/while/lstm_cell_726/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_729/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_729/while/addAddV2lstm_729_while_placeholderlstm_729/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_729/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_729/while/add_1AddV2*lstm_729_while_lstm_729_while_loop_counterlstm_729/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_729/while/IdentityIdentitylstm_729/while/add_1:z:0^lstm_729/while/NoOp*
T0*
_output_shapes
: ?
lstm_729/while/Identity_1Identity0lstm_729_while_lstm_729_while_maximum_iterations^lstm_729/while/NoOp*
T0*
_output_shapes
: t
lstm_729/while/Identity_2Identitylstm_729/while/add:z:0^lstm_729/while/NoOp*
T0*
_output_shapes
: ?
lstm_729/while/Identity_3IdentityClstm_729/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_729/while/NoOp*
T0*
_output_shapes
: ?
lstm_729/while/Identity_4Identity&lstm_729/while/lstm_cell_726/mul_2:z:0^lstm_729/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_729/while/Identity_5Identity&lstm_729/while/lstm_cell_726/add_1:z:0^lstm_729/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_729/while/NoOpNoOp4^lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp3^lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp5^lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_729_while_identity lstm_729/while/Identity:output:0"?
lstm_729_while_identity_1"lstm_729/while/Identity_1:output:0"?
lstm_729_while_identity_2"lstm_729/while/Identity_2:output:0"?
lstm_729_while_identity_3"lstm_729/while/Identity_3:output:0"?
lstm_729_while_identity_4"lstm_729/while/Identity_4:output:0"?
lstm_729_while_identity_5"lstm_729/while/Identity_5:output:0"T
'lstm_729_while_lstm_729_strided_slice_1)lstm_729_while_lstm_729_strided_slice_1_0"~
<lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource>lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0"?
=lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource?lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0"|
;lstm_729_while_lstm_cell_726_matmul_readvariableop_resource=lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0"?
clstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensorelstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp2h
2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp2l
4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4404383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_726_4404407_0:	?0
while_lstm_cell_726_4404409_0:	d?,
while_lstm_cell_726_4404411_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_726_4404407:	?.
while_lstm_cell_726_4404409:	d?*
while_lstm_cell_726_4404411:	???+while/lstm_cell_726/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_726/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_726_4404407_0while_lstm_cell_726_4404409_0while_lstm_cell_726_4404411_0*
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404369?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_726/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_726/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_726/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_726/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_726_4404407while_lstm_cell_726_4404407_0"<
while_lstm_cell_726_4404409while_lstm_cell_726_4404409_0"<
while_lstm_cell_726_4404411while_lstm_cell_726_4404411_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_726/StatefulPartitionedCall+while/lstm_cell_726/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4407043

inputsH
5lstm_729_lstm_cell_726_matmul_readvariableop_resource:	?J
7lstm_729_lstm_cell_726_matmul_1_readvariableop_resource:	d?E
6lstm_729_lstm_cell_726_biasadd_readvariableop_resource:	?H
5lstm_730_lstm_cell_727_matmul_readvariableop_resource:	d?J
7lstm_730_lstm_cell_727_matmul_1_readvariableop_resource:	2?E
6lstm_730_lstm_cell_727_biasadd_readvariableop_resource:	?G
5lstm_731_lstm_cell_728_matmul_readvariableop_resource:2(I
7lstm_731_lstm_cell_728_matmul_1_readvariableop_resource:
(D
6lstm_731_lstm_cell_728_biasadd_readvariableop_resource:(:
(dense_243_matmul_readvariableop_resource:
7
)dense_243_biasadd_readvariableop_resource:
identity?? dense_243/BiasAdd/ReadVariableOp?dense_243/MatMul/ReadVariableOp?-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp?,lstm_729/lstm_cell_726/MatMul/ReadVariableOp?.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp?lstm_729/while?-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp?,lstm_730/lstm_cell_727/MatMul/ReadVariableOp?.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp?lstm_730/while?-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp?,lstm_731/lstm_cell_728/MatMul/ReadVariableOp?.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp?lstm_731/whileD
lstm_729/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_729/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_729/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_729/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_sliceStridedSlicelstm_729/Shape:output:0%lstm_729/strided_slice/stack:output:0'lstm_729/strided_slice/stack_1:output:0'lstm_729/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_729/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_729/zeros/packedPacklstm_729/strided_slice:output:0 lstm_729/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_729/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_729/zerosFilllstm_729/zeros/packed:output:0lstm_729/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_729/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_729/zeros_1/packedPacklstm_729/strided_slice:output:0"lstm_729/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_729/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_729/zeros_1Fill lstm_729/zeros_1/packed:output:0lstm_729/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_729/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_729/transpose	Transposeinputs lstm_729/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_729/Shape_1Shapelstm_729/transpose:y:0*
T0*
_output_shapes
:h
lstm_729/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_729/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_729/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_slice_1StridedSlicelstm_729/Shape_1:output:0'lstm_729/strided_slice_1/stack:output:0)lstm_729/strided_slice_1/stack_1:output:0)lstm_729/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_729/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_729/TensorArrayV2TensorListReserve-lstm_729/TensorArrayV2/element_shape:output:0!lstm_729/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_729/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_729/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_729/transpose:y:0Glstm_729/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_729/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_729/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_729/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_slice_2StridedSlicelstm_729/transpose:y:0'lstm_729/strided_slice_2/stack:output:0)lstm_729/strided_slice_2/stack_1:output:0)lstm_729/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_729/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp5lstm_729_lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_729/lstm_cell_726/MatMulMatMul!lstm_729/strided_slice_2:output:04lstm_729/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp7lstm_729_lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_729/lstm_cell_726/MatMul_1MatMullstm_729/zeros:output:06lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_729/lstm_cell_726/addAddV2'lstm_729/lstm_cell_726/MatMul:product:0)lstm_729/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp6lstm_729_lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_729/lstm_cell_726/BiasAddBiasAddlstm_729/lstm_cell_726/add:z:05lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_729/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_729/lstm_cell_726/splitSplit/lstm_729/lstm_cell_726/split/split_dim:output:0'lstm_729/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_729/lstm_cell_726/SigmoidSigmoid%lstm_729/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_729/lstm_cell_726/Sigmoid_1Sigmoid%lstm_729/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/mulMul$lstm_729/lstm_cell_726/Sigmoid_1:y:0lstm_729/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_729/lstm_cell_726/ReluRelu%lstm_729/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/mul_1Mul"lstm_729/lstm_cell_726/Sigmoid:y:0)lstm_729/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/add_1AddV2lstm_729/lstm_cell_726/mul:z:0 lstm_729/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_729/lstm_cell_726/Sigmoid_2Sigmoid%lstm_729/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_729/lstm_cell_726/Relu_1Relu lstm_729/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_729/lstm_cell_726/mul_2Mul$lstm_729/lstm_cell_726/Sigmoid_2:y:0+lstm_729/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_729/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_729/TensorArrayV2_1TensorListReserve/lstm_729/TensorArrayV2_1/element_shape:output:0!lstm_729/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_729/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_729/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_729/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_729/whileWhile$lstm_729/while/loop_counter:output:0*lstm_729/while/maximum_iterations:output:0lstm_729/time:output:0!lstm_729/TensorArrayV2_1:handle:0lstm_729/zeros:output:0lstm_729/zeros_1:output:0!lstm_729/strided_slice_1:output:0@lstm_729/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_729_lstm_cell_726_matmul_readvariableop_resource7lstm_729_lstm_cell_726_matmul_1_readvariableop_resource6lstm_729_lstm_cell_726_biasadd_readvariableop_resource*
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
lstm_729_while_body_4406675*'
condR
lstm_729_while_cond_4406674*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_729/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_729/TensorArrayV2Stack/TensorListStackTensorListStacklstm_729/while:output:3Blstm_729/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_729/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_729/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_729/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_729/strided_slice_3StridedSlice4lstm_729/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_729/strided_slice_3/stack:output:0)lstm_729/strided_slice_3/stack_1:output:0)lstm_729/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_729/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_729/transpose_1	Transpose4lstm_729/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_729/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_729/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_730/ShapeShapelstm_729/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_730/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_730/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_730/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_sliceStridedSlicelstm_730/Shape:output:0%lstm_730/strided_slice/stack:output:0'lstm_730/strided_slice/stack_1:output:0'lstm_730/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_730/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_730/zeros/packedPacklstm_730/strided_slice:output:0 lstm_730/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_730/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_730/zerosFilllstm_730/zeros/packed:output:0lstm_730/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_730/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_730/zeros_1/packedPacklstm_730/strided_slice:output:0"lstm_730/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_730/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_730/zeros_1Fill lstm_730/zeros_1/packed:output:0lstm_730/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_730/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_730/transpose	Transposelstm_729/transpose_1:y:0 lstm_730/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_730/Shape_1Shapelstm_730/transpose:y:0*
T0*
_output_shapes
:h
lstm_730/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_730/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_730/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_slice_1StridedSlicelstm_730/Shape_1:output:0'lstm_730/strided_slice_1/stack:output:0)lstm_730/strided_slice_1/stack_1:output:0)lstm_730/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_730/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_730/TensorArrayV2TensorListReserve-lstm_730/TensorArrayV2/element_shape:output:0!lstm_730/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_730/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_730/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_730/transpose:y:0Glstm_730/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_730/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_730/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_730/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_slice_2StridedSlicelstm_730/transpose:y:0'lstm_730/strided_slice_2/stack:output:0)lstm_730/strided_slice_2/stack_1:output:0)lstm_730/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_730/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp5lstm_730_lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_730/lstm_cell_727/MatMulMatMul!lstm_730/strided_slice_2:output:04lstm_730/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp7lstm_730_lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_730/lstm_cell_727/MatMul_1MatMullstm_730/zeros:output:06lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_730/lstm_cell_727/addAddV2'lstm_730/lstm_cell_727/MatMul:product:0)lstm_730/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp6lstm_730_lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_730/lstm_cell_727/BiasAddBiasAddlstm_730/lstm_cell_727/add:z:05lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_730/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_730/lstm_cell_727/splitSplit/lstm_730/lstm_cell_727/split/split_dim:output:0'lstm_730/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_730/lstm_cell_727/SigmoidSigmoid%lstm_730/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_730/lstm_cell_727/Sigmoid_1Sigmoid%lstm_730/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/mulMul$lstm_730/lstm_cell_727/Sigmoid_1:y:0lstm_730/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_730/lstm_cell_727/ReluRelu%lstm_730/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/mul_1Mul"lstm_730/lstm_cell_727/Sigmoid:y:0)lstm_730/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/add_1AddV2lstm_730/lstm_cell_727/mul:z:0 lstm_730/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_730/lstm_cell_727/Sigmoid_2Sigmoid%lstm_730/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_730/lstm_cell_727/Relu_1Relu lstm_730/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_730/lstm_cell_727/mul_2Mul$lstm_730/lstm_cell_727/Sigmoid_2:y:0+lstm_730/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_730/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_730/TensorArrayV2_1TensorListReserve/lstm_730/TensorArrayV2_1/element_shape:output:0!lstm_730/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_730/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_730/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_730/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_730/whileWhile$lstm_730/while/loop_counter:output:0*lstm_730/while/maximum_iterations:output:0lstm_730/time:output:0!lstm_730/TensorArrayV2_1:handle:0lstm_730/zeros:output:0lstm_730/zeros_1:output:0!lstm_730/strided_slice_1:output:0@lstm_730/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_730_lstm_cell_727_matmul_readvariableop_resource7lstm_730_lstm_cell_727_matmul_1_readvariableop_resource6lstm_730_lstm_cell_727_biasadd_readvariableop_resource*
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
lstm_730_while_body_4406814*'
condR
lstm_730_while_cond_4406813*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_730/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_730/TensorArrayV2Stack/TensorListStackTensorListStacklstm_730/while:output:3Blstm_730/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_730/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_730/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_730/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_730/strided_slice_3StridedSlice4lstm_730/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_730/strided_slice_3/stack:output:0)lstm_730/strided_slice_3/stack_1:output:0)lstm_730/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_730/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_730/transpose_1	Transpose4lstm_730/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_730/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_730/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_731/ShapeShapelstm_730/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_731/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_731/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_731/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_sliceStridedSlicelstm_731/Shape:output:0%lstm_731/strided_slice/stack:output:0'lstm_731/strided_slice/stack_1:output:0'lstm_731/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_731/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_731/zeros/packedPacklstm_731/strided_slice:output:0 lstm_731/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_731/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_731/zerosFilllstm_731/zeros/packed:output:0lstm_731/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_731/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_731/zeros_1/packedPacklstm_731/strided_slice:output:0"lstm_731/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_731/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_731/zeros_1Fill lstm_731/zeros_1/packed:output:0lstm_731/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_731/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_731/transpose	Transposelstm_730/transpose_1:y:0 lstm_731/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_731/Shape_1Shapelstm_731/transpose:y:0*
T0*
_output_shapes
:h
lstm_731/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_731/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_731/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_slice_1StridedSlicelstm_731/Shape_1:output:0'lstm_731/strided_slice_1/stack:output:0)lstm_731/strided_slice_1/stack_1:output:0)lstm_731/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_731/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_731/TensorArrayV2TensorListReserve-lstm_731/TensorArrayV2/element_shape:output:0!lstm_731/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_731/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_731/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_731/transpose:y:0Glstm_731/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_731/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_731/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_731/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_slice_2StridedSlicelstm_731/transpose:y:0'lstm_731/strided_slice_2/stack:output:0)lstm_731/strided_slice_2/stack_1:output:0)lstm_731/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_731/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp5lstm_731_lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_731/lstm_cell_728/MatMulMatMul!lstm_731/strided_slice_2:output:04lstm_731/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp7lstm_731_lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_731/lstm_cell_728/MatMul_1MatMullstm_731/zeros:output:06lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_731/lstm_cell_728/addAddV2'lstm_731/lstm_cell_728/MatMul:product:0)lstm_731/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp6lstm_731_lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_731/lstm_cell_728/BiasAddBiasAddlstm_731/lstm_cell_728/add:z:05lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_731/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_731/lstm_cell_728/splitSplit/lstm_731/lstm_cell_728/split/split_dim:output:0'lstm_731/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_731/lstm_cell_728/SigmoidSigmoid%lstm_731/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_731/lstm_cell_728/Sigmoid_1Sigmoid%lstm_731/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/mulMul$lstm_731/lstm_cell_728/Sigmoid_1:y:0lstm_731/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_731/lstm_cell_728/ReluRelu%lstm_731/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/mul_1Mul"lstm_731/lstm_cell_728/Sigmoid:y:0)lstm_731/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/add_1AddV2lstm_731/lstm_cell_728/mul:z:0 lstm_731/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_731/lstm_cell_728/Sigmoid_2Sigmoid%lstm_731/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_731/lstm_cell_728/Relu_1Relu lstm_731/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_731/lstm_cell_728/mul_2Mul$lstm_731/lstm_cell_728/Sigmoid_2:y:0+lstm_731/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_731/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_731/TensorArrayV2_1TensorListReserve/lstm_731/TensorArrayV2_1/element_shape:output:0!lstm_731/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_731/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_731/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_731/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_731/whileWhile$lstm_731/while/loop_counter:output:0*lstm_731/while/maximum_iterations:output:0lstm_731/time:output:0!lstm_731/TensorArrayV2_1:handle:0lstm_731/zeros:output:0lstm_731/zeros_1:output:0!lstm_731/strided_slice_1:output:0@lstm_731/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_731_lstm_cell_728_matmul_readvariableop_resource7lstm_731_lstm_cell_728_matmul_1_readvariableop_resource6lstm_731_lstm_cell_728_biasadd_readvariableop_resource*
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
lstm_731_while_body_4406953*'
condR
lstm_731_while_cond_4406952*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_731/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_731/TensorArrayV2Stack/TensorListStackTensorListStacklstm_731/while:output:3Blstm_731/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_731/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_731/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_731/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_731/strided_slice_3StridedSlice4lstm_731/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_731/strided_slice_3/stack:output:0)lstm_731/strided_slice_3/stack_1:output:0)lstm_731/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_731/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_731/transpose_1	Transpose4lstm_731/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_731/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_731/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_243/MatMul/ReadVariableOpReadVariableOp(dense_243_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_243/MatMulMatMul!lstm_731/strided_slice_3:output:0'dense_243/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_243/BiasAdd/ReadVariableOpReadVariableOp)dense_243_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_243/BiasAddBiasAdddense_243/MatMul:product:0(dense_243/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_243/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_243/BiasAdd/ReadVariableOp ^dense_243/MatMul/ReadVariableOp.^lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp-^lstm_729/lstm_cell_726/MatMul/ReadVariableOp/^lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp^lstm_729/while.^lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp-^lstm_730/lstm_cell_727/MatMul/ReadVariableOp/^lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp^lstm_730/while.^lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp-^lstm_731/lstm_cell_728/MatMul/ReadVariableOp/^lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp^lstm_731/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_243/BiasAdd/ReadVariableOp dense_243/BiasAdd/ReadVariableOp2B
dense_243/MatMul/ReadVariableOpdense_243/MatMul/ReadVariableOp2^
-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp-lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp2\
,lstm_729/lstm_cell_726/MatMul/ReadVariableOp,lstm_729/lstm_cell_726/MatMul/ReadVariableOp2`
.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp.lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp2 
lstm_729/whilelstm_729/while2^
-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp-lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp2\
,lstm_730/lstm_cell_727/MatMul/ReadVariableOp,lstm_730/lstm_cell_727/MatMul/ReadVariableOp2`
.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp.lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp2 
lstm_730/whilelstm_730/while2^
-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp-lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp2\
,lstm_731/lstm_cell_728/MatMul/ReadVariableOp,lstm_731/lstm_cell_728/MatMul/ReadVariableOp2`
.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp.lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp2 
lstm_731/whilelstm_731/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4408618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_727_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_727_matmul_readvariableop_resource:	d?G
4while_lstm_cell_727_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_727_biasadd_readvariableop_resource:	???*while/lstm_cell_727/BiasAdd/ReadVariableOp?)while/lstm_cell_727/MatMul/ReadVariableOp?+while/lstm_cell_727/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_727/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_727/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_727/addAddV2$while/lstm_cell_727/MatMul:product:0&while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_727/BiasAddBiasAddwhile/lstm_cell_727/add:z:02while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_727/splitSplit,while/lstm_cell_727/split/split_dim:output:0$while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_727/SigmoidSigmoid"while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_1Sigmoid"while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mulMul!while/lstm_cell_727/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_727/ReluRelu"while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_1Mulwhile/lstm_cell_727/Sigmoid:y:0&while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/add_1AddV2while/lstm_cell_727/mul:z:0while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_2Sigmoid"while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_727/Relu_1Reluwhile/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_2Mul!while/lstm_cell_727/Sigmoid_2:y:0(while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_727/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_727/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_727/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_727/BiasAdd/ReadVariableOp*^while/lstm_cell_727/MatMul/ReadVariableOp,^while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_727_biasadd_readvariableop_resource5while_lstm_cell_727_biasadd_readvariableop_resource_0"n
4while_lstm_cell_727_matmul_1_readvariableop_resource6while_lstm_cell_727_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_727_matmul_readvariableop_resource4while_lstm_cell_727_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_727/BiasAdd/ReadVariableOp*while/lstm_cell_727/BiasAdd/ReadVariableOp2V
)while/lstm_cell_727/MatMul/ReadVariableOp)while/lstm_cell_727/MatMul/ReadVariableOp2Z
+while/lstm_cell_727/MatMul_1/ReadVariableOp+while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4408889
inputs_0>
,lstm_cell_728_matmul_readvariableop_resource:2(@
.lstm_cell_728_matmul_1_readvariableop_resource:
(;
-lstm_cell_728_biasadd_readvariableop_resource:(
identity??$lstm_cell_728/BiasAdd/ReadVariableOp?#lstm_cell_728/MatMul/ReadVariableOp?%lstm_cell_728/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_728/MatMul/ReadVariableOpReadVariableOp,lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_728/MatMulMatMulstrided_slice_2:output:0+lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_728/MatMul_1MatMulzeros:output:0-lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_728/addAddV2lstm_cell_728/MatMul:product:0 lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_728/BiasAddBiasAddlstm_cell_728/add:z:0,lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_728/splitSplit&lstm_cell_728/split/split_dim:output:0lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_728/SigmoidSigmoidlstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_1Sigmoidlstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_728/mulMullstm_cell_728/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_728/ReluRelulstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_1Mullstm_cell_728/Sigmoid:y:0 lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_728/add_1AddV2lstm_cell_728/mul:z:0lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_2Sigmoidlstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_728/Relu_1Relulstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_2Mullstm_cell_728/Sigmoid_2:y:0"lstm_cell_728/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_728_matmul_readvariableop_resource.lstm_cell_728_matmul_1_readvariableop_resource-lstm_cell_728_biasadd_readvariableop_resource*
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
while_body_4408805*
condR
while_cond_4408804*K
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
NoOpNoOp%^lstm_cell_728/BiasAdd/ReadVariableOp$^lstm_cell_728/MatMul/ReadVariableOp&^lstm_cell_728/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_728/BiasAdd/ReadVariableOp$lstm_cell_728/BiasAdd/ReadVariableOp2J
#lstm_cell_728/MatMul/ReadVariableOp#lstm_cell_728/MatMul/ReadVariableOp2N
%lstm_cell_728/MatMul_1/ReadVariableOp%lstm_cell_728/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405801

inputs>
,lstm_cell_728_matmul_readvariableop_resource:2(@
.lstm_cell_728_matmul_1_readvariableop_resource:
(;
-lstm_cell_728_biasadd_readvariableop_resource:(
identity??$lstm_cell_728/BiasAdd/ReadVariableOp?#lstm_cell_728/MatMul/ReadVariableOp?%lstm_cell_728/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_728/MatMul/ReadVariableOpReadVariableOp,lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_728/MatMulMatMulstrided_slice_2:output:0+lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_728/MatMul_1MatMulzeros:output:0-lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_728/addAddV2lstm_cell_728/MatMul:product:0 lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_728/BiasAddBiasAddlstm_cell_728/add:z:0,lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_728/splitSplit&lstm_cell_728/split/split_dim:output:0lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_728/SigmoidSigmoidlstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_1Sigmoidlstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_728/mulMullstm_cell_728/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_728/ReluRelulstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_1Mullstm_cell_728/Sigmoid:y:0 lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_728/add_1AddV2lstm_cell_728/mul:z:0lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_2Sigmoidlstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_728/Relu_1Relulstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_2Mullstm_cell_728/Sigmoid_2:y:0"lstm_cell_728/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_728_matmul_readvariableop_resource.lstm_cell_728_matmul_1_readvariableop_resource-lstm_cell_728_biasadd_readvariableop_resource*
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
while_body_4405717*
condR
while_cond_4405716*K
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
NoOpNoOp%^lstm_cell_728/BiasAdd/ReadVariableOp$^lstm_cell_728/MatMul/ReadVariableOp&^lstm_cell_728/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_728/BiasAdd/ReadVariableOp$lstm_cell_728/BiasAdd/ReadVariableOp2J
#lstm_cell_728/MatMul/ReadVariableOp#lstm_cell_728/MatMul/ReadVariableOp2N
%lstm_cell_728/MatMul_1/ReadVariableOp%lstm_cell_728/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_729_layer_call_and_return_conditional_losses_4404452

inputs(
lstm_cell_726_4404370:	?(
lstm_cell_726_4404372:	d?$
lstm_cell_726_4404374:	?
identity??%lstm_cell_726/StatefulPartitionedCall?while;
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
%lstm_cell_726/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_726_4404370lstm_cell_726_4404372lstm_cell_726_4404374*
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404369n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_726_4404370lstm_cell_726_4404372lstm_cell_726_4404374*
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
while_body_4404383*
condR
while_cond_4404382*K
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
NoOpNoOp&^lstm_cell_726/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_726/StatefulPartitionedCall%lstm_cell_726/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*sequential_243_lstm_730_while_cond_4404072L
Hsequential_243_lstm_730_while_sequential_243_lstm_730_while_loop_counterR
Nsequential_243_lstm_730_while_sequential_243_lstm_730_while_maximum_iterations-
)sequential_243_lstm_730_while_placeholder/
+sequential_243_lstm_730_while_placeholder_1/
+sequential_243_lstm_730_while_placeholder_2/
+sequential_243_lstm_730_while_placeholder_3N
Jsequential_243_lstm_730_while_less_sequential_243_lstm_730_strided_slice_1e
asequential_243_lstm_730_while_sequential_243_lstm_730_while_cond_4404072___redundant_placeholder0e
asequential_243_lstm_730_while_sequential_243_lstm_730_while_cond_4404072___redundant_placeholder1e
asequential_243_lstm_730_while_sequential_243_lstm_730_while_cond_4404072___redundant_placeholder2e
asequential_243_lstm_730_while_sequential_243_lstm_730_while_cond_4404072___redundant_placeholder3*
&sequential_243_lstm_730_while_identity
?
"sequential_243/lstm_730/while/LessLess)sequential_243_lstm_730_while_placeholderJsequential_243_lstm_730_while_less_sequential_243_lstm_730_strided_slice_1*
T0*
_output_shapes
: {
&sequential_243/lstm_730/while/IdentityIdentity&sequential_243/lstm_730/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_243_lstm_730_while_identity/sequential_243/lstm_730/while/Identity:output:0*(
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
while_cond_4407858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4407858___redundant_placeholder05
1while_while_cond_4407858___redundant_placeholder15
1while_while_cond_4407858___redundant_placeholder25
1while_while_cond_4407858___redundant_placeholder3
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
while_body_4404733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_727_4404757_0:	d?0
while_lstm_cell_727_4404759_0:	2?,
while_lstm_cell_727_4404761_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_727_4404757:	d?.
while_lstm_cell_727_4404759:	2?*
while_lstm_cell_727_4404761:	???+while/lstm_cell_727/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_727/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_727_4404757_0while_lstm_cell_727_4404759_0while_lstm_cell_727_4404761_0*
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404719?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_727/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_727/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_727/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_727/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_727_4404757while_lstm_cell_727_4404757_0"<
while_lstm_cell_727_4404759while_lstm_cell_727_4404759_0"<
while_lstm_cell_727_4404761while_lstm_cell_727_4404761_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_727/StatefulPartitionedCall+while/lstm_cell_727/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4408805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_728_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_728_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_728_matmul_readvariableop_resource:2(F
4while_lstm_cell_728_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_728_biasadd_readvariableop_resource:(??*while/lstm_cell_728/BiasAdd/ReadVariableOp?)while/lstm_cell_728/MatMul/ReadVariableOp?+while/lstm_cell_728/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_728/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_728/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_728/addAddV2$while/lstm_cell_728/MatMul:product:0&while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_728/BiasAddBiasAddwhile/lstm_cell_728/add:z:02while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_728/splitSplit,while/lstm_cell_728/split/split_dim:output:0$while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_728/SigmoidSigmoid"while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_1Sigmoid"while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mulMul!while/lstm_cell_728/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_728/ReluRelu"while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_1Mulwhile/lstm_cell_728/Sigmoid:y:0&while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/add_1AddV2while/lstm_cell_728/mul:z:0while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_2Sigmoid"while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_728/Relu_1Reluwhile/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_2Mul!while/lstm_cell_728/Sigmoid_2:y:0(while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_728/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_728/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_728/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_728/BiasAdd/ReadVariableOp*^while/lstm_cell_728/MatMul/ReadVariableOp,^while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_728_biasadd_readvariableop_resource5while_lstm_cell_728_biasadd_readvariableop_resource_0"n
4while_lstm_cell_728_matmul_1_readvariableop_resource6while_lstm_cell_728_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_728_matmul_readvariableop_resource4while_lstm_cell_728_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_728/BiasAdd/ReadVariableOp*while/lstm_cell_728/BiasAdd/ReadVariableOp2V
)while/lstm_cell_728/MatMul/ReadVariableOp)while/lstm_cell_728/MatMul/ReadVariableOp2Z
+while/lstm_cell_728/MatMul_1/ReadVariableOp+while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__wrapped_model_4404302
lstm_729_inputW
Dsequential_243_lstm_729_lstm_cell_726_matmul_readvariableop_resource:	?Y
Fsequential_243_lstm_729_lstm_cell_726_matmul_1_readvariableop_resource:	d?T
Esequential_243_lstm_729_lstm_cell_726_biasadd_readvariableop_resource:	?W
Dsequential_243_lstm_730_lstm_cell_727_matmul_readvariableop_resource:	d?Y
Fsequential_243_lstm_730_lstm_cell_727_matmul_1_readvariableop_resource:	2?T
Esequential_243_lstm_730_lstm_cell_727_biasadd_readvariableop_resource:	?V
Dsequential_243_lstm_731_lstm_cell_728_matmul_readvariableop_resource:2(X
Fsequential_243_lstm_731_lstm_cell_728_matmul_1_readvariableop_resource:
(S
Esequential_243_lstm_731_lstm_cell_728_biasadd_readvariableop_resource:(I
7sequential_243_dense_243_matmul_readvariableop_resource:
F
8sequential_243_dense_243_biasadd_readvariableop_resource:
identity??/sequential_243/dense_243/BiasAdd/ReadVariableOp?.sequential_243/dense_243/MatMul/ReadVariableOp?<sequential_243/lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp?;sequential_243/lstm_729/lstm_cell_726/MatMul/ReadVariableOp?=sequential_243/lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp?sequential_243/lstm_729/while?<sequential_243/lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp?;sequential_243/lstm_730/lstm_cell_727/MatMul/ReadVariableOp?=sequential_243/lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp?sequential_243/lstm_730/while?<sequential_243/lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp?;sequential_243/lstm_731/lstm_cell_728/MatMul/ReadVariableOp?=sequential_243/lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp?sequential_243/lstm_731/while[
sequential_243/lstm_729/ShapeShapelstm_729_input*
T0*
_output_shapes
:u
+sequential_243/lstm_729/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_243/lstm_729/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_243/lstm_729/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_243/lstm_729/strided_sliceStridedSlice&sequential_243/lstm_729/Shape:output:04sequential_243/lstm_729/strided_slice/stack:output:06sequential_243/lstm_729/strided_slice/stack_1:output:06sequential_243/lstm_729/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_243/lstm_729/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_243/lstm_729/zeros/packedPack.sequential_243/lstm_729/strided_slice:output:0/sequential_243/lstm_729/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_243/lstm_729/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_243/lstm_729/zerosFill-sequential_243/lstm_729/zeros/packed:output:0,sequential_243/lstm_729/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_243/lstm_729/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_243/lstm_729/zeros_1/packedPack.sequential_243/lstm_729/strided_slice:output:01sequential_243/lstm_729/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_243/lstm_729/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_243/lstm_729/zeros_1Fill/sequential_243/lstm_729/zeros_1/packed:output:0.sequential_243/lstm_729/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_243/lstm_729/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_243/lstm_729/transpose	Transposelstm_729_input/sequential_243/lstm_729/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_243/lstm_729/Shape_1Shape%sequential_243/lstm_729/transpose:y:0*
T0*
_output_shapes
:w
-sequential_243/lstm_729/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_729/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_243/lstm_729/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_729/strided_slice_1StridedSlice(sequential_243/lstm_729/Shape_1:output:06sequential_243/lstm_729/strided_slice_1/stack:output:08sequential_243/lstm_729/strided_slice_1/stack_1:output:08sequential_243/lstm_729/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_243/lstm_729/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_243/lstm_729/TensorArrayV2TensorListReserve<sequential_243/lstm_729/TensorArrayV2/element_shape:output:00sequential_243/lstm_729/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_243/lstm_729/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_243/lstm_729/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_243/lstm_729/transpose:y:0Vsequential_243/lstm_729/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_243/lstm_729/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_729/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_243/lstm_729/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_729/strided_slice_2StridedSlice%sequential_243/lstm_729/transpose:y:06sequential_243/lstm_729/strided_slice_2/stack:output:08sequential_243/lstm_729/strided_slice_2/stack_1:output:08sequential_243/lstm_729/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_243/lstm_729/lstm_cell_726/MatMul/ReadVariableOpReadVariableOpDsequential_243_lstm_729_lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_243/lstm_729/lstm_cell_726/MatMulMatMul0sequential_243/lstm_729/strided_slice_2:output:0Csequential_243/lstm_729/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_243/lstm_729/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOpFsequential_243_lstm_729_lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_243/lstm_729/lstm_cell_726/MatMul_1MatMul&sequential_243/lstm_729/zeros:output:0Esequential_243/lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_243/lstm_729/lstm_cell_726/addAddV26sequential_243/lstm_729/lstm_cell_726/MatMul:product:08sequential_243/lstm_729/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_243/lstm_729/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOpEsequential_243_lstm_729_lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_243/lstm_729/lstm_cell_726/BiasAddBiasAdd-sequential_243/lstm_729/lstm_cell_726/add:z:0Dsequential_243/lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_243/lstm_729/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_243/lstm_729/lstm_cell_726/splitSplit>sequential_243/lstm_729/lstm_cell_726/split/split_dim:output:06sequential_243/lstm_729/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_243/lstm_729/lstm_cell_726/SigmoidSigmoid4sequential_243/lstm_729/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_243/lstm_729/lstm_cell_726/Sigmoid_1Sigmoid4sequential_243/lstm_729/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_243/lstm_729/lstm_cell_726/mulMul3sequential_243/lstm_729/lstm_cell_726/Sigmoid_1:y:0(sequential_243/lstm_729/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_243/lstm_729/lstm_cell_726/ReluRelu4sequential_243/lstm_729/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_243/lstm_729/lstm_cell_726/mul_1Mul1sequential_243/lstm_729/lstm_cell_726/Sigmoid:y:08sequential_243/lstm_729/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_243/lstm_729/lstm_cell_726/add_1AddV2-sequential_243/lstm_729/lstm_cell_726/mul:z:0/sequential_243/lstm_729/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_243/lstm_729/lstm_cell_726/Sigmoid_2Sigmoid4sequential_243/lstm_729/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_243/lstm_729/lstm_cell_726/Relu_1Relu/sequential_243/lstm_729/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_243/lstm_729/lstm_cell_726/mul_2Mul3sequential_243/lstm_729/lstm_cell_726/Sigmoid_2:y:0:sequential_243/lstm_729/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_243/lstm_729/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_243/lstm_729/TensorArrayV2_1TensorListReserve>sequential_243/lstm_729/TensorArrayV2_1/element_shape:output:00sequential_243/lstm_729/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_243/lstm_729/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_243/lstm_729/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_243/lstm_729/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_243/lstm_729/whileWhile3sequential_243/lstm_729/while/loop_counter:output:09sequential_243/lstm_729/while/maximum_iterations:output:0%sequential_243/lstm_729/time:output:00sequential_243/lstm_729/TensorArrayV2_1:handle:0&sequential_243/lstm_729/zeros:output:0(sequential_243/lstm_729/zeros_1:output:00sequential_243/lstm_729/strided_slice_1:output:0Osequential_243/lstm_729/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_243_lstm_729_lstm_cell_726_matmul_readvariableop_resourceFsequential_243_lstm_729_lstm_cell_726_matmul_1_readvariableop_resourceEsequential_243_lstm_729_lstm_cell_726_biasadd_readvariableop_resource*
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
*sequential_243_lstm_729_while_body_4403934*6
cond.R,
*sequential_243_lstm_729_while_cond_4403933*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_243/lstm_729/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_243/lstm_729/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_243/lstm_729/while:output:3Qsequential_243/lstm_729/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_243/lstm_729/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_243/lstm_729/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_729/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_729/strided_slice_3StridedSliceCsequential_243/lstm_729/TensorArrayV2Stack/TensorListStack:tensor:06sequential_243/lstm_729/strided_slice_3/stack:output:08sequential_243/lstm_729/strided_slice_3/stack_1:output:08sequential_243/lstm_729/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_243/lstm_729/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_243/lstm_729/transpose_1	TransposeCsequential_243/lstm_729/TensorArrayV2Stack/TensorListStack:tensor:01sequential_243/lstm_729/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_243/lstm_729/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_243/lstm_730/ShapeShape'sequential_243/lstm_729/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_243/lstm_730/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_243/lstm_730/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_243/lstm_730/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_243/lstm_730/strided_sliceStridedSlice&sequential_243/lstm_730/Shape:output:04sequential_243/lstm_730/strided_slice/stack:output:06sequential_243/lstm_730/strided_slice/stack_1:output:06sequential_243/lstm_730/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_243/lstm_730/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_243/lstm_730/zeros/packedPack.sequential_243/lstm_730/strided_slice:output:0/sequential_243/lstm_730/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_243/lstm_730/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_243/lstm_730/zerosFill-sequential_243/lstm_730/zeros/packed:output:0,sequential_243/lstm_730/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_243/lstm_730/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_243/lstm_730/zeros_1/packedPack.sequential_243/lstm_730/strided_slice:output:01sequential_243/lstm_730/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_243/lstm_730/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_243/lstm_730/zeros_1Fill/sequential_243/lstm_730/zeros_1/packed:output:0.sequential_243/lstm_730/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_243/lstm_730/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_243/lstm_730/transpose	Transpose'sequential_243/lstm_729/transpose_1:y:0/sequential_243/lstm_730/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_243/lstm_730/Shape_1Shape%sequential_243/lstm_730/transpose:y:0*
T0*
_output_shapes
:w
-sequential_243/lstm_730/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_730/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_243/lstm_730/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_730/strided_slice_1StridedSlice(sequential_243/lstm_730/Shape_1:output:06sequential_243/lstm_730/strided_slice_1/stack:output:08sequential_243/lstm_730/strided_slice_1/stack_1:output:08sequential_243/lstm_730/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_243/lstm_730/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_243/lstm_730/TensorArrayV2TensorListReserve<sequential_243/lstm_730/TensorArrayV2/element_shape:output:00sequential_243/lstm_730/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_243/lstm_730/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_243/lstm_730/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_243/lstm_730/transpose:y:0Vsequential_243/lstm_730/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_243/lstm_730/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_730/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_243/lstm_730/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_730/strided_slice_2StridedSlice%sequential_243/lstm_730/transpose:y:06sequential_243/lstm_730/strided_slice_2/stack:output:08sequential_243/lstm_730/strided_slice_2/stack_1:output:08sequential_243/lstm_730/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_243/lstm_730/lstm_cell_727/MatMul/ReadVariableOpReadVariableOpDsequential_243_lstm_730_lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_243/lstm_730/lstm_cell_727/MatMulMatMul0sequential_243/lstm_730/strided_slice_2:output:0Csequential_243/lstm_730/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_243/lstm_730/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOpFsequential_243_lstm_730_lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_243/lstm_730/lstm_cell_727/MatMul_1MatMul&sequential_243/lstm_730/zeros:output:0Esequential_243/lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_243/lstm_730/lstm_cell_727/addAddV26sequential_243/lstm_730/lstm_cell_727/MatMul:product:08sequential_243/lstm_730/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_243/lstm_730/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOpEsequential_243_lstm_730_lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_243/lstm_730/lstm_cell_727/BiasAddBiasAdd-sequential_243/lstm_730/lstm_cell_727/add:z:0Dsequential_243/lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_243/lstm_730/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_243/lstm_730/lstm_cell_727/splitSplit>sequential_243/lstm_730/lstm_cell_727/split/split_dim:output:06sequential_243/lstm_730/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_243/lstm_730/lstm_cell_727/SigmoidSigmoid4sequential_243/lstm_730/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_243/lstm_730/lstm_cell_727/Sigmoid_1Sigmoid4sequential_243/lstm_730/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_243/lstm_730/lstm_cell_727/mulMul3sequential_243/lstm_730/lstm_cell_727/Sigmoid_1:y:0(sequential_243/lstm_730/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_243/lstm_730/lstm_cell_727/ReluRelu4sequential_243/lstm_730/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_243/lstm_730/lstm_cell_727/mul_1Mul1sequential_243/lstm_730/lstm_cell_727/Sigmoid:y:08sequential_243/lstm_730/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_243/lstm_730/lstm_cell_727/add_1AddV2-sequential_243/lstm_730/lstm_cell_727/mul:z:0/sequential_243/lstm_730/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_243/lstm_730/lstm_cell_727/Sigmoid_2Sigmoid4sequential_243/lstm_730/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_243/lstm_730/lstm_cell_727/Relu_1Relu/sequential_243/lstm_730/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_243/lstm_730/lstm_cell_727/mul_2Mul3sequential_243/lstm_730/lstm_cell_727/Sigmoid_2:y:0:sequential_243/lstm_730/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_243/lstm_730/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_243/lstm_730/TensorArrayV2_1TensorListReserve>sequential_243/lstm_730/TensorArrayV2_1/element_shape:output:00sequential_243/lstm_730/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_243/lstm_730/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_243/lstm_730/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_243/lstm_730/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_243/lstm_730/whileWhile3sequential_243/lstm_730/while/loop_counter:output:09sequential_243/lstm_730/while/maximum_iterations:output:0%sequential_243/lstm_730/time:output:00sequential_243/lstm_730/TensorArrayV2_1:handle:0&sequential_243/lstm_730/zeros:output:0(sequential_243/lstm_730/zeros_1:output:00sequential_243/lstm_730/strided_slice_1:output:0Osequential_243/lstm_730/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_243_lstm_730_lstm_cell_727_matmul_readvariableop_resourceFsequential_243_lstm_730_lstm_cell_727_matmul_1_readvariableop_resourceEsequential_243_lstm_730_lstm_cell_727_biasadd_readvariableop_resource*
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
*sequential_243_lstm_730_while_body_4404073*6
cond.R,
*sequential_243_lstm_730_while_cond_4404072*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_243/lstm_730/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_243/lstm_730/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_243/lstm_730/while:output:3Qsequential_243/lstm_730/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_243/lstm_730/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_243/lstm_730/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_730/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_730/strided_slice_3StridedSliceCsequential_243/lstm_730/TensorArrayV2Stack/TensorListStack:tensor:06sequential_243/lstm_730/strided_slice_3/stack:output:08sequential_243/lstm_730/strided_slice_3/stack_1:output:08sequential_243/lstm_730/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_243/lstm_730/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_243/lstm_730/transpose_1	TransposeCsequential_243/lstm_730/TensorArrayV2Stack/TensorListStack:tensor:01sequential_243/lstm_730/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_243/lstm_730/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_243/lstm_731/ShapeShape'sequential_243/lstm_730/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_243/lstm_731/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_243/lstm_731/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_243/lstm_731/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_243/lstm_731/strided_sliceStridedSlice&sequential_243/lstm_731/Shape:output:04sequential_243/lstm_731/strided_slice/stack:output:06sequential_243/lstm_731/strided_slice/stack_1:output:06sequential_243/lstm_731/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_243/lstm_731/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_243/lstm_731/zeros/packedPack.sequential_243/lstm_731/strided_slice:output:0/sequential_243/lstm_731/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_243/lstm_731/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_243/lstm_731/zerosFill-sequential_243/lstm_731/zeros/packed:output:0,sequential_243/lstm_731/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_243/lstm_731/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_243/lstm_731/zeros_1/packedPack.sequential_243/lstm_731/strided_slice:output:01sequential_243/lstm_731/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_243/lstm_731/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_243/lstm_731/zeros_1Fill/sequential_243/lstm_731/zeros_1/packed:output:0.sequential_243/lstm_731/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_243/lstm_731/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_243/lstm_731/transpose	Transpose'sequential_243/lstm_730/transpose_1:y:0/sequential_243/lstm_731/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_243/lstm_731/Shape_1Shape%sequential_243/lstm_731/transpose:y:0*
T0*
_output_shapes
:w
-sequential_243/lstm_731/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_731/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_243/lstm_731/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_731/strided_slice_1StridedSlice(sequential_243/lstm_731/Shape_1:output:06sequential_243/lstm_731/strided_slice_1/stack:output:08sequential_243/lstm_731/strided_slice_1/stack_1:output:08sequential_243/lstm_731/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_243/lstm_731/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_243/lstm_731/TensorArrayV2TensorListReserve<sequential_243/lstm_731/TensorArrayV2/element_shape:output:00sequential_243/lstm_731/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_243/lstm_731/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_243/lstm_731/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_243/lstm_731/transpose:y:0Vsequential_243/lstm_731/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_243/lstm_731/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_731/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_243/lstm_731/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_731/strided_slice_2StridedSlice%sequential_243/lstm_731/transpose:y:06sequential_243/lstm_731/strided_slice_2/stack:output:08sequential_243/lstm_731/strided_slice_2/stack_1:output:08sequential_243/lstm_731/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_243/lstm_731/lstm_cell_728/MatMul/ReadVariableOpReadVariableOpDsequential_243_lstm_731_lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_243/lstm_731/lstm_cell_728/MatMulMatMul0sequential_243/lstm_731/strided_slice_2:output:0Csequential_243/lstm_731/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_243/lstm_731/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOpFsequential_243_lstm_731_lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_243/lstm_731/lstm_cell_728/MatMul_1MatMul&sequential_243/lstm_731/zeros:output:0Esequential_243/lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_243/lstm_731/lstm_cell_728/addAddV26sequential_243/lstm_731/lstm_cell_728/MatMul:product:08sequential_243/lstm_731/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_243/lstm_731/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOpEsequential_243_lstm_731_lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_243/lstm_731/lstm_cell_728/BiasAddBiasAdd-sequential_243/lstm_731/lstm_cell_728/add:z:0Dsequential_243/lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_243/lstm_731/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_243/lstm_731/lstm_cell_728/splitSplit>sequential_243/lstm_731/lstm_cell_728/split/split_dim:output:06sequential_243/lstm_731/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_243/lstm_731/lstm_cell_728/SigmoidSigmoid4sequential_243/lstm_731/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_243/lstm_731/lstm_cell_728/Sigmoid_1Sigmoid4sequential_243/lstm_731/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_243/lstm_731/lstm_cell_728/mulMul3sequential_243/lstm_731/lstm_cell_728/Sigmoid_1:y:0(sequential_243/lstm_731/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_243/lstm_731/lstm_cell_728/ReluRelu4sequential_243/lstm_731/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_243/lstm_731/lstm_cell_728/mul_1Mul1sequential_243/lstm_731/lstm_cell_728/Sigmoid:y:08sequential_243/lstm_731/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_243/lstm_731/lstm_cell_728/add_1AddV2-sequential_243/lstm_731/lstm_cell_728/mul:z:0/sequential_243/lstm_731/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_243/lstm_731/lstm_cell_728/Sigmoid_2Sigmoid4sequential_243/lstm_731/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_243/lstm_731/lstm_cell_728/Relu_1Relu/sequential_243/lstm_731/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_243/lstm_731/lstm_cell_728/mul_2Mul3sequential_243/lstm_731/lstm_cell_728/Sigmoid_2:y:0:sequential_243/lstm_731/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_243/lstm_731/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_243/lstm_731/TensorArrayV2_1TensorListReserve>sequential_243/lstm_731/TensorArrayV2_1/element_shape:output:00sequential_243/lstm_731/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_243/lstm_731/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_243/lstm_731/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_243/lstm_731/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_243/lstm_731/whileWhile3sequential_243/lstm_731/while/loop_counter:output:09sequential_243/lstm_731/while/maximum_iterations:output:0%sequential_243/lstm_731/time:output:00sequential_243/lstm_731/TensorArrayV2_1:handle:0&sequential_243/lstm_731/zeros:output:0(sequential_243/lstm_731/zeros_1:output:00sequential_243/lstm_731/strided_slice_1:output:0Osequential_243/lstm_731/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_243_lstm_731_lstm_cell_728_matmul_readvariableop_resourceFsequential_243_lstm_731_lstm_cell_728_matmul_1_readvariableop_resourceEsequential_243_lstm_731_lstm_cell_728_biasadd_readvariableop_resource*
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
*sequential_243_lstm_731_while_body_4404212*6
cond.R,
*sequential_243_lstm_731_while_cond_4404211*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_243/lstm_731/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_243/lstm_731/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_243/lstm_731/while:output:3Qsequential_243/lstm_731/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_243/lstm_731/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_243/lstm_731/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_243/lstm_731/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_243/lstm_731/strided_slice_3StridedSliceCsequential_243/lstm_731/TensorArrayV2Stack/TensorListStack:tensor:06sequential_243/lstm_731/strided_slice_3/stack:output:08sequential_243/lstm_731/strided_slice_3/stack_1:output:08sequential_243/lstm_731/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_243/lstm_731/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_243/lstm_731/transpose_1	TransposeCsequential_243/lstm_731/TensorArrayV2Stack/TensorListStack:tensor:01sequential_243/lstm_731/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_243/lstm_731/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_243/dense_243/MatMul/ReadVariableOpReadVariableOp7sequential_243_dense_243_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_243/dense_243/MatMulMatMul0sequential_243/lstm_731/strided_slice_3:output:06sequential_243/dense_243/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_243/dense_243/BiasAdd/ReadVariableOpReadVariableOp8sequential_243_dense_243_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_243/dense_243/BiasAddBiasAdd)sequential_243/dense_243/MatMul:product:07sequential_243/dense_243/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_243/dense_243/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_243/dense_243/BiasAdd/ReadVariableOp/^sequential_243/dense_243/MatMul/ReadVariableOp=^sequential_243/lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp<^sequential_243/lstm_729/lstm_cell_726/MatMul/ReadVariableOp>^sequential_243/lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp^sequential_243/lstm_729/while=^sequential_243/lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp<^sequential_243/lstm_730/lstm_cell_727/MatMul/ReadVariableOp>^sequential_243/lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp^sequential_243/lstm_730/while=^sequential_243/lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp<^sequential_243/lstm_731/lstm_cell_728/MatMul/ReadVariableOp>^sequential_243/lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp^sequential_243/lstm_731/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_243/dense_243/BiasAdd/ReadVariableOp/sequential_243/dense_243/BiasAdd/ReadVariableOp2`
.sequential_243/dense_243/MatMul/ReadVariableOp.sequential_243/dense_243/MatMul/ReadVariableOp2|
<sequential_243/lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp<sequential_243/lstm_729/lstm_cell_726/BiasAdd/ReadVariableOp2z
;sequential_243/lstm_729/lstm_cell_726/MatMul/ReadVariableOp;sequential_243/lstm_729/lstm_cell_726/MatMul/ReadVariableOp2~
=sequential_243/lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp=sequential_243/lstm_729/lstm_cell_726/MatMul_1/ReadVariableOp2>
sequential_243/lstm_729/whilesequential_243/lstm_729/while2|
<sequential_243/lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp<sequential_243/lstm_730/lstm_cell_727/BiasAdd/ReadVariableOp2z
;sequential_243/lstm_730/lstm_cell_727/MatMul/ReadVariableOp;sequential_243/lstm_730/lstm_cell_727/MatMul/ReadVariableOp2~
=sequential_243/lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp=sequential_243/lstm_730/lstm_cell_727/MatMul_1/ReadVariableOp2>
sequential_243/lstm_730/whilesequential_243/lstm_730/while2|
<sequential_243/lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp<sequential_243/lstm_731/lstm_cell_728/BiasAdd/ReadVariableOp2z
;sequential_243/lstm_731/lstm_cell_728/MatMul/ReadVariableOp;sequential_243/lstm_731/lstm_cell_728/MatMul/ReadVariableOp2~
=sequential_243/lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp=sequential_243/lstm_731/lstm_cell_728/MatMul_1/ReadVariableOp2>
sequential_243/lstm_731/whilesequential_243/lstm_731/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_729_input
?K
?
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409032
inputs_0>
,lstm_cell_728_matmul_readvariableop_resource:2(@
.lstm_cell_728_matmul_1_readvariableop_resource:
(;
-lstm_cell_728_biasadd_readvariableop_resource:(
identity??$lstm_cell_728/BiasAdd/ReadVariableOp?#lstm_cell_728/MatMul/ReadVariableOp?%lstm_cell_728/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_728/MatMul/ReadVariableOpReadVariableOp,lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_728/MatMulMatMulstrided_slice_2:output:0+lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_728/MatMul_1MatMulzeros:output:0-lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_728/addAddV2lstm_cell_728/MatMul:product:0 lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_728/BiasAddBiasAddlstm_cell_728/add:z:0,lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_728/splitSplit&lstm_cell_728/split/split_dim:output:0lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_728/SigmoidSigmoidlstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_1Sigmoidlstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_728/mulMullstm_cell_728/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_728/ReluRelulstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_1Mullstm_cell_728/Sigmoid:y:0 lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_728/add_1AddV2lstm_cell_728/mul:z:0lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_2Sigmoidlstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_728/Relu_1Relulstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_2Mullstm_cell_728/Sigmoid_2:y:0"lstm_cell_728/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_728_matmul_readvariableop_resource.lstm_cell_728_matmul_1_readvariableop_resource-lstm_cell_728_biasadd_readvariableop_resource*
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
while_body_4408948*
condR
while_cond_4408947*K
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
NoOpNoOp%^lstm_cell_728/BiasAdd/ReadVariableOp$^lstm_cell_728/MatMul/ReadVariableOp&^lstm_cell_728/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_728/BiasAdd/ReadVariableOp$lstm_cell_728/BiasAdd/ReadVariableOp2J
#lstm_cell_728/MatMul/ReadVariableOp#lstm_cell_728/MatMul/ReadVariableOp2N
%lstm_cell_728/MatMul_1/ReadVariableOp%lstm_cell_728/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_729_layer_call_and_return_conditional_losses_4408086

inputs?
,lstm_cell_726_matmul_readvariableop_resource:	?A
.lstm_cell_726_matmul_1_readvariableop_resource:	d?<
-lstm_cell_726_biasadd_readvariableop_resource:	?
identity??$lstm_cell_726/BiasAdd/ReadVariableOp?#lstm_cell_726/MatMul/ReadVariableOp?%lstm_cell_726/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_726/MatMul/ReadVariableOpReadVariableOp,lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_726/MatMulMatMulstrided_slice_2:output:0+lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_726/MatMul_1MatMulzeros:output:0-lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_726/addAddV2lstm_cell_726/MatMul:product:0 lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_726/BiasAddBiasAddlstm_cell_726/add:z:0,lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_726/splitSplit&lstm_cell_726/split/split_dim:output:0lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_726/SigmoidSigmoidlstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_1Sigmoidlstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_726/mulMullstm_cell_726/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_726/ReluRelulstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_1Mullstm_cell_726/Sigmoid:y:0 lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_726/add_1AddV2lstm_cell_726/mul:z:0lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_2Sigmoidlstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_726/Relu_1Relulstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_2Mullstm_cell_726/Sigmoid_2:y:0"lstm_cell_726/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_726_matmul_readvariableop_resource.lstm_cell_726_matmul_1_readvariableop_resource-lstm_cell_726_biasadd_readvariableop_resource*
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
while_body_4408002*
condR
while_cond_4408001*K
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
NoOpNoOp%^lstm_cell_726/BiasAdd/ReadVariableOp$^lstm_cell_726/MatMul/ReadVariableOp&^lstm_cell_726/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_726/BiasAdd/ReadVariableOp$lstm_cell_726/BiasAdd/ReadVariableOp2J
#lstm_cell_726/MatMul/ReadVariableOp#lstm_cell_726/MatMul/ReadVariableOp2N
%lstm_cell_726/MatMul_1/ReadVariableOp%lstm_cell_726/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4405274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_728_4405298_0:2(/
while_lstm_cell_728_4405300_0:
(+
while_lstm_cell_728_4405302_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_728_4405298:2(-
while_lstm_cell_728_4405300:
()
while_lstm_cell_728_4405302:(??+while/lstm_cell_728/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_728/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_728_4405298_0while_lstm_cell_728_4405300_0while_lstm_cell_728_4405302_0*
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405215?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_728/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_728/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_728/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_728/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_728_4405298while_lstm_cell_728_4405298_0"<
while_lstm_cell_728_4405300while_lstm_cell_728_4405300_0"<
while_lstm_cell_728_4405302while_lstm_cell_728_4405302_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_728/StatefulPartitionedCall+while/lstm_cell_728/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4407572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4407572___redundant_placeholder05
1while_while_cond_4407572___redundant_placeholder15
1while_while_cond_4407572___redundant_placeholder25
1while_while_cond_4407572___redundant_placeholder3
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
lstm_731_while_cond_4406952.
*lstm_731_while_lstm_731_while_loop_counter4
0lstm_731_while_lstm_731_while_maximum_iterations
lstm_731_while_placeholder 
lstm_731_while_placeholder_1 
lstm_731_while_placeholder_2 
lstm_731_while_placeholder_30
,lstm_731_while_less_lstm_731_strided_slice_1G
Clstm_731_while_lstm_731_while_cond_4406952___redundant_placeholder0G
Clstm_731_while_lstm_731_while_cond_4406952___redundant_placeholder1G
Clstm_731_while_lstm_731_while_cond_4406952___redundant_placeholder2G
Clstm_731_while_lstm_731_while_cond_4406952___redundant_placeholder3
lstm_731_while_identity
?
lstm_731/while/LessLesslstm_731_while_placeholder,lstm_731_while_less_lstm_731_strided_slice_1*
T0*
_output_shapes
: ]
lstm_731/while/IdentityIdentitylstm_731/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_731_while_identity lstm_731/while/Identity:output:0*(
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
while_body_4405083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_728_4405107_0:2(/
while_lstm_cell_728_4405109_0:
(+
while_lstm_cell_728_4405111_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_728_4405107:2(-
while_lstm_cell_728_4405109:
()
while_lstm_cell_728_4405111:(??+while/lstm_cell_728/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_728/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_728_4405107_0while_lstm_cell_728_4405109_0while_lstm_cell_728_4405111_0*
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405069?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_728/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_728/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_728/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_728/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_728_4405107while_lstm_cell_728_4405107_0"<
while_lstm_cell_728_4405109while_lstm_cell_728_4405109_0"<
while_lstm_cell_728_4405111while_lstm_cell_728_4405111_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_728/StatefulPartitionedCall+while/lstm_cell_728/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408416
inputs_0?
,lstm_cell_727_matmul_readvariableop_resource:	d?A
.lstm_cell_727_matmul_1_readvariableop_resource:	2?<
-lstm_cell_727_biasadd_readvariableop_resource:	?
identity??$lstm_cell_727/BiasAdd/ReadVariableOp?#lstm_cell_727/MatMul/ReadVariableOp?%lstm_cell_727/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_727/MatMul/ReadVariableOpReadVariableOp,lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_727/MatMulMatMulstrided_slice_2:output:0+lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_727/MatMul_1MatMulzeros:output:0-lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_727/addAddV2lstm_cell_727/MatMul:product:0 lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_727/BiasAddBiasAddlstm_cell_727/add:z:0,lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_727/splitSplit&lstm_cell_727/split/split_dim:output:0lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_727/SigmoidSigmoidlstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_1Sigmoidlstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_727/mulMullstm_cell_727/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_727/ReluRelulstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_1Mullstm_cell_727/Sigmoid:y:0 lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_727/add_1AddV2lstm_cell_727/mul:z:0lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_2Sigmoidlstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_727/Relu_1Relulstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_2Mullstm_cell_727/Sigmoid_2:y:0"lstm_cell_727/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_727_matmul_readvariableop_resource.lstm_cell_727_matmul_1_readvariableop_resource-lstm_cell_727_biasadd_readvariableop_resource*
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
while_body_4408332*
condR
while_cond_4408331*K
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
NoOpNoOp%^lstm_cell_727/BiasAdd/ReadVariableOp$^lstm_cell_727/MatMul/ReadVariableOp&^lstm_cell_727/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_727/BiasAdd/ReadVariableOp$lstm_cell_727/BiasAdd/ReadVariableOp2J
#lstm_cell_727/MatMul/ReadVariableOp#lstm_cell_727/MatMul/ReadVariableOp2N
%lstm_cell_727/MatMul_1/ReadVariableOp%lstm_cell_727/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4404573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4404573___redundant_placeholder05
1while_while_cond_4404573___redundant_placeholder15
1while_while_cond_4404573___redundant_placeholder25
1while_while_cond_4404573___redundant_placeholder3
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
0__inference_sequential_243_layer_call_fn_4406616

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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406415o
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
*sequential_243_lstm_731_while_cond_4404211L
Hsequential_243_lstm_731_while_sequential_243_lstm_731_while_loop_counterR
Nsequential_243_lstm_731_while_sequential_243_lstm_731_while_maximum_iterations-
)sequential_243_lstm_731_while_placeholder/
+sequential_243_lstm_731_while_placeholder_1/
+sequential_243_lstm_731_while_placeholder_2/
+sequential_243_lstm_731_while_placeholder_3N
Jsequential_243_lstm_731_while_less_sequential_243_lstm_731_strided_slice_1e
asequential_243_lstm_731_while_sequential_243_lstm_731_while_cond_4404211___redundant_placeholder0e
asequential_243_lstm_731_while_sequential_243_lstm_731_while_cond_4404211___redundant_placeholder1e
asequential_243_lstm_731_while_sequential_243_lstm_731_while_cond_4404211___redundant_placeholder2e
asequential_243_lstm_731_while_sequential_243_lstm_731_while_cond_4404211___redundant_placeholder3*
&sequential_243_lstm_731_while_identity
?
"sequential_243/lstm_731/while/LessLess)sequential_243_lstm_731_while_placeholderJsequential_243_lstm_731_while_less_sequential_243_lstm_731_strided_slice_1*
T0*
_output_shapes
: {
&sequential_243/lstm_731/while/IdentityIdentity&sequential_243/lstm_731/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_243_lstm_731_while_identity/sequential_243/lstm_731/while/Identity:output:0*(
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
lstm_730_while_cond_4406813.
*lstm_730_while_lstm_730_while_loop_counter4
0lstm_730_while_lstm_730_while_maximum_iterations
lstm_730_while_placeholder 
lstm_730_while_placeholder_1 
lstm_730_while_placeholder_2 
lstm_730_while_placeholder_30
,lstm_730_while_less_lstm_730_strided_slice_1G
Clstm_730_while_lstm_730_while_cond_4406813___redundant_placeholder0G
Clstm_730_while_lstm_730_while_cond_4406813___redundant_placeholder1G
Clstm_730_while_lstm_730_while_cond_4406813___redundant_placeholder2G
Clstm_730_while_lstm_730_while_cond_4406813___redundant_placeholder3
lstm_730_while_identity
?
lstm_730/while/LessLesslstm_730_while_placeholder,lstm_730_while_less_lstm_730_strided_slice_1*
T0*
_output_shapes
: ]
lstm_730/while/IdentityIdentitylstm_730/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_730_while_identity lstm_730/while/Identity:output:0*(
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
*__inference_lstm_731_layer_call_fn_4408724
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405343o
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
F__inference_dense_243_layer_call_and_return_conditional_losses_4409337

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
?
E__inference_lstm_730_layer_call_and_return_conditional_losses_4404802

inputs(
lstm_cell_727_4404720:	d?(
lstm_cell_727_4404722:	2?$
lstm_cell_727_4404724:	?
identity??%lstm_cell_727/StatefulPartitionedCall?while;
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
%lstm_cell_727/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_727_4404720lstm_cell_727_4404722lstm_cell_727_4404724*
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404719n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_727_4404720lstm_cell_727_4404722lstm_cell_727_4404724*
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
while_body_4404733*
condR
while_cond_4404732*K
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
NoOpNoOp&^lstm_cell_727/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_727/StatefulPartitionedCall%lstm_cell_727/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_730_layer_call_and_return_conditional_losses_4404993

inputs(
lstm_cell_727_4404911:	d?(
lstm_cell_727_4404913:	2?$
lstm_cell_727_4404915:	?
identity??%lstm_cell_727/StatefulPartitionedCall?while;
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
%lstm_cell_727/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_727_4404911lstm_cell_727_4404913lstm_cell_727_4404915*
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404865n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_727_4404911lstm_cell_727_4404913lstm_cell_727_4404915*
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
while_body_4404924*
condR
while_cond_4404923*K
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
NoOpNoOp&^lstm_cell_727/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_727/StatefulPartitionedCall%lstm_cell_727/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?C
?

lstm_729_while_body_4406675.
*lstm_729_while_lstm_729_while_loop_counter4
0lstm_729_while_lstm_729_while_maximum_iterations
lstm_729_while_placeholder 
lstm_729_while_placeholder_1 
lstm_729_while_placeholder_2 
lstm_729_while_placeholder_3-
)lstm_729_while_lstm_729_strided_slice_1_0i
elstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0:	?R
?lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?M
>lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
lstm_729_while_identity
lstm_729_while_identity_1
lstm_729_while_identity_2
lstm_729_while_identity_3
lstm_729_while_identity_4
lstm_729_while_identity_5+
'lstm_729_while_lstm_729_strided_slice_1g
clstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensorN
;lstm_729_while_lstm_cell_726_matmul_readvariableop_resource:	?P
=lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource:	d?K
<lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource:	???3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp?2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp?4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp?
@lstm_729/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_729/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensor_0lstm_729_while_placeholderIlstm_729/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp=lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_729/while/lstm_cell_726/MatMulMatMul9lstm_729/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp?lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_729/while/lstm_cell_726/MatMul_1MatMullstm_729_while_placeholder_2<lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_729/while/lstm_cell_726/addAddV2-lstm_729/while/lstm_cell_726/MatMul:product:0/lstm_729/while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp>lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_729/while/lstm_cell_726/BiasAddBiasAdd$lstm_729/while/lstm_cell_726/add:z:0;lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_729/while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_729/while/lstm_cell_726/splitSplit5lstm_729/while/lstm_cell_726/split/split_dim:output:0-lstm_729/while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_729/while/lstm_cell_726/SigmoidSigmoid+lstm_729/while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_729/while/lstm_cell_726/Sigmoid_1Sigmoid+lstm_729/while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_729/while/lstm_cell_726/mulMul*lstm_729/while/lstm_cell_726/Sigmoid_1:y:0lstm_729_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_729/while/lstm_cell_726/ReluRelu+lstm_729/while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_729/while/lstm_cell_726/mul_1Mul(lstm_729/while/lstm_cell_726/Sigmoid:y:0/lstm_729/while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_729/while/lstm_cell_726/add_1AddV2$lstm_729/while/lstm_cell_726/mul:z:0&lstm_729/while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_729/while/lstm_cell_726/Sigmoid_2Sigmoid+lstm_729/while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_729/while/lstm_cell_726/Relu_1Relu&lstm_729/while/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_729/while/lstm_cell_726/mul_2Mul*lstm_729/while/lstm_cell_726/Sigmoid_2:y:01lstm_729/while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_729/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_729_while_placeholder_1lstm_729_while_placeholder&lstm_729/while/lstm_cell_726/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_729/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_729/while/addAddV2lstm_729_while_placeholderlstm_729/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_729/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_729/while/add_1AddV2*lstm_729_while_lstm_729_while_loop_counterlstm_729/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_729/while/IdentityIdentitylstm_729/while/add_1:z:0^lstm_729/while/NoOp*
T0*
_output_shapes
: ?
lstm_729/while/Identity_1Identity0lstm_729_while_lstm_729_while_maximum_iterations^lstm_729/while/NoOp*
T0*
_output_shapes
: t
lstm_729/while/Identity_2Identitylstm_729/while/add:z:0^lstm_729/while/NoOp*
T0*
_output_shapes
: ?
lstm_729/while/Identity_3IdentityClstm_729/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_729/while/NoOp*
T0*
_output_shapes
: ?
lstm_729/while/Identity_4Identity&lstm_729/while/lstm_cell_726/mul_2:z:0^lstm_729/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_729/while/Identity_5Identity&lstm_729/while/lstm_cell_726/add_1:z:0^lstm_729/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_729/while/NoOpNoOp4^lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp3^lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp5^lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_729_while_identity lstm_729/while/Identity:output:0"?
lstm_729_while_identity_1"lstm_729/while/Identity_1:output:0"?
lstm_729_while_identity_2"lstm_729/while/Identity_2:output:0"?
lstm_729_while_identity_3"lstm_729/while/Identity_3:output:0"?
lstm_729_while_identity_4"lstm_729/while/Identity_4:output:0"?
lstm_729_while_identity_5"lstm_729/while/Identity_5:output:0"T
'lstm_729_while_lstm_729_strided_slice_1)lstm_729_while_lstm_729_strided_slice_1_0"~
<lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource>lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0"?
=lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource?lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0"|
;lstm_729_while_lstm_cell_726_matmul_readvariableop_resource=lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0"?
clstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensorelstm_729_while_tensorarrayv2read_tensorlistgetitem_lstm_729_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp3lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp2h
2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp2lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp2l
4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp4lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_729_while_cond_4407101.
*lstm_729_while_lstm_729_while_loop_counter4
0lstm_729_while_lstm_729_while_maximum_iterations
lstm_729_while_placeholder 
lstm_729_while_placeholder_1 
lstm_729_while_placeholder_2 
lstm_729_while_placeholder_30
,lstm_729_while_less_lstm_729_strided_slice_1G
Clstm_729_while_lstm_729_while_cond_4407101___redundant_placeholder0G
Clstm_729_while_lstm_729_while_cond_4407101___redundant_placeholder1G
Clstm_729_while_lstm_729_while_cond_4407101___redundant_placeholder2G
Clstm_729_while_lstm_729_while_cond_4407101___redundant_placeholder3
lstm_729_while_identity
?
lstm_729/while/LessLesslstm_729_while_placeholder,lstm_729_while_less_lstm_729_strided_slice_1*
T0*
_output_shapes
: ]
lstm_729/while/IdentityIdentitylstm_729/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_729_while_identity lstm_729/while/Identity:output:0*(
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
lstm_731_while_cond_4407379.
*lstm_731_while_lstm_731_while_loop_counter4
0lstm_731_while_lstm_731_while_maximum_iterations
lstm_731_while_placeholder 
lstm_731_while_placeholder_1 
lstm_731_while_placeholder_2 
lstm_731_while_placeholder_30
,lstm_731_while_less_lstm_731_strided_slice_1G
Clstm_731_while_lstm_731_while_cond_4407379___redundant_placeholder0G
Clstm_731_while_lstm_731_while_cond_4407379___redundant_placeholder1G
Clstm_731_while_lstm_731_while_cond_4407379___redundant_placeholder2G
Clstm_731_while_lstm_731_while_cond_4407379___redundant_placeholder3
lstm_731_while_identity
?
lstm_731/while/LessLesslstm_731_while_placeholder,lstm_731_while_less_lstm_731_strided_slice_1*
T0*
_output_shapes
: ]
lstm_731/while/IdentityIdentitylstm_731/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_731_while_identity lstm_731/while/Identity:output:0*(
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
while_cond_4407715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4407715___redundant_placeholder05
1while_while_cond_4407715___redundant_placeholder15
1while_while_cond_4407715___redundant_placeholder25
1while_while_cond_4407715___redundant_placeholder3
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
while_body_4409234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_728_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_728_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_728_matmul_readvariableop_resource:2(F
4while_lstm_cell_728_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_728_biasadd_readvariableop_resource:(??*while/lstm_cell_728/BiasAdd/ReadVariableOp?)while/lstm_cell_728/MatMul/ReadVariableOp?+while/lstm_cell_728/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_728/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_728/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_728/addAddV2$while/lstm_cell_728/MatMul:product:0&while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_728/BiasAddBiasAddwhile/lstm_cell_728/add:z:02while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_728/splitSplit,while/lstm_cell_728/split/split_dim:output:0$while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_728/SigmoidSigmoid"while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_1Sigmoid"while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mulMul!while/lstm_cell_728/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_728/ReluRelu"while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_1Mulwhile/lstm_cell_728/Sigmoid:y:0&while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/add_1AddV2while/lstm_cell_728/mul:z:0while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_2Sigmoid"while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_728/Relu_1Reluwhile/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_2Mul!while/lstm_cell_728/Sigmoid_2:y:0(while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_728/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_728/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_728/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_728/BiasAdd/ReadVariableOp*^while/lstm_cell_728/MatMul/ReadVariableOp,^while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_728_biasadd_readvariableop_resource5while_lstm_cell_728_biasadd_readvariableop_resource_0"n
4while_lstm_cell_728_matmul_1_readvariableop_resource6while_lstm_cell_728_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_728_matmul_readvariableop_resource4while_lstm_cell_728_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_728/BiasAdd/ReadVariableOp*while/lstm_cell_728/BiasAdd/ReadVariableOp2V
)while/lstm_cell_728/MatMul/ReadVariableOp)while/lstm_cell_728/MatMul/ReadVariableOp2Z
+while/lstm_cell_728/MatMul_1/ReadVariableOp+while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4406347

inputs?
,lstm_cell_726_matmul_readvariableop_resource:	?A
.lstm_cell_726_matmul_1_readvariableop_resource:	d?<
-lstm_cell_726_biasadd_readvariableop_resource:	?
identity??$lstm_cell_726/BiasAdd/ReadVariableOp?#lstm_cell_726/MatMul/ReadVariableOp?%lstm_cell_726/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_726/MatMul/ReadVariableOpReadVariableOp,lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_726/MatMulMatMulstrided_slice_2:output:0+lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_726/MatMul_1MatMulzeros:output:0-lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_726/addAddV2lstm_cell_726/MatMul:product:0 lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_726/BiasAddBiasAddlstm_cell_726/add:z:0,lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_726/splitSplit&lstm_cell_726/split/split_dim:output:0lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_726/SigmoidSigmoidlstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_1Sigmoidlstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_726/mulMullstm_cell_726/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_726/ReluRelulstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_1Mullstm_cell_726/Sigmoid:y:0 lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_726/add_1AddV2lstm_cell_726/mul:z:0lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_2Sigmoidlstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_726/Relu_1Relulstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_2Mullstm_cell_726/Sigmoid_2:y:0"lstm_cell_726/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_726_matmul_readvariableop_resource.lstm_cell_726_matmul_1_readvariableop_resource-lstm_cell_726_biasadd_readvariableop_resource*
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
while_body_4406263*
condR
while_cond_4406262*K
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
NoOpNoOp%^lstm_cell_726/BiasAdd/ReadVariableOp$^lstm_cell_726/MatMul/ReadVariableOp&^lstm_cell_726/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_726/BiasAdd/ReadVariableOp$lstm_cell_726/BiasAdd/ReadVariableOp2J
#lstm_cell_726/MatMul/ReadVariableOp#lstm_cell_726/MatMul/ReadVariableOp2N
%lstm_cell_726/MatMul_1/ReadVariableOp%lstm_cell_726/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4408474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4408474___redundant_placeholder05
1while_while_cond_4408474___redundant_placeholder15
1while_while_cond_4408474___redundant_placeholder25
1while_while_cond_4408474___redundant_placeholder3
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
while_cond_4404732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4404732___redundant_placeholder05
1while_while_cond_4404732___redundant_placeholder15
1while_while_cond_4404732___redundant_placeholder25
1while_while_cond_4404732___redundant_placeholder3
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4409435

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
while_cond_4405273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4405273___redundant_placeholder05
1while_while_cond_4405273___redundant_placeholder15
1while_while_cond_4405273___redundant_placeholder25
1while_while_cond_4405273___redundant_placeholder3
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
*__inference_lstm_730_layer_call_fn_4408130

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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4406182s
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
*__inference_lstm_730_layer_call_fn_4408097
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4404802|
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
?T
?
*sequential_243_lstm_730_while_body_4404073L
Hsequential_243_lstm_730_while_sequential_243_lstm_730_while_loop_counterR
Nsequential_243_lstm_730_while_sequential_243_lstm_730_while_maximum_iterations-
)sequential_243_lstm_730_while_placeholder/
+sequential_243_lstm_730_while_placeholder_1/
+sequential_243_lstm_730_while_placeholder_2/
+sequential_243_lstm_730_while_placeholder_3K
Gsequential_243_lstm_730_while_sequential_243_lstm_730_strided_slice_1_0?
?sequential_243_lstm_730_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_730_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_243_lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0:	d?a
Nsequential_243_lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?\
Msequential_243_lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0:	?*
&sequential_243_lstm_730_while_identity,
(sequential_243_lstm_730_while_identity_1,
(sequential_243_lstm_730_while_identity_2,
(sequential_243_lstm_730_while_identity_3,
(sequential_243_lstm_730_while_identity_4,
(sequential_243_lstm_730_while_identity_5I
Esequential_243_lstm_730_while_sequential_243_lstm_730_strided_slice_1?
?sequential_243_lstm_730_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_730_tensorarrayunstack_tensorlistfromtensor]
Jsequential_243_lstm_730_while_lstm_cell_727_matmul_readvariableop_resource:	d?_
Lsequential_243_lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource:	2?Z
Ksequential_243_lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource:	???Bsequential_243/lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp?Asequential_243/lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp?Csequential_243/lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp?
Osequential_243/lstm_730/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_243/lstm_730/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_243_lstm_730_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_730_tensorarrayunstack_tensorlistfromtensor_0)sequential_243_lstm_730_while_placeholderXsequential_243/lstm_730/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_243/lstm_730/while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOpLsequential_243_lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_243/lstm_730/while/lstm_cell_727/MatMulMatMulHsequential_243/lstm_730/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_243/lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_243/lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOpNsequential_243_lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_243/lstm_730/while/lstm_cell_727/MatMul_1MatMul+sequential_243_lstm_730_while_placeholder_2Ksequential_243/lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_243/lstm_730/while/lstm_cell_727/addAddV2<sequential_243/lstm_730/while/lstm_cell_727/MatMul:product:0>sequential_243/lstm_730/while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_243/lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOpMsequential_243_lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_243/lstm_730/while/lstm_cell_727/BiasAddBiasAdd3sequential_243/lstm_730/while/lstm_cell_727/add:z:0Jsequential_243/lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_243/lstm_730/while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_243/lstm_730/while/lstm_cell_727/splitSplitDsequential_243/lstm_730/while/lstm_cell_727/split/split_dim:output:0<sequential_243/lstm_730/while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_243/lstm_730/while/lstm_cell_727/SigmoidSigmoid:sequential_243/lstm_730/while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_243/lstm_730/while/lstm_cell_727/Sigmoid_1Sigmoid:sequential_243/lstm_730/while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_243/lstm_730/while/lstm_cell_727/mulMul9sequential_243/lstm_730/while/lstm_cell_727/Sigmoid_1:y:0+sequential_243_lstm_730_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_243/lstm_730/while/lstm_cell_727/ReluRelu:sequential_243/lstm_730/while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_243/lstm_730/while/lstm_cell_727/mul_1Mul7sequential_243/lstm_730/while/lstm_cell_727/Sigmoid:y:0>sequential_243/lstm_730/while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_243/lstm_730/while/lstm_cell_727/add_1AddV23sequential_243/lstm_730/while/lstm_cell_727/mul:z:05sequential_243/lstm_730/while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_243/lstm_730/while/lstm_cell_727/Sigmoid_2Sigmoid:sequential_243/lstm_730/while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_243/lstm_730/while/lstm_cell_727/Relu_1Relu5sequential_243/lstm_730/while/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_243/lstm_730/while/lstm_cell_727/mul_2Mul9sequential_243/lstm_730/while/lstm_cell_727/Sigmoid_2:y:0@sequential_243/lstm_730/while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_243/lstm_730/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_243_lstm_730_while_placeholder_1)sequential_243_lstm_730_while_placeholder5sequential_243/lstm_730/while/lstm_cell_727/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_243/lstm_730/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_243/lstm_730/while/addAddV2)sequential_243_lstm_730_while_placeholder,sequential_243/lstm_730/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_243/lstm_730/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_243/lstm_730/while/add_1AddV2Hsequential_243_lstm_730_while_sequential_243_lstm_730_while_loop_counter.sequential_243/lstm_730/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_243/lstm_730/while/IdentityIdentity'sequential_243/lstm_730/while/add_1:z:0#^sequential_243/lstm_730/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_730/while/Identity_1IdentityNsequential_243_lstm_730_while_sequential_243_lstm_730_while_maximum_iterations#^sequential_243/lstm_730/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_730/while/Identity_2Identity%sequential_243/lstm_730/while/add:z:0#^sequential_243/lstm_730/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_730/while/Identity_3IdentityRsequential_243/lstm_730/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_243/lstm_730/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_730/while/Identity_4Identity5sequential_243/lstm_730/while/lstm_cell_727/mul_2:z:0#^sequential_243/lstm_730/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_243/lstm_730/while/Identity_5Identity5sequential_243/lstm_730/while/lstm_cell_727/add_1:z:0#^sequential_243/lstm_730/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_243/lstm_730/while/NoOpNoOpC^sequential_243/lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOpB^sequential_243/lstm_730/while/lstm_cell_727/MatMul/ReadVariableOpD^sequential_243/lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_243_lstm_730_while_identity/sequential_243/lstm_730/while/Identity:output:0"]
(sequential_243_lstm_730_while_identity_11sequential_243/lstm_730/while/Identity_1:output:0"]
(sequential_243_lstm_730_while_identity_21sequential_243/lstm_730/while/Identity_2:output:0"]
(sequential_243_lstm_730_while_identity_31sequential_243/lstm_730/while/Identity_3:output:0"]
(sequential_243_lstm_730_while_identity_41sequential_243/lstm_730/while/Identity_4:output:0"]
(sequential_243_lstm_730_while_identity_51sequential_243/lstm_730/while/Identity_5:output:0"?
Ksequential_243_lstm_730_while_lstm_cell_727_biasadd_readvariableop_resourceMsequential_243_lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0"?
Lsequential_243_lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resourceNsequential_243_lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0"?
Jsequential_243_lstm_730_while_lstm_cell_727_matmul_readvariableop_resourceLsequential_243_lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0"?
Esequential_243_lstm_730_while_sequential_243_lstm_730_strided_slice_1Gsequential_243_lstm_730_while_sequential_243_lstm_730_strided_slice_1_0"?
?sequential_243_lstm_730_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_730_tensorarrayunstack_tensorlistfromtensor?sequential_243_lstm_730_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_730_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_243/lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOpBsequential_243/lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp2?
Asequential_243/lstm_730/while/lstm_cell_727/MatMul/ReadVariableOpAsequential_243/lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp2?
Csequential_243/lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOpCsequential_243/lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4408332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_727_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_727_matmul_readvariableop_resource:	d?G
4while_lstm_cell_727_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_727_biasadd_readvariableop_resource:	???*while/lstm_cell_727/BiasAdd/ReadVariableOp?)while/lstm_cell_727/MatMul/ReadVariableOp?+while/lstm_cell_727/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_727/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_727/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_727/addAddV2$while/lstm_cell_727/MatMul:product:0&while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_727/BiasAddBiasAddwhile/lstm_cell_727/add:z:02while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_727/splitSplit,while/lstm_cell_727/split/split_dim:output:0$while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_727/SigmoidSigmoid"while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_1Sigmoid"while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mulMul!while/lstm_cell_727/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_727/ReluRelu"while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_1Mulwhile/lstm_cell_727/Sigmoid:y:0&while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/add_1AddV2while/lstm_cell_727/mul:z:0while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_2Sigmoid"while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_727/Relu_1Reluwhile/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_2Mul!while/lstm_cell_727/Sigmoid_2:y:0(while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_727/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_727/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_727/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_727/BiasAdd/ReadVariableOp*^while/lstm_cell_727/MatMul/ReadVariableOp,^while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_727_biasadd_readvariableop_resource5while_lstm_cell_727_biasadd_readvariableop_resource_0"n
4while_lstm_cell_727_matmul_1_readvariableop_resource6while_lstm_cell_727_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_727_matmul_readvariableop_resource4while_lstm_cell_727_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_727/BiasAdd/ReadVariableOp*while/lstm_cell_727/BiasAdd/ReadVariableOp2V
)while/lstm_cell_727/MatMul/ReadVariableOp)while/lstm_cell_727/MatMul/ReadVariableOp2Z
+while/lstm_cell_727/MatMul_1/ReadVariableOp+while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4408947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4408947___redundant_placeholder05
1while_while_cond_4408947___redundant_placeholder15
1while_while_cond_4408947___redundant_placeholder25
1while_while_cond_4408947___redundant_placeholder3
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
0__inference_sequential_243_layer_call_fn_4405851
lstm_729_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_729_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4405826o
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
_user_specified_namelstm_729_input
?K
?
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407800
inputs_0?
,lstm_cell_726_matmul_readvariableop_resource:	?A
.lstm_cell_726_matmul_1_readvariableop_resource:	d?<
-lstm_cell_726_biasadd_readvariableop_resource:	?
identity??$lstm_cell_726/BiasAdd/ReadVariableOp?#lstm_cell_726/MatMul/ReadVariableOp?%lstm_cell_726/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_726/MatMul/ReadVariableOpReadVariableOp,lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_726/MatMulMatMulstrided_slice_2:output:0+lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_726/MatMul_1MatMulzeros:output:0-lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_726/addAddV2lstm_cell_726/MatMul:product:0 lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_726/BiasAddBiasAddlstm_cell_726/add:z:0,lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_726/splitSplit&lstm_cell_726/split/split_dim:output:0lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_726/SigmoidSigmoidlstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_1Sigmoidlstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_726/mulMullstm_cell_726/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_726/ReluRelulstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_1Mullstm_cell_726/Sigmoid:y:0 lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_726/add_1AddV2lstm_cell_726/mul:z:0lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_2Sigmoidlstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_726/Relu_1Relulstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_2Mullstm_cell_726/Sigmoid_2:y:0"lstm_cell_726/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_726_matmul_readvariableop_resource.lstm_cell_726_matmul_1_readvariableop_resource-lstm_cell_726_biasadd_readvariableop_resource*
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
while_body_4407716*
condR
while_cond_4407715*K
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
NoOpNoOp%^lstm_cell_726/BiasAdd/ReadVariableOp$^lstm_cell_726/MatMul/ReadVariableOp&^lstm_cell_726/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_726/BiasAdd/ReadVariableOp$lstm_cell_726/BiasAdd/ReadVariableOp2J
#lstm_cell_726/MatMul/ReadVariableOp#lstm_cell_726/MatMul/ReadVariableOp2N
%lstm_cell_726/MatMul_1/ReadVariableOp%lstm_cell_726/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_730_layer_call_fn_4408119

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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4405651s
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
?8
?
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405152

inputs'
lstm_cell_728_4405070:2('
lstm_cell_728_4405072:
(#
lstm_cell_728_4405074:(
identity??%lstm_cell_728/StatefulPartitionedCall?while;
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
%lstm_cell_728/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_728_4405070lstm_cell_728_4405072lstm_cell_728_4405074*
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405069n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_728_4405070lstm_cell_728_4405072lstm_cell_728_4405074*
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
while_body_4405083*
condR
while_cond_4405082*K
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
NoOpNoOp&^lstm_cell_728/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_728/StatefulPartitionedCall%lstm_cell_728/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_4405716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4405716___redundant_placeholder05
1while_while_cond_4405716___redundant_placeholder15
1while_while_cond_4405716___redundant_placeholder25
1while_while_cond_4405716___redundant_placeholder3
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404865

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

lstm_730_while_body_4407241.
*lstm_730_while_lstm_730_while_loop_counter4
0lstm_730_while_lstm_730_while_maximum_iterations
lstm_730_while_placeholder 
lstm_730_while_placeholder_1 
lstm_730_while_placeholder_2 
lstm_730_while_placeholder_3-
)lstm_730_while_lstm_730_strided_slice_1_0i
elstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0:	d?R
?lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?M
>lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
lstm_730_while_identity
lstm_730_while_identity_1
lstm_730_while_identity_2
lstm_730_while_identity_3
lstm_730_while_identity_4
lstm_730_while_identity_5+
'lstm_730_while_lstm_730_strided_slice_1g
clstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensorN
;lstm_730_while_lstm_cell_727_matmul_readvariableop_resource:	d?P
=lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource:	2?K
<lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource:	???3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp?2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp?4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp?
@lstm_730/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_730/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensor_0lstm_730_while_placeholderIlstm_730/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp=lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_730/while/lstm_cell_727/MatMulMatMul9lstm_730/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp?lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_730/while/lstm_cell_727/MatMul_1MatMullstm_730_while_placeholder_2<lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_730/while/lstm_cell_727/addAddV2-lstm_730/while/lstm_cell_727/MatMul:product:0/lstm_730/while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp>lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_730/while/lstm_cell_727/BiasAddBiasAdd$lstm_730/while/lstm_cell_727/add:z:0;lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_730/while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_730/while/lstm_cell_727/splitSplit5lstm_730/while/lstm_cell_727/split/split_dim:output:0-lstm_730/while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_730/while/lstm_cell_727/SigmoidSigmoid+lstm_730/while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_730/while/lstm_cell_727/Sigmoid_1Sigmoid+lstm_730/while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_730/while/lstm_cell_727/mulMul*lstm_730/while/lstm_cell_727/Sigmoid_1:y:0lstm_730_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_730/while/lstm_cell_727/ReluRelu+lstm_730/while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_730/while/lstm_cell_727/mul_1Mul(lstm_730/while/lstm_cell_727/Sigmoid:y:0/lstm_730/while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_730/while/lstm_cell_727/add_1AddV2$lstm_730/while/lstm_cell_727/mul:z:0&lstm_730/while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_730/while/lstm_cell_727/Sigmoid_2Sigmoid+lstm_730/while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_730/while/lstm_cell_727/Relu_1Relu&lstm_730/while/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_730/while/lstm_cell_727/mul_2Mul*lstm_730/while/lstm_cell_727/Sigmoid_2:y:01lstm_730/while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_730/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_730_while_placeholder_1lstm_730_while_placeholder&lstm_730/while/lstm_cell_727/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_730/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_730/while/addAddV2lstm_730_while_placeholderlstm_730/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_730/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_730/while/add_1AddV2*lstm_730_while_lstm_730_while_loop_counterlstm_730/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_730/while/IdentityIdentitylstm_730/while/add_1:z:0^lstm_730/while/NoOp*
T0*
_output_shapes
: ?
lstm_730/while/Identity_1Identity0lstm_730_while_lstm_730_while_maximum_iterations^lstm_730/while/NoOp*
T0*
_output_shapes
: t
lstm_730/while/Identity_2Identitylstm_730/while/add:z:0^lstm_730/while/NoOp*
T0*
_output_shapes
: ?
lstm_730/while/Identity_3IdentityClstm_730/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_730/while/NoOp*
T0*
_output_shapes
: ?
lstm_730/while/Identity_4Identity&lstm_730/while/lstm_cell_727/mul_2:z:0^lstm_730/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_730/while/Identity_5Identity&lstm_730/while/lstm_cell_727/add_1:z:0^lstm_730/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_730/while/NoOpNoOp4^lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp3^lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp5^lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_730_while_identity lstm_730/while/Identity:output:0"?
lstm_730_while_identity_1"lstm_730/while/Identity_1:output:0"?
lstm_730_while_identity_2"lstm_730/while/Identity_2:output:0"?
lstm_730_while_identity_3"lstm_730/while/Identity_3:output:0"?
lstm_730_while_identity_4"lstm_730/while/Identity_4:output:0"?
lstm_730_while_identity_5"lstm_730/while/Identity_5:output:0"T
'lstm_730_while_lstm_730_strided_slice_1)lstm_730_while_lstm_730_strided_slice_1_0"~
<lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource>lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0"?
=lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource?lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0"|
;lstm_730_while_lstm_cell_727_matmul_readvariableop_resource=lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0"?
clstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensorelstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp2h
2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp2l
4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_730_while_cond_4407240.
*lstm_730_while_lstm_730_while_loop_counter4
0lstm_730_while_lstm_730_while_maximum_iterations
lstm_730_while_placeholder 
lstm_730_while_placeholder_1 
lstm_730_while_placeholder_2 
lstm_730_while_placeholder_30
,lstm_730_while_less_lstm_730_strided_slice_1G
Clstm_730_while_lstm_730_while_cond_4407240___redundant_placeholder0G
Clstm_730_while_lstm_730_while_cond_4407240___redundant_placeholder1G
Clstm_730_while_lstm_730_while_cond_4407240___redundant_placeholder2G
Clstm_730_while_lstm_730_while_cond_4407240___redundant_placeholder3
lstm_730_while_identity
?
lstm_730/while/LessLesslstm_730_while_placeholder,lstm_730_while_less_lstm_730_strided_slice_1*
T0*
_output_shapes
: ]
lstm_730/while/IdentityIdentitylstm_730/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_730_while_identity lstm_730/while/Identity:output:0*(
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
while_cond_4409233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4409233___redundant_placeholder05
1while_while_cond_4409233___redundant_placeholder15
1while_while_cond_4409233___redundant_placeholder25
1while_while_cond_4409233___redundant_placeholder3
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
?
?
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406527
lstm_729_input#
lstm_729_4406500:	?#
lstm_729_4406502:	d?
lstm_729_4406504:	?#
lstm_730_4406507:	d?#
lstm_730_4406509:	2?
lstm_730_4406511:	?"
lstm_731_4406514:2("
lstm_731_4406516:
(
lstm_731_4406518:(#
dense_243_4406521:

dense_243_4406523:
identity??!dense_243/StatefulPartitionedCall? lstm_729/StatefulPartitionedCall? lstm_730/StatefulPartitionedCall? lstm_731/StatefulPartitionedCall?
 lstm_729/StatefulPartitionedCallStatefulPartitionedCalllstm_729_inputlstm_729_4406500lstm_729_4406502lstm_729_4406504*
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4406347?
 lstm_730/StatefulPartitionedCallStatefulPartitionedCall)lstm_729/StatefulPartitionedCall:output:0lstm_730_4406507lstm_730_4406509lstm_730_4406511*
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4406182?
 lstm_731/StatefulPartitionedCallStatefulPartitionedCall)lstm_730/StatefulPartitionedCall:output:0lstm_731_4406514lstm_731_4406516lstm_731_4406518*
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4406017?
!dense_243/StatefulPartitionedCallStatefulPartitionedCall)lstm_731/StatefulPartitionedCall:output:0dense_243_4406521dense_243_4406523*
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
F__inference_dense_243_layer_call_and_return_conditional_losses_4405819y
IdentityIdentity*dense_243/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_243/StatefulPartitionedCall!^lstm_729/StatefulPartitionedCall!^lstm_730/StatefulPartitionedCall!^lstm_731/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2D
 lstm_729/StatefulPartitionedCall lstm_729/StatefulPartitionedCall2D
 lstm_730/StatefulPartitionedCall lstm_730/StatefulPartitionedCall2D
 lstm_731/StatefulPartitionedCall lstm_731/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_729_input
?8
?
while_body_4408189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_727_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_727_matmul_readvariableop_resource:	d?G
4while_lstm_cell_727_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_727_biasadd_readvariableop_resource:	???*while/lstm_cell_727/BiasAdd/ReadVariableOp?)while/lstm_cell_727/MatMul/ReadVariableOp?+while/lstm_cell_727/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_727/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_727/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_727/addAddV2$while/lstm_cell_727/MatMul:product:0&while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_727/BiasAddBiasAddwhile/lstm_cell_727/add:z:02while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_727/splitSplit,while/lstm_cell_727/split/split_dim:output:0$while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_727/SigmoidSigmoid"while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_1Sigmoid"while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mulMul!while/lstm_cell_727/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_727/ReluRelu"while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_1Mulwhile/lstm_cell_727/Sigmoid:y:0&while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/add_1AddV2while/lstm_cell_727/mul:z:0while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_2Sigmoid"while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_727/Relu_1Reluwhile/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_2Mul!while/lstm_cell_727/Sigmoid_2:y:0(while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_727/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_727/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_727/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_727/BiasAdd/ReadVariableOp*^while/lstm_cell_727/MatMul/ReadVariableOp,^while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_727_biasadd_readvariableop_resource5while_lstm_cell_727_biasadd_readvariableop_resource_0"n
4while_lstm_cell_727_matmul_1_readvariableop_resource6while_lstm_cell_727_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_727_matmul_readvariableop_resource4while_lstm_cell_727_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_727/BiasAdd/ReadVariableOp*while/lstm_cell_727/BiasAdd/ReadVariableOp2V
)while/lstm_cell_727/MatMul/ReadVariableOp)while/lstm_cell_727/MatMul/ReadVariableOp2Z
+while/lstm_cell_727/MatMul_1/ReadVariableOp+while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4408948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_728_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_728_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_728_matmul_readvariableop_resource:2(F
4while_lstm_cell_728_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_728_biasadd_readvariableop_resource:(??*while/lstm_cell_728/BiasAdd/ReadVariableOp?)while/lstm_cell_728/MatMul/ReadVariableOp?+while/lstm_cell_728/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_728/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_728/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_728/addAddV2$while/lstm_cell_728/MatMul:product:0&while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_728/BiasAddBiasAddwhile/lstm_cell_728/add:z:02while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_728/splitSplit,while/lstm_cell_728/split/split_dim:output:0$while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_728/SigmoidSigmoid"while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_1Sigmoid"while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mulMul!while/lstm_cell_728/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_728/ReluRelu"while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_1Mulwhile/lstm_cell_728/Sigmoid:y:0&while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/add_1AddV2while/lstm_cell_728/mul:z:0while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_2Sigmoid"while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_728/Relu_1Reluwhile/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_2Mul!while/lstm_cell_728/Sigmoid_2:y:0(while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_728/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_728/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_728/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_728/BiasAdd/ReadVariableOp*^while/lstm_cell_728/MatMul/ReadVariableOp,^while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_728_biasadd_readvariableop_resource5while_lstm_cell_728_biasadd_readvariableop_resource_0"n
4while_lstm_cell_728_matmul_1_readvariableop_resource6while_lstm_cell_728_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_728_matmul_readvariableop_resource4while_lstm_cell_728_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_728/BiasAdd/ReadVariableOp*while/lstm_cell_728/BiasAdd/ReadVariableOp2V
)while/lstm_cell_728/MatMul/ReadVariableOp)while/lstm_cell_728/MatMul/ReadVariableOp2Z
+while/lstm_cell_728/MatMul_1/ReadVariableOp+while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4406182

inputs?
,lstm_cell_727_matmul_readvariableop_resource:	d?A
.lstm_cell_727_matmul_1_readvariableop_resource:	2?<
-lstm_cell_727_biasadd_readvariableop_resource:	?
identity??$lstm_cell_727/BiasAdd/ReadVariableOp?#lstm_cell_727/MatMul/ReadVariableOp?%lstm_cell_727/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_727/MatMul/ReadVariableOpReadVariableOp,lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_727/MatMulMatMulstrided_slice_2:output:0+lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_727/MatMul_1MatMulzeros:output:0-lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_727/addAddV2lstm_cell_727/MatMul:product:0 lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_727/BiasAddBiasAddlstm_cell_727/add:z:0,lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_727/splitSplit&lstm_cell_727/split/split_dim:output:0lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_727/SigmoidSigmoidlstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_1Sigmoidlstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_727/mulMullstm_cell_727/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_727/ReluRelulstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_1Mullstm_cell_727/Sigmoid:y:0 lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_727/add_1AddV2lstm_cell_727/mul:z:0lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_2Sigmoidlstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_727/Relu_1Relulstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_2Mullstm_cell_727/Sigmoid_2:y:0"lstm_cell_727/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_727_matmul_readvariableop_resource.lstm_cell_727_matmul_1_readvariableop_resource-lstm_cell_727_biasadd_readvariableop_resource*
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
while_body_4406098*
condR
while_cond_4406097*K
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
NoOpNoOp%^lstm_cell_727/BiasAdd/ReadVariableOp$^lstm_cell_727/MatMul/ReadVariableOp&^lstm_cell_727/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_727/BiasAdd/ReadVariableOp$lstm_cell_727/BiasAdd/ReadVariableOp2J
#lstm_cell_727/MatMul/ReadVariableOp#lstm_cell_727/MatMul/ReadVariableOp2N
%lstm_cell_727/MatMul_1/ReadVariableOp%lstm_cell_727/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4406263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_726_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_726_matmul_readvariableop_resource:	?G
4while_lstm_cell_726_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_726_biasadd_readvariableop_resource:	???*while/lstm_cell_726/BiasAdd/ReadVariableOp?)while/lstm_cell_726/MatMul/ReadVariableOp?+while/lstm_cell_726/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_726/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_726/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_726/addAddV2$while/lstm_cell_726/MatMul:product:0&while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_726/BiasAddBiasAddwhile/lstm_cell_726/add:z:02while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_726/splitSplit,while/lstm_cell_726/split/split_dim:output:0$while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_726/SigmoidSigmoid"while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_1Sigmoid"while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mulMul!while/lstm_cell_726/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_726/ReluRelu"while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_1Mulwhile/lstm_cell_726/Sigmoid:y:0&while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/add_1AddV2while/lstm_cell_726/mul:z:0while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_2Sigmoid"while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_726/Relu_1Reluwhile/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_2Mul!while/lstm_cell_726/Sigmoid_2:y:0(while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_726/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_726/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_726/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_726/BiasAdd/ReadVariableOp*^while/lstm_cell_726/MatMul/ReadVariableOp,^while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_726_biasadd_readvariableop_resource5while_lstm_cell_726_biasadd_readvariableop_resource_0"n
4while_lstm_cell_726_matmul_1_readvariableop_resource6while_lstm_cell_726_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_726_matmul_readvariableop_resource4while_lstm_cell_726_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_726/BiasAdd/ReadVariableOp*while/lstm_cell_726/BiasAdd/ReadVariableOp2V
)while/lstm_cell_726/MatMul/ReadVariableOp)while/lstm_cell_726/MatMul/ReadVariableOp2Z
+while/lstm_cell_726/MatMul_1/ReadVariableOp+while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4407716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_726_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_726_matmul_readvariableop_resource:	?G
4while_lstm_cell_726_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_726_biasadd_readvariableop_resource:	???*while/lstm_cell_726/BiasAdd/ReadVariableOp?)while/lstm_cell_726/MatMul/ReadVariableOp?+while/lstm_cell_726/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_726/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_726/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_726/addAddV2$while/lstm_cell_726/MatMul:product:0&while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_726/BiasAddBiasAddwhile/lstm_cell_726/add:z:02while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_726/splitSplit,while/lstm_cell_726/split/split_dim:output:0$while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_726/SigmoidSigmoid"while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_1Sigmoid"while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mulMul!while/lstm_cell_726/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_726/ReluRelu"while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_1Mulwhile/lstm_cell_726/Sigmoid:y:0&while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/add_1AddV2while/lstm_cell_726/mul:z:0while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_2Sigmoid"while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_726/Relu_1Reluwhile/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_2Mul!while/lstm_cell_726/Sigmoid_2:y:0(while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_726/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_726/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_726/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_726/BiasAdd/ReadVariableOp*^while/lstm_cell_726/MatMul/ReadVariableOp,^while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_726_biasadd_readvariableop_resource5while_lstm_cell_726_biasadd_readvariableop_resource_0"n
4while_lstm_cell_726_matmul_1_readvariableop_resource6while_lstm_cell_726_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_726_matmul_readvariableop_resource4while_lstm_cell_726_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_726/BiasAdd/ReadVariableOp*while/lstm_cell_726/BiasAdd/ReadVariableOp2V
)while/lstm_cell_726/MatMul/ReadVariableOp)while/lstm_cell_726/MatMul/ReadVariableOp2Z
+while/lstm_cell_726/MatMul_1/ReadVariableOp+while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_243_lstm_731_while_body_4404212L
Hsequential_243_lstm_731_while_sequential_243_lstm_731_while_loop_counterR
Nsequential_243_lstm_731_while_sequential_243_lstm_731_while_maximum_iterations-
)sequential_243_lstm_731_while_placeholder/
+sequential_243_lstm_731_while_placeholder_1/
+sequential_243_lstm_731_while_placeholder_2/
+sequential_243_lstm_731_while_placeholder_3K
Gsequential_243_lstm_731_while_sequential_243_lstm_731_strided_slice_1_0?
?sequential_243_lstm_731_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_731_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_243_lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0:2(`
Nsequential_243_lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0:
([
Msequential_243_lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0:(*
&sequential_243_lstm_731_while_identity,
(sequential_243_lstm_731_while_identity_1,
(sequential_243_lstm_731_while_identity_2,
(sequential_243_lstm_731_while_identity_3,
(sequential_243_lstm_731_while_identity_4,
(sequential_243_lstm_731_while_identity_5I
Esequential_243_lstm_731_while_sequential_243_lstm_731_strided_slice_1?
?sequential_243_lstm_731_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_731_tensorarrayunstack_tensorlistfromtensor\
Jsequential_243_lstm_731_while_lstm_cell_728_matmul_readvariableop_resource:2(^
Lsequential_243_lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource:
(Y
Ksequential_243_lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource:(??Bsequential_243/lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp?Asequential_243/lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp?Csequential_243/lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp?
Osequential_243/lstm_731/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_243/lstm_731/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_243_lstm_731_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_731_tensorarrayunstack_tensorlistfromtensor_0)sequential_243_lstm_731_while_placeholderXsequential_243/lstm_731/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_243/lstm_731/while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOpLsequential_243_lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_243/lstm_731/while/lstm_cell_728/MatMulMatMulHsequential_243/lstm_731/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_243/lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_243/lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOpNsequential_243_lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_243/lstm_731/while/lstm_cell_728/MatMul_1MatMul+sequential_243_lstm_731_while_placeholder_2Ksequential_243/lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_243/lstm_731/while/lstm_cell_728/addAddV2<sequential_243/lstm_731/while/lstm_cell_728/MatMul:product:0>sequential_243/lstm_731/while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_243/lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOpMsequential_243_lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_243/lstm_731/while/lstm_cell_728/BiasAddBiasAdd3sequential_243/lstm_731/while/lstm_cell_728/add:z:0Jsequential_243/lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_243/lstm_731/while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_243/lstm_731/while/lstm_cell_728/splitSplitDsequential_243/lstm_731/while/lstm_cell_728/split/split_dim:output:0<sequential_243/lstm_731/while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_243/lstm_731/while/lstm_cell_728/SigmoidSigmoid:sequential_243/lstm_731/while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_243/lstm_731/while/lstm_cell_728/Sigmoid_1Sigmoid:sequential_243/lstm_731/while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_243/lstm_731/while/lstm_cell_728/mulMul9sequential_243/lstm_731/while/lstm_cell_728/Sigmoid_1:y:0+sequential_243_lstm_731_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_243/lstm_731/while/lstm_cell_728/ReluRelu:sequential_243/lstm_731/while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_243/lstm_731/while/lstm_cell_728/mul_1Mul7sequential_243/lstm_731/while/lstm_cell_728/Sigmoid:y:0>sequential_243/lstm_731/while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_243/lstm_731/while/lstm_cell_728/add_1AddV23sequential_243/lstm_731/while/lstm_cell_728/mul:z:05sequential_243/lstm_731/while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_243/lstm_731/while/lstm_cell_728/Sigmoid_2Sigmoid:sequential_243/lstm_731/while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_243/lstm_731/while/lstm_cell_728/Relu_1Relu5sequential_243/lstm_731/while/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_243/lstm_731/while/lstm_cell_728/mul_2Mul9sequential_243/lstm_731/while/lstm_cell_728/Sigmoid_2:y:0@sequential_243/lstm_731/while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_243/lstm_731/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_243_lstm_731_while_placeholder_1)sequential_243_lstm_731_while_placeholder5sequential_243/lstm_731/while/lstm_cell_728/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_243/lstm_731/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_243/lstm_731/while/addAddV2)sequential_243_lstm_731_while_placeholder,sequential_243/lstm_731/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_243/lstm_731/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_243/lstm_731/while/add_1AddV2Hsequential_243_lstm_731_while_sequential_243_lstm_731_while_loop_counter.sequential_243/lstm_731/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_243/lstm_731/while/IdentityIdentity'sequential_243/lstm_731/while/add_1:z:0#^sequential_243/lstm_731/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_731/while/Identity_1IdentityNsequential_243_lstm_731_while_sequential_243_lstm_731_while_maximum_iterations#^sequential_243/lstm_731/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_731/while/Identity_2Identity%sequential_243/lstm_731/while/add:z:0#^sequential_243/lstm_731/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_731/while/Identity_3IdentityRsequential_243/lstm_731/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_243/lstm_731/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_731/while/Identity_4Identity5sequential_243/lstm_731/while/lstm_cell_728/mul_2:z:0#^sequential_243/lstm_731/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_243/lstm_731/while/Identity_5Identity5sequential_243/lstm_731/while/lstm_cell_728/add_1:z:0#^sequential_243/lstm_731/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_243/lstm_731/while/NoOpNoOpC^sequential_243/lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOpB^sequential_243/lstm_731/while/lstm_cell_728/MatMul/ReadVariableOpD^sequential_243/lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_243_lstm_731_while_identity/sequential_243/lstm_731/while/Identity:output:0"]
(sequential_243_lstm_731_while_identity_11sequential_243/lstm_731/while/Identity_1:output:0"]
(sequential_243_lstm_731_while_identity_21sequential_243/lstm_731/while/Identity_2:output:0"]
(sequential_243_lstm_731_while_identity_31sequential_243/lstm_731/while/Identity_3:output:0"]
(sequential_243_lstm_731_while_identity_41sequential_243/lstm_731/while/Identity_4:output:0"]
(sequential_243_lstm_731_while_identity_51sequential_243/lstm_731/while/Identity_5:output:0"?
Ksequential_243_lstm_731_while_lstm_cell_728_biasadd_readvariableop_resourceMsequential_243_lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0"?
Lsequential_243_lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resourceNsequential_243_lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0"?
Jsequential_243_lstm_731_while_lstm_cell_728_matmul_readvariableop_resourceLsequential_243_lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0"?
Esequential_243_lstm_731_while_sequential_243_lstm_731_strided_slice_1Gsequential_243_lstm_731_while_sequential_243_lstm_731_strided_slice_1_0"?
?sequential_243_lstm_731_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_731_tensorarrayunstack_tensorlistfromtensor?sequential_243_lstm_731_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_731_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_243/lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOpBsequential_243/lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp2?
Asequential_243/lstm_731/while/lstm_cell_728/MatMul/ReadVariableOpAsequential_243/lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp2?
Csequential_243/lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOpCsequential_243/lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4405651

inputs?
,lstm_cell_727_matmul_readvariableop_resource:	d?A
.lstm_cell_727_matmul_1_readvariableop_resource:	2?<
-lstm_cell_727_biasadd_readvariableop_resource:	?
identity??$lstm_cell_727/BiasAdd/ReadVariableOp?#lstm_cell_727/MatMul/ReadVariableOp?%lstm_cell_727/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_727/MatMul/ReadVariableOpReadVariableOp,lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_727/MatMulMatMulstrided_slice_2:output:0+lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_727/MatMul_1MatMulzeros:output:0-lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_727/addAddV2lstm_cell_727/MatMul:product:0 lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_727/BiasAddBiasAddlstm_cell_727/add:z:0,lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_727/splitSplit&lstm_cell_727/split/split_dim:output:0lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_727/SigmoidSigmoidlstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_1Sigmoidlstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_727/mulMullstm_cell_727/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_727/ReluRelulstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_1Mullstm_cell_727/Sigmoid:y:0 lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_727/add_1AddV2lstm_cell_727/mul:z:0lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_2Sigmoidlstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_727/Relu_1Relulstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_2Mullstm_cell_727/Sigmoid_2:y:0"lstm_cell_727/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_727_matmul_readvariableop_resource.lstm_cell_727_matmul_1_readvariableop_resource-lstm_cell_727_biasadd_readvariableop_resource*
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
while_body_4405567*
condR
while_cond_4405566*K
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
NoOpNoOp%^lstm_cell_727/BiasAdd/ReadVariableOp$^lstm_cell_727/MatMul/ReadVariableOp&^lstm_cell_727/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_727/BiasAdd/ReadVariableOp$lstm_cell_727/BiasAdd/ReadVariableOp2J
#lstm_cell_727/MatMul/ReadVariableOp#lstm_cell_727/MatMul/ReadVariableOp2N
%lstm_cell_727/MatMul_1/ReadVariableOp%lstm_cell_727/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_730_layer_call_fn_4408108
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4404993|
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
/__inference_lstm_cell_728_layer_call_fn_4409550

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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405069o
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
while_cond_4406097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4406097___redundant_placeholder05
1while_while_cond_4406097___redundant_placeholder15
1while_while_cond_4406097___redundant_placeholder25
1while_while_cond_4406097___redundant_placeholder3
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407657
inputs_0?
,lstm_cell_726_matmul_readvariableop_resource:	?A
.lstm_cell_726_matmul_1_readvariableop_resource:	d?<
-lstm_cell_726_biasadd_readvariableop_resource:	?
identity??$lstm_cell_726/BiasAdd/ReadVariableOp?#lstm_cell_726/MatMul/ReadVariableOp?%lstm_cell_726/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_726/MatMul/ReadVariableOpReadVariableOp,lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_726/MatMulMatMulstrided_slice_2:output:0+lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_726/MatMul_1MatMulzeros:output:0-lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_726/addAddV2lstm_cell_726/MatMul:product:0 lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_726/BiasAddBiasAddlstm_cell_726/add:z:0,lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_726/splitSplit&lstm_cell_726/split/split_dim:output:0lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_726/SigmoidSigmoidlstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_1Sigmoidlstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_726/mulMullstm_cell_726/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_726/ReluRelulstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_1Mullstm_cell_726/Sigmoid:y:0 lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_726/add_1AddV2lstm_cell_726/mul:z:0lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_2Sigmoidlstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_726/Relu_1Relulstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_2Mullstm_cell_726/Sigmoid_2:y:0"lstm_cell_726/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_726_matmul_readvariableop_resource.lstm_cell_726_matmul_1_readvariableop_resource-lstm_cell_726_biasadd_readvariableop_resource*
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
while_body_4407573*
condR
while_cond_4407572*K
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
NoOpNoOp%^lstm_cell_726/BiasAdd/ReadVariableOp$^lstm_cell_726/MatMul/ReadVariableOp&^lstm_cell_726/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_726/BiasAdd/ReadVariableOp$lstm_cell_726/BiasAdd/ReadVariableOp2J
#lstm_cell_726/MatMul/ReadVariableOp#lstm_cell_726/MatMul/ReadVariableOp2N
%lstm_cell_726/MatMul_1/ReadVariableOp%lstm_cell_726/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_731_layer_call_and_return_conditional_losses_4406017

inputs>
,lstm_cell_728_matmul_readvariableop_resource:2(@
.lstm_cell_728_matmul_1_readvariableop_resource:
(;
-lstm_cell_728_biasadd_readvariableop_resource:(
identity??$lstm_cell_728/BiasAdd/ReadVariableOp?#lstm_cell_728/MatMul/ReadVariableOp?%lstm_cell_728/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_728/MatMul/ReadVariableOpReadVariableOp,lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_728/MatMulMatMulstrided_slice_2:output:0+lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_728/MatMul_1MatMulzeros:output:0-lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_728/addAddV2lstm_cell_728/MatMul:product:0 lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_728/BiasAddBiasAddlstm_cell_728/add:z:0,lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_728/splitSplit&lstm_cell_728/split/split_dim:output:0lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_728/SigmoidSigmoidlstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_1Sigmoidlstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_728/mulMullstm_cell_728/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_728/ReluRelulstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_1Mullstm_cell_728/Sigmoid:y:0 lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_728/add_1AddV2lstm_cell_728/mul:z:0lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_2Sigmoidlstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_728/Relu_1Relulstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_2Mullstm_cell_728/Sigmoid_2:y:0"lstm_cell_728/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_728_matmul_readvariableop_resource.lstm_cell_728_matmul_1_readvariableop_resource-lstm_cell_728_biasadd_readvariableop_resource*
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
while_body_4405933*
condR
while_cond_4405932*K
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
NoOpNoOp%^lstm_cell_728/BiasAdd/ReadVariableOp$^lstm_cell_728/MatMul/ReadVariableOp&^lstm_cell_728/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_728/BiasAdd/ReadVariableOp$lstm_cell_728/BiasAdd/ReadVariableOp2J
#lstm_cell_728/MatMul/ReadVariableOp#lstm_cell_728/MatMul/ReadVariableOp2N
%lstm_cell_728/MatMul_1/ReadVariableOp%lstm_cell_728/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404369

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
while_body_4405933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_728_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_728_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_728_matmul_readvariableop_resource:2(F
4while_lstm_cell_728_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_728_biasadd_readvariableop_resource:(??*while/lstm_cell_728/BiasAdd/ReadVariableOp?)while/lstm_cell_728/MatMul/ReadVariableOp?+while/lstm_cell_728/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_728/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_728/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_728/addAddV2$while/lstm_cell_728/MatMul:product:0&while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_728/BiasAddBiasAddwhile/lstm_cell_728/add:z:02while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_728/splitSplit,while/lstm_cell_728/split/split_dim:output:0$while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_728/SigmoidSigmoid"while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_1Sigmoid"while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mulMul!while/lstm_cell_728/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_728/ReluRelu"while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_1Mulwhile/lstm_cell_728/Sigmoid:y:0&while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/add_1AddV2while/lstm_cell_728/mul:z:0while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_2Sigmoid"while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_728/Relu_1Reluwhile/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_2Mul!while/lstm_cell_728/Sigmoid_2:y:0(while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_728/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_728/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_728/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_728/BiasAdd/ReadVariableOp*^while/lstm_cell_728/MatMul/ReadVariableOp,^while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_728_biasadd_readvariableop_resource5while_lstm_cell_728_biasadd_readvariableop_resource_0"n
4while_lstm_cell_728_matmul_1_readvariableop_resource6while_lstm_cell_728_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_728_matmul_readvariableop_resource4while_lstm_cell_728_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_728/BiasAdd/ReadVariableOp*while/lstm_cell_728/BiasAdd/ReadVariableOp2V
)while/lstm_cell_728/MatMul/ReadVariableOp)while/lstm_cell_728/MatMul/ReadVariableOp2Z
+while/lstm_cell_728/MatMul_1/ReadVariableOp+while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_729_layer_call_fn_4407514

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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4406347s
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
while_cond_4408804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4408804___redundant_placeholder05
1while_while_cond_4408804___redundant_placeholder15
1while_while_cond_4408804___redundant_placeholder25
1while_while_cond_4408804___redundant_placeholder3
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408273
inputs_0?
,lstm_cell_727_matmul_readvariableop_resource:	d?A
.lstm_cell_727_matmul_1_readvariableop_resource:	2?<
-lstm_cell_727_biasadd_readvariableop_resource:	?
identity??$lstm_cell_727/BiasAdd/ReadVariableOp?#lstm_cell_727/MatMul/ReadVariableOp?%lstm_cell_727/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_727/MatMul/ReadVariableOpReadVariableOp,lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_727/MatMulMatMulstrided_slice_2:output:0+lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_727/MatMul_1MatMulzeros:output:0-lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_727/addAddV2lstm_cell_727/MatMul:product:0 lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_727/BiasAddBiasAddlstm_cell_727/add:z:0,lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_727/splitSplit&lstm_cell_727/split/split_dim:output:0lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_727/SigmoidSigmoidlstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_1Sigmoidlstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_727/mulMullstm_cell_727/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_727/ReluRelulstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_1Mullstm_cell_727/Sigmoid:y:0 lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_727/add_1AddV2lstm_cell_727/mul:z:0lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_2Sigmoidlstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_727/Relu_1Relulstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_2Mullstm_cell_727/Sigmoid_2:y:0"lstm_cell_727/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_727_matmul_readvariableop_resource.lstm_cell_727_matmul_1_readvariableop_resource-lstm_cell_727_biasadd_readvariableop_resource*
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
while_body_4408189*
condR
while_cond_4408188*K
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
NoOpNoOp%^lstm_cell_727/BiasAdd/ReadVariableOp$^lstm_cell_727/MatMul/ReadVariableOp&^lstm_cell_727/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_727/BiasAdd/ReadVariableOp$lstm_cell_727/BiasAdd/ReadVariableOp2J
#lstm_cell_727/MatMul/ReadVariableOp#lstm_cell_727/MatMul/ReadVariableOp2N
%lstm_cell_727/MatMul_1/ReadVariableOp%lstm_cell_727/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_4408001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4408001___redundant_placeholder05
1while_while_cond_4408001___redundant_placeholder15
1while_while_cond_4408001___redundant_placeholder25
1while_while_cond_4408001___redundant_placeholder3
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404719

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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404515

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
?
?
K__inference_sequential_243_layer_call_and_return_conditional_losses_4405826

inputs#
lstm_729_4405502:	?#
lstm_729_4405504:	d?
lstm_729_4405506:	?#
lstm_730_4405652:	d?#
lstm_730_4405654:	2?
lstm_730_4405656:	?"
lstm_731_4405802:2("
lstm_731_4405804:
(
lstm_731_4405806:(#
dense_243_4405820:

dense_243_4405822:
identity??!dense_243/StatefulPartitionedCall? lstm_729/StatefulPartitionedCall? lstm_730/StatefulPartitionedCall? lstm_731/StatefulPartitionedCall?
 lstm_729/StatefulPartitionedCallStatefulPartitionedCallinputslstm_729_4405502lstm_729_4405504lstm_729_4405506*
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4405501?
 lstm_730/StatefulPartitionedCallStatefulPartitionedCall)lstm_729/StatefulPartitionedCall:output:0lstm_730_4405652lstm_730_4405654lstm_730_4405656*
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4405651?
 lstm_731/StatefulPartitionedCallStatefulPartitionedCall)lstm_730/StatefulPartitionedCall:output:0lstm_731_4405802lstm_731_4405804lstm_731_4405806*
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405801?
!dense_243/StatefulPartitionedCallStatefulPartitionedCall)lstm_731/StatefulPartitionedCall:output:0dense_243_4405820dense_243_4405822*
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
F__inference_dense_243_layer_call_and_return_conditional_losses_4405819y
IdentityIdentity*dense_243/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_243/StatefulPartitionedCall!^lstm_729/StatefulPartitionedCall!^lstm_730/StatefulPartitionedCall!^lstm_731/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2D
 lstm_729/StatefulPartitionedCall lstm_729/StatefulPartitionedCall2D
 lstm_730/StatefulPartitionedCall lstm_730/StatefulPartitionedCall2D
 lstm_731/StatefulPartitionedCall lstm_731/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4405717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_728_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_728_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_728_matmul_readvariableop_resource:2(F
4while_lstm_cell_728_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_728_biasadd_readvariableop_resource:(??*while/lstm_cell_728/BiasAdd/ReadVariableOp?)while/lstm_cell_728/MatMul/ReadVariableOp?+while/lstm_cell_728/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_728/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_728/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_728/addAddV2$while/lstm_cell_728/MatMul:product:0&while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_728/BiasAddBiasAddwhile/lstm_cell_728/add:z:02while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_728/splitSplit,while/lstm_cell_728/split/split_dim:output:0$while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_728/SigmoidSigmoid"while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_1Sigmoid"while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mulMul!while/lstm_cell_728/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_728/ReluRelu"while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_1Mulwhile/lstm_cell_728/Sigmoid:y:0&while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/add_1AddV2while/lstm_cell_728/mul:z:0while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_728/Sigmoid_2Sigmoid"while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_728/Relu_1Reluwhile/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_728/mul_2Mul!while/lstm_cell_728/Sigmoid_2:y:0(while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_728/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_728/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_728/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_728/BiasAdd/ReadVariableOp*^while/lstm_cell_728/MatMul/ReadVariableOp,^while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_728_biasadd_readvariableop_resource5while_lstm_cell_728_biasadd_readvariableop_resource_0"n
4while_lstm_cell_728_matmul_1_readvariableop_resource6while_lstm_cell_728_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_728_matmul_readvariableop_resource4while_lstm_cell_728_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_728/BiasAdd/ReadVariableOp*while/lstm_cell_728/BiasAdd/ReadVariableOp2V
)while/lstm_cell_728/MatMul/ReadVariableOp)while/lstm_cell_728/MatMul/ReadVariableOp2Z
+while/lstm_cell_728/MatMul_1/ReadVariableOp+while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_731_while_body_4407380.
*lstm_731_while_lstm_731_while_loop_counter4
0lstm_731_while_lstm_731_while_maximum_iterations
lstm_731_while_placeholder 
lstm_731_while_placeholder_1 
lstm_731_while_placeholder_2 
lstm_731_while_placeholder_3-
)lstm_731_while_lstm_731_strided_slice_1_0i
elstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0:2(Q
?lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0:
(L
>lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0:(
lstm_731_while_identity
lstm_731_while_identity_1
lstm_731_while_identity_2
lstm_731_while_identity_3
lstm_731_while_identity_4
lstm_731_while_identity_5+
'lstm_731_while_lstm_731_strided_slice_1g
clstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensorM
;lstm_731_while_lstm_cell_728_matmul_readvariableop_resource:2(O
=lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource:
(J
<lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource:(??3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp?2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp?4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp?
@lstm_731/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_731/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensor_0lstm_731_while_placeholderIlstm_731/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOpReadVariableOp=lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_731/while/lstm_cell_728/MatMulMatMul9lstm_731/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp?lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_731/while/lstm_cell_728/MatMul_1MatMullstm_731_while_placeholder_2<lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_731/while/lstm_cell_728/addAddV2-lstm_731/while/lstm_cell_728/MatMul:product:0/lstm_731/while/lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp>lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_731/while/lstm_cell_728/BiasAddBiasAdd$lstm_731/while/lstm_cell_728/add:z:0;lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_731/while/lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_731/while/lstm_cell_728/splitSplit5lstm_731/while/lstm_cell_728/split/split_dim:output:0-lstm_731/while/lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_731/while/lstm_cell_728/SigmoidSigmoid+lstm_731/while/lstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_731/while/lstm_cell_728/Sigmoid_1Sigmoid+lstm_731/while/lstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_731/while/lstm_cell_728/mulMul*lstm_731/while/lstm_cell_728/Sigmoid_1:y:0lstm_731_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_731/while/lstm_cell_728/ReluRelu+lstm_731/while/lstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_731/while/lstm_cell_728/mul_1Mul(lstm_731/while/lstm_cell_728/Sigmoid:y:0/lstm_731/while/lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_731/while/lstm_cell_728/add_1AddV2$lstm_731/while/lstm_cell_728/mul:z:0&lstm_731/while/lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_731/while/lstm_cell_728/Sigmoid_2Sigmoid+lstm_731/while/lstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_731/while/lstm_cell_728/Relu_1Relu&lstm_731/while/lstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_731/while/lstm_cell_728/mul_2Mul*lstm_731/while/lstm_cell_728/Sigmoid_2:y:01lstm_731/while/lstm_cell_728/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_731/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_731_while_placeholder_1lstm_731_while_placeholder&lstm_731/while/lstm_cell_728/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_731/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_731/while/addAddV2lstm_731_while_placeholderlstm_731/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_731/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_731/while/add_1AddV2*lstm_731_while_lstm_731_while_loop_counterlstm_731/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_731/while/IdentityIdentitylstm_731/while/add_1:z:0^lstm_731/while/NoOp*
T0*
_output_shapes
: ?
lstm_731/while/Identity_1Identity0lstm_731_while_lstm_731_while_maximum_iterations^lstm_731/while/NoOp*
T0*
_output_shapes
: t
lstm_731/while/Identity_2Identitylstm_731/while/add:z:0^lstm_731/while/NoOp*
T0*
_output_shapes
: ?
lstm_731/while/Identity_3IdentityClstm_731/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_731/while/NoOp*
T0*
_output_shapes
: ?
lstm_731/while/Identity_4Identity&lstm_731/while/lstm_cell_728/mul_2:z:0^lstm_731/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_731/while/Identity_5Identity&lstm_731/while/lstm_cell_728/add_1:z:0^lstm_731/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_731/while/NoOpNoOp4^lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp3^lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp5^lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_731_while_identity lstm_731/while/Identity:output:0"?
lstm_731_while_identity_1"lstm_731/while/Identity_1:output:0"?
lstm_731_while_identity_2"lstm_731/while/Identity_2:output:0"?
lstm_731_while_identity_3"lstm_731/while/Identity_3:output:0"?
lstm_731_while_identity_4"lstm_731/while/Identity_4:output:0"?
lstm_731_while_identity_5"lstm_731/while/Identity_5:output:0"T
'lstm_731_while_lstm_731_strided_slice_1)lstm_731_while_lstm_731_strided_slice_1_0"~
<lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource>lstm_731_while_lstm_cell_728_biasadd_readvariableop_resource_0"?
=lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource?lstm_731_while_lstm_cell_728_matmul_1_readvariableop_resource_0"|
;lstm_731_while_lstm_cell_728_matmul_readvariableop_resource=lstm_731_while_lstm_cell_728_matmul_readvariableop_resource_0"?
clstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensorelstm_731_while_tensorarrayv2read_tensorlistgetitem_lstm_731_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp3lstm_731/while/lstm_cell_728/BiasAdd/ReadVariableOp2h
2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp2lstm_731/while/lstm_cell_728/MatMul/ReadVariableOp2l
4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp4lstm_731/while/lstm_cell_728/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_729_layer_call_fn_4407492
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4404643|
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
while_body_4407859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_726_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_726_matmul_readvariableop_resource:	?G
4while_lstm_cell_726_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_726_biasadd_readvariableop_resource:	???*while/lstm_cell_726/BiasAdd/ReadVariableOp?)while/lstm_cell_726/MatMul/ReadVariableOp?+while/lstm_cell_726/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_726/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_726/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_726/addAddV2$while/lstm_cell_726/MatMul:product:0&while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_726/BiasAddBiasAddwhile/lstm_cell_726/add:z:02while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_726/splitSplit,while/lstm_cell_726/split/split_dim:output:0$while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_726/SigmoidSigmoid"while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_1Sigmoid"while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mulMul!while/lstm_cell_726/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_726/ReluRelu"while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_1Mulwhile/lstm_cell_726/Sigmoid:y:0&while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/add_1AddV2while/lstm_cell_726/mul:z:0while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_2Sigmoid"while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_726/Relu_1Reluwhile/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_2Mul!while/lstm_cell_726/Sigmoid_2:y:0(while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_726/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_726/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_726/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_726/BiasAdd/ReadVariableOp*^while/lstm_cell_726/MatMul/ReadVariableOp,^while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_726_biasadd_readvariableop_resource5while_lstm_cell_726_biasadd_readvariableop_resource_0"n
4while_lstm_cell_726_matmul_1_readvariableop_resource6while_lstm_cell_726_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_726_matmul_readvariableop_resource4while_lstm_cell_726_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_726/BiasAdd/ReadVariableOp*while/lstm_cell_726/BiasAdd/ReadVariableOp2V
)while/lstm_cell_726/MatMul/ReadVariableOp)while/lstm_cell_726/MatMul/ReadVariableOp2Z
+while/lstm_cell_726/MatMul_1/ReadVariableOp+while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4408475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_727_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_727_matmul_readvariableop_resource:	d?G
4while_lstm_cell_727_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_727_biasadd_readvariableop_resource:	???*while/lstm_cell_727/BiasAdd/ReadVariableOp?)while/lstm_cell_727/MatMul/ReadVariableOp?+while/lstm_cell_727/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_727/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_727/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_727/addAddV2$while/lstm_cell_727/MatMul:product:0&while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_727/BiasAddBiasAddwhile/lstm_cell_727/add:z:02while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_727/splitSplit,while/lstm_cell_727/split/split_dim:output:0$while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_727/SigmoidSigmoid"while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_1Sigmoid"while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mulMul!while/lstm_cell_727/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_727/ReluRelu"while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_1Mulwhile/lstm_cell_727/Sigmoid:y:0&while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/add_1AddV2while/lstm_cell_727/mul:z:0while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_2Sigmoid"while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_727/Relu_1Reluwhile/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_2Mul!while/lstm_cell_727/Sigmoid_2:y:0(while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_727/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_727/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_727/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_727/BiasAdd/ReadVariableOp*^while/lstm_cell_727/MatMul/ReadVariableOp,^while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_727_biasadd_readvariableop_resource5while_lstm_cell_727_biasadd_readvariableop_resource_0"n
4while_lstm_cell_727_matmul_1_readvariableop_resource6while_lstm_cell_727_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_727_matmul_readvariableop_resource4while_lstm_cell_727_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_727/BiasAdd/ReadVariableOp*while/lstm_cell_727/BiasAdd/ReadVariableOp2V
)while/lstm_cell_727/MatMul/ReadVariableOp)while/lstm_cell_727/MatMul/ReadVariableOp2Z
+while/lstm_cell_727/MatMul_1/ReadVariableOp+while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
*sequential_243_lstm_729_while_body_4403934L
Hsequential_243_lstm_729_while_sequential_243_lstm_729_while_loop_counterR
Nsequential_243_lstm_729_while_sequential_243_lstm_729_while_maximum_iterations-
)sequential_243_lstm_729_while_placeholder/
+sequential_243_lstm_729_while_placeholder_1/
+sequential_243_lstm_729_while_placeholder_2/
+sequential_243_lstm_729_while_placeholder_3K
Gsequential_243_lstm_729_while_sequential_243_lstm_729_strided_slice_1_0?
?sequential_243_lstm_729_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_729_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_243_lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0:	?a
Nsequential_243_lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?\
Msequential_243_lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0:	?*
&sequential_243_lstm_729_while_identity,
(sequential_243_lstm_729_while_identity_1,
(sequential_243_lstm_729_while_identity_2,
(sequential_243_lstm_729_while_identity_3,
(sequential_243_lstm_729_while_identity_4,
(sequential_243_lstm_729_while_identity_5I
Esequential_243_lstm_729_while_sequential_243_lstm_729_strided_slice_1?
?sequential_243_lstm_729_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_729_tensorarrayunstack_tensorlistfromtensor]
Jsequential_243_lstm_729_while_lstm_cell_726_matmul_readvariableop_resource:	?_
Lsequential_243_lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource:	d?Z
Ksequential_243_lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource:	???Bsequential_243/lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp?Asequential_243/lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp?Csequential_243/lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp?
Osequential_243/lstm_729/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_243/lstm_729/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_243_lstm_729_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_729_tensorarrayunstack_tensorlistfromtensor_0)sequential_243_lstm_729_while_placeholderXsequential_243/lstm_729/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_243/lstm_729/while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOpLsequential_243_lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_243/lstm_729/while/lstm_cell_726/MatMulMatMulHsequential_243/lstm_729/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_243/lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_243/lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOpNsequential_243_lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_243/lstm_729/while/lstm_cell_726/MatMul_1MatMul+sequential_243_lstm_729_while_placeholder_2Ksequential_243/lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_243/lstm_729/while/lstm_cell_726/addAddV2<sequential_243/lstm_729/while/lstm_cell_726/MatMul:product:0>sequential_243/lstm_729/while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_243/lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOpMsequential_243_lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_243/lstm_729/while/lstm_cell_726/BiasAddBiasAdd3sequential_243/lstm_729/while/lstm_cell_726/add:z:0Jsequential_243/lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_243/lstm_729/while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_243/lstm_729/while/lstm_cell_726/splitSplitDsequential_243/lstm_729/while/lstm_cell_726/split/split_dim:output:0<sequential_243/lstm_729/while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_243/lstm_729/while/lstm_cell_726/SigmoidSigmoid:sequential_243/lstm_729/while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_243/lstm_729/while/lstm_cell_726/Sigmoid_1Sigmoid:sequential_243/lstm_729/while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_243/lstm_729/while/lstm_cell_726/mulMul9sequential_243/lstm_729/while/lstm_cell_726/Sigmoid_1:y:0+sequential_243_lstm_729_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_243/lstm_729/while/lstm_cell_726/ReluRelu:sequential_243/lstm_729/while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_243/lstm_729/while/lstm_cell_726/mul_1Mul7sequential_243/lstm_729/while/lstm_cell_726/Sigmoid:y:0>sequential_243/lstm_729/while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_243/lstm_729/while/lstm_cell_726/add_1AddV23sequential_243/lstm_729/while/lstm_cell_726/mul:z:05sequential_243/lstm_729/while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_243/lstm_729/while/lstm_cell_726/Sigmoid_2Sigmoid:sequential_243/lstm_729/while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_243/lstm_729/while/lstm_cell_726/Relu_1Relu5sequential_243/lstm_729/while/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_243/lstm_729/while/lstm_cell_726/mul_2Mul9sequential_243/lstm_729/while/lstm_cell_726/Sigmoid_2:y:0@sequential_243/lstm_729/while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_243/lstm_729/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_243_lstm_729_while_placeholder_1)sequential_243_lstm_729_while_placeholder5sequential_243/lstm_729/while/lstm_cell_726/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_243/lstm_729/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_243/lstm_729/while/addAddV2)sequential_243_lstm_729_while_placeholder,sequential_243/lstm_729/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_243/lstm_729/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_243/lstm_729/while/add_1AddV2Hsequential_243_lstm_729_while_sequential_243_lstm_729_while_loop_counter.sequential_243/lstm_729/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_243/lstm_729/while/IdentityIdentity'sequential_243/lstm_729/while/add_1:z:0#^sequential_243/lstm_729/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_729/while/Identity_1IdentityNsequential_243_lstm_729_while_sequential_243_lstm_729_while_maximum_iterations#^sequential_243/lstm_729/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_729/while/Identity_2Identity%sequential_243/lstm_729/while/add:z:0#^sequential_243/lstm_729/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_729/while/Identity_3IdentityRsequential_243/lstm_729/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_243/lstm_729/while/NoOp*
T0*
_output_shapes
: ?
(sequential_243/lstm_729/while/Identity_4Identity5sequential_243/lstm_729/while/lstm_cell_726/mul_2:z:0#^sequential_243/lstm_729/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_243/lstm_729/while/Identity_5Identity5sequential_243/lstm_729/while/lstm_cell_726/add_1:z:0#^sequential_243/lstm_729/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_243/lstm_729/while/NoOpNoOpC^sequential_243/lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOpB^sequential_243/lstm_729/while/lstm_cell_726/MatMul/ReadVariableOpD^sequential_243/lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_243_lstm_729_while_identity/sequential_243/lstm_729/while/Identity:output:0"]
(sequential_243_lstm_729_while_identity_11sequential_243/lstm_729/while/Identity_1:output:0"]
(sequential_243_lstm_729_while_identity_21sequential_243/lstm_729/while/Identity_2:output:0"]
(sequential_243_lstm_729_while_identity_31sequential_243/lstm_729/while/Identity_3:output:0"]
(sequential_243_lstm_729_while_identity_41sequential_243/lstm_729/while/Identity_4:output:0"]
(sequential_243_lstm_729_while_identity_51sequential_243/lstm_729/while/Identity_5:output:0"?
Ksequential_243_lstm_729_while_lstm_cell_726_biasadd_readvariableop_resourceMsequential_243_lstm_729_while_lstm_cell_726_biasadd_readvariableop_resource_0"?
Lsequential_243_lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resourceNsequential_243_lstm_729_while_lstm_cell_726_matmul_1_readvariableop_resource_0"?
Jsequential_243_lstm_729_while_lstm_cell_726_matmul_readvariableop_resourceLsequential_243_lstm_729_while_lstm_cell_726_matmul_readvariableop_resource_0"?
Esequential_243_lstm_729_while_sequential_243_lstm_729_strided_slice_1Gsequential_243_lstm_729_while_sequential_243_lstm_729_strided_slice_1_0"?
?sequential_243_lstm_729_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_729_tensorarrayunstack_tensorlistfromtensor?sequential_243_lstm_729_while_tensorarrayv2read_tensorlistgetitem_sequential_243_lstm_729_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_243/lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOpBsequential_243/lstm_729/while/lstm_cell_726/BiasAdd/ReadVariableOp2?
Asequential_243/lstm_729/while/lstm_cell_726/MatMul/ReadVariableOpAsequential_243/lstm_729/while/lstm_cell_726/MatMul/ReadVariableOp2?
Csequential_243/lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOpCsequential_243/lstm_729/while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4409599

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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409175

inputs>
,lstm_cell_728_matmul_readvariableop_resource:2(@
.lstm_cell_728_matmul_1_readvariableop_resource:
(;
-lstm_cell_728_biasadd_readvariableop_resource:(
identity??$lstm_cell_728/BiasAdd/ReadVariableOp?#lstm_cell_728/MatMul/ReadVariableOp?%lstm_cell_728/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_728/MatMul/ReadVariableOpReadVariableOp,lstm_cell_728_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_728/MatMulMatMulstrided_slice_2:output:0+lstm_cell_728/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_728/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_728_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_728/MatMul_1MatMulzeros:output:0-lstm_cell_728/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_728/addAddV2lstm_cell_728/MatMul:product:0 lstm_cell_728/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_728/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_728_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_728/BiasAddBiasAddlstm_cell_728/add:z:0,lstm_cell_728/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_728/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_728/splitSplit&lstm_cell_728/split/split_dim:output:0lstm_cell_728/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_728/SigmoidSigmoidlstm_cell_728/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_1Sigmoidlstm_cell_728/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_728/mulMullstm_cell_728/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_728/ReluRelulstm_cell_728/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_1Mullstm_cell_728/Sigmoid:y:0 lstm_cell_728/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_728/add_1AddV2lstm_cell_728/mul:z:0lstm_cell_728/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_728/Sigmoid_2Sigmoidlstm_cell_728/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_728/Relu_1Relulstm_cell_728/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_728/mul_2Mullstm_cell_728/Sigmoid_2:y:0"lstm_cell_728/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_728_matmul_readvariableop_resource.lstm_cell_728_matmul_1_readvariableop_resource-lstm_cell_728_biasadd_readvariableop_resource*
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
while_body_4409091*
condR
while_cond_4409090*K
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
NoOpNoOp%^lstm_cell_728/BiasAdd/ReadVariableOp$^lstm_cell_728/MatMul/ReadVariableOp&^lstm_cell_728/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_728/BiasAdd/ReadVariableOp$lstm_cell_728/BiasAdd/ReadVariableOp2J
#lstm_cell_728/MatMul/ReadVariableOp#lstm_cell_728/MatMul/ReadVariableOp2N
%lstm_cell_728/MatMul_1/ReadVariableOp%lstm_cell_728/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4404923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4404923___redundant_placeholder05
1while_while_cond_4404923___redundant_placeholder15
1while_while_cond_4404923___redundant_placeholder25
1while_while_cond_4404923___redundant_placeholder3
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
while_body_4407573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_726_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_726_matmul_readvariableop_resource:	?G
4while_lstm_cell_726_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_726_biasadd_readvariableop_resource:	???*while/lstm_cell_726/BiasAdd/ReadVariableOp?)while/lstm_cell_726/MatMul/ReadVariableOp?+while/lstm_cell_726/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_726/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_726/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_726/addAddV2$while/lstm_cell_726/MatMul:product:0&while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_726/BiasAddBiasAddwhile/lstm_cell_726/add:z:02while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_726/splitSplit,while/lstm_cell_726/split/split_dim:output:0$while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_726/SigmoidSigmoid"while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_1Sigmoid"while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mulMul!while/lstm_cell_726/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_726/ReluRelu"while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_1Mulwhile/lstm_cell_726/Sigmoid:y:0&while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/add_1AddV2while/lstm_cell_726/mul:z:0while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_2Sigmoid"while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_726/Relu_1Reluwhile/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_2Mul!while/lstm_cell_726/Sigmoid_2:y:0(while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_726/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_726/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_726/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_726/BiasAdd/ReadVariableOp*^while/lstm_cell_726/MatMul/ReadVariableOp,^while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_726_biasadd_readvariableop_resource5while_lstm_cell_726_biasadd_readvariableop_resource_0"n
4while_lstm_cell_726_matmul_1_readvariableop_resource6while_lstm_cell_726_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_726_matmul_readvariableop_resource4while_lstm_cell_726_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_726/BiasAdd/ReadVariableOp*while/lstm_cell_726/BiasAdd/ReadVariableOp2V
)while/lstm_cell_726/MatMul/ReadVariableOp)while/lstm_cell_726/MatMul/ReadVariableOp2Z
+while/lstm_cell_726/MatMul_1/ReadVariableOp+while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405215

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
*__inference_lstm_731_layer_call_fn_4408746

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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4406017o
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
while_cond_4408331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4408331___redundant_placeholder05
1while_while_cond_4408331___redundant_placeholder15
1while_while_cond_4408331___redundant_placeholder25
1while_while_cond_4408331___redundant_placeholder3
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4409533

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
/__inference_lstm_cell_728_layer_call_fn_4409567

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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405215o
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
?
E__inference_lstm_731_layer_call_and_return_conditional_losses_4405343

inputs'
lstm_cell_728_4405261:2('
lstm_cell_728_4405263:
(#
lstm_cell_728_4405265:(
identity??%lstm_cell_728/StatefulPartitionedCall?while;
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
%lstm_cell_728/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_728_4405261lstm_cell_728_4405263lstm_cell_728_4405265*
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405215n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_728_4405261lstm_cell_728_4405263lstm_cell_728_4405265*
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
while_body_4405274*
condR
while_cond_4405273*K
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
NoOpNoOp&^lstm_cell_728/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_728/StatefulPartitionedCall%lstm_cell_728/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4409774
file_prefix/
+savev2_dense_243_kernel_read_readvariableop-
)savev2_dense_243_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_729_lstm_cell_729_kernel_read_readvariableopF
Bsavev2_lstm_729_lstm_cell_729_recurrent_kernel_read_readvariableop:
6savev2_lstm_729_lstm_cell_729_bias_read_readvariableop<
8savev2_lstm_730_lstm_cell_730_kernel_read_readvariableopF
Bsavev2_lstm_730_lstm_cell_730_recurrent_kernel_read_readvariableop:
6savev2_lstm_730_lstm_cell_730_bias_read_readvariableop<
8savev2_lstm_731_lstm_cell_731_kernel_read_readvariableopF
Bsavev2_lstm_731_lstm_cell_731_recurrent_kernel_read_readvariableop:
6savev2_lstm_731_lstm_cell_731_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_243_kernel_m_read_readvariableop4
0savev2_adam_dense_243_bias_m_read_readvariableopC
?savev2_adam_lstm_729_lstm_cell_729_kernel_m_read_readvariableopM
Isavev2_adam_lstm_729_lstm_cell_729_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_729_lstm_cell_729_bias_m_read_readvariableopC
?savev2_adam_lstm_730_lstm_cell_730_kernel_m_read_readvariableopM
Isavev2_adam_lstm_730_lstm_cell_730_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_730_lstm_cell_730_bias_m_read_readvariableopC
?savev2_adam_lstm_731_lstm_cell_731_kernel_m_read_readvariableopM
Isavev2_adam_lstm_731_lstm_cell_731_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_731_lstm_cell_731_bias_m_read_readvariableop6
2savev2_adam_dense_243_kernel_v_read_readvariableop4
0savev2_adam_dense_243_bias_v_read_readvariableopC
?savev2_adam_lstm_729_lstm_cell_729_kernel_v_read_readvariableopM
Isavev2_adam_lstm_729_lstm_cell_729_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_729_lstm_cell_729_bias_v_read_readvariableopC
?savev2_adam_lstm_730_lstm_cell_730_kernel_v_read_readvariableopM
Isavev2_adam_lstm_730_lstm_cell_730_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_730_lstm_cell_730_bias_v_read_readvariableopC
?savev2_adam_lstm_731_lstm_cell_731_kernel_v_read_readvariableopM
Isavev2_adam_lstm_731_lstm_cell_731_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_731_lstm_cell_731_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_243_kernel_read_readvariableop)savev2_dense_243_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_729_lstm_cell_729_kernel_read_readvariableopBsavev2_lstm_729_lstm_cell_729_recurrent_kernel_read_readvariableop6savev2_lstm_729_lstm_cell_729_bias_read_readvariableop8savev2_lstm_730_lstm_cell_730_kernel_read_readvariableopBsavev2_lstm_730_lstm_cell_730_recurrent_kernel_read_readvariableop6savev2_lstm_730_lstm_cell_730_bias_read_readvariableop8savev2_lstm_731_lstm_cell_731_kernel_read_readvariableopBsavev2_lstm_731_lstm_cell_731_recurrent_kernel_read_readvariableop6savev2_lstm_731_lstm_cell_731_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_243_kernel_m_read_readvariableop0savev2_adam_dense_243_bias_m_read_readvariableop?savev2_adam_lstm_729_lstm_cell_729_kernel_m_read_readvariableopIsavev2_adam_lstm_729_lstm_cell_729_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_729_lstm_cell_729_bias_m_read_readvariableop?savev2_adam_lstm_730_lstm_cell_730_kernel_m_read_readvariableopIsavev2_adam_lstm_730_lstm_cell_730_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_730_lstm_cell_730_bias_m_read_readvariableop?savev2_adam_lstm_731_lstm_cell_731_kernel_m_read_readvariableopIsavev2_adam_lstm_731_lstm_cell_731_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_731_lstm_cell_731_bias_m_read_readvariableop2savev2_adam_dense_243_kernel_v_read_readvariableop0savev2_adam_dense_243_bias_v_read_readvariableop?savev2_adam_lstm_729_lstm_cell_729_kernel_v_read_readvariableopIsavev2_adam_lstm_729_lstm_cell_729_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_729_lstm_cell_729_bias_v_read_readvariableop?savev2_adam_lstm_730_lstm_cell_730_kernel_v_read_readvariableopIsavev2_adam_lstm_730_lstm_cell_730_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_730_lstm_cell_730_bias_v_read_readvariableop?savev2_adam_lstm_731_lstm_cell_731_kernel_v_read_readvariableopIsavev2_adam_lstm_731_lstm_cell_731_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_731_lstm_cell_731_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
/__inference_lstm_cell_727_layer_call_fn_4409452

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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4404719o
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
while_cond_4408617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4408617___redundant_placeholder05
1while_while_cond_4408617___redundant_placeholder15
1while_while_cond_4408617___redundant_placeholder25
1while_while_cond_4408617___redundant_placeholder3
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
%__inference_signature_wrapper_4406562
lstm_729_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_729_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4404302o
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
_user_specified_namelstm_729_input
?C
?

lstm_730_while_body_4406814.
*lstm_730_while_lstm_730_while_loop_counter4
0lstm_730_while_lstm_730_while_maximum_iterations
lstm_730_while_placeholder 
lstm_730_while_placeholder_1 
lstm_730_while_placeholder_2 
lstm_730_while_placeholder_3-
)lstm_730_while_lstm_730_strided_slice_1_0i
elstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0:	d?R
?lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?M
>lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
lstm_730_while_identity
lstm_730_while_identity_1
lstm_730_while_identity_2
lstm_730_while_identity_3
lstm_730_while_identity_4
lstm_730_while_identity_5+
'lstm_730_while_lstm_730_strided_slice_1g
clstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensorN
;lstm_730_while_lstm_cell_727_matmul_readvariableop_resource:	d?P
=lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource:	2?K
<lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource:	???3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp?2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp?4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp?
@lstm_730/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_730/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensor_0lstm_730_while_placeholderIlstm_730/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp=lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_730/while/lstm_cell_727/MatMulMatMul9lstm_730/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp?lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_730/while/lstm_cell_727/MatMul_1MatMullstm_730_while_placeholder_2<lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_730/while/lstm_cell_727/addAddV2-lstm_730/while/lstm_cell_727/MatMul:product:0/lstm_730/while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp>lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_730/while/lstm_cell_727/BiasAddBiasAdd$lstm_730/while/lstm_cell_727/add:z:0;lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_730/while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_730/while/lstm_cell_727/splitSplit5lstm_730/while/lstm_cell_727/split/split_dim:output:0-lstm_730/while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_730/while/lstm_cell_727/SigmoidSigmoid+lstm_730/while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_730/while/lstm_cell_727/Sigmoid_1Sigmoid+lstm_730/while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_730/while/lstm_cell_727/mulMul*lstm_730/while/lstm_cell_727/Sigmoid_1:y:0lstm_730_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_730/while/lstm_cell_727/ReluRelu+lstm_730/while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_730/while/lstm_cell_727/mul_1Mul(lstm_730/while/lstm_cell_727/Sigmoid:y:0/lstm_730/while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_730/while/lstm_cell_727/add_1AddV2$lstm_730/while/lstm_cell_727/mul:z:0&lstm_730/while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_730/while/lstm_cell_727/Sigmoid_2Sigmoid+lstm_730/while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_730/while/lstm_cell_727/Relu_1Relu&lstm_730/while/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_730/while/lstm_cell_727/mul_2Mul*lstm_730/while/lstm_cell_727/Sigmoid_2:y:01lstm_730/while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_730/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_730_while_placeholder_1lstm_730_while_placeholder&lstm_730/while/lstm_cell_727/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_730/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_730/while/addAddV2lstm_730_while_placeholderlstm_730/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_730/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_730/while/add_1AddV2*lstm_730_while_lstm_730_while_loop_counterlstm_730/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_730/while/IdentityIdentitylstm_730/while/add_1:z:0^lstm_730/while/NoOp*
T0*
_output_shapes
: ?
lstm_730/while/Identity_1Identity0lstm_730_while_lstm_730_while_maximum_iterations^lstm_730/while/NoOp*
T0*
_output_shapes
: t
lstm_730/while/Identity_2Identitylstm_730/while/add:z:0^lstm_730/while/NoOp*
T0*
_output_shapes
: ?
lstm_730/while/Identity_3IdentityClstm_730/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_730/while/NoOp*
T0*
_output_shapes
: ?
lstm_730/while/Identity_4Identity&lstm_730/while/lstm_cell_727/mul_2:z:0^lstm_730/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_730/while/Identity_5Identity&lstm_730/while/lstm_cell_727/add_1:z:0^lstm_730/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_730/while/NoOpNoOp4^lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp3^lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp5^lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_730_while_identity lstm_730/while/Identity:output:0"?
lstm_730_while_identity_1"lstm_730/while/Identity_1:output:0"?
lstm_730_while_identity_2"lstm_730/while/Identity_2:output:0"?
lstm_730_while_identity_3"lstm_730/while/Identity_3:output:0"?
lstm_730_while_identity_4"lstm_730/while/Identity_4:output:0"?
lstm_730_while_identity_5"lstm_730/while/Identity_5:output:0"T
'lstm_730_while_lstm_730_strided_slice_1)lstm_730_while_lstm_730_strided_slice_1_0"~
<lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource>lstm_730_while_lstm_cell_727_biasadd_readvariableop_resource_0"?
=lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource?lstm_730_while_lstm_cell_727_matmul_1_readvariableop_resource_0"|
;lstm_730_while_lstm_cell_727_matmul_readvariableop_resource=lstm_730_while_lstm_cell_727_matmul_readvariableop_resource_0"?
clstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensorelstm_730_while_tensorarrayv2read_tensorlistgetitem_lstm_730_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp3lstm_730/while/lstm_cell_727/BiasAdd/ReadVariableOp2h
2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp2lstm_730/while/lstm_cell_727/MatMul/ReadVariableOp2l
4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp4lstm_730/while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4406262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4406262___redundant_placeholder05
1while_while_cond_4406262___redundant_placeholder15
1while_while_cond_4406262___redundant_placeholder25
1while_while_cond_4406262___redundant_placeholder3
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
while_body_4408002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_726_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_726_matmul_readvariableop_resource:	?G
4while_lstm_cell_726_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_726_biasadd_readvariableop_resource:	???*while/lstm_cell_726/BiasAdd/ReadVariableOp?)while/lstm_cell_726/MatMul/ReadVariableOp?+while/lstm_cell_726/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_726/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_726/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_726/addAddV2$while/lstm_cell_726/MatMul:product:0&while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_726/BiasAddBiasAddwhile/lstm_cell_726/add:z:02while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_726/splitSplit,while/lstm_cell_726/split/split_dim:output:0$while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_726/SigmoidSigmoid"while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_1Sigmoid"while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mulMul!while/lstm_cell_726/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_726/ReluRelu"while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_1Mulwhile/lstm_cell_726/Sigmoid:y:0&while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/add_1AddV2while/lstm_cell_726/mul:z:0while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_2Sigmoid"while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_726/Relu_1Reluwhile/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_2Mul!while/lstm_cell_726/Sigmoid_2:y:0(while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_726/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_726/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_726/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_726/BiasAdd/ReadVariableOp*^while/lstm_cell_726/MatMul/ReadVariableOp,^while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_726_biasadd_readvariableop_resource5while_lstm_cell_726_biasadd_readvariableop_resource_0"n
4while_lstm_cell_726_matmul_1_readvariableop_resource6while_lstm_cell_726_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_726_matmul_readvariableop_resource4while_lstm_cell_726_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_726/BiasAdd/ReadVariableOp*while/lstm_cell_726/BiasAdd/ReadVariableOp2V
)while/lstm_cell_726/MatMul/ReadVariableOp)while/lstm_cell_726/MatMul/ReadVariableOp2Z
+while/lstm_cell_726/MatMul_1/ReadVariableOp+while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_726_layer_call_fn_4409371

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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404515o
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4405501

inputs?
,lstm_cell_726_matmul_readvariableop_resource:	?A
.lstm_cell_726_matmul_1_readvariableop_resource:	d?<
-lstm_cell_726_biasadd_readvariableop_resource:	?
identity??$lstm_cell_726/BiasAdd/ReadVariableOp?#lstm_cell_726/MatMul/ReadVariableOp?%lstm_cell_726/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_726/MatMul/ReadVariableOpReadVariableOp,lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_726/MatMulMatMulstrided_slice_2:output:0+lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_726/MatMul_1MatMulzeros:output:0-lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_726/addAddV2lstm_cell_726/MatMul:product:0 lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_726/BiasAddBiasAddlstm_cell_726/add:z:0,lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_726/splitSplit&lstm_cell_726/split/split_dim:output:0lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_726/SigmoidSigmoidlstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_1Sigmoidlstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_726/mulMullstm_cell_726/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_726/ReluRelulstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_1Mullstm_cell_726/Sigmoid:y:0 lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_726/add_1AddV2lstm_cell_726/mul:z:0lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_2Sigmoidlstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_726/Relu_1Relulstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_2Mullstm_cell_726/Sigmoid_2:y:0"lstm_cell_726/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_726_matmul_readvariableop_resource.lstm_cell_726_matmul_1_readvariableop_resource-lstm_cell_726_biasadd_readvariableop_resource*
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
while_body_4405417*
condR
while_cond_4405416*K
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
NoOpNoOp%^lstm_cell_726/BiasAdd/ReadVariableOp$^lstm_cell_726/MatMul/ReadVariableOp&^lstm_cell_726/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_726/BiasAdd/ReadVariableOp$lstm_cell_726/BiasAdd/ReadVariableOp2J
#lstm_cell_726/MatMul/ReadVariableOp#lstm_cell_726/MatMul/ReadVariableOp2N
%lstm_cell_726/MatMul_1/ReadVariableOp%lstm_cell_726/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4405932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4405932___redundant_placeholder05
1while_while_cond_4405932___redundant_placeholder15
1while_while_cond_4405932___redundant_placeholder25
1while_while_cond_4405932___redundant_placeholder3
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4404643

inputs(
lstm_cell_726_4404561:	?(
lstm_cell_726_4404563:	d?$
lstm_cell_726_4404565:	?
identity??%lstm_cell_726/StatefulPartitionedCall?while;
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
%lstm_cell_726/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_726_4404561lstm_cell_726_4404563lstm_cell_726_4404565*
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404515n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_726_4404561lstm_cell_726_4404563lstm_cell_726_4404565*
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
while_body_4404574*
condR
while_cond_4404573*K
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
NoOpNoOp&^lstm_cell_726/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_726/StatefulPartitionedCall%lstm_cell_726/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_729_while_cond_4406674.
*lstm_729_while_lstm_729_while_loop_counter4
0lstm_729_while_lstm_729_while_maximum_iterations
lstm_729_while_placeholder 
lstm_729_while_placeholder_1 
lstm_729_while_placeholder_2 
lstm_729_while_placeholder_30
,lstm_729_while_less_lstm_729_strided_slice_1G
Clstm_729_while_lstm_729_while_cond_4406674___redundant_placeholder0G
Clstm_729_while_lstm_729_while_cond_4406674___redundant_placeholder1G
Clstm_729_while_lstm_729_while_cond_4406674___redundant_placeholder2G
Clstm_729_while_lstm_729_while_cond_4406674___redundant_placeholder3
lstm_729_while_identity
?
lstm_729/while/LessLesslstm_729_while_placeholder,lstm_729_while_less_lstm_729_strided_slice_1*
T0*
_output_shapes
: ]
lstm_729/while/IdentityIdentitylstm_729/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_729_while_identity lstm_729/while/Identity:output:0*(
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407943

inputs?
,lstm_cell_726_matmul_readvariableop_resource:	?A
.lstm_cell_726_matmul_1_readvariableop_resource:	d?<
-lstm_cell_726_biasadd_readvariableop_resource:	?
identity??$lstm_cell_726/BiasAdd/ReadVariableOp?#lstm_cell_726/MatMul/ReadVariableOp?%lstm_cell_726/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_726/MatMul/ReadVariableOpReadVariableOp,lstm_cell_726_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_726/MatMulMatMulstrided_slice_2:output:0+lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_726_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_726/MatMul_1MatMulzeros:output:0-lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_726/addAddV2lstm_cell_726/MatMul:product:0 lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_726_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_726/BiasAddBiasAddlstm_cell_726/add:z:0,lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_726/splitSplit&lstm_cell_726/split/split_dim:output:0lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_726/SigmoidSigmoidlstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_1Sigmoidlstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_726/mulMullstm_cell_726/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_726/ReluRelulstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_1Mullstm_cell_726/Sigmoid:y:0 lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_726/add_1AddV2lstm_cell_726/mul:z:0lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_726/Sigmoid_2Sigmoidlstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_726/Relu_1Relulstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_726/mul_2Mullstm_cell_726/Sigmoid_2:y:0"lstm_cell_726/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_726_matmul_readvariableop_resource.lstm_cell_726_matmul_1_readvariableop_resource-lstm_cell_726_biasadd_readvariableop_resource*
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
while_body_4407859*
condR
while_cond_4407858*K
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
NoOpNoOp%^lstm_cell_726/BiasAdd/ReadVariableOp$^lstm_cell_726/MatMul/ReadVariableOp&^lstm_cell_726/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_726/BiasAdd/ReadVariableOp$lstm_cell_726/BiasAdd/ReadVariableOp2J
#lstm_cell_726/MatMul/ReadVariableOp#lstm_cell_726/MatMul/ReadVariableOp2N
%lstm_cell_726/MatMul_1/ReadVariableOp%lstm_cell_726/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_4405417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_726_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_726_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_726_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_726_matmul_readvariableop_resource:	?G
4while_lstm_cell_726_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_726_biasadd_readvariableop_resource:	???*while/lstm_cell_726/BiasAdd/ReadVariableOp?)while/lstm_cell_726/MatMul/ReadVariableOp?+while/lstm_cell_726/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_726/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_726_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_726/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_726/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_726/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_726_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_726/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_726/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_726/addAddV2$while/lstm_cell_726/MatMul:product:0&while/lstm_cell_726/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_726/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_726_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_726/BiasAddBiasAddwhile/lstm_cell_726/add:z:02while/lstm_cell_726/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_726/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_726/splitSplit,while/lstm_cell_726/split/split_dim:output:0$while/lstm_cell_726/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_726/SigmoidSigmoid"while/lstm_cell_726/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_1Sigmoid"while/lstm_cell_726/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mulMul!while/lstm_cell_726/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_726/ReluRelu"while/lstm_cell_726/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_1Mulwhile/lstm_cell_726/Sigmoid:y:0&while/lstm_cell_726/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/add_1AddV2while/lstm_cell_726/mul:z:0while/lstm_cell_726/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_726/Sigmoid_2Sigmoid"while/lstm_cell_726/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_726/Relu_1Reluwhile/lstm_cell_726/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_726/mul_2Mul!while/lstm_cell_726/Sigmoid_2:y:0(while/lstm_cell_726/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_726/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_726/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_726/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_726/BiasAdd/ReadVariableOp*^while/lstm_cell_726/MatMul/ReadVariableOp,^while/lstm_cell_726/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_726_biasadd_readvariableop_resource5while_lstm_cell_726_biasadd_readvariableop_resource_0"n
4while_lstm_cell_726_matmul_1_readvariableop_resource6while_lstm_cell_726_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_726_matmul_readvariableop_resource4while_lstm_cell_726_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_726/BiasAdd/ReadVariableOp*while/lstm_cell_726/BiasAdd/ReadVariableOp2V
)while/lstm_cell_726/MatMul/ReadVariableOp)while/lstm_cell_726/MatMul/ReadVariableOp2Z
+while/lstm_cell_726/MatMul_1/ReadVariableOp+while/lstm_cell_726/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408559

inputs?
,lstm_cell_727_matmul_readvariableop_resource:	d?A
.lstm_cell_727_matmul_1_readvariableop_resource:	2?<
-lstm_cell_727_biasadd_readvariableop_resource:	?
identity??$lstm_cell_727/BiasAdd/ReadVariableOp?#lstm_cell_727/MatMul/ReadVariableOp?%lstm_cell_727/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_727/MatMul/ReadVariableOpReadVariableOp,lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_727/MatMulMatMulstrided_slice_2:output:0+lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_727/MatMul_1MatMulzeros:output:0-lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_727/addAddV2lstm_cell_727/MatMul:product:0 lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_727/BiasAddBiasAddlstm_cell_727/add:z:0,lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_727/splitSplit&lstm_cell_727/split/split_dim:output:0lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_727/SigmoidSigmoidlstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_1Sigmoidlstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_727/mulMullstm_cell_727/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_727/ReluRelulstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_1Mullstm_cell_727/Sigmoid:y:0 lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_727/add_1AddV2lstm_cell_727/mul:z:0lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_2Sigmoidlstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_727/Relu_1Relulstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_2Mullstm_cell_727/Sigmoid_2:y:0"lstm_cell_727/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_727_matmul_readvariableop_resource.lstm_cell_727_matmul_1_readvariableop_resource-lstm_cell_727_biasadd_readvariableop_resource*
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
while_body_4408475*
condR
while_cond_4408474*K
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
NoOpNoOp%^lstm_cell_727/BiasAdd/ReadVariableOp$^lstm_cell_727/MatMul/ReadVariableOp&^lstm_cell_727/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_727/BiasAdd/ReadVariableOp$lstm_cell_727/BiasAdd/ReadVariableOp2J
#lstm_cell_727/MatMul/ReadVariableOp#lstm_cell_727/MatMul/ReadVariableOp2N
%lstm_cell_727/MatMul_1/ReadVariableOp%lstm_cell_727/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4405082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4405082___redundant_placeholder05
1while_while_cond_4405082___redundant_placeholder15
1while_while_cond_4405082___redundant_placeholder25
1while_while_cond_4405082___redundant_placeholder3
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
while_body_4405567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_727_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_727_matmul_readvariableop_resource:	d?G
4while_lstm_cell_727_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_727_biasadd_readvariableop_resource:	???*while/lstm_cell_727/BiasAdd/ReadVariableOp?)while/lstm_cell_727/MatMul/ReadVariableOp?+while/lstm_cell_727/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_727/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_727/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_727/addAddV2$while/lstm_cell_727/MatMul:product:0&while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_727/BiasAddBiasAddwhile/lstm_cell_727/add:z:02while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_727/splitSplit,while/lstm_cell_727/split/split_dim:output:0$while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_727/SigmoidSigmoid"while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_1Sigmoid"while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mulMul!while/lstm_cell_727/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_727/ReluRelu"while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_1Mulwhile/lstm_cell_727/Sigmoid:y:0&while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/add_1AddV2while/lstm_cell_727/mul:z:0while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_2Sigmoid"while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_727/Relu_1Reluwhile/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_2Mul!while/lstm_cell_727/Sigmoid_2:y:0(while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_727/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_727/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_727/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_727/BiasAdd/ReadVariableOp*^while/lstm_cell_727/MatMul/ReadVariableOp,^while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_727_biasadd_readvariableop_resource5while_lstm_cell_727_biasadd_readvariableop_resource_0"n
4while_lstm_cell_727_matmul_1_readvariableop_resource6while_lstm_cell_727_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_727_matmul_readvariableop_resource4while_lstm_cell_727_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_727/BiasAdd/ReadVariableOp*while/lstm_cell_727/BiasAdd/ReadVariableOp2V
)while/lstm_cell_727/MatMul/ReadVariableOp)while/lstm_cell_727/MatMul/ReadVariableOp2Z
+while/lstm_cell_727/MatMul_1/ReadVariableOp+while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4404574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_726_4404598_0:	?0
while_lstm_cell_726_4404600_0:	d?,
while_lstm_cell_726_4404602_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_726_4404598:	?.
while_lstm_cell_726_4404600:	d?*
while_lstm_cell_726_4404602:	???+while/lstm_cell_726/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_726/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_726_4404598_0while_lstm_cell_726_4404600_0while_lstm_cell_726_4404602_0*
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404515?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_726/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_726/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_726/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_726/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_726_4404598while_lstm_cell_726_4404598_0"<
while_lstm_cell_726_4404600while_lstm_cell_726_4404600_0"<
while_lstm_cell_726_4404602while_lstm_cell_726_4404602_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_726/StatefulPartitionedCall+while/lstm_cell_726/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4406098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_727_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_727_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_727_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_727_matmul_readvariableop_resource:	d?G
4while_lstm_cell_727_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_727_biasadd_readvariableop_resource:	???*while/lstm_cell_727/BiasAdd/ReadVariableOp?)while/lstm_cell_727/MatMul/ReadVariableOp?+while/lstm_cell_727/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_727/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_727_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_727/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_727_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_727/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_727/addAddV2$while/lstm_cell_727/MatMul:product:0&while/lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_727_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_727/BiasAddBiasAddwhile/lstm_cell_727/add:z:02while/lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_727/splitSplit,while/lstm_cell_727/split/split_dim:output:0$while/lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_727/SigmoidSigmoid"while/lstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_1Sigmoid"while/lstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mulMul!while/lstm_cell_727/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_727/ReluRelu"while/lstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_1Mulwhile/lstm_cell_727/Sigmoid:y:0&while/lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/add_1AddV2while/lstm_cell_727/mul:z:0while/lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_727/Sigmoid_2Sigmoid"while/lstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_727/Relu_1Reluwhile/lstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_727/mul_2Mul!while/lstm_cell_727/Sigmoid_2:y:0(while/lstm_cell_727/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_727/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_727/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_727/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_727/BiasAdd/ReadVariableOp*^while/lstm_cell_727/MatMul/ReadVariableOp,^while/lstm_cell_727/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_727_biasadd_readvariableop_resource5while_lstm_cell_727_biasadd_readvariableop_resource_0"n
4while_lstm_cell_727_matmul_1_readvariableop_resource6while_lstm_cell_727_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_727_matmul_readvariableop_resource4while_lstm_cell_727_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_727/BiasAdd/ReadVariableOp*while/lstm_cell_727/BiasAdd/ReadVariableOp2V
)while/lstm_cell_727/MatMul/ReadVariableOp)while/lstm_cell_727/MatMul/ReadVariableOp2Z
+while/lstm_cell_727/MatMul_1/ReadVariableOp+while/lstm_cell_727/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408702

inputs?
,lstm_cell_727_matmul_readvariableop_resource:	d?A
.lstm_cell_727_matmul_1_readvariableop_resource:	2?<
-lstm_cell_727_biasadd_readvariableop_resource:	?
identity??$lstm_cell_727/BiasAdd/ReadVariableOp?#lstm_cell_727/MatMul/ReadVariableOp?%lstm_cell_727/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_727/MatMul/ReadVariableOpReadVariableOp,lstm_cell_727_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_727/MatMulMatMulstrided_slice_2:output:0+lstm_cell_727/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_727/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_727_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_727/MatMul_1MatMulzeros:output:0-lstm_cell_727/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_727/addAddV2lstm_cell_727/MatMul:product:0 lstm_cell_727/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_727/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_727_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_727/BiasAddBiasAddlstm_cell_727/add:z:0,lstm_cell_727/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_727/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_727/splitSplit&lstm_cell_727/split/split_dim:output:0lstm_cell_727/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_727/SigmoidSigmoidlstm_cell_727/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_1Sigmoidlstm_cell_727/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_727/mulMullstm_cell_727/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_727/ReluRelulstm_cell_727/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_1Mullstm_cell_727/Sigmoid:y:0 lstm_cell_727/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_727/add_1AddV2lstm_cell_727/mul:z:0lstm_cell_727/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_727/Sigmoid_2Sigmoidlstm_cell_727/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_727/Relu_1Relulstm_cell_727/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_727/mul_2Mullstm_cell_727/Sigmoid_2:y:0"lstm_cell_727/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_727_matmul_readvariableop_resource.lstm_cell_727_matmul_1_readvariableop_resource-lstm_cell_727_biasadd_readvariableop_resource*
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
while_body_4408618*
condR
while_cond_4408617*K
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
NoOpNoOp%^lstm_cell_727/BiasAdd/ReadVariableOp$^lstm_cell_727/MatMul/ReadVariableOp&^lstm_cell_727/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_727/BiasAdd/ReadVariableOp$lstm_cell_727/BiasAdd/ReadVariableOp2J
#lstm_cell_727/MatMul/ReadVariableOp#lstm_cell_727/MatMul/ReadVariableOp2N
%lstm_cell_727/MatMul_1/ReadVariableOp%lstm_cell_727/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_726_layer_call_fn_4409354

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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4404369o
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
?
?
+__inference_dense_243_layer_call_fn_4409327

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
F__inference_dense_243_layer_call_and_return_conditional_losses_4405819o
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
?
?
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4409403

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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4405069

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

 
_user_specified_namestates"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_729_input;
 serving_default_lstm_729_input:0?????????=
	dense_2430
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
2dense_243/kernel
:2dense_243/bias
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
0:.	?2lstm_729/lstm_cell_729/kernel
::8	d?2'lstm_729/lstm_cell_729/recurrent_kernel
*:(?2lstm_729/lstm_cell_729/bias
0:.	d?2lstm_730/lstm_cell_730/kernel
::8	2?2'lstm_730/lstm_cell_730/recurrent_kernel
*:(?2lstm_730/lstm_cell_730/bias
/:-2(2lstm_731/lstm_cell_731/kernel
9:7
(2'lstm_731/lstm_cell_731/recurrent_kernel
):'(2lstm_731/lstm_cell_731/bias
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
2Adam/dense_243/kernel/m
!:2Adam/dense_243/bias/m
5:3	?2$Adam/lstm_729/lstm_cell_729/kernel/m
?:=	d?2.Adam/lstm_729/lstm_cell_729/recurrent_kernel/m
/:-?2"Adam/lstm_729/lstm_cell_729/bias/m
5:3	d?2$Adam/lstm_730/lstm_cell_730/kernel/m
?:=	2?2.Adam/lstm_730/lstm_cell_730/recurrent_kernel/m
/:-?2"Adam/lstm_730/lstm_cell_730/bias/m
4:22(2$Adam/lstm_731/lstm_cell_731/kernel/m
>:<
(2.Adam/lstm_731/lstm_cell_731/recurrent_kernel/m
.:,(2"Adam/lstm_731/lstm_cell_731/bias/m
':%
2Adam/dense_243/kernel/v
!:2Adam/dense_243/bias/v
5:3	?2$Adam/lstm_729/lstm_cell_729/kernel/v
?:=	d?2.Adam/lstm_729/lstm_cell_729/recurrent_kernel/v
/:-?2"Adam/lstm_729/lstm_cell_729/bias/v
5:3	d?2$Adam/lstm_730/lstm_cell_730/kernel/v
?:=	2?2.Adam/lstm_730/lstm_cell_730/recurrent_kernel/v
/:-?2"Adam/lstm_730/lstm_cell_730/bias/v
4:22(2$Adam/lstm_731/lstm_cell_731/kernel/v
>:<
(2.Adam/lstm_731/lstm_cell_731/recurrent_kernel/v
.:,(2"Adam/lstm_731/lstm_cell_731/bias/v
?2?
0__inference_sequential_243_layer_call_fn_4405851
0__inference_sequential_243_layer_call_fn_4406589
0__inference_sequential_243_layer_call_fn_4406616
0__inference_sequential_243_layer_call_fn_4406467?
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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4407043
K__inference_sequential_243_layer_call_and_return_conditional_losses_4407470
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406497
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406527?
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
"__inference__wrapped_model_4404302lstm_729_input"?
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
*__inference_lstm_729_layer_call_fn_4407481
*__inference_lstm_729_layer_call_fn_4407492
*__inference_lstm_729_layer_call_fn_4407503
*__inference_lstm_729_layer_call_fn_4407514?
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407657
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407800
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407943
E__inference_lstm_729_layer_call_and_return_conditional_losses_4408086?
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
*__inference_lstm_730_layer_call_fn_4408097
*__inference_lstm_730_layer_call_fn_4408108
*__inference_lstm_730_layer_call_fn_4408119
*__inference_lstm_730_layer_call_fn_4408130?
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408273
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408416
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408559
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408702?
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
*__inference_lstm_731_layer_call_fn_4408713
*__inference_lstm_731_layer_call_fn_4408724
*__inference_lstm_731_layer_call_fn_4408735
*__inference_lstm_731_layer_call_fn_4408746?
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4408889
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409032
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409175
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409318?
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
+__inference_dense_243_layer_call_fn_4409327?
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
F__inference_dense_243_layer_call_and_return_conditional_losses_4409337?
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
%__inference_signature_wrapper_4406562lstm_729_input"?
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
/__inference_lstm_cell_726_layer_call_fn_4409354
/__inference_lstm_cell_726_layer_call_fn_4409371?
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4409403
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4409435?
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
/__inference_lstm_cell_727_layer_call_fn_4409452
/__inference_lstm_cell_727_layer_call_fn_4409469?
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4409501
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4409533?
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
/__inference_lstm_cell_728_layer_call_fn_4409550
/__inference_lstm_cell_728_layer_call_fn_4409567?
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4409599
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4409631?
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
"__inference__wrapped_model_4404302?-./012345!";?8
1?.
,?)
lstm_729_input?????????
? "5?2
0
	dense_243#? 
	dense_243??????????
F__inference_dense_243_layer_call_and_return_conditional_losses_4409337\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_243_layer_call_fn_4409327O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407657?-./O?L
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407800?-./O?L
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4407943q-./??<
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
E__inference_lstm_729_layer_call_and_return_conditional_losses_4408086q-./??<
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
*__inference_lstm_729_layer_call_fn_4407481}-./O?L
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
*__inference_lstm_729_layer_call_fn_4407492}-./O?L
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
*__inference_lstm_729_layer_call_fn_4407503d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_729_layer_call_fn_4407514d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408273?012O?L
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408416?012O?L
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408559q012??<
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
E__inference_lstm_730_layer_call_and_return_conditional_losses_4408702q012??<
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
*__inference_lstm_730_layer_call_fn_4408097}012O?L
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
*__inference_lstm_730_layer_call_fn_4408108}012O?L
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
*__inference_lstm_730_layer_call_fn_4408119d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_730_layer_call_fn_4408130d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_731_layer_call_and_return_conditional_losses_4408889}345O?L
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409032}345O?L
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409175m345??<
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
E__inference_lstm_731_layer_call_and_return_conditional_losses_4409318m345??<
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
*__inference_lstm_731_layer_call_fn_4408713p345O?L
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
*__inference_lstm_731_layer_call_fn_4408724p345O?L
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
*__inference_lstm_731_layer_call_fn_4408735`345??<
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
*__inference_lstm_731_layer_call_fn_4408746`345??<
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4409403?-./??}
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
J__inference_lstm_cell_726_layer_call_and_return_conditional_losses_4409435?-./??}
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
/__inference_lstm_cell_726_layer_call_fn_4409354?-./??}
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
/__inference_lstm_cell_726_layer_call_fn_4409371?-./??}
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4409501?012??}
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
J__inference_lstm_cell_727_layer_call_and_return_conditional_losses_4409533?012??}
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
/__inference_lstm_cell_727_layer_call_fn_4409452?012??}
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
/__inference_lstm_cell_727_layer_call_fn_4409469?012??}
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4409599?345??}
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
J__inference_lstm_cell_728_layer_call_and_return_conditional_losses_4409631?345??}
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
/__inference_lstm_cell_728_layer_call_fn_4409550?345??}
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
/__inference_lstm_cell_728_layer_call_fn_4409567?345??}
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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406497y-./012345!"C?@
9?6
,?)
lstm_729_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_243_layer_call_and_return_conditional_losses_4406527y-./012345!"C?@
9?6
,?)
lstm_729_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_243_layer_call_and_return_conditional_losses_4407043q-./012345!";?8
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
K__inference_sequential_243_layer_call_and_return_conditional_losses_4407470q-./012345!";?8
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
0__inference_sequential_243_layer_call_fn_4405851l-./012345!"C?@
9?6
,?)
lstm_729_input?????????
p 

 
? "???????????
0__inference_sequential_243_layer_call_fn_4406467l-./012345!"C?@
9?6
,?)
lstm_729_input?????????
p

 
? "???????????
0__inference_sequential_243_layer_call_fn_4406589d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_243_layer_call_fn_4406616d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4406562?-./012345!"M?J
? 
C?@
>
lstm_729_input,?)
lstm_729_input?????????"5?2
0
	dense_243#? 
	dense_243?????????