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
dense_133/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_133/kernel
u
$dense_133/kernel/Read/ReadVariableOpReadVariableOpdense_133/kernel*
_output_shapes

:
*
dtype0
t
dense_133/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_133/bias
m
"dense_133/bias/Read/ReadVariableOpReadVariableOpdense_133/bias*
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
lstm_399/lstm_cell_399/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_399/lstm_cell_399/kernel
?
1lstm_399/lstm_cell_399/kernel/Read/ReadVariableOpReadVariableOplstm_399/lstm_cell_399/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_399/lstm_cell_399/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_399/lstm_cell_399/recurrent_kernel
?
;lstm_399/lstm_cell_399/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_399/lstm_cell_399/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_399/lstm_cell_399/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_399/lstm_cell_399/bias
?
/lstm_399/lstm_cell_399/bias/Read/ReadVariableOpReadVariableOplstm_399/lstm_cell_399/bias*
_output_shapes	
:?*
dtype0
?
lstm_400/lstm_cell_400/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_400/lstm_cell_400/kernel
?
1lstm_400/lstm_cell_400/kernel/Read/ReadVariableOpReadVariableOplstm_400/lstm_cell_400/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_400/lstm_cell_400/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_400/lstm_cell_400/recurrent_kernel
?
;lstm_400/lstm_cell_400/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_400/lstm_cell_400/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_400/lstm_cell_400/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_400/lstm_cell_400/bias
?
/lstm_400/lstm_cell_400/bias/Read/ReadVariableOpReadVariableOplstm_400/lstm_cell_400/bias*
_output_shapes	
:?*
dtype0
?
lstm_401/lstm_cell_401/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_401/lstm_cell_401/kernel
?
1lstm_401/lstm_cell_401/kernel/Read/ReadVariableOpReadVariableOplstm_401/lstm_cell_401/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_401/lstm_cell_401/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_401/lstm_cell_401/recurrent_kernel
?
;lstm_401/lstm_cell_401/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_401/lstm_cell_401/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_401/lstm_cell_401/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_401/lstm_cell_401/bias
?
/lstm_401/lstm_cell_401/bias/Read/ReadVariableOpReadVariableOplstm_401/lstm_cell_401/bias*
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
Adam/dense_133/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_133/kernel/m
?
+Adam/dense_133/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_133/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_133/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_133/bias/m
{
)Adam/dense_133/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_133/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_399/lstm_cell_399/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_399/lstm_cell_399/kernel/m
?
8Adam/lstm_399/lstm_cell_399/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_399/lstm_cell_399/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_399/lstm_cell_399/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_399/lstm_cell_399/recurrent_kernel/m
?
BAdam/lstm_399/lstm_cell_399/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_399/lstm_cell_399/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_399/lstm_cell_399/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_399/lstm_cell_399/bias/m
?
6Adam/lstm_399/lstm_cell_399/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_399/lstm_cell_399/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_400/lstm_cell_400/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_400/lstm_cell_400/kernel/m
?
8Adam/lstm_400/lstm_cell_400/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_400/lstm_cell_400/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_400/lstm_cell_400/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_400/lstm_cell_400/recurrent_kernel/m
?
BAdam/lstm_400/lstm_cell_400/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_400/lstm_cell_400/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_400/lstm_cell_400/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_400/lstm_cell_400/bias/m
?
6Adam/lstm_400/lstm_cell_400/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_400/lstm_cell_400/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_401/lstm_cell_401/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_401/lstm_cell_401/kernel/m
?
8Adam/lstm_401/lstm_cell_401/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_401/lstm_cell_401/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_401/lstm_cell_401/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_401/lstm_cell_401/recurrent_kernel/m
?
BAdam/lstm_401/lstm_cell_401/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_401/lstm_cell_401/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_401/lstm_cell_401/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_401/lstm_cell_401/bias/m
?
6Adam/lstm_401/lstm_cell_401/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_401/lstm_cell_401/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_133/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_133/kernel/v
?
+Adam/dense_133/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_133/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_133/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_133/bias/v
{
)Adam/dense_133/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_133/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_399/lstm_cell_399/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_399/lstm_cell_399/kernel/v
?
8Adam/lstm_399/lstm_cell_399/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_399/lstm_cell_399/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_399/lstm_cell_399/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_399/lstm_cell_399/recurrent_kernel/v
?
BAdam/lstm_399/lstm_cell_399/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_399/lstm_cell_399/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_399/lstm_cell_399/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_399/lstm_cell_399/bias/v
?
6Adam/lstm_399/lstm_cell_399/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_399/lstm_cell_399/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_400/lstm_cell_400/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_400/lstm_cell_400/kernel/v
?
8Adam/lstm_400/lstm_cell_400/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_400/lstm_cell_400/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_400/lstm_cell_400/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_400/lstm_cell_400/recurrent_kernel/v
?
BAdam/lstm_400/lstm_cell_400/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_400/lstm_cell_400/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_400/lstm_cell_400/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_400/lstm_cell_400/bias/v
?
6Adam/lstm_400/lstm_cell_400/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_400/lstm_cell_400/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_401/lstm_cell_401/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_401/lstm_cell_401/kernel/v
?
8Adam/lstm_401/lstm_cell_401/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_401/lstm_cell_401/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_401/lstm_cell_401/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_401/lstm_cell_401/recurrent_kernel/v
?
BAdam/lstm_401/lstm_cell_401/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_401/lstm_cell_401/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_401/lstm_cell_401/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_401/lstm_cell_401/bias/v
?
6Adam/lstm_401/lstm_cell_401/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_401/lstm_cell_401/bias/v*
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
VARIABLE_VALUEdense_133/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_133/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_399/lstm_cell_399/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_399/lstm_cell_399/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_399/lstm_cell_399/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_400/lstm_cell_400/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_400/lstm_cell_400/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_400/lstm_cell_400/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_401/lstm_cell_401/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_401/lstm_cell_401/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_401/lstm_cell_401/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_133/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_133/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_399/lstm_cell_399/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_399/lstm_cell_399/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_399/lstm_cell_399/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_400/lstm_cell_400/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_400/lstm_cell_400/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_400/lstm_cell_400/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_401/lstm_cell_401/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_401/lstm_cell_401/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_401/lstm_cell_401/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_133/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_133/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_399/lstm_cell_399/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_399/lstm_cell_399/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_399/lstm_cell_399/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_400/lstm_cell_400/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_400/lstm_cell_400/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_400/lstm_cell_400/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_401/lstm_cell_401/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_401/lstm_cell_401/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_401/lstm_cell_401/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_399_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_399_inputlstm_399/lstm_cell_399/kernel'lstm_399/lstm_cell_399/recurrent_kernellstm_399/lstm_cell_399/biaslstm_400/lstm_cell_400/kernel'lstm_400/lstm_cell_400/recurrent_kernellstm_400/lstm_cell_400/biaslstm_401/lstm_cell_401/kernel'lstm_401/lstm_cell_401/recurrent_kernellstm_401/lstm_cell_401/biasdense_133/kerneldense_133/bias*
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
$__inference_signature_wrapper_722848
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_133/kernel/Read/ReadVariableOp"dense_133/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_399/lstm_cell_399/kernel/Read/ReadVariableOp;lstm_399/lstm_cell_399/recurrent_kernel/Read/ReadVariableOp/lstm_399/lstm_cell_399/bias/Read/ReadVariableOp1lstm_400/lstm_cell_400/kernel/Read/ReadVariableOp;lstm_400/lstm_cell_400/recurrent_kernel/Read/ReadVariableOp/lstm_400/lstm_cell_400/bias/Read/ReadVariableOp1lstm_401/lstm_cell_401/kernel/Read/ReadVariableOp;lstm_401/lstm_cell_401/recurrent_kernel/Read/ReadVariableOp/lstm_401/lstm_cell_401/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_133/kernel/m/Read/ReadVariableOp)Adam/dense_133/bias/m/Read/ReadVariableOp8Adam/lstm_399/lstm_cell_399/kernel/m/Read/ReadVariableOpBAdam/lstm_399/lstm_cell_399/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_399/lstm_cell_399/bias/m/Read/ReadVariableOp8Adam/lstm_400/lstm_cell_400/kernel/m/Read/ReadVariableOpBAdam/lstm_400/lstm_cell_400/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_400/lstm_cell_400/bias/m/Read/ReadVariableOp8Adam/lstm_401/lstm_cell_401/kernel/m/Read/ReadVariableOpBAdam/lstm_401/lstm_cell_401/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_401/lstm_cell_401/bias/m/Read/ReadVariableOp+Adam/dense_133/kernel/v/Read/ReadVariableOp)Adam/dense_133/bias/v/Read/ReadVariableOp8Adam/lstm_399/lstm_cell_399/kernel/v/Read/ReadVariableOpBAdam/lstm_399/lstm_cell_399/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_399/lstm_cell_399/bias/v/Read/ReadVariableOp8Adam/lstm_400/lstm_cell_400/kernel/v/Read/ReadVariableOpBAdam/lstm_400/lstm_cell_400/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_400/lstm_cell_400/bias/v/Read/ReadVariableOp8Adam/lstm_401/lstm_cell_401/kernel/v/Read/ReadVariableOpBAdam/lstm_401/lstm_cell_401/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_401/lstm_cell_401/bias/v/Read/ReadVariableOpConst*5
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
__inference__traced_save_726060
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_133/kerneldense_133/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_399/lstm_cell_399/kernel'lstm_399/lstm_cell_399/recurrent_kernellstm_399/lstm_cell_399/biaslstm_400/lstm_cell_400/kernel'lstm_400/lstm_cell_400/recurrent_kernellstm_400/lstm_cell_400/biaslstm_401/lstm_cell_401/kernel'lstm_401/lstm_cell_401/recurrent_kernellstm_401/lstm_cell_401/biastotalcountAdam/dense_133/kernel/mAdam/dense_133/bias/m$Adam/lstm_399/lstm_cell_399/kernel/m.Adam/lstm_399/lstm_cell_399/recurrent_kernel/m"Adam/lstm_399/lstm_cell_399/bias/m$Adam/lstm_400/lstm_cell_400/kernel/m.Adam/lstm_400/lstm_cell_400/recurrent_kernel/m"Adam/lstm_400/lstm_cell_400/bias/m$Adam/lstm_401/lstm_cell_401/kernel/m.Adam/lstm_401/lstm_cell_401/recurrent_kernel/m"Adam/lstm_401/lstm_cell_401/bias/mAdam/dense_133/kernel/vAdam/dense_133/bias/v$Adam/lstm_399/lstm_cell_399/kernel/v.Adam/lstm_399/lstm_cell_399/recurrent_kernel/v"Adam/lstm_399/lstm_cell_399/bias/v$Adam/lstm_400/lstm_cell_400/kernel/v.Adam/lstm_400/lstm_cell_400/recurrent_kernel/v"Adam/lstm_400/lstm_cell_400/bias/v$Adam/lstm_401/lstm_cell_401/kernel/v.Adam/lstm_401/lstm_cell_401/recurrent_kernel/v"Adam/lstm_401/lstm_cell_401/bias/v*4
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
"__inference__traced_restore_726190??+
?
?
)__inference_lstm_401_layer_call_fn_725010
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_721629o
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
while_body_722003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:2(F
4while_lstm_cell_119_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_119_biasadd_readvariableop_resource:(??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_721853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	d?G
4while_lstm_cell_118_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_118_biasadd_readvariableop_resource:	???*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721501

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
D__inference_lstm_401_layer_call_and_return_conditional_losses_725604

inputs>
,lstm_cell_119_matmul_readvariableop_resource:2(@
.lstm_cell_119_matmul_1_readvariableop_resource:
(;
-lstm_cell_119_biasadd_readvariableop_resource:(
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
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
while_body_725520*
condR
while_cond_725519*K
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
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_133_layer_call_and_return_conditional_losses_722112

inputs"
lstm_399_721788:	?"
lstm_399_721790:	d?
lstm_399_721792:	?"
lstm_400_721938:	d?"
lstm_400_721940:	2?
lstm_400_721942:	?!
lstm_401_722088:2(!
lstm_401_722090:
(
lstm_401_722092:("
dense_133_722106:

dense_133_722108:
identity??!dense_133/StatefulPartitionedCall? lstm_399/StatefulPartitionedCall? lstm_400/StatefulPartitionedCall? lstm_401/StatefulPartitionedCall?
 lstm_399/StatefulPartitionedCallStatefulPartitionedCallinputslstm_399_721788lstm_399_721790lstm_399_721792*
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_721787?
 lstm_400/StatefulPartitionedCallStatefulPartitionedCall)lstm_399/StatefulPartitionedCall:output:0lstm_400_721938lstm_400_721940lstm_400_721942*
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_721937?
 lstm_401/StatefulPartitionedCallStatefulPartitionedCall)lstm_400/StatefulPartitionedCall:output:0lstm_401_722088lstm_401_722090lstm_401_722092*
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722087?
!dense_133/StatefulPartitionedCallStatefulPartitionedCall)lstm_401/StatefulPartitionedCall:output:0dense_133_722106dense_133_722108*
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
E__inference_dense_133_layer_call_and_return_conditional_losses_722105y
IdentityIdentity*dense_133/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_133/StatefulPartitionedCall!^lstm_399/StatefulPartitionedCall!^lstm_400/StatefulPartitionedCall!^lstm_401/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_133/StatefulPartitionedCall!dense_133/StatefulPartitionedCall2D
 lstm_399/StatefulPartitionedCall lstm_399/StatefulPartitionedCall2D
 lstm_400/StatefulPartitionedCall lstm_400/StatefulPartitionedCall2D
 lstm_401/StatefulPartitionedCall lstm_401/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_117_layer_call_fn_725640

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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720655o
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
"__inference__traced_restore_726190
file_prefix3
!assignvariableop_dense_133_kernel:
/
!assignvariableop_1_dense_133_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_399_lstm_cell_399_kernel:	?M
:assignvariableop_8_lstm_399_lstm_cell_399_recurrent_kernel:	d?=
.assignvariableop_9_lstm_399_lstm_cell_399_bias:	?D
1assignvariableop_10_lstm_400_lstm_cell_400_kernel:	d?N
;assignvariableop_11_lstm_400_lstm_cell_400_recurrent_kernel:	2?>
/assignvariableop_12_lstm_400_lstm_cell_400_bias:	?C
1assignvariableop_13_lstm_401_lstm_cell_401_kernel:2(M
;assignvariableop_14_lstm_401_lstm_cell_401_recurrent_kernel:
(=
/assignvariableop_15_lstm_401_lstm_cell_401_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_133_kernel_m:
7
)assignvariableop_19_adam_dense_133_bias_m:K
8assignvariableop_20_adam_lstm_399_lstm_cell_399_kernel_m:	?U
Bassignvariableop_21_adam_lstm_399_lstm_cell_399_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_399_lstm_cell_399_bias_m:	?K
8assignvariableop_23_adam_lstm_400_lstm_cell_400_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_400_lstm_cell_400_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_400_lstm_cell_400_bias_m:	?J
8assignvariableop_26_adam_lstm_401_lstm_cell_401_kernel_m:2(T
Bassignvariableop_27_adam_lstm_401_lstm_cell_401_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_401_lstm_cell_401_bias_m:(=
+assignvariableop_29_adam_dense_133_kernel_v:
7
)assignvariableop_30_adam_dense_133_bias_v:K
8assignvariableop_31_adam_lstm_399_lstm_cell_399_kernel_v:	?U
Bassignvariableop_32_adam_lstm_399_lstm_cell_399_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_399_lstm_cell_399_bias_v:	?K
8assignvariableop_34_adam_lstm_400_lstm_cell_400_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_400_lstm_cell_400_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_400_lstm_cell_400_bias_v:	?J
8assignvariableop_37_adam_lstm_401_lstm_cell_401_kernel_v:2(T
Bassignvariableop_38_adam_lstm_401_lstm_cell_401_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_401_lstm_cell_401_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_133_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_133_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_399_lstm_cell_399_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_399_lstm_cell_399_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_399_lstm_cell_399_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_400_lstm_cell_400_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_400_lstm_cell_400_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_400_lstm_cell_400_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_401_lstm_cell_401_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_401_lstm_cell_401_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_401_lstm_cell_401_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_133_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_133_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_399_lstm_cell_399_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_399_lstm_cell_399_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_399_lstm_cell_399_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_400_lstm_cell_400_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_400_lstm_cell_400_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_400_lstm_cell_400_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_401_lstm_cell_401_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_401_lstm_cell_401_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_401_lstm_cell_401_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_133_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_133_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_399_lstm_cell_399_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_399_lstm_cell_399_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_399_lstm_cell_399_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_400_lstm_cell_400_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_400_lstm_cell_400_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_400_lstm_cell_400_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_401_lstm_cell_401_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_401_lstm_cell_401_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_401_lstm_cell_401_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_724903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_724903___redundant_placeholder04
0while_while_cond_724903___redundant_placeholder14
0while_while_cond_724903___redundant_placeholder24
0while_while_cond_724903___redundant_placeholder3
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_725819

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
?
?
)__inference_lstm_401_layer_call_fn_725021

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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722087o
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
)sequential_133_lstm_399_while_cond_720219L
Hsequential_133_lstm_399_while_sequential_133_lstm_399_while_loop_counterR
Nsequential_133_lstm_399_while_sequential_133_lstm_399_while_maximum_iterations-
)sequential_133_lstm_399_while_placeholder/
+sequential_133_lstm_399_while_placeholder_1/
+sequential_133_lstm_399_while_placeholder_2/
+sequential_133_lstm_399_while_placeholder_3N
Jsequential_133_lstm_399_while_less_sequential_133_lstm_399_strided_slice_1d
`sequential_133_lstm_399_while_sequential_133_lstm_399_while_cond_720219___redundant_placeholder0d
`sequential_133_lstm_399_while_sequential_133_lstm_399_while_cond_720219___redundant_placeholder1d
`sequential_133_lstm_399_while_sequential_133_lstm_399_while_cond_720219___redundant_placeholder2d
`sequential_133_lstm_399_while_sequential_133_lstm_399_while_cond_720219___redundant_placeholder3*
&sequential_133_lstm_399_while_identity
?
"sequential_133/lstm_399/while/LessLess)sequential_133_lstm_399_while_placeholderJsequential_133_lstm_399_while_less_sequential_133_lstm_399_strided_slice_1*
T0*
_output_shapes
: {
&sequential_133/lstm_399/while/IdentityIdentity&sequential_133/lstm_399/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_133_lstm_399_while_identity/sequential_133/lstm_399/while/Identity:output:0*(
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_721787

inputs?
,lstm_cell_117_matmul_readvariableop_resource:	?A
.lstm_cell_117_matmul_1_readvariableop_resource:	d?<
-lstm_cell_117_biasadd_readvariableop_resource:	?
identity??$lstm_cell_117/BiasAdd/ReadVariableOp?#lstm_cell_117/MatMul/ReadVariableOp?%lstm_cell_117/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_117/MatMul/ReadVariableOpReadVariableOp,lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_117/MatMulMatMulstrided_slice_2:output:0+lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_117/MatMul_1MatMulzeros:output:0-lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_117/addAddV2lstm_cell_117/MatMul:product:0 lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_117/BiasAddBiasAddlstm_cell_117/add:z:0,lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_117/splitSplit&lstm_cell_117/split/split_dim:output:0lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_117/SigmoidSigmoidlstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_1Sigmoidlstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_117/mulMullstm_cell_117/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_117/ReluRelulstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_1Mullstm_cell_117/Sigmoid:y:0 lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_117/add_1AddV2lstm_cell_117/mul:z:0lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_2Sigmoidlstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_117/Relu_1Relulstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_2Mullstm_cell_117/Sigmoid_2:y:0"lstm_cell_117/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_117_matmul_readvariableop_resource.lstm_cell_117_matmul_1_readvariableop_resource-lstm_cell_117_biasadd_readvariableop_resource*
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
while_body_721703*
condR
while_cond_721702*K
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
NoOpNoOp%^lstm_cell_117/BiasAdd/ReadVariableOp$^lstm_cell_117/MatMul/ReadVariableOp&^lstm_cell_117/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_117/BiasAdd/ReadVariableOp$lstm_cell_117/BiasAdd/ReadVariableOp2J
#lstm_cell_117/MatMul/ReadVariableOp#lstm_cell_117/MatMul/ReadVariableOp2N
%lstm_cell_117/MatMul_1/ReadVariableOp%lstm_cell_117/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_725520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:2(F
4while_lstm_cell_119_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_119_biasadd_readvariableop_resource:(??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_721210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_118_721234_0:	d?/
while_lstm_cell_118_721236_0:	2?+
while_lstm_cell_118_721238_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_118_721234:	d?-
while_lstm_cell_118_721236:	2?)
while_lstm_cell_118_721238:	???+while/lstm_cell_118/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_118_721234_0while_lstm_cell_118_721236_0while_lstm_cell_118_721238_0*
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721151?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_118/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_118/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_118/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_118/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_118_721234while_lstm_cell_118_721234_0":
while_lstm_cell_118_721236while_lstm_cell_118_721236_0":
while_lstm_cell_118_721238while_lstm_cell_118_721238_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_118/StatefulPartitionedCall+while/lstm_cell_118/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_725885

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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722303

inputs>
,lstm_cell_119_matmul_readvariableop_resource:2(@
.lstm_cell_119_matmul_1_readvariableop_resource:
(;
-lstm_cell_119_biasadd_readvariableop_resource:(
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
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
while_body_722219*
condR
while_cond_722218*K
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
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_721368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_721368___redundant_placeholder04
0while_while_cond_721368___redundant_placeholder14
0while_while_cond_721368___redundant_placeholder24
0while_while_cond_721368___redundant_placeholder3
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
while_cond_722002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_722002___redundant_placeholder04
0while_while_cond_722002___redundant_placeholder14
0while_while_cond_722002___redundant_placeholder24
0while_while_cond_722002___redundant_placeholder3
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
)__inference_lstm_400_layer_call_fn_724405

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
D__inference_lstm_400_layer_call_and_return_conditional_losses_721937s
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
.__inference_lstm_cell_118_layer_call_fn_725738

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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721005o
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
?K
?
D__inference_lstm_399_layer_call_and_return_conditional_losses_723943
inputs_0?
,lstm_cell_117_matmul_readvariableop_resource:	?A
.lstm_cell_117_matmul_1_readvariableop_resource:	d?<
-lstm_cell_117_biasadd_readvariableop_resource:	?
identity??$lstm_cell_117/BiasAdd/ReadVariableOp?#lstm_cell_117/MatMul/ReadVariableOp?%lstm_cell_117/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_117/MatMul/ReadVariableOpReadVariableOp,lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_117/MatMulMatMulstrided_slice_2:output:0+lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_117/MatMul_1MatMulzeros:output:0-lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_117/addAddV2lstm_cell_117/MatMul:product:0 lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_117/BiasAddBiasAddlstm_cell_117/add:z:0,lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_117/splitSplit&lstm_cell_117/split/split_dim:output:0lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_117/SigmoidSigmoidlstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_1Sigmoidlstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_117/mulMullstm_cell_117/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_117/ReluRelulstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_1Mullstm_cell_117/Sigmoid:y:0 lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_117/add_1AddV2lstm_cell_117/mul:z:0lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_2Sigmoidlstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_117/Relu_1Relulstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_2Mullstm_cell_117/Sigmoid_2:y:0"lstm_cell_117/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_117_matmul_readvariableop_resource.lstm_cell_117_matmul_1_readvariableop_resource-lstm_cell_117_biasadd_readvariableop_resource*
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
while_body_723859*
condR
while_cond_723858*K
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
NoOpNoOp%^lstm_cell_117/BiasAdd/ReadVariableOp$^lstm_cell_117/MatMul/ReadVariableOp&^lstm_cell_117/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_117/BiasAdd/ReadVariableOp$lstm_cell_117/BiasAdd/ReadVariableOp2J
#lstm_cell_117/MatMul/ReadVariableOp#lstm_cell_117/MatMul/ReadVariableOp2N
%lstm_cell_117/MatMul_1/ReadVariableOp%lstm_cell_117/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
$__inference_signature_wrapper_722848
lstm_399_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_399_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
!__inference__wrapped_model_720588o
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
_user_specified_namelstm_399_input
?K
?
D__inference_lstm_400_layer_call_and_return_conditional_losses_724702
inputs_0?
,lstm_cell_118_matmul_readvariableop_resource:	d?A
.lstm_cell_118_matmul_1_readvariableop_resource:	2?<
-lstm_cell_118_biasadd_readvariableop_resource:	?
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
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
while_body_724618*
condR
while_cond_724617*K
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
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_133_layer_call_fn_722875

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
J__inference_sequential_133_layer_call_and_return_conditional_losses_722112o
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
?J
?
D__inference_lstm_399_layer_call_and_return_conditional_losses_724372

inputs?
,lstm_cell_117_matmul_readvariableop_resource:	?A
.lstm_cell_117_matmul_1_readvariableop_resource:	d?<
-lstm_cell_117_biasadd_readvariableop_resource:	?
identity??$lstm_cell_117/BiasAdd/ReadVariableOp?#lstm_cell_117/MatMul/ReadVariableOp?%lstm_cell_117/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_117/MatMul/ReadVariableOpReadVariableOp,lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_117/MatMulMatMulstrided_slice_2:output:0+lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_117/MatMul_1MatMulzeros:output:0-lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_117/addAddV2lstm_cell_117/MatMul:product:0 lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_117/BiasAddBiasAddlstm_cell_117/add:z:0,lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_117/splitSplit&lstm_cell_117/split/split_dim:output:0lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_117/SigmoidSigmoidlstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_1Sigmoidlstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_117/mulMullstm_cell_117/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_117/ReluRelulstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_1Mullstm_cell_117/Sigmoid:y:0 lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_117/add_1AddV2lstm_cell_117/mul:z:0lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_2Sigmoidlstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_117/Relu_1Relulstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_2Mullstm_cell_117/Sigmoid_2:y:0"lstm_cell_117/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_117_matmul_readvariableop_resource.lstm_cell_117_matmul_1_readvariableop_resource-lstm_cell_117_biasadd_readvariableop_resource*
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
while_body_724288*
condR
while_cond_724287*K
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
NoOpNoOp%^lstm_cell_117/BiasAdd/ReadVariableOp$^lstm_cell_117/MatMul/ReadVariableOp&^lstm_cell_117/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_117/BiasAdd/ReadVariableOp$lstm_cell_117/BiasAdd/ReadVariableOp2J
#lstm_cell_117/MatMul/ReadVariableOp#lstm_cell_117/MatMul/ReadVariableOp2N
%lstm_cell_117/MatMul_1/ReadVariableOp%lstm_cell_117/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721355

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

?
/__inference_sequential_133_layer_call_fn_722753
lstm_399_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_399_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_722701o
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
_user_specified_namelstm_399_input
?8
?
D__inference_lstm_401_layer_call_and_return_conditional_losses_721438

inputs&
lstm_cell_119_721356:2(&
lstm_cell_119_721358:
("
lstm_cell_119_721360:(
identity??%lstm_cell_119/StatefulPartitionedCall?while;
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
%lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_119_721356lstm_cell_119_721358lstm_cell_119_721360*
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721355n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_119_721356lstm_cell_119_721358lstm_cell_119_721360*
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
while_body_721369*
condR
while_cond_721368*K
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
NoOpNoOp&^lstm_cell_119/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_119/StatefulPartitionedCall%lstm_cell_119/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
D__inference_lstm_401_layer_call_and_return_conditional_losses_721629

inputs&
lstm_cell_119_721547:2(&
lstm_cell_119_721549:
("
lstm_cell_119_721551:(
identity??%lstm_cell_119/StatefulPartitionedCall?while;
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
%lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_119_721547lstm_cell_119_721549lstm_cell_119_721551*
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721501n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_119_721547lstm_cell_119_721549lstm_cell_119_721551*
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
while_body_721560*
condR
while_cond_721559*K
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
NoOpNoOp&^lstm_cell_119/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_119/StatefulPartitionedCall%lstm_cell_119/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
)__inference_lstm_399_layer_call_fn_723778
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_720929|
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
while_cond_724001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_724001___redundant_placeholder04
0while_while_cond_724001___redundant_placeholder14
0while_while_cond_724001___redundant_placeholder24
0while_while_cond_724001___redundant_placeholder3
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_721088

inputs'
lstm_cell_118_721006:	d?'
lstm_cell_118_721008:	2?#
lstm_cell_118_721010:	?
identity??%lstm_cell_118/StatefulPartitionedCall?while;
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
%lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_118_721006lstm_cell_118_721008lstm_cell_118_721010*
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721005n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_118_721006lstm_cell_118_721008lstm_cell_118_721010*
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
while_body_721019*
condR
while_cond_721018*K
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
NoOpNoOp&^lstm_cell_118/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_118/StatefulPartitionedCall%lstm_cell_118/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_722218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_722218___redundant_placeholder04
0while_while_cond_722218___redundant_placeholder14
0while_while_cond_722218___redundant_placeholder24
0while_while_cond_722218___redundant_placeholder3
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
while_body_722549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_117_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_117_matmul_readvariableop_resource:	?G
4while_lstm_cell_117_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_117_biasadd_readvariableop_resource:	???*while/lstm_cell_117/BiasAdd/ReadVariableOp?)while/lstm_cell_117/MatMul/ReadVariableOp?+while/lstm_cell_117/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_117/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_117/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_117/addAddV2$while/lstm_cell_117/MatMul:product:0&while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_117/BiasAddBiasAddwhile/lstm_cell_117/add:z:02while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_117/splitSplit,while/lstm_cell_117/split/split_dim:output:0$while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_117/SigmoidSigmoid"while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_1Sigmoid"while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mulMul!while/lstm_cell_117/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_117/ReluRelu"while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_1Mulwhile/lstm_cell_117/Sigmoid:y:0&while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/add_1AddV2while/lstm_cell_117/mul:z:0while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_2Sigmoid"while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_117/Relu_1Reluwhile/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_2Mul!while/lstm_cell_117/Sigmoid_2:y:0(while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_117/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_117/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_117/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_117/BiasAdd/ReadVariableOp*^while/lstm_cell_117/MatMul/ReadVariableOp,^while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_117_biasadd_readvariableop_resource5while_lstm_cell_117_biasadd_readvariableop_resource_0"n
4while_lstm_cell_117_matmul_1_readvariableop_resource6while_lstm_cell_117_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_117_matmul_readvariableop_resource4while_lstm_cell_117_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_117/BiasAdd/ReadVariableOp*while/lstm_cell_117/BiasAdd/ReadVariableOp2V
)while/lstm_cell_117/MatMul/ReadVariableOp)while/lstm_cell_117/MatMul/ReadVariableOp2Z
+while/lstm_cell_117/MatMul_1/ReadVariableOp+while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_722783
lstm_399_input"
lstm_399_722756:	?"
lstm_399_722758:	d?
lstm_399_722760:	?"
lstm_400_722763:	d?"
lstm_400_722765:	2?
lstm_400_722767:	?!
lstm_401_722770:2(!
lstm_401_722772:
(
lstm_401_722774:("
dense_133_722777:

dense_133_722779:
identity??!dense_133/StatefulPartitionedCall? lstm_399/StatefulPartitionedCall? lstm_400/StatefulPartitionedCall? lstm_401/StatefulPartitionedCall?
 lstm_399/StatefulPartitionedCallStatefulPartitionedCalllstm_399_inputlstm_399_722756lstm_399_722758lstm_399_722760*
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_721787?
 lstm_400/StatefulPartitionedCallStatefulPartitionedCall)lstm_399/StatefulPartitionedCall:output:0lstm_400_722763lstm_400_722765lstm_400_722767*
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_721937?
 lstm_401/StatefulPartitionedCallStatefulPartitionedCall)lstm_400/StatefulPartitionedCall:output:0lstm_401_722770lstm_401_722772lstm_401_722774*
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722087?
!dense_133/StatefulPartitionedCallStatefulPartitionedCall)lstm_401/StatefulPartitionedCall:output:0dense_133_722777dense_133_722779*
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
E__inference_dense_133_layer_call_and_return_conditional_losses_722105y
IdentityIdentity*dense_133/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_133/StatefulPartitionedCall!^lstm_399/StatefulPartitionedCall!^lstm_400/StatefulPartitionedCall!^lstm_401/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_133/StatefulPartitionedCall!dense_133/StatefulPartitionedCall2D
 lstm_399/StatefulPartitionedCall lstm_399/StatefulPartitionedCall2D
 lstm_400/StatefulPartitionedCall lstm_400/StatefulPartitionedCall2D
 lstm_401/StatefulPartitionedCall lstm_401/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_399_input
?
?
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720655

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

?
lstm_399_while_cond_722960.
*lstm_399_while_lstm_399_while_loop_counter4
0lstm_399_while_lstm_399_while_maximum_iterations
lstm_399_while_placeholder 
lstm_399_while_placeholder_1 
lstm_399_while_placeholder_2 
lstm_399_while_placeholder_30
,lstm_399_while_less_lstm_399_strided_slice_1F
Blstm_399_while_lstm_399_while_cond_722960___redundant_placeholder0F
Blstm_399_while_lstm_399_while_cond_722960___redundant_placeholder1F
Blstm_399_while_lstm_399_while_cond_722960___redundant_placeholder2F
Blstm_399_while_lstm_399_while_cond_722960___redundant_placeholder3
lstm_399_while_identity
?
lstm_399/while/LessLesslstm_399_while_placeholder,lstm_399_while_less_lstm_399_strided_slice_1*
T0*
_output_shapes
: ]
lstm_399/while/IdentityIdentitylstm_399/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_399_while_identity lstm_399/while/Identity:output:0*(
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721005

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
)__inference_lstm_400_layer_call_fn_724394
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_721279|
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
while_body_720860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_117_720884_0:	?/
while_lstm_cell_117_720886_0:	d?+
while_lstm_cell_117_720888_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_117_720884:	?-
while_lstm_cell_117_720886:	d?)
while_lstm_cell_117_720888:	???+while/lstm_cell_117/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_117/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_117_720884_0while_lstm_cell_117_720886_0while_lstm_cell_117_720888_0*
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720801?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_117/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_117/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_117/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_117/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_117_720884while_lstm_cell_117_720884_0":
while_lstm_cell_117_720886while_lstm_cell_117_720886_0":
while_lstm_cell_117_720888while_lstm_cell_117_720888_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_117/StatefulPartitionedCall+while/lstm_cell_117/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_722219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:2(F
4while_lstm_cell_119_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_119_biasadd_readvariableop_resource:(??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_725689

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
while_body_724618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	d?G
4while_lstm_cell_118_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_118_biasadd_readvariableop_resource:	???*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_721018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_721018___redundant_placeholder04
0while_while_cond_721018___redundant_placeholder14
0while_while_cond_721018___redundant_placeholder24
0while_while_cond_721018___redundant_placeholder3
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_724988

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	d?A
.lstm_cell_118_matmul_1_readvariableop_resource:	2?<
-lstm_cell_118_biasadd_readvariableop_resource:	?
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
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
while_body_724904*
condR
while_cond_724903*K
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
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_400_while_cond_723099.
*lstm_400_while_lstm_400_while_loop_counter4
0lstm_400_while_lstm_400_while_maximum_iterations
lstm_400_while_placeholder 
lstm_400_while_placeholder_1 
lstm_400_while_placeholder_2 
lstm_400_while_placeholder_30
,lstm_400_while_less_lstm_400_strided_slice_1F
Blstm_400_while_lstm_400_while_cond_723099___redundant_placeholder0F
Blstm_400_while_lstm_400_while_cond_723099___redundant_placeholder1F
Blstm_400_while_lstm_400_while_cond_723099___redundant_placeholder2F
Blstm_400_while_lstm_400_while_cond_723099___redundant_placeholder3
lstm_400_while_identity
?
lstm_400/while/LessLesslstm_400_while_placeholder,lstm_400_while_less_lstm_400_strided_slice_1*
T0*
_output_shapes
: ]
lstm_400/while/IdentityIdentitylstm_400/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_400_while_identity lstm_400/while/Identity:output:0*(
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
)__inference_lstm_401_layer_call_fn_725032

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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722303o
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
while_cond_724287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_724287___redundant_placeholder04
0while_while_cond_724287___redundant_placeholder14
0while_while_cond_724287___redundant_placeholder24
0while_while_cond_724287___redundant_placeholder3
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_725787

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
while_body_724288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_117_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_117_matmul_readvariableop_resource:	?G
4while_lstm_cell_117_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_117_biasadd_readvariableop_resource:	???*while/lstm_cell_117/BiasAdd/ReadVariableOp?)while/lstm_cell_117/MatMul/ReadVariableOp?+while/lstm_cell_117/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_117/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_117/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_117/addAddV2$while/lstm_cell_117/MatMul:product:0&while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_117/BiasAddBiasAddwhile/lstm_cell_117/add:z:02while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_117/splitSplit,while/lstm_cell_117/split/split_dim:output:0$while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_117/SigmoidSigmoid"while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_1Sigmoid"while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mulMul!while/lstm_cell_117/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_117/ReluRelu"while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_1Mulwhile/lstm_cell_117/Sigmoid:y:0&while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/add_1AddV2while/lstm_cell_117/mul:z:0while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_2Sigmoid"while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_117/Relu_1Reluwhile/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_2Mul!while/lstm_cell_117/Sigmoid_2:y:0(while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_117/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_117/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_117/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_117/BiasAdd/ReadVariableOp*^while/lstm_cell_117/MatMul/ReadVariableOp,^while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_117_biasadd_readvariableop_resource5while_lstm_cell_117_biasadd_readvariableop_resource_0"n
4while_lstm_cell_117_matmul_1_readvariableop_resource6while_lstm_cell_117_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_117_matmul_readvariableop_resource4while_lstm_cell_117_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_117/BiasAdd/ReadVariableOp*while/lstm_cell_117/BiasAdd/ReadVariableOp2V
)while/lstm_cell_117/MatMul/ReadVariableOp)while/lstm_cell_117/MatMul/ReadVariableOp2Z
+while/lstm_cell_117/MatMul_1/ReadVariableOp+while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_401_while_cond_723238.
*lstm_401_while_lstm_401_while_loop_counter4
0lstm_401_while_lstm_401_while_maximum_iterations
lstm_401_while_placeholder 
lstm_401_while_placeholder_1 
lstm_401_while_placeholder_2 
lstm_401_while_placeholder_30
,lstm_401_while_less_lstm_401_strided_slice_1F
Blstm_401_while_lstm_401_while_cond_723238___redundant_placeholder0F
Blstm_401_while_lstm_401_while_cond_723238___redundant_placeholder1F
Blstm_401_while_lstm_401_while_cond_723238___redundant_placeholder2F
Blstm_401_while_lstm_401_while_cond_723238___redundant_placeholder3
lstm_401_while_identity
?
lstm_401/while/LessLesslstm_401_while_placeholder,lstm_401_while_less_lstm_401_strided_slice_1*
T0*
_output_shapes
: ]
lstm_401/while/IdentityIdentitylstm_401/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_401_while_identity lstm_401/while/Identity:output:0*(
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
while_cond_720668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_720668___redundant_placeholder04
0while_while_cond_720668___redundant_placeholder14
0while_while_cond_720668___redundant_placeholder24
0while_while_cond_720668___redundant_placeholder3
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_723756

inputsH
5lstm_399_lstm_cell_117_matmul_readvariableop_resource:	?J
7lstm_399_lstm_cell_117_matmul_1_readvariableop_resource:	d?E
6lstm_399_lstm_cell_117_biasadd_readvariableop_resource:	?H
5lstm_400_lstm_cell_118_matmul_readvariableop_resource:	d?J
7lstm_400_lstm_cell_118_matmul_1_readvariableop_resource:	2?E
6lstm_400_lstm_cell_118_biasadd_readvariableop_resource:	?G
5lstm_401_lstm_cell_119_matmul_readvariableop_resource:2(I
7lstm_401_lstm_cell_119_matmul_1_readvariableop_resource:
(D
6lstm_401_lstm_cell_119_biasadd_readvariableop_resource:(:
(dense_133_matmul_readvariableop_resource:
7
)dense_133_biasadd_readvariableop_resource:
identity?? dense_133/BiasAdd/ReadVariableOp?dense_133/MatMul/ReadVariableOp?-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp?,lstm_399/lstm_cell_117/MatMul/ReadVariableOp?.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp?lstm_399/while?-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp?,lstm_400/lstm_cell_118/MatMul/ReadVariableOp?.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp?lstm_400/while?-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp?,lstm_401/lstm_cell_119/MatMul/ReadVariableOp?.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp?lstm_401/whileD
lstm_399/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_399/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_399/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_399/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_sliceStridedSlicelstm_399/Shape:output:0%lstm_399/strided_slice/stack:output:0'lstm_399/strided_slice/stack_1:output:0'lstm_399/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_399/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_399/zeros/packedPacklstm_399/strided_slice:output:0 lstm_399/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_399/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_399/zerosFilllstm_399/zeros/packed:output:0lstm_399/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_399/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_399/zeros_1/packedPacklstm_399/strided_slice:output:0"lstm_399/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_399/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_399/zeros_1Fill lstm_399/zeros_1/packed:output:0lstm_399/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_399/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_399/transpose	Transposeinputs lstm_399/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_399/Shape_1Shapelstm_399/transpose:y:0*
T0*
_output_shapes
:h
lstm_399/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_399/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_399/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_slice_1StridedSlicelstm_399/Shape_1:output:0'lstm_399/strided_slice_1/stack:output:0)lstm_399/strided_slice_1/stack_1:output:0)lstm_399/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_399/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_399/TensorArrayV2TensorListReserve-lstm_399/TensorArrayV2/element_shape:output:0!lstm_399/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_399/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_399/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_399/transpose:y:0Glstm_399/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_399/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_399/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_399/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_slice_2StridedSlicelstm_399/transpose:y:0'lstm_399/strided_slice_2/stack:output:0)lstm_399/strided_slice_2/stack_1:output:0)lstm_399/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_399/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp5lstm_399_lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_399/lstm_cell_117/MatMulMatMul!lstm_399/strided_slice_2:output:04lstm_399/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp7lstm_399_lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_399/lstm_cell_117/MatMul_1MatMullstm_399/zeros:output:06lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_399/lstm_cell_117/addAddV2'lstm_399/lstm_cell_117/MatMul:product:0)lstm_399/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp6lstm_399_lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_399/lstm_cell_117/BiasAddBiasAddlstm_399/lstm_cell_117/add:z:05lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_399/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_399/lstm_cell_117/splitSplit/lstm_399/lstm_cell_117/split/split_dim:output:0'lstm_399/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_399/lstm_cell_117/SigmoidSigmoid%lstm_399/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_399/lstm_cell_117/Sigmoid_1Sigmoid%lstm_399/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/mulMul$lstm_399/lstm_cell_117/Sigmoid_1:y:0lstm_399/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_399/lstm_cell_117/ReluRelu%lstm_399/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/mul_1Mul"lstm_399/lstm_cell_117/Sigmoid:y:0)lstm_399/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/add_1AddV2lstm_399/lstm_cell_117/mul:z:0 lstm_399/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_399/lstm_cell_117/Sigmoid_2Sigmoid%lstm_399/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_399/lstm_cell_117/Relu_1Relu lstm_399/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/mul_2Mul$lstm_399/lstm_cell_117/Sigmoid_2:y:0+lstm_399/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_399/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_399/TensorArrayV2_1TensorListReserve/lstm_399/TensorArrayV2_1/element_shape:output:0!lstm_399/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_399/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_399/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_399/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_399/whileWhile$lstm_399/while/loop_counter:output:0*lstm_399/while/maximum_iterations:output:0lstm_399/time:output:0!lstm_399/TensorArrayV2_1:handle:0lstm_399/zeros:output:0lstm_399/zeros_1:output:0!lstm_399/strided_slice_1:output:0@lstm_399/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_399_lstm_cell_117_matmul_readvariableop_resource7lstm_399_lstm_cell_117_matmul_1_readvariableop_resource6lstm_399_lstm_cell_117_biasadd_readvariableop_resource*
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
lstm_399_while_body_723388*&
condR
lstm_399_while_cond_723387*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_399/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_399/TensorArrayV2Stack/TensorListStackTensorListStacklstm_399/while:output:3Blstm_399/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_399/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_399/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_399/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_slice_3StridedSlice4lstm_399/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_399/strided_slice_3/stack:output:0)lstm_399/strided_slice_3/stack_1:output:0)lstm_399/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_399/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_399/transpose_1	Transpose4lstm_399/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_399/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_399/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_400/ShapeShapelstm_399/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_400/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_400/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_400/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_sliceStridedSlicelstm_400/Shape:output:0%lstm_400/strided_slice/stack:output:0'lstm_400/strided_slice/stack_1:output:0'lstm_400/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_400/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_400/zeros/packedPacklstm_400/strided_slice:output:0 lstm_400/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_400/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_400/zerosFilllstm_400/zeros/packed:output:0lstm_400/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_400/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_400/zeros_1/packedPacklstm_400/strided_slice:output:0"lstm_400/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_400/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_400/zeros_1Fill lstm_400/zeros_1/packed:output:0lstm_400/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_400/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_400/transpose	Transposelstm_399/transpose_1:y:0 lstm_400/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_400/Shape_1Shapelstm_400/transpose:y:0*
T0*
_output_shapes
:h
lstm_400/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_400/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_400/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_slice_1StridedSlicelstm_400/Shape_1:output:0'lstm_400/strided_slice_1/stack:output:0)lstm_400/strided_slice_1/stack_1:output:0)lstm_400/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_400/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_400/TensorArrayV2TensorListReserve-lstm_400/TensorArrayV2/element_shape:output:0!lstm_400/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_400/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_400/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_400/transpose:y:0Glstm_400/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_400/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_400/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_400/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_slice_2StridedSlicelstm_400/transpose:y:0'lstm_400/strided_slice_2/stack:output:0)lstm_400/strided_slice_2/stack_1:output:0)lstm_400/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_400/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp5lstm_400_lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_400/lstm_cell_118/MatMulMatMul!lstm_400/strided_slice_2:output:04lstm_400/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp7lstm_400_lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_400/lstm_cell_118/MatMul_1MatMullstm_400/zeros:output:06lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_400/lstm_cell_118/addAddV2'lstm_400/lstm_cell_118/MatMul:product:0)lstm_400/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp6lstm_400_lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_400/lstm_cell_118/BiasAddBiasAddlstm_400/lstm_cell_118/add:z:05lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_400/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_400/lstm_cell_118/splitSplit/lstm_400/lstm_cell_118/split/split_dim:output:0'lstm_400/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_400/lstm_cell_118/SigmoidSigmoid%lstm_400/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_400/lstm_cell_118/Sigmoid_1Sigmoid%lstm_400/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/mulMul$lstm_400/lstm_cell_118/Sigmoid_1:y:0lstm_400/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_400/lstm_cell_118/ReluRelu%lstm_400/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/mul_1Mul"lstm_400/lstm_cell_118/Sigmoid:y:0)lstm_400/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/add_1AddV2lstm_400/lstm_cell_118/mul:z:0 lstm_400/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_400/lstm_cell_118/Sigmoid_2Sigmoid%lstm_400/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_400/lstm_cell_118/Relu_1Relu lstm_400/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/mul_2Mul$lstm_400/lstm_cell_118/Sigmoid_2:y:0+lstm_400/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_400/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_400/TensorArrayV2_1TensorListReserve/lstm_400/TensorArrayV2_1/element_shape:output:0!lstm_400/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_400/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_400/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_400/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_400/whileWhile$lstm_400/while/loop_counter:output:0*lstm_400/while/maximum_iterations:output:0lstm_400/time:output:0!lstm_400/TensorArrayV2_1:handle:0lstm_400/zeros:output:0lstm_400/zeros_1:output:0!lstm_400/strided_slice_1:output:0@lstm_400/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_400_lstm_cell_118_matmul_readvariableop_resource7lstm_400_lstm_cell_118_matmul_1_readvariableop_resource6lstm_400_lstm_cell_118_biasadd_readvariableop_resource*
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
lstm_400_while_body_723527*&
condR
lstm_400_while_cond_723526*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_400/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_400/TensorArrayV2Stack/TensorListStackTensorListStacklstm_400/while:output:3Blstm_400/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_400/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_400/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_400/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_slice_3StridedSlice4lstm_400/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_400/strided_slice_3/stack:output:0)lstm_400/strided_slice_3/stack_1:output:0)lstm_400/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_400/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_400/transpose_1	Transpose4lstm_400/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_400/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_400/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_401/ShapeShapelstm_400/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_401/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_401/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_401/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_sliceStridedSlicelstm_401/Shape:output:0%lstm_401/strided_slice/stack:output:0'lstm_401/strided_slice/stack_1:output:0'lstm_401/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_401/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_401/zeros/packedPacklstm_401/strided_slice:output:0 lstm_401/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_401/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_401/zerosFilllstm_401/zeros/packed:output:0lstm_401/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_401/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_401/zeros_1/packedPacklstm_401/strided_slice:output:0"lstm_401/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_401/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_401/zeros_1Fill lstm_401/zeros_1/packed:output:0lstm_401/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_401/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_401/transpose	Transposelstm_400/transpose_1:y:0 lstm_401/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_401/Shape_1Shapelstm_401/transpose:y:0*
T0*
_output_shapes
:h
lstm_401/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_401/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_401/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_slice_1StridedSlicelstm_401/Shape_1:output:0'lstm_401/strided_slice_1/stack:output:0)lstm_401/strided_slice_1/stack_1:output:0)lstm_401/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_401/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_401/TensorArrayV2TensorListReserve-lstm_401/TensorArrayV2/element_shape:output:0!lstm_401/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_401/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_401/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_401/transpose:y:0Glstm_401/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_401/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_401/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_401/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_slice_2StridedSlicelstm_401/transpose:y:0'lstm_401/strided_slice_2/stack:output:0)lstm_401/strided_slice_2/stack_1:output:0)lstm_401/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_401/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp5lstm_401_lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_401/lstm_cell_119/MatMulMatMul!lstm_401/strided_slice_2:output:04lstm_401/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp7lstm_401_lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_401/lstm_cell_119/MatMul_1MatMullstm_401/zeros:output:06lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_401/lstm_cell_119/addAddV2'lstm_401/lstm_cell_119/MatMul:product:0)lstm_401/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp6lstm_401_lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_401/lstm_cell_119/BiasAddBiasAddlstm_401/lstm_cell_119/add:z:05lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_401/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_401/lstm_cell_119/splitSplit/lstm_401/lstm_cell_119/split/split_dim:output:0'lstm_401/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_401/lstm_cell_119/SigmoidSigmoid%lstm_401/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_401/lstm_cell_119/Sigmoid_1Sigmoid%lstm_401/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/mulMul$lstm_401/lstm_cell_119/Sigmoid_1:y:0lstm_401/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_401/lstm_cell_119/ReluRelu%lstm_401/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/mul_1Mul"lstm_401/lstm_cell_119/Sigmoid:y:0)lstm_401/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/add_1AddV2lstm_401/lstm_cell_119/mul:z:0 lstm_401/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_401/lstm_cell_119/Sigmoid_2Sigmoid%lstm_401/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_401/lstm_cell_119/Relu_1Relu lstm_401/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/mul_2Mul$lstm_401/lstm_cell_119/Sigmoid_2:y:0+lstm_401/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_401/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_401/TensorArrayV2_1TensorListReserve/lstm_401/TensorArrayV2_1/element_shape:output:0!lstm_401/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_401/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_401/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_401/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_401/whileWhile$lstm_401/while/loop_counter:output:0*lstm_401/while/maximum_iterations:output:0lstm_401/time:output:0!lstm_401/TensorArrayV2_1:handle:0lstm_401/zeros:output:0lstm_401/zeros_1:output:0!lstm_401/strided_slice_1:output:0@lstm_401/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_401_lstm_cell_119_matmul_readvariableop_resource7lstm_401_lstm_cell_119_matmul_1_readvariableop_resource6lstm_401_lstm_cell_119_biasadd_readvariableop_resource*
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
lstm_401_while_body_723666*&
condR
lstm_401_while_cond_723665*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_401/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_401/TensorArrayV2Stack/TensorListStackTensorListStacklstm_401/while:output:3Blstm_401/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_401/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_401/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_401/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_slice_3StridedSlice4lstm_401/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_401/strided_slice_3/stack:output:0)lstm_401/strided_slice_3/stack_1:output:0)lstm_401/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_401/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_401/transpose_1	Transpose4lstm_401/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_401/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_401/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_133/MatMul/ReadVariableOpReadVariableOp(dense_133_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_133/MatMulMatMul!lstm_401/strided_slice_3:output:0'dense_133/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_133/BiasAdd/ReadVariableOpReadVariableOp)dense_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_133/BiasAddBiasAdddense_133/MatMul:product:0(dense_133/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_133/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_133/BiasAdd/ReadVariableOp ^dense_133/MatMul/ReadVariableOp.^lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp-^lstm_399/lstm_cell_117/MatMul/ReadVariableOp/^lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp^lstm_399/while.^lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp-^lstm_400/lstm_cell_118/MatMul/ReadVariableOp/^lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp^lstm_400/while.^lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp-^lstm_401/lstm_cell_119/MatMul/ReadVariableOp/^lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp^lstm_401/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_133/BiasAdd/ReadVariableOp dense_133/BiasAdd/ReadVariableOp2B
dense_133/MatMul/ReadVariableOpdense_133/MatMul/ReadVariableOp2^
-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp2\
,lstm_399/lstm_cell_117/MatMul/ReadVariableOp,lstm_399/lstm_cell_117/MatMul/ReadVariableOp2`
.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp2 
lstm_399/whilelstm_399/while2^
-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp2\
,lstm_400/lstm_cell_118/MatMul/ReadVariableOp,lstm_400/lstm_cell_118/MatMul/ReadVariableOp2`
.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp2 
lstm_400/whilelstm_400/while2^
-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp2\
,lstm_401/lstm_cell_119/MatMul/ReadVariableOp,lstm_401/lstm_cell_119/MatMul/ReadVariableOp2`
.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp2 
lstm_401/whilelstm_401/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_724474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_724474___redundant_placeholder04
0while_while_cond_724474___redundant_placeholder14
0while_while_cond_724474___redundant_placeholder24
0while_while_cond_724474___redundant_placeholder3
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
while_body_721703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_117_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_117_matmul_readvariableop_resource:	?G
4while_lstm_cell_117_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_117_biasadd_readvariableop_resource:	???*while/lstm_cell_117/BiasAdd/ReadVariableOp?)while/lstm_cell_117/MatMul/ReadVariableOp?+while/lstm_cell_117/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_117/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_117/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_117/addAddV2$while/lstm_cell_117/MatMul:product:0&while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_117/BiasAddBiasAddwhile/lstm_cell_117/add:z:02while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_117/splitSplit,while/lstm_cell_117/split/split_dim:output:0$while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_117/SigmoidSigmoid"while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_1Sigmoid"while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mulMul!while/lstm_cell_117/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_117/ReluRelu"while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_1Mulwhile/lstm_cell_117/Sigmoid:y:0&while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/add_1AddV2while/lstm_cell_117/mul:z:0while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_2Sigmoid"while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_117/Relu_1Reluwhile/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_2Mul!while/lstm_cell_117/Sigmoid_2:y:0(while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_117/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_117/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_117/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_117/BiasAdd/ReadVariableOp*^while/lstm_cell_117/MatMul/ReadVariableOp,^while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_117_biasadd_readvariableop_resource5while_lstm_cell_117_biasadd_readvariableop_resource_0"n
4while_lstm_cell_117_matmul_1_readvariableop_resource6while_lstm_cell_117_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_117_matmul_readvariableop_resource4while_lstm_cell_117_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_117/BiasAdd/ReadVariableOp*while/lstm_cell_117/BiasAdd/ReadVariableOp2V
)while/lstm_cell_117/MatMul/ReadVariableOp)while/lstm_cell_117/MatMul/ReadVariableOp2Z
+while/lstm_cell_117/MatMul_1/ReadVariableOp+while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_720669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_117_720693_0:	?/
while_lstm_cell_117_720695_0:	d?+
while_lstm_cell_117_720697_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_117_720693:	?-
while_lstm_cell_117_720695:	d?)
while_lstm_cell_117_720697:	???+while/lstm_cell_117/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_117/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_117_720693_0while_lstm_cell_117_720695_0while_lstm_cell_117_720697_0*
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720655?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_117/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_117/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_117/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_117/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_117_720693while_lstm_cell_117_720693_0":
while_lstm_cell_117_720695while_lstm_cell_117_720695_0":
while_lstm_cell_117_720697while_lstm_cell_117_720697_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_117/StatefulPartitionedCall+while/lstm_cell_117/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_399_while_cond_723387.
*lstm_399_while_lstm_399_while_loop_counter4
0lstm_399_while_lstm_399_while_maximum_iterations
lstm_399_while_placeholder 
lstm_399_while_placeholder_1 
lstm_399_while_placeholder_2 
lstm_399_while_placeholder_30
,lstm_399_while_less_lstm_399_strided_slice_1F
Blstm_399_while_lstm_399_while_cond_723387___redundant_placeholder0F
Blstm_399_while_lstm_399_while_cond_723387___redundant_placeholder1F
Blstm_399_while_lstm_399_while_cond_723387___redundant_placeholder2F
Blstm_399_while_lstm_399_while_cond_723387___redundant_placeholder3
lstm_399_while_identity
?
lstm_399/while/LessLesslstm_399_while_placeholder,lstm_399_while_less_lstm_399_strided_slice_1*
T0*
_output_shapes
: ]
lstm_399/while/IdentityIdentitylstm_399/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_399_while_identity lstm_399/while/Identity:output:0*(
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_724559
inputs_0?
,lstm_cell_118_matmul_readvariableop_resource:	d?A
.lstm_cell_118_matmul_1_readvariableop_resource:	2?<
-lstm_cell_118_biasadd_readvariableop_resource:	?
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
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
while_body_724475*
condR
while_cond_724474*K
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
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_725917

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
D__inference_lstm_399_layer_call_and_return_conditional_losses_724229

inputs?
,lstm_cell_117_matmul_readvariableop_resource:	?A
.lstm_cell_117_matmul_1_readvariableop_resource:	d?<
-lstm_cell_117_biasadd_readvariableop_resource:	?
identity??$lstm_cell_117/BiasAdd/ReadVariableOp?#lstm_cell_117/MatMul/ReadVariableOp?%lstm_cell_117/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_117/MatMul/ReadVariableOpReadVariableOp,lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_117/MatMulMatMulstrided_slice_2:output:0+lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_117/MatMul_1MatMulzeros:output:0-lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_117/addAddV2lstm_cell_117/MatMul:product:0 lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_117/BiasAddBiasAddlstm_cell_117/add:z:0,lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_117/splitSplit&lstm_cell_117/split/split_dim:output:0lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_117/SigmoidSigmoidlstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_1Sigmoidlstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_117/mulMullstm_cell_117/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_117/ReluRelulstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_1Mullstm_cell_117/Sigmoid:y:0 lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_117/add_1AddV2lstm_cell_117/mul:z:0lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_2Sigmoidlstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_117/Relu_1Relulstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_2Mullstm_cell_117/Sigmoid_2:y:0"lstm_cell_117/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_117_matmul_readvariableop_resource.lstm_cell_117_matmul_1_readvariableop_resource-lstm_cell_117_biasadd_readvariableop_resource*
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
while_body_724145*
condR
while_cond_724144*K
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
NoOpNoOp%^lstm_cell_117/BiasAdd/ReadVariableOp$^lstm_cell_117/MatMul/ReadVariableOp&^lstm_cell_117/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_117/BiasAdd/ReadVariableOp$lstm_cell_117/BiasAdd/ReadVariableOp2J
#lstm_cell_117/MatMul/ReadVariableOp#lstm_cell_117/MatMul/ReadVariableOp2N
%lstm_cell_117/MatMul_1/ReadVariableOp%lstm_cell_117/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_400_layer_call_fn_724416

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
D__inference_lstm_400_layer_call_and_return_conditional_losses_722468s
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
?
while_body_725377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:2(F
4while_lstm_cell_119_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_119_biasadd_readvariableop_resource:(??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_117_layer_call_fn_725657

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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720801o
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
?
.__inference_lstm_cell_119_layer_call_fn_725853

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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721501o
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
?
?
*__inference_dense_133_layer_call_fn_725613

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
E__inference_dense_133_layer_call_and_return_conditional_losses_722105o
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
?
?
)__inference_lstm_401_layer_call_fn_724999
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_721438o
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
E__inference_dense_133_layer_call_and_return_conditional_losses_725623

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
while_cond_725233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_725233___redundant_placeholder04
0while_while_cond_725233___redundant_placeholder14
0while_while_cond_725233___redundant_placeholder24
0while_while_cond_725233___redundant_placeholder3
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
/__inference_sequential_133_layer_call_fn_722902

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
J__inference_sequential_133_layer_call_and_return_conditional_losses_722701o
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
)__inference_lstm_399_layer_call_fn_723767
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_720738|
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720801

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
D__inference_lstm_399_layer_call_and_return_conditional_losses_720738

inputs'
lstm_cell_117_720656:	?'
lstm_cell_117_720658:	d?#
lstm_cell_117_720660:	?
identity??%lstm_cell_117/StatefulPartitionedCall?while;
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
%lstm_cell_117/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_117_720656lstm_cell_117_720658lstm_cell_117_720660*
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720655n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_117_720656lstm_cell_117_720658lstm_cell_117_720660*
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
while_body_720669*
condR
while_cond_720668*K
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
NoOpNoOp&^lstm_cell_117/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_117/StatefulPartitionedCall%lstm_cell_117/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_724617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_724617___redundant_placeholder04
0while_while_cond_724617___redundant_placeholder14
0while_while_cond_724617___redundant_placeholder24
0while_while_cond_724617___redundant_placeholder3
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
while_body_724002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_117_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_117_matmul_readvariableop_resource:	?G
4while_lstm_cell_117_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_117_biasadd_readvariableop_resource:	???*while/lstm_cell_117/BiasAdd/ReadVariableOp?)while/lstm_cell_117/MatMul/ReadVariableOp?+while/lstm_cell_117/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_117/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_117/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_117/addAddV2$while/lstm_cell_117/MatMul:product:0&while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_117/BiasAddBiasAddwhile/lstm_cell_117/add:z:02while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_117/splitSplit,while/lstm_cell_117/split/split_dim:output:0$while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_117/SigmoidSigmoid"while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_1Sigmoid"while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mulMul!while/lstm_cell_117/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_117/ReluRelu"while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_1Mulwhile/lstm_cell_117/Sigmoid:y:0&while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/add_1AddV2while/lstm_cell_117/mul:z:0while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_2Sigmoid"while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_117/Relu_1Reluwhile/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_2Mul!while/lstm_cell_117/Sigmoid_2:y:0(while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_117/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_117/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_117/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_117/BiasAdd/ReadVariableOp*^while/lstm_cell_117/MatMul/ReadVariableOp,^while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_117_biasadd_readvariableop_resource5while_lstm_cell_117_biasadd_readvariableop_resource_0"n
4while_lstm_cell_117_matmul_1_readvariableop_resource6while_lstm_cell_117_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_117_matmul_readvariableop_resource4while_lstm_cell_117_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_117/BiasAdd/ReadVariableOp*while/lstm_cell_117/BiasAdd/ReadVariableOp2V
)while/lstm_cell_117/MatMul/ReadVariableOp)while/lstm_cell_117/MatMul/ReadVariableOp2Z
+while/lstm_cell_117/MatMul_1/ReadVariableOp+while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_401_while_body_723666.
*lstm_401_while_lstm_401_while_loop_counter4
0lstm_401_while_lstm_401_while_maximum_iterations
lstm_401_while_placeholder 
lstm_401_while_placeholder_1 
lstm_401_while_placeholder_2 
lstm_401_while_placeholder_3-
)lstm_401_while_lstm_401_strided_slice_1_0i
elstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0:2(Q
?lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(L
>lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0:(
lstm_401_while_identity
lstm_401_while_identity_1
lstm_401_while_identity_2
lstm_401_while_identity_3
lstm_401_while_identity_4
lstm_401_while_identity_5+
'lstm_401_while_lstm_401_strided_slice_1g
clstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensorM
;lstm_401_while_lstm_cell_119_matmul_readvariableop_resource:2(O
=lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource:
(J
<lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource:(??3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp?2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp?4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp?
@lstm_401/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_401/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensor_0lstm_401_while_placeholderIlstm_401/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp=lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_401/while/lstm_cell_119/MatMulMatMul9lstm_401/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp?lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_401/while/lstm_cell_119/MatMul_1MatMullstm_401_while_placeholder_2<lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_401/while/lstm_cell_119/addAddV2-lstm_401/while/lstm_cell_119/MatMul:product:0/lstm_401/while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp>lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_401/while/lstm_cell_119/BiasAddBiasAdd$lstm_401/while/lstm_cell_119/add:z:0;lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_401/while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_401/while/lstm_cell_119/splitSplit5lstm_401/while/lstm_cell_119/split/split_dim:output:0-lstm_401/while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_401/while/lstm_cell_119/SigmoidSigmoid+lstm_401/while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_401/while/lstm_cell_119/Sigmoid_1Sigmoid+lstm_401/while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_401/while/lstm_cell_119/mulMul*lstm_401/while/lstm_cell_119/Sigmoid_1:y:0lstm_401_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_401/while/lstm_cell_119/ReluRelu+lstm_401/while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_401/while/lstm_cell_119/mul_1Mul(lstm_401/while/lstm_cell_119/Sigmoid:y:0/lstm_401/while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_401/while/lstm_cell_119/add_1AddV2$lstm_401/while/lstm_cell_119/mul:z:0&lstm_401/while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_401/while/lstm_cell_119/Sigmoid_2Sigmoid+lstm_401/while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_401/while/lstm_cell_119/Relu_1Relu&lstm_401/while/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_401/while/lstm_cell_119/mul_2Mul*lstm_401/while/lstm_cell_119/Sigmoid_2:y:01lstm_401/while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_401/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_401_while_placeholder_1lstm_401_while_placeholder&lstm_401/while/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_401/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_401/while/addAddV2lstm_401_while_placeholderlstm_401/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_401/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_401/while/add_1AddV2*lstm_401_while_lstm_401_while_loop_counterlstm_401/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_401/while/IdentityIdentitylstm_401/while/add_1:z:0^lstm_401/while/NoOp*
T0*
_output_shapes
: ?
lstm_401/while/Identity_1Identity0lstm_401_while_lstm_401_while_maximum_iterations^lstm_401/while/NoOp*
T0*
_output_shapes
: t
lstm_401/while/Identity_2Identitylstm_401/while/add:z:0^lstm_401/while/NoOp*
T0*
_output_shapes
: ?
lstm_401/while/Identity_3IdentityClstm_401/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_401/while/NoOp*
T0*
_output_shapes
: ?
lstm_401/while/Identity_4Identity&lstm_401/while/lstm_cell_119/mul_2:z:0^lstm_401/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_401/while/Identity_5Identity&lstm_401/while/lstm_cell_119/add_1:z:0^lstm_401/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_401/while/NoOpNoOp4^lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp3^lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp5^lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_401_while_identity lstm_401/while/Identity:output:0"?
lstm_401_while_identity_1"lstm_401/while/Identity_1:output:0"?
lstm_401_while_identity_2"lstm_401/while/Identity_2:output:0"?
lstm_401_while_identity_3"lstm_401/while/Identity_3:output:0"?
lstm_401_while_identity_4"lstm_401/while/Identity_4:output:0"?
lstm_401_while_identity_5"lstm_401/while/Identity_5:output:0"T
'lstm_401_while_lstm_401_strided_slice_1)lstm_401_while_lstm_401_strided_slice_1_0"~
<lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource>lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0"?
=lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource?lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0"|
;lstm_401_while_lstm_cell_119_matmul_readvariableop_resource=lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0"?
clstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensorelstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp2h
2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp2l
4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_724904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	d?G
4while_lstm_cell_118_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_118_biasadd_readvariableop_resource:	???*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_133_layer_call_and_return_conditional_losses_722105

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
while_cond_725519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_725519___redundant_placeholder04
0while_while_cond_725519___redundant_placeholder14
0while_while_cond_725519___redundant_placeholder24
0while_while_cond_725519___redundant_placeholder3
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
)__inference_lstm_399_layer_call_fn_723789

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
D__inference_lstm_399_layer_call_and_return_conditional_losses_721787s
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
while_cond_721852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_721852___redundant_placeholder04
0while_while_cond_721852___redundant_placeholder14
0while_while_cond_721852___redundant_placeholder24
0while_while_cond_721852___redundant_placeholder3
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
while_cond_720859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_720859___redundant_placeholder04
0while_while_cond_720859___redundant_placeholder14
0while_while_cond_720859___redundant_placeholder24
0while_while_cond_720859___redundant_placeholder3
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
while_cond_725090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_725090___redundant_placeholder04
0while_while_cond_725090___redundant_placeholder14
0while_while_cond_725090___redundant_placeholder24
0while_while_cond_725090___redundant_placeholder3
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
)sequential_133_lstm_400_while_cond_720358L
Hsequential_133_lstm_400_while_sequential_133_lstm_400_while_loop_counterR
Nsequential_133_lstm_400_while_sequential_133_lstm_400_while_maximum_iterations-
)sequential_133_lstm_400_while_placeholder/
+sequential_133_lstm_400_while_placeholder_1/
+sequential_133_lstm_400_while_placeholder_2/
+sequential_133_lstm_400_while_placeholder_3N
Jsequential_133_lstm_400_while_less_sequential_133_lstm_400_strided_slice_1d
`sequential_133_lstm_400_while_sequential_133_lstm_400_while_cond_720358___redundant_placeholder0d
`sequential_133_lstm_400_while_sequential_133_lstm_400_while_cond_720358___redundant_placeholder1d
`sequential_133_lstm_400_while_sequential_133_lstm_400_while_cond_720358___redundant_placeholder2d
`sequential_133_lstm_400_while_sequential_133_lstm_400_while_cond_720358___redundant_placeholder3*
&sequential_133_lstm_400_while_identity
?
"sequential_133/lstm_400/while/LessLess)sequential_133_lstm_400_while_placeholderJsequential_133_lstm_400_while_less_sequential_133_lstm_400_strided_slice_1*
T0*
_output_shapes
: {
&sequential_133/lstm_400/while/IdentityIdentity&sequential_133/lstm_400/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_133_lstm_400_while_identity/sequential_133/lstm_400/while/Identity:output:0*(
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
?T
?
)sequential_133_lstm_400_while_body_720359L
Hsequential_133_lstm_400_while_sequential_133_lstm_400_while_loop_counterR
Nsequential_133_lstm_400_while_sequential_133_lstm_400_while_maximum_iterations-
)sequential_133_lstm_400_while_placeholder/
+sequential_133_lstm_400_while_placeholder_1/
+sequential_133_lstm_400_while_placeholder_2/
+sequential_133_lstm_400_while_placeholder_3K
Gsequential_133_lstm_400_while_sequential_133_lstm_400_strided_slice_1_0?
?sequential_133_lstm_400_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_400_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_133_lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0:	d?a
Nsequential_133_lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?\
Msequential_133_lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0:	?*
&sequential_133_lstm_400_while_identity,
(sequential_133_lstm_400_while_identity_1,
(sequential_133_lstm_400_while_identity_2,
(sequential_133_lstm_400_while_identity_3,
(sequential_133_lstm_400_while_identity_4,
(sequential_133_lstm_400_while_identity_5I
Esequential_133_lstm_400_while_sequential_133_lstm_400_strided_slice_1?
?sequential_133_lstm_400_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_400_tensorarrayunstack_tensorlistfromtensor]
Jsequential_133_lstm_400_while_lstm_cell_118_matmul_readvariableop_resource:	d?_
Lsequential_133_lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource:	2?Z
Ksequential_133_lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource:	???Bsequential_133/lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp?Asequential_133/lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp?Csequential_133/lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp?
Osequential_133/lstm_400/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_133/lstm_400/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_133_lstm_400_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_400_tensorarrayunstack_tensorlistfromtensor_0)sequential_133_lstm_400_while_placeholderXsequential_133/lstm_400/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_133/lstm_400/while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOpLsequential_133_lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_133/lstm_400/while/lstm_cell_118/MatMulMatMulHsequential_133/lstm_400/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_133/lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_133/lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOpNsequential_133_lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_133/lstm_400/while/lstm_cell_118/MatMul_1MatMul+sequential_133_lstm_400_while_placeholder_2Ksequential_133/lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_133/lstm_400/while/lstm_cell_118/addAddV2<sequential_133/lstm_400/while/lstm_cell_118/MatMul:product:0>sequential_133/lstm_400/while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_133/lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOpMsequential_133_lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_133/lstm_400/while/lstm_cell_118/BiasAddBiasAdd3sequential_133/lstm_400/while/lstm_cell_118/add:z:0Jsequential_133/lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_133/lstm_400/while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_133/lstm_400/while/lstm_cell_118/splitSplitDsequential_133/lstm_400/while/lstm_cell_118/split/split_dim:output:0<sequential_133/lstm_400/while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_133/lstm_400/while/lstm_cell_118/SigmoidSigmoid:sequential_133/lstm_400/while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_133/lstm_400/while/lstm_cell_118/Sigmoid_1Sigmoid:sequential_133/lstm_400/while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_133/lstm_400/while/lstm_cell_118/mulMul9sequential_133/lstm_400/while/lstm_cell_118/Sigmoid_1:y:0+sequential_133_lstm_400_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_133/lstm_400/while/lstm_cell_118/ReluRelu:sequential_133/lstm_400/while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_133/lstm_400/while/lstm_cell_118/mul_1Mul7sequential_133/lstm_400/while/lstm_cell_118/Sigmoid:y:0>sequential_133/lstm_400/while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_133/lstm_400/while/lstm_cell_118/add_1AddV23sequential_133/lstm_400/while/lstm_cell_118/mul:z:05sequential_133/lstm_400/while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_133/lstm_400/while/lstm_cell_118/Sigmoid_2Sigmoid:sequential_133/lstm_400/while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_133/lstm_400/while/lstm_cell_118/Relu_1Relu5sequential_133/lstm_400/while/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_133/lstm_400/while/lstm_cell_118/mul_2Mul9sequential_133/lstm_400/while/lstm_cell_118/Sigmoid_2:y:0@sequential_133/lstm_400/while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_133/lstm_400/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_133_lstm_400_while_placeholder_1)sequential_133_lstm_400_while_placeholder5sequential_133/lstm_400/while/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_133/lstm_400/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_133/lstm_400/while/addAddV2)sequential_133_lstm_400_while_placeholder,sequential_133/lstm_400/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_133/lstm_400/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_133/lstm_400/while/add_1AddV2Hsequential_133_lstm_400_while_sequential_133_lstm_400_while_loop_counter.sequential_133/lstm_400/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_133/lstm_400/while/IdentityIdentity'sequential_133/lstm_400/while/add_1:z:0#^sequential_133/lstm_400/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_400/while/Identity_1IdentityNsequential_133_lstm_400_while_sequential_133_lstm_400_while_maximum_iterations#^sequential_133/lstm_400/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_400/while/Identity_2Identity%sequential_133/lstm_400/while/add:z:0#^sequential_133/lstm_400/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_400/while/Identity_3IdentityRsequential_133/lstm_400/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_133/lstm_400/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_400/while/Identity_4Identity5sequential_133/lstm_400/while/lstm_cell_118/mul_2:z:0#^sequential_133/lstm_400/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_133/lstm_400/while/Identity_5Identity5sequential_133/lstm_400/while/lstm_cell_118/add_1:z:0#^sequential_133/lstm_400/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_133/lstm_400/while/NoOpNoOpC^sequential_133/lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOpB^sequential_133/lstm_400/while/lstm_cell_118/MatMul/ReadVariableOpD^sequential_133/lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_133_lstm_400_while_identity/sequential_133/lstm_400/while/Identity:output:0"]
(sequential_133_lstm_400_while_identity_11sequential_133/lstm_400/while/Identity_1:output:0"]
(sequential_133_lstm_400_while_identity_21sequential_133/lstm_400/while/Identity_2:output:0"]
(sequential_133_lstm_400_while_identity_31sequential_133/lstm_400/while/Identity_3:output:0"]
(sequential_133_lstm_400_while_identity_41sequential_133/lstm_400/while/Identity_4:output:0"]
(sequential_133_lstm_400_while_identity_51sequential_133/lstm_400/while/Identity_5:output:0"?
Ksequential_133_lstm_400_while_lstm_cell_118_biasadd_readvariableop_resourceMsequential_133_lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0"?
Lsequential_133_lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resourceNsequential_133_lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0"?
Jsequential_133_lstm_400_while_lstm_cell_118_matmul_readvariableop_resourceLsequential_133_lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0"?
Esequential_133_lstm_400_while_sequential_133_lstm_400_strided_slice_1Gsequential_133_lstm_400_while_sequential_133_lstm_400_strided_slice_1_0"?
?sequential_133_lstm_400_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_400_tensorarrayunstack_tensorlistfromtensor?sequential_133_lstm_400_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_400_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_133/lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOpBsequential_133/lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp2?
Asequential_133/lstm_400/while/lstm_cell_118/MatMul/ReadVariableOpAsequential_133/lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp2?
Csequential_133/lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOpCsequential_133/lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_720929

inputs'
lstm_cell_117_720847:	?'
lstm_cell_117_720849:	d?#
lstm_cell_117_720851:	?
identity??%lstm_cell_117/StatefulPartitionedCall?while;
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
%lstm_cell_117/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_117_720847lstm_cell_117_720849lstm_cell_117_720851*
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_720801n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_117_720847lstm_cell_117_720849lstm_cell_117_720851*
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
while_body_720860*
condR
while_cond_720859*K
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
NoOpNoOp&^lstm_cell_117/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_117/StatefulPartitionedCall%lstm_cell_117/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_133_layer_call_and_return_conditional_losses_722813
lstm_399_input"
lstm_399_722786:	?"
lstm_399_722788:	d?
lstm_399_722790:	?"
lstm_400_722793:	d?"
lstm_400_722795:	2?
lstm_400_722797:	?!
lstm_401_722800:2(!
lstm_401_722802:
(
lstm_401_722804:("
dense_133_722807:

dense_133_722809:
identity??!dense_133/StatefulPartitionedCall? lstm_399/StatefulPartitionedCall? lstm_400/StatefulPartitionedCall? lstm_401/StatefulPartitionedCall?
 lstm_399/StatefulPartitionedCallStatefulPartitionedCalllstm_399_inputlstm_399_722786lstm_399_722788lstm_399_722790*
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_722633?
 lstm_400/StatefulPartitionedCallStatefulPartitionedCall)lstm_399/StatefulPartitionedCall:output:0lstm_400_722793lstm_400_722795lstm_400_722797*
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_722468?
 lstm_401/StatefulPartitionedCallStatefulPartitionedCall)lstm_400/StatefulPartitionedCall:output:0lstm_401_722800lstm_401_722802lstm_401_722804*
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722303?
!dense_133/StatefulPartitionedCallStatefulPartitionedCall)lstm_401/StatefulPartitionedCall:output:0dense_133_722807dense_133_722809*
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
E__inference_dense_133_layer_call_and_return_conditional_losses_722105y
IdentityIdentity*dense_133/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_133/StatefulPartitionedCall!^lstm_399/StatefulPartitionedCall!^lstm_400/StatefulPartitionedCall!^lstm_401/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_133/StatefulPartitionedCall!dense_133/StatefulPartitionedCall2D
 lstm_399/StatefulPartitionedCall lstm_399/StatefulPartitionedCall2D
 lstm_400/StatefulPartitionedCall lstm_400/StatefulPartitionedCall2D
 lstm_401/StatefulPartitionedCall lstm_401/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_399_input
?"
?
while_body_721560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_119_721584_0:2(.
while_lstm_cell_119_721586_0:
(*
while_lstm_cell_119_721588_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_119_721584:2(,
while_lstm_cell_119_721586:
((
while_lstm_cell_119_721588:(??+while/lstm_cell_119/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_119_721584_0while_lstm_cell_119_721586_0while_lstm_cell_119_721588_0*
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721501?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_119/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_119/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_119/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_119_721584while_lstm_cell_119_721584_0":
while_lstm_cell_119_721586while_lstm_cell_119_721586_0":
while_lstm_cell_119_721588while_lstm_cell_119_721588_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_119/StatefulPartitionedCall+while/lstm_cell_119/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_399_while_body_722961.
*lstm_399_while_lstm_399_while_loop_counter4
0lstm_399_while_lstm_399_while_maximum_iterations
lstm_399_while_placeholder 
lstm_399_while_placeholder_1 
lstm_399_while_placeholder_2 
lstm_399_while_placeholder_3-
)lstm_399_while_lstm_399_strided_slice_1_0i
elstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0:	?R
?lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?M
>lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
lstm_399_while_identity
lstm_399_while_identity_1
lstm_399_while_identity_2
lstm_399_while_identity_3
lstm_399_while_identity_4
lstm_399_while_identity_5+
'lstm_399_while_lstm_399_strided_slice_1g
clstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensorN
;lstm_399_while_lstm_cell_117_matmul_readvariableop_resource:	?P
=lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource:	d?K
<lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource:	???3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp?2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp?4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp?
@lstm_399/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_399/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensor_0lstm_399_while_placeholderIlstm_399/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp=lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_399/while/lstm_cell_117/MatMulMatMul9lstm_399/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp?lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_399/while/lstm_cell_117/MatMul_1MatMullstm_399_while_placeholder_2<lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_399/while/lstm_cell_117/addAddV2-lstm_399/while/lstm_cell_117/MatMul:product:0/lstm_399/while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp>lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_399/while/lstm_cell_117/BiasAddBiasAdd$lstm_399/while/lstm_cell_117/add:z:0;lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_399/while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_399/while/lstm_cell_117/splitSplit5lstm_399/while/lstm_cell_117/split/split_dim:output:0-lstm_399/while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_399/while/lstm_cell_117/SigmoidSigmoid+lstm_399/while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_399/while/lstm_cell_117/Sigmoid_1Sigmoid+lstm_399/while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_399/while/lstm_cell_117/mulMul*lstm_399/while/lstm_cell_117/Sigmoid_1:y:0lstm_399_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_399/while/lstm_cell_117/ReluRelu+lstm_399/while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_399/while/lstm_cell_117/mul_1Mul(lstm_399/while/lstm_cell_117/Sigmoid:y:0/lstm_399/while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_399/while/lstm_cell_117/add_1AddV2$lstm_399/while/lstm_cell_117/mul:z:0&lstm_399/while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_399/while/lstm_cell_117/Sigmoid_2Sigmoid+lstm_399/while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_399/while/lstm_cell_117/Relu_1Relu&lstm_399/while/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_399/while/lstm_cell_117/mul_2Mul*lstm_399/while/lstm_cell_117/Sigmoid_2:y:01lstm_399/while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_399/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_399_while_placeholder_1lstm_399_while_placeholder&lstm_399/while/lstm_cell_117/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_399/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_399/while/addAddV2lstm_399_while_placeholderlstm_399/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_399/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_399/while/add_1AddV2*lstm_399_while_lstm_399_while_loop_counterlstm_399/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_399/while/IdentityIdentitylstm_399/while/add_1:z:0^lstm_399/while/NoOp*
T0*
_output_shapes
: ?
lstm_399/while/Identity_1Identity0lstm_399_while_lstm_399_while_maximum_iterations^lstm_399/while/NoOp*
T0*
_output_shapes
: t
lstm_399/while/Identity_2Identitylstm_399/while/add:z:0^lstm_399/while/NoOp*
T0*
_output_shapes
: ?
lstm_399/while/Identity_3IdentityClstm_399/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_399/while/NoOp*
T0*
_output_shapes
: ?
lstm_399/while/Identity_4Identity&lstm_399/while/lstm_cell_117/mul_2:z:0^lstm_399/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_399/while/Identity_5Identity&lstm_399/while/lstm_cell_117/add_1:z:0^lstm_399/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_399/while/NoOpNoOp4^lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp3^lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp5^lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_399_while_identity lstm_399/while/Identity:output:0"?
lstm_399_while_identity_1"lstm_399/while/Identity_1:output:0"?
lstm_399_while_identity_2"lstm_399/while/Identity_2:output:0"?
lstm_399_while_identity_3"lstm_399/while/Identity_3:output:0"?
lstm_399_while_identity_4"lstm_399/while/Identity_4:output:0"?
lstm_399_while_identity_5"lstm_399/while/Identity_5:output:0"T
'lstm_399_while_lstm_399_strided_slice_1)lstm_399_while_lstm_399_strided_slice_1_0"~
<lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource>lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0"?
=lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource?lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0"|
;lstm_399_while_lstm_cell_117_matmul_readvariableop_resource=lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0"?
clstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensorelstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp2h
2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp2l
4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?"
?
while_body_721019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_118_721043_0:	d?/
while_lstm_cell_118_721045_0:	2?+
while_lstm_cell_118_721047_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_118_721043:	d?-
while_lstm_cell_118_721045:	2?)
while_lstm_cell_118_721047:	???+while/lstm_cell_118/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_118_721043_0while_lstm_cell_118_721045_0while_lstm_cell_118_721047_0*
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721005?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_118/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_118/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_118/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_118/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_118_721043while_lstm_cell_118_721043_0":
while_lstm_cell_118_721045while_lstm_cell_118_721045_0":
while_lstm_cell_118_721047while_lstm_cell_118_721047_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_118/StatefulPartitionedCall+while/lstm_cell_118/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_133_lstm_401_while_cond_720497L
Hsequential_133_lstm_401_while_sequential_133_lstm_401_while_loop_counterR
Nsequential_133_lstm_401_while_sequential_133_lstm_401_while_maximum_iterations-
)sequential_133_lstm_401_while_placeholder/
+sequential_133_lstm_401_while_placeholder_1/
+sequential_133_lstm_401_while_placeholder_2/
+sequential_133_lstm_401_while_placeholder_3N
Jsequential_133_lstm_401_while_less_sequential_133_lstm_401_strided_slice_1d
`sequential_133_lstm_401_while_sequential_133_lstm_401_while_cond_720497___redundant_placeholder0d
`sequential_133_lstm_401_while_sequential_133_lstm_401_while_cond_720497___redundant_placeholder1d
`sequential_133_lstm_401_while_sequential_133_lstm_401_while_cond_720497___redundant_placeholder2d
`sequential_133_lstm_401_while_sequential_133_lstm_401_while_cond_720497___redundant_placeholder3*
&sequential_133_lstm_401_while_identity
?
"sequential_133/lstm_401/while/LessLess)sequential_133_lstm_401_while_placeholderJsequential_133_lstm_401_while_less_sequential_133_lstm_401_strided_slice_1*
T0*
_output_shapes
: {
&sequential_133/lstm_401/while/IdentityIdentity&sequential_133/lstm_401/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_133_lstm_401_while_identity/sequential_133/lstm_401/while/Identity:output:0*(
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_722468

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	d?A
.lstm_cell_118_matmul_1_readvariableop_resource:	2?<
-lstm_cell_118_biasadd_readvariableop_resource:	?
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
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
while_body_722384*
condR
while_cond_722383*K
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
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
D__inference_lstm_400_layer_call_and_return_conditional_losses_721937

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	d?A
.lstm_cell_118_matmul_1_readvariableop_resource:	2?<
-lstm_cell_118_biasadd_readvariableop_resource:	?
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
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
while_body_721853*
condR
while_cond_721852*K
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
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_722548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_722548___redundant_placeholder04
0while_while_cond_722548___redundant_placeholder14
0while_while_cond_722548___redundant_placeholder24
0while_while_cond_722548___redundant_placeholder3
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
while_cond_724760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_724760___redundant_placeholder04
0while_while_cond_724760___redundant_placeholder14
0while_while_cond_724760___redundant_placeholder24
0while_while_cond_724760___redundant_placeholder3
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
while_body_723859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_117_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_117_matmul_readvariableop_resource:	?G
4while_lstm_cell_117_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_117_biasadd_readvariableop_resource:	???*while/lstm_cell_117/BiasAdd/ReadVariableOp?)while/lstm_cell_117/MatMul/ReadVariableOp?+while/lstm_cell_117/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_117/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_117/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_117/addAddV2$while/lstm_cell_117/MatMul:product:0&while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_117/BiasAddBiasAddwhile/lstm_cell_117/add:z:02while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_117/splitSplit,while/lstm_cell_117/split/split_dim:output:0$while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_117/SigmoidSigmoid"while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_1Sigmoid"while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mulMul!while/lstm_cell_117/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_117/ReluRelu"while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_1Mulwhile/lstm_cell_117/Sigmoid:y:0&while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/add_1AddV2while/lstm_cell_117/mul:z:0while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_2Sigmoid"while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_117/Relu_1Reluwhile/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_2Mul!while/lstm_cell_117/Sigmoid_2:y:0(while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_117/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_117/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_117/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_117/BiasAdd/ReadVariableOp*^while/lstm_cell_117/MatMul/ReadVariableOp,^while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_117_biasadd_readvariableop_resource5while_lstm_cell_117_biasadd_readvariableop_resource_0"n
4while_lstm_cell_117_matmul_1_readvariableop_resource6while_lstm_cell_117_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_117_matmul_readvariableop_resource4while_lstm_cell_117_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_117/BiasAdd/ReadVariableOp*while/lstm_cell_117/BiasAdd/ReadVariableOp2V
)while/lstm_cell_117/MatMul/ReadVariableOp)while/lstm_cell_117/MatMul/ReadVariableOp2Z
+while/lstm_cell_117/MatMul_1/ReadVariableOp+while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)__inference_lstm_399_layer_call_fn_723800

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
D__inference_lstm_399_layer_call_and_return_conditional_losses_722633s
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
while_body_724761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	d?G
4while_lstm_cell_118_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_118_biasadd_readvariableop_resource:	???*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_725376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_725376___redundant_placeholder04
0while_while_cond_725376___redundant_placeholder14
0while_while_cond_725376___redundant_placeholder24
0while_while_cond_725376___redundant_placeholder3
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
.__inference_lstm_cell_118_layer_call_fn_725755

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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721151o
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
?J
?
D__inference_lstm_399_layer_call_and_return_conditional_losses_722633

inputs?
,lstm_cell_117_matmul_readvariableop_resource:	?A
.lstm_cell_117_matmul_1_readvariableop_resource:	d?<
-lstm_cell_117_biasadd_readvariableop_resource:	?
identity??$lstm_cell_117/BiasAdd/ReadVariableOp?#lstm_cell_117/MatMul/ReadVariableOp?%lstm_cell_117/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_117/MatMul/ReadVariableOpReadVariableOp,lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_117/MatMulMatMulstrided_slice_2:output:0+lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_117/MatMul_1MatMulzeros:output:0-lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_117/addAddV2lstm_cell_117/MatMul:product:0 lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_117/BiasAddBiasAddlstm_cell_117/add:z:0,lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_117/splitSplit&lstm_cell_117/split/split_dim:output:0lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_117/SigmoidSigmoidlstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_1Sigmoidlstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_117/mulMullstm_cell_117/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_117/ReluRelulstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_1Mullstm_cell_117/Sigmoid:y:0 lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_117/add_1AddV2lstm_cell_117/mul:z:0lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_2Sigmoidlstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_117/Relu_1Relulstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_2Mullstm_cell_117/Sigmoid_2:y:0"lstm_cell_117/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_117_matmul_readvariableop_resource.lstm_cell_117_matmul_1_readvariableop_resource-lstm_cell_117_biasadd_readvariableop_resource*
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
while_body_722549*
condR
while_cond_722548*K
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
NoOpNoOp%^lstm_cell_117/BiasAdd/ReadVariableOp$^lstm_cell_117/MatMul/ReadVariableOp&^lstm_cell_117/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_117/BiasAdd/ReadVariableOp$lstm_cell_117/BiasAdd/ReadVariableOp2J
#lstm_cell_117/MatMul/ReadVariableOp#lstm_cell_117/MatMul/ReadVariableOp2N
%lstm_cell_117/MatMul_1/ReadVariableOp%lstm_cell_117/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
)sequential_133_lstm_401_while_body_720498L
Hsequential_133_lstm_401_while_sequential_133_lstm_401_while_loop_counterR
Nsequential_133_lstm_401_while_sequential_133_lstm_401_while_maximum_iterations-
)sequential_133_lstm_401_while_placeholder/
+sequential_133_lstm_401_while_placeholder_1/
+sequential_133_lstm_401_while_placeholder_2/
+sequential_133_lstm_401_while_placeholder_3K
Gsequential_133_lstm_401_while_sequential_133_lstm_401_strided_slice_1_0?
?sequential_133_lstm_401_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_401_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_133_lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0:2(`
Nsequential_133_lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0:
([
Msequential_133_lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0:(*
&sequential_133_lstm_401_while_identity,
(sequential_133_lstm_401_while_identity_1,
(sequential_133_lstm_401_while_identity_2,
(sequential_133_lstm_401_while_identity_3,
(sequential_133_lstm_401_while_identity_4,
(sequential_133_lstm_401_while_identity_5I
Esequential_133_lstm_401_while_sequential_133_lstm_401_strided_slice_1?
?sequential_133_lstm_401_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_401_tensorarrayunstack_tensorlistfromtensor\
Jsequential_133_lstm_401_while_lstm_cell_119_matmul_readvariableop_resource:2(^
Lsequential_133_lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource:
(Y
Ksequential_133_lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource:(??Bsequential_133/lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp?Asequential_133/lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp?Csequential_133/lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp?
Osequential_133/lstm_401/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_133/lstm_401/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_133_lstm_401_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_401_tensorarrayunstack_tensorlistfromtensor_0)sequential_133_lstm_401_while_placeholderXsequential_133/lstm_401/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_133/lstm_401/while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOpLsequential_133_lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_133/lstm_401/while/lstm_cell_119/MatMulMatMulHsequential_133/lstm_401/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_133/lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_133/lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOpNsequential_133_lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_133/lstm_401/while/lstm_cell_119/MatMul_1MatMul+sequential_133_lstm_401_while_placeholder_2Ksequential_133/lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_133/lstm_401/while/lstm_cell_119/addAddV2<sequential_133/lstm_401/while/lstm_cell_119/MatMul:product:0>sequential_133/lstm_401/while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_133/lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOpMsequential_133_lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_133/lstm_401/while/lstm_cell_119/BiasAddBiasAdd3sequential_133/lstm_401/while/lstm_cell_119/add:z:0Jsequential_133/lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_133/lstm_401/while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_133/lstm_401/while/lstm_cell_119/splitSplitDsequential_133/lstm_401/while/lstm_cell_119/split/split_dim:output:0<sequential_133/lstm_401/while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_133/lstm_401/while/lstm_cell_119/SigmoidSigmoid:sequential_133/lstm_401/while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_133/lstm_401/while/lstm_cell_119/Sigmoid_1Sigmoid:sequential_133/lstm_401/while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_133/lstm_401/while/lstm_cell_119/mulMul9sequential_133/lstm_401/while/lstm_cell_119/Sigmoid_1:y:0+sequential_133_lstm_401_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_133/lstm_401/while/lstm_cell_119/ReluRelu:sequential_133/lstm_401/while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_133/lstm_401/while/lstm_cell_119/mul_1Mul7sequential_133/lstm_401/while/lstm_cell_119/Sigmoid:y:0>sequential_133/lstm_401/while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_133/lstm_401/while/lstm_cell_119/add_1AddV23sequential_133/lstm_401/while/lstm_cell_119/mul:z:05sequential_133/lstm_401/while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_133/lstm_401/while/lstm_cell_119/Sigmoid_2Sigmoid:sequential_133/lstm_401/while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_133/lstm_401/while/lstm_cell_119/Relu_1Relu5sequential_133/lstm_401/while/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_133/lstm_401/while/lstm_cell_119/mul_2Mul9sequential_133/lstm_401/while/lstm_cell_119/Sigmoid_2:y:0@sequential_133/lstm_401/while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_133/lstm_401/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_133_lstm_401_while_placeholder_1)sequential_133_lstm_401_while_placeholder5sequential_133/lstm_401/while/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_133/lstm_401/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_133/lstm_401/while/addAddV2)sequential_133_lstm_401_while_placeholder,sequential_133/lstm_401/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_133/lstm_401/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_133/lstm_401/while/add_1AddV2Hsequential_133_lstm_401_while_sequential_133_lstm_401_while_loop_counter.sequential_133/lstm_401/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_133/lstm_401/while/IdentityIdentity'sequential_133/lstm_401/while/add_1:z:0#^sequential_133/lstm_401/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_401/while/Identity_1IdentityNsequential_133_lstm_401_while_sequential_133_lstm_401_while_maximum_iterations#^sequential_133/lstm_401/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_401/while/Identity_2Identity%sequential_133/lstm_401/while/add:z:0#^sequential_133/lstm_401/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_401/while/Identity_3IdentityRsequential_133/lstm_401/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_133/lstm_401/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_401/while/Identity_4Identity5sequential_133/lstm_401/while/lstm_cell_119/mul_2:z:0#^sequential_133/lstm_401/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_133/lstm_401/while/Identity_5Identity5sequential_133/lstm_401/while/lstm_cell_119/add_1:z:0#^sequential_133/lstm_401/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_133/lstm_401/while/NoOpNoOpC^sequential_133/lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOpB^sequential_133/lstm_401/while/lstm_cell_119/MatMul/ReadVariableOpD^sequential_133/lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_133_lstm_401_while_identity/sequential_133/lstm_401/while/Identity:output:0"]
(sequential_133_lstm_401_while_identity_11sequential_133/lstm_401/while/Identity_1:output:0"]
(sequential_133_lstm_401_while_identity_21sequential_133/lstm_401/while/Identity_2:output:0"]
(sequential_133_lstm_401_while_identity_31sequential_133/lstm_401/while/Identity_3:output:0"]
(sequential_133_lstm_401_while_identity_41sequential_133/lstm_401/while/Identity_4:output:0"]
(sequential_133_lstm_401_while_identity_51sequential_133/lstm_401/while/Identity_5:output:0"?
Ksequential_133_lstm_401_while_lstm_cell_119_biasadd_readvariableop_resourceMsequential_133_lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0"?
Lsequential_133_lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resourceNsequential_133_lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0"?
Jsequential_133_lstm_401_while_lstm_cell_119_matmul_readvariableop_resourceLsequential_133_lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0"?
Esequential_133_lstm_401_while_sequential_133_lstm_401_strided_slice_1Gsequential_133_lstm_401_while_sequential_133_lstm_401_strided_slice_1_0"?
?sequential_133_lstm_401_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_401_tensorarrayunstack_tensorlistfromtensor?sequential_133_lstm_401_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_401_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_133/lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOpBsequential_133/lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp2?
Asequential_133/lstm_401/while/lstm_cell_119/MatMul/ReadVariableOpAsequential_133/lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp2?
Csequential_133/lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOpCsequential_133/lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721151

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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_725721

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

?
lstm_401_while_cond_723665.
*lstm_401_while_lstm_401_while_loop_counter4
0lstm_401_while_lstm_401_while_maximum_iterations
lstm_401_while_placeholder 
lstm_401_while_placeholder_1 
lstm_401_while_placeholder_2 
lstm_401_while_placeholder_30
,lstm_401_while_less_lstm_401_strided_slice_1F
Blstm_401_while_lstm_401_while_cond_723665___redundant_placeholder0F
Blstm_401_while_lstm_401_while_cond_723665___redundant_placeholder1F
Blstm_401_while_lstm_401_while_cond_723665___redundant_placeholder2F
Blstm_401_while_lstm_401_while_cond_723665___redundant_placeholder3
lstm_401_while_identity
?
lstm_401/while/LessLesslstm_401_while_placeholder,lstm_401_while_less_lstm_401_strided_slice_1*
T0*
_output_shapes
: ]
lstm_401/while/IdentityIdentitylstm_401/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_401_while_identity lstm_401/while/Identity:output:0*(
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
while_body_721369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_119_721393_0:2(.
while_lstm_cell_119_721395_0:
(*
while_lstm_cell_119_721397_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_119_721393:2(,
while_lstm_cell_119_721395:
((
while_lstm_cell_119_721397:(??+while/lstm_cell_119/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_119/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_119_721393_0while_lstm_cell_119_721395_0while_lstm_cell_119_721397_0*
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721355?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_119/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_119/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_119/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_119/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_119_721393while_lstm_cell_119_721393_0":
while_lstm_cell_119_721395while_lstm_cell_119_721395_0":
while_lstm_cell_119_721397while_lstm_cell_119_721397_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_119/StatefulPartitionedCall+while/lstm_cell_119/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_119_layer_call_fn_725836

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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_721355o
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
?C
?

lstm_401_while_body_723239.
*lstm_401_while_lstm_401_while_loop_counter4
0lstm_401_while_lstm_401_while_maximum_iterations
lstm_401_while_placeholder 
lstm_401_while_placeholder_1 
lstm_401_while_placeholder_2 
lstm_401_while_placeholder_3-
)lstm_401_while_lstm_401_strided_slice_1_0i
elstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0:2(Q
?lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(L
>lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0:(
lstm_401_while_identity
lstm_401_while_identity_1
lstm_401_while_identity_2
lstm_401_while_identity_3
lstm_401_while_identity_4
lstm_401_while_identity_5+
'lstm_401_while_lstm_401_strided_slice_1g
clstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensorM
;lstm_401_while_lstm_cell_119_matmul_readvariableop_resource:2(O
=lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource:
(J
<lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource:(??3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp?2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp?4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp?
@lstm_401/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_401/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensor_0lstm_401_while_placeholderIlstm_401/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp=lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_401/while/lstm_cell_119/MatMulMatMul9lstm_401/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp?lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_401/while/lstm_cell_119/MatMul_1MatMullstm_401_while_placeholder_2<lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_401/while/lstm_cell_119/addAddV2-lstm_401/while/lstm_cell_119/MatMul:product:0/lstm_401/while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp>lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_401/while/lstm_cell_119/BiasAddBiasAdd$lstm_401/while/lstm_cell_119/add:z:0;lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_401/while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_401/while/lstm_cell_119/splitSplit5lstm_401/while/lstm_cell_119/split/split_dim:output:0-lstm_401/while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_401/while/lstm_cell_119/SigmoidSigmoid+lstm_401/while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_401/while/lstm_cell_119/Sigmoid_1Sigmoid+lstm_401/while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_401/while/lstm_cell_119/mulMul*lstm_401/while/lstm_cell_119/Sigmoid_1:y:0lstm_401_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_401/while/lstm_cell_119/ReluRelu+lstm_401/while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_401/while/lstm_cell_119/mul_1Mul(lstm_401/while/lstm_cell_119/Sigmoid:y:0/lstm_401/while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_401/while/lstm_cell_119/add_1AddV2$lstm_401/while/lstm_cell_119/mul:z:0&lstm_401/while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_401/while/lstm_cell_119/Sigmoid_2Sigmoid+lstm_401/while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_401/while/lstm_cell_119/Relu_1Relu&lstm_401/while/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_401/while/lstm_cell_119/mul_2Mul*lstm_401/while/lstm_cell_119/Sigmoid_2:y:01lstm_401/while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_401/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_401_while_placeholder_1lstm_401_while_placeholder&lstm_401/while/lstm_cell_119/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_401/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_401/while/addAddV2lstm_401_while_placeholderlstm_401/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_401/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_401/while/add_1AddV2*lstm_401_while_lstm_401_while_loop_counterlstm_401/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_401/while/IdentityIdentitylstm_401/while/add_1:z:0^lstm_401/while/NoOp*
T0*
_output_shapes
: ?
lstm_401/while/Identity_1Identity0lstm_401_while_lstm_401_while_maximum_iterations^lstm_401/while/NoOp*
T0*
_output_shapes
: t
lstm_401/while/Identity_2Identitylstm_401/while/add:z:0^lstm_401/while/NoOp*
T0*
_output_shapes
: ?
lstm_401/while/Identity_3IdentityClstm_401/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_401/while/NoOp*
T0*
_output_shapes
: ?
lstm_401/while/Identity_4Identity&lstm_401/while/lstm_cell_119/mul_2:z:0^lstm_401/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_401/while/Identity_5Identity&lstm_401/while/lstm_cell_119/add_1:z:0^lstm_401/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_401/while/NoOpNoOp4^lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp3^lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp5^lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_401_while_identity lstm_401/while/Identity:output:0"?
lstm_401_while_identity_1"lstm_401/while/Identity_1:output:0"?
lstm_401_while_identity_2"lstm_401/while/Identity_2:output:0"?
lstm_401_while_identity_3"lstm_401/while/Identity_3:output:0"?
lstm_401_while_identity_4"lstm_401/while/Identity_4:output:0"?
lstm_401_while_identity_5"lstm_401/while/Identity_5:output:0"T
'lstm_401_while_lstm_401_strided_slice_1)lstm_401_while_lstm_401_strided_slice_1_0"~
<lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource>lstm_401_while_lstm_cell_119_biasadd_readvariableop_resource_0"?
=lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource?lstm_401_while_lstm_cell_119_matmul_1_readvariableop_resource_0"|
;lstm_401_while_lstm_cell_119_matmul_readvariableop_resource=lstm_401_while_lstm_cell_119_matmul_readvariableop_resource_0"?
clstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensorelstm_401_while_tensorarrayv2read_tensorlistgetitem_lstm_401_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp3lstm_401/while/lstm_cell_119/BiasAdd/ReadVariableOp2h
2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp2lstm_401/while/lstm_cell_119/MatMul/ReadVariableOp2l
4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp4lstm_401/while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_721279

inputs'
lstm_cell_118_721197:	d?'
lstm_cell_118_721199:	2?#
lstm_cell_118_721201:	?
identity??%lstm_cell_118/StatefulPartitionedCall?while;
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
%lstm_cell_118/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_118_721197lstm_cell_118_721199lstm_cell_118_721201*
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_721151n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_118_721197lstm_cell_118_721199lstm_cell_118_721201*
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
while_body_721210*
condR
while_cond_721209*K
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
NoOpNoOp&^lstm_cell_118/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_118/StatefulPartitionedCall%lstm_cell_118/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_722384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	d?G
4while_lstm_cell_118_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_118_biasadd_readvariableop_resource:	???*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
!__inference__wrapped_model_720588
lstm_399_inputW
Dsequential_133_lstm_399_lstm_cell_117_matmul_readvariableop_resource:	?Y
Fsequential_133_lstm_399_lstm_cell_117_matmul_1_readvariableop_resource:	d?T
Esequential_133_lstm_399_lstm_cell_117_biasadd_readvariableop_resource:	?W
Dsequential_133_lstm_400_lstm_cell_118_matmul_readvariableop_resource:	d?Y
Fsequential_133_lstm_400_lstm_cell_118_matmul_1_readvariableop_resource:	2?T
Esequential_133_lstm_400_lstm_cell_118_biasadd_readvariableop_resource:	?V
Dsequential_133_lstm_401_lstm_cell_119_matmul_readvariableop_resource:2(X
Fsequential_133_lstm_401_lstm_cell_119_matmul_1_readvariableop_resource:
(S
Esequential_133_lstm_401_lstm_cell_119_biasadd_readvariableop_resource:(I
7sequential_133_dense_133_matmul_readvariableop_resource:
F
8sequential_133_dense_133_biasadd_readvariableop_resource:
identity??/sequential_133/dense_133/BiasAdd/ReadVariableOp?.sequential_133/dense_133/MatMul/ReadVariableOp?<sequential_133/lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp?;sequential_133/lstm_399/lstm_cell_117/MatMul/ReadVariableOp?=sequential_133/lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp?sequential_133/lstm_399/while?<sequential_133/lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp?;sequential_133/lstm_400/lstm_cell_118/MatMul/ReadVariableOp?=sequential_133/lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp?sequential_133/lstm_400/while?<sequential_133/lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp?;sequential_133/lstm_401/lstm_cell_119/MatMul/ReadVariableOp?=sequential_133/lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp?sequential_133/lstm_401/while[
sequential_133/lstm_399/ShapeShapelstm_399_input*
T0*
_output_shapes
:u
+sequential_133/lstm_399/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_133/lstm_399/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_133/lstm_399/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_133/lstm_399/strided_sliceStridedSlice&sequential_133/lstm_399/Shape:output:04sequential_133/lstm_399/strided_slice/stack:output:06sequential_133/lstm_399/strided_slice/stack_1:output:06sequential_133/lstm_399/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_133/lstm_399/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_133/lstm_399/zeros/packedPack.sequential_133/lstm_399/strided_slice:output:0/sequential_133/lstm_399/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_133/lstm_399/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_133/lstm_399/zerosFill-sequential_133/lstm_399/zeros/packed:output:0,sequential_133/lstm_399/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_133/lstm_399/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_133/lstm_399/zeros_1/packedPack.sequential_133/lstm_399/strided_slice:output:01sequential_133/lstm_399/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_133/lstm_399/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_133/lstm_399/zeros_1Fill/sequential_133/lstm_399/zeros_1/packed:output:0.sequential_133/lstm_399/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_133/lstm_399/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_133/lstm_399/transpose	Transposelstm_399_input/sequential_133/lstm_399/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_133/lstm_399/Shape_1Shape%sequential_133/lstm_399/transpose:y:0*
T0*
_output_shapes
:w
-sequential_133/lstm_399/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_399/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_133/lstm_399/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_399/strided_slice_1StridedSlice(sequential_133/lstm_399/Shape_1:output:06sequential_133/lstm_399/strided_slice_1/stack:output:08sequential_133/lstm_399/strided_slice_1/stack_1:output:08sequential_133/lstm_399/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_133/lstm_399/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_133/lstm_399/TensorArrayV2TensorListReserve<sequential_133/lstm_399/TensorArrayV2/element_shape:output:00sequential_133/lstm_399/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_133/lstm_399/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_133/lstm_399/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_133/lstm_399/transpose:y:0Vsequential_133/lstm_399/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_133/lstm_399/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_399/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_133/lstm_399/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_399/strided_slice_2StridedSlice%sequential_133/lstm_399/transpose:y:06sequential_133/lstm_399/strided_slice_2/stack:output:08sequential_133/lstm_399/strided_slice_2/stack_1:output:08sequential_133/lstm_399/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_133/lstm_399/lstm_cell_117/MatMul/ReadVariableOpReadVariableOpDsequential_133_lstm_399_lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_133/lstm_399/lstm_cell_117/MatMulMatMul0sequential_133/lstm_399/strided_slice_2:output:0Csequential_133/lstm_399/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_133/lstm_399/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOpFsequential_133_lstm_399_lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_133/lstm_399/lstm_cell_117/MatMul_1MatMul&sequential_133/lstm_399/zeros:output:0Esequential_133/lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_133/lstm_399/lstm_cell_117/addAddV26sequential_133/lstm_399/lstm_cell_117/MatMul:product:08sequential_133/lstm_399/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_133/lstm_399/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOpEsequential_133_lstm_399_lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_133/lstm_399/lstm_cell_117/BiasAddBiasAdd-sequential_133/lstm_399/lstm_cell_117/add:z:0Dsequential_133/lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_133/lstm_399/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_133/lstm_399/lstm_cell_117/splitSplit>sequential_133/lstm_399/lstm_cell_117/split/split_dim:output:06sequential_133/lstm_399/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_133/lstm_399/lstm_cell_117/SigmoidSigmoid4sequential_133/lstm_399/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_133/lstm_399/lstm_cell_117/Sigmoid_1Sigmoid4sequential_133/lstm_399/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_133/lstm_399/lstm_cell_117/mulMul3sequential_133/lstm_399/lstm_cell_117/Sigmoid_1:y:0(sequential_133/lstm_399/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_133/lstm_399/lstm_cell_117/ReluRelu4sequential_133/lstm_399/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_133/lstm_399/lstm_cell_117/mul_1Mul1sequential_133/lstm_399/lstm_cell_117/Sigmoid:y:08sequential_133/lstm_399/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_133/lstm_399/lstm_cell_117/add_1AddV2-sequential_133/lstm_399/lstm_cell_117/mul:z:0/sequential_133/lstm_399/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_133/lstm_399/lstm_cell_117/Sigmoid_2Sigmoid4sequential_133/lstm_399/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_133/lstm_399/lstm_cell_117/Relu_1Relu/sequential_133/lstm_399/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_133/lstm_399/lstm_cell_117/mul_2Mul3sequential_133/lstm_399/lstm_cell_117/Sigmoid_2:y:0:sequential_133/lstm_399/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_133/lstm_399/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_133/lstm_399/TensorArrayV2_1TensorListReserve>sequential_133/lstm_399/TensorArrayV2_1/element_shape:output:00sequential_133/lstm_399/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_133/lstm_399/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_133/lstm_399/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_133/lstm_399/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_133/lstm_399/whileWhile3sequential_133/lstm_399/while/loop_counter:output:09sequential_133/lstm_399/while/maximum_iterations:output:0%sequential_133/lstm_399/time:output:00sequential_133/lstm_399/TensorArrayV2_1:handle:0&sequential_133/lstm_399/zeros:output:0(sequential_133/lstm_399/zeros_1:output:00sequential_133/lstm_399/strided_slice_1:output:0Osequential_133/lstm_399/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_133_lstm_399_lstm_cell_117_matmul_readvariableop_resourceFsequential_133_lstm_399_lstm_cell_117_matmul_1_readvariableop_resourceEsequential_133_lstm_399_lstm_cell_117_biasadd_readvariableop_resource*
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
)sequential_133_lstm_399_while_body_720220*5
cond-R+
)sequential_133_lstm_399_while_cond_720219*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_133/lstm_399/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_133/lstm_399/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_133/lstm_399/while:output:3Qsequential_133/lstm_399/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_133/lstm_399/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_133/lstm_399/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_399/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_399/strided_slice_3StridedSliceCsequential_133/lstm_399/TensorArrayV2Stack/TensorListStack:tensor:06sequential_133/lstm_399/strided_slice_3/stack:output:08sequential_133/lstm_399/strided_slice_3/stack_1:output:08sequential_133/lstm_399/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_133/lstm_399/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_133/lstm_399/transpose_1	TransposeCsequential_133/lstm_399/TensorArrayV2Stack/TensorListStack:tensor:01sequential_133/lstm_399/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_133/lstm_399/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_133/lstm_400/ShapeShape'sequential_133/lstm_399/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_133/lstm_400/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_133/lstm_400/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_133/lstm_400/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_133/lstm_400/strided_sliceStridedSlice&sequential_133/lstm_400/Shape:output:04sequential_133/lstm_400/strided_slice/stack:output:06sequential_133/lstm_400/strided_slice/stack_1:output:06sequential_133/lstm_400/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_133/lstm_400/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_133/lstm_400/zeros/packedPack.sequential_133/lstm_400/strided_slice:output:0/sequential_133/lstm_400/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_133/lstm_400/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_133/lstm_400/zerosFill-sequential_133/lstm_400/zeros/packed:output:0,sequential_133/lstm_400/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_133/lstm_400/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_133/lstm_400/zeros_1/packedPack.sequential_133/lstm_400/strided_slice:output:01sequential_133/lstm_400/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_133/lstm_400/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_133/lstm_400/zeros_1Fill/sequential_133/lstm_400/zeros_1/packed:output:0.sequential_133/lstm_400/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_133/lstm_400/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_133/lstm_400/transpose	Transpose'sequential_133/lstm_399/transpose_1:y:0/sequential_133/lstm_400/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_133/lstm_400/Shape_1Shape%sequential_133/lstm_400/transpose:y:0*
T0*
_output_shapes
:w
-sequential_133/lstm_400/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_400/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_133/lstm_400/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_400/strided_slice_1StridedSlice(sequential_133/lstm_400/Shape_1:output:06sequential_133/lstm_400/strided_slice_1/stack:output:08sequential_133/lstm_400/strided_slice_1/stack_1:output:08sequential_133/lstm_400/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_133/lstm_400/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_133/lstm_400/TensorArrayV2TensorListReserve<sequential_133/lstm_400/TensorArrayV2/element_shape:output:00sequential_133/lstm_400/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_133/lstm_400/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_133/lstm_400/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_133/lstm_400/transpose:y:0Vsequential_133/lstm_400/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_133/lstm_400/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_400/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_133/lstm_400/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_400/strided_slice_2StridedSlice%sequential_133/lstm_400/transpose:y:06sequential_133/lstm_400/strided_slice_2/stack:output:08sequential_133/lstm_400/strided_slice_2/stack_1:output:08sequential_133/lstm_400/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_133/lstm_400/lstm_cell_118/MatMul/ReadVariableOpReadVariableOpDsequential_133_lstm_400_lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_133/lstm_400/lstm_cell_118/MatMulMatMul0sequential_133/lstm_400/strided_slice_2:output:0Csequential_133/lstm_400/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_133/lstm_400/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOpFsequential_133_lstm_400_lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_133/lstm_400/lstm_cell_118/MatMul_1MatMul&sequential_133/lstm_400/zeros:output:0Esequential_133/lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_133/lstm_400/lstm_cell_118/addAddV26sequential_133/lstm_400/lstm_cell_118/MatMul:product:08sequential_133/lstm_400/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_133/lstm_400/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOpEsequential_133_lstm_400_lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_133/lstm_400/lstm_cell_118/BiasAddBiasAdd-sequential_133/lstm_400/lstm_cell_118/add:z:0Dsequential_133/lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_133/lstm_400/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_133/lstm_400/lstm_cell_118/splitSplit>sequential_133/lstm_400/lstm_cell_118/split/split_dim:output:06sequential_133/lstm_400/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_133/lstm_400/lstm_cell_118/SigmoidSigmoid4sequential_133/lstm_400/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_133/lstm_400/lstm_cell_118/Sigmoid_1Sigmoid4sequential_133/lstm_400/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_133/lstm_400/lstm_cell_118/mulMul3sequential_133/lstm_400/lstm_cell_118/Sigmoid_1:y:0(sequential_133/lstm_400/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_133/lstm_400/lstm_cell_118/ReluRelu4sequential_133/lstm_400/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_133/lstm_400/lstm_cell_118/mul_1Mul1sequential_133/lstm_400/lstm_cell_118/Sigmoid:y:08sequential_133/lstm_400/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_133/lstm_400/lstm_cell_118/add_1AddV2-sequential_133/lstm_400/lstm_cell_118/mul:z:0/sequential_133/lstm_400/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_133/lstm_400/lstm_cell_118/Sigmoid_2Sigmoid4sequential_133/lstm_400/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_133/lstm_400/lstm_cell_118/Relu_1Relu/sequential_133/lstm_400/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_133/lstm_400/lstm_cell_118/mul_2Mul3sequential_133/lstm_400/lstm_cell_118/Sigmoid_2:y:0:sequential_133/lstm_400/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_133/lstm_400/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_133/lstm_400/TensorArrayV2_1TensorListReserve>sequential_133/lstm_400/TensorArrayV2_1/element_shape:output:00sequential_133/lstm_400/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_133/lstm_400/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_133/lstm_400/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_133/lstm_400/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_133/lstm_400/whileWhile3sequential_133/lstm_400/while/loop_counter:output:09sequential_133/lstm_400/while/maximum_iterations:output:0%sequential_133/lstm_400/time:output:00sequential_133/lstm_400/TensorArrayV2_1:handle:0&sequential_133/lstm_400/zeros:output:0(sequential_133/lstm_400/zeros_1:output:00sequential_133/lstm_400/strided_slice_1:output:0Osequential_133/lstm_400/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_133_lstm_400_lstm_cell_118_matmul_readvariableop_resourceFsequential_133_lstm_400_lstm_cell_118_matmul_1_readvariableop_resourceEsequential_133_lstm_400_lstm_cell_118_biasadd_readvariableop_resource*
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
)sequential_133_lstm_400_while_body_720359*5
cond-R+
)sequential_133_lstm_400_while_cond_720358*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_133/lstm_400/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_133/lstm_400/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_133/lstm_400/while:output:3Qsequential_133/lstm_400/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_133/lstm_400/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_133/lstm_400/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_400/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_400/strided_slice_3StridedSliceCsequential_133/lstm_400/TensorArrayV2Stack/TensorListStack:tensor:06sequential_133/lstm_400/strided_slice_3/stack:output:08sequential_133/lstm_400/strided_slice_3/stack_1:output:08sequential_133/lstm_400/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_133/lstm_400/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_133/lstm_400/transpose_1	TransposeCsequential_133/lstm_400/TensorArrayV2Stack/TensorListStack:tensor:01sequential_133/lstm_400/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_133/lstm_400/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_133/lstm_401/ShapeShape'sequential_133/lstm_400/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_133/lstm_401/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_133/lstm_401/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_133/lstm_401/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_133/lstm_401/strided_sliceStridedSlice&sequential_133/lstm_401/Shape:output:04sequential_133/lstm_401/strided_slice/stack:output:06sequential_133/lstm_401/strided_slice/stack_1:output:06sequential_133/lstm_401/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_133/lstm_401/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_133/lstm_401/zeros/packedPack.sequential_133/lstm_401/strided_slice:output:0/sequential_133/lstm_401/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_133/lstm_401/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_133/lstm_401/zerosFill-sequential_133/lstm_401/zeros/packed:output:0,sequential_133/lstm_401/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_133/lstm_401/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_133/lstm_401/zeros_1/packedPack.sequential_133/lstm_401/strided_slice:output:01sequential_133/lstm_401/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_133/lstm_401/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_133/lstm_401/zeros_1Fill/sequential_133/lstm_401/zeros_1/packed:output:0.sequential_133/lstm_401/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_133/lstm_401/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_133/lstm_401/transpose	Transpose'sequential_133/lstm_400/transpose_1:y:0/sequential_133/lstm_401/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_133/lstm_401/Shape_1Shape%sequential_133/lstm_401/transpose:y:0*
T0*
_output_shapes
:w
-sequential_133/lstm_401/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_401/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_133/lstm_401/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_401/strided_slice_1StridedSlice(sequential_133/lstm_401/Shape_1:output:06sequential_133/lstm_401/strided_slice_1/stack:output:08sequential_133/lstm_401/strided_slice_1/stack_1:output:08sequential_133/lstm_401/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_133/lstm_401/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_133/lstm_401/TensorArrayV2TensorListReserve<sequential_133/lstm_401/TensorArrayV2/element_shape:output:00sequential_133/lstm_401/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_133/lstm_401/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_133/lstm_401/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_133/lstm_401/transpose:y:0Vsequential_133/lstm_401/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_133/lstm_401/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_401/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_133/lstm_401/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_401/strided_slice_2StridedSlice%sequential_133/lstm_401/transpose:y:06sequential_133/lstm_401/strided_slice_2/stack:output:08sequential_133/lstm_401/strided_slice_2/stack_1:output:08sequential_133/lstm_401/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_133/lstm_401/lstm_cell_119/MatMul/ReadVariableOpReadVariableOpDsequential_133_lstm_401_lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_133/lstm_401/lstm_cell_119/MatMulMatMul0sequential_133/lstm_401/strided_slice_2:output:0Csequential_133/lstm_401/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_133/lstm_401/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOpFsequential_133_lstm_401_lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_133/lstm_401/lstm_cell_119/MatMul_1MatMul&sequential_133/lstm_401/zeros:output:0Esequential_133/lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_133/lstm_401/lstm_cell_119/addAddV26sequential_133/lstm_401/lstm_cell_119/MatMul:product:08sequential_133/lstm_401/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_133/lstm_401/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOpEsequential_133_lstm_401_lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_133/lstm_401/lstm_cell_119/BiasAddBiasAdd-sequential_133/lstm_401/lstm_cell_119/add:z:0Dsequential_133/lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_133/lstm_401/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_133/lstm_401/lstm_cell_119/splitSplit>sequential_133/lstm_401/lstm_cell_119/split/split_dim:output:06sequential_133/lstm_401/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_133/lstm_401/lstm_cell_119/SigmoidSigmoid4sequential_133/lstm_401/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_133/lstm_401/lstm_cell_119/Sigmoid_1Sigmoid4sequential_133/lstm_401/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_133/lstm_401/lstm_cell_119/mulMul3sequential_133/lstm_401/lstm_cell_119/Sigmoid_1:y:0(sequential_133/lstm_401/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_133/lstm_401/lstm_cell_119/ReluRelu4sequential_133/lstm_401/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_133/lstm_401/lstm_cell_119/mul_1Mul1sequential_133/lstm_401/lstm_cell_119/Sigmoid:y:08sequential_133/lstm_401/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_133/lstm_401/lstm_cell_119/add_1AddV2-sequential_133/lstm_401/lstm_cell_119/mul:z:0/sequential_133/lstm_401/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_133/lstm_401/lstm_cell_119/Sigmoid_2Sigmoid4sequential_133/lstm_401/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_133/lstm_401/lstm_cell_119/Relu_1Relu/sequential_133/lstm_401/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_133/lstm_401/lstm_cell_119/mul_2Mul3sequential_133/lstm_401/lstm_cell_119/Sigmoid_2:y:0:sequential_133/lstm_401/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_133/lstm_401/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_133/lstm_401/TensorArrayV2_1TensorListReserve>sequential_133/lstm_401/TensorArrayV2_1/element_shape:output:00sequential_133/lstm_401/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_133/lstm_401/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_133/lstm_401/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_133/lstm_401/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_133/lstm_401/whileWhile3sequential_133/lstm_401/while/loop_counter:output:09sequential_133/lstm_401/while/maximum_iterations:output:0%sequential_133/lstm_401/time:output:00sequential_133/lstm_401/TensorArrayV2_1:handle:0&sequential_133/lstm_401/zeros:output:0(sequential_133/lstm_401/zeros_1:output:00sequential_133/lstm_401/strided_slice_1:output:0Osequential_133/lstm_401/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_133_lstm_401_lstm_cell_119_matmul_readvariableop_resourceFsequential_133_lstm_401_lstm_cell_119_matmul_1_readvariableop_resourceEsequential_133_lstm_401_lstm_cell_119_biasadd_readvariableop_resource*
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
)sequential_133_lstm_401_while_body_720498*5
cond-R+
)sequential_133_lstm_401_while_cond_720497*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_133/lstm_401/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_133/lstm_401/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_133/lstm_401/while:output:3Qsequential_133/lstm_401/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_133/lstm_401/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_133/lstm_401/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_133/lstm_401/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_133/lstm_401/strided_slice_3StridedSliceCsequential_133/lstm_401/TensorArrayV2Stack/TensorListStack:tensor:06sequential_133/lstm_401/strided_slice_3/stack:output:08sequential_133/lstm_401/strided_slice_3/stack_1:output:08sequential_133/lstm_401/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_133/lstm_401/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_133/lstm_401/transpose_1	TransposeCsequential_133/lstm_401/TensorArrayV2Stack/TensorListStack:tensor:01sequential_133/lstm_401/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_133/lstm_401/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_133/dense_133/MatMul/ReadVariableOpReadVariableOp7sequential_133_dense_133_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_133/dense_133/MatMulMatMul0sequential_133/lstm_401/strided_slice_3:output:06sequential_133/dense_133/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_133/dense_133/BiasAdd/ReadVariableOpReadVariableOp8sequential_133_dense_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_133/dense_133/BiasAddBiasAdd)sequential_133/dense_133/MatMul:product:07sequential_133/dense_133/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_133/dense_133/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_133/dense_133/BiasAdd/ReadVariableOp/^sequential_133/dense_133/MatMul/ReadVariableOp=^sequential_133/lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp<^sequential_133/lstm_399/lstm_cell_117/MatMul/ReadVariableOp>^sequential_133/lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp^sequential_133/lstm_399/while=^sequential_133/lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp<^sequential_133/lstm_400/lstm_cell_118/MatMul/ReadVariableOp>^sequential_133/lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp^sequential_133/lstm_400/while=^sequential_133/lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp<^sequential_133/lstm_401/lstm_cell_119/MatMul/ReadVariableOp>^sequential_133/lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp^sequential_133/lstm_401/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_133/dense_133/BiasAdd/ReadVariableOp/sequential_133/dense_133/BiasAdd/ReadVariableOp2`
.sequential_133/dense_133/MatMul/ReadVariableOp.sequential_133/dense_133/MatMul/ReadVariableOp2|
<sequential_133/lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp<sequential_133/lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp2z
;sequential_133/lstm_399/lstm_cell_117/MatMul/ReadVariableOp;sequential_133/lstm_399/lstm_cell_117/MatMul/ReadVariableOp2~
=sequential_133/lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp=sequential_133/lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp2>
sequential_133/lstm_399/whilesequential_133/lstm_399/while2|
<sequential_133/lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp<sequential_133/lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp2z
;sequential_133/lstm_400/lstm_cell_118/MatMul/ReadVariableOp;sequential_133/lstm_400/lstm_cell_118/MatMul/ReadVariableOp2~
=sequential_133/lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp=sequential_133/lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp2>
sequential_133/lstm_400/whilesequential_133/lstm_400/while2|
<sequential_133/lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp<sequential_133/lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp2z
;sequential_133/lstm_401/lstm_cell_119/MatMul/ReadVariableOp;sequential_133/lstm_401/lstm_cell_119/MatMul/ReadVariableOp2~
=sequential_133/lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp=sequential_133/lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp2>
sequential_133/lstm_401/whilesequential_133/lstm_401/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_399_input
?
?
while_cond_721702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_721702___redundant_placeholder04
0while_while_cond_721702___redundant_placeholder14
0while_while_cond_721702___redundant_placeholder24
0while_while_cond_721702___redundant_placeholder3
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_722701

inputs"
lstm_399_722674:	?"
lstm_399_722676:	d?
lstm_399_722678:	?"
lstm_400_722681:	d?"
lstm_400_722683:	2?
lstm_400_722685:	?!
lstm_401_722688:2(!
lstm_401_722690:
(
lstm_401_722692:("
dense_133_722695:

dense_133_722697:
identity??!dense_133/StatefulPartitionedCall? lstm_399/StatefulPartitionedCall? lstm_400/StatefulPartitionedCall? lstm_401/StatefulPartitionedCall?
 lstm_399/StatefulPartitionedCallStatefulPartitionedCallinputslstm_399_722674lstm_399_722676lstm_399_722678*
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_722633?
 lstm_400/StatefulPartitionedCallStatefulPartitionedCall)lstm_399/StatefulPartitionedCall:output:0lstm_400_722681lstm_400_722683lstm_400_722685*
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_722468?
 lstm_401/StatefulPartitionedCallStatefulPartitionedCall)lstm_400/StatefulPartitionedCall:output:0lstm_401_722688lstm_401_722690lstm_401_722692*
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722303?
!dense_133/StatefulPartitionedCallStatefulPartitionedCall)lstm_401/StatefulPartitionedCall:output:0dense_133_722695dense_133_722697*
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
E__inference_dense_133_layer_call_and_return_conditional_losses_722105y
IdentityIdentity*dense_133/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_133/StatefulPartitionedCall!^lstm_399/StatefulPartitionedCall!^lstm_400/StatefulPartitionedCall!^lstm_401/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_133/StatefulPartitionedCall!dense_133/StatefulPartitionedCall2D
 lstm_399/StatefulPartitionedCall lstm_399/StatefulPartitionedCall2D
 lstm_400/StatefulPartitionedCall lstm_400/StatefulPartitionedCall2D
 lstm_401/StatefulPartitionedCall lstm_401/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_400_while_body_723100.
*lstm_400_while_lstm_400_while_loop_counter4
0lstm_400_while_lstm_400_while_maximum_iterations
lstm_400_while_placeholder 
lstm_400_while_placeholder_1 
lstm_400_while_placeholder_2 
lstm_400_while_placeholder_3-
)lstm_400_while_lstm_400_strided_slice_1_0i
elstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0:	d?R
?lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?M
>lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
lstm_400_while_identity
lstm_400_while_identity_1
lstm_400_while_identity_2
lstm_400_while_identity_3
lstm_400_while_identity_4
lstm_400_while_identity_5+
'lstm_400_while_lstm_400_strided_slice_1g
clstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensorN
;lstm_400_while_lstm_cell_118_matmul_readvariableop_resource:	d?P
=lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource:	2?K
<lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource:	???3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp?2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp?4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp?
@lstm_400/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_400/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensor_0lstm_400_while_placeholderIlstm_400/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp=lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_400/while/lstm_cell_118/MatMulMatMul9lstm_400/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp?lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_400/while/lstm_cell_118/MatMul_1MatMullstm_400_while_placeholder_2<lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_400/while/lstm_cell_118/addAddV2-lstm_400/while/lstm_cell_118/MatMul:product:0/lstm_400/while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp>lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_400/while/lstm_cell_118/BiasAddBiasAdd$lstm_400/while/lstm_cell_118/add:z:0;lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_400/while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_400/while/lstm_cell_118/splitSplit5lstm_400/while/lstm_cell_118/split/split_dim:output:0-lstm_400/while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_400/while/lstm_cell_118/SigmoidSigmoid+lstm_400/while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_400/while/lstm_cell_118/Sigmoid_1Sigmoid+lstm_400/while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_400/while/lstm_cell_118/mulMul*lstm_400/while/lstm_cell_118/Sigmoid_1:y:0lstm_400_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_400/while/lstm_cell_118/ReluRelu+lstm_400/while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_400/while/lstm_cell_118/mul_1Mul(lstm_400/while/lstm_cell_118/Sigmoid:y:0/lstm_400/while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_400/while/lstm_cell_118/add_1AddV2$lstm_400/while/lstm_cell_118/mul:z:0&lstm_400/while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_400/while/lstm_cell_118/Sigmoid_2Sigmoid+lstm_400/while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_400/while/lstm_cell_118/Relu_1Relu&lstm_400/while/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_400/while/lstm_cell_118/mul_2Mul*lstm_400/while/lstm_cell_118/Sigmoid_2:y:01lstm_400/while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_400/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_400_while_placeholder_1lstm_400_while_placeholder&lstm_400/while/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_400/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_400/while/addAddV2lstm_400_while_placeholderlstm_400/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_400/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_400/while/add_1AddV2*lstm_400_while_lstm_400_while_loop_counterlstm_400/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_400/while/IdentityIdentitylstm_400/while/add_1:z:0^lstm_400/while/NoOp*
T0*
_output_shapes
: ?
lstm_400/while/Identity_1Identity0lstm_400_while_lstm_400_while_maximum_iterations^lstm_400/while/NoOp*
T0*
_output_shapes
: t
lstm_400/while/Identity_2Identitylstm_400/while/add:z:0^lstm_400/while/NoOp*
T0*
_output_shapes
: ?
lstm_400/while/Identity_3IdentityClstm_400/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_400/while/NoOp*
T0*
_output_shapes
: ?
lstm_400/while/Identity_4Identity&lstm_400/while/lstm_cell_118/mul_2:z:0^lstm_400/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_400/while/Identity_5Identity&lstm_400/while/lstm_cell_118/add_1:z:0^lstm_400/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_400/while/NoOpNoOp4^lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp3^lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp5^lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_400_while_identity lstm_400/while/Identity:output:0"?
lstm_400_while_identity_1"lstm_400/while/Identity_1:output:0"?
lstm_400_while_identity_2"lstm_400/while/Identity_2:output:0"?
lstm_400_while_identity_3"lstm_400/while/Identity_3:output:0"?
lstm_400_while_identity_4"lstm_400/while/Identity_4:output:0"?
lstm_400_while_identity_5"lstm_400/while/Identity_5:output:0"T
'lstm_400_while_lstm_400_strided_slice_1)lstm_400_while_lstm_400_strided_slice_1_0"~
<lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource>lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0"?
=lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource?lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0"|
;lstm_400_while_lstm_cell_118_matmul_readvariableop_resource=lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0"?
clstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensorelstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp2h
2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp2l
4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_724144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_724144___redundant_placeholder04
0while_while_cond_724144___redundant_placeholder14
0while_while_cond_724144___redundant_placeholder24
0while_while_cond_724144___redundant_placeholder3
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

lstm_400_while_body_723527.
*lstm_400_while_lstm_400_while_loop_counter4
0lstm_400_while_lstm_400_while_maximum_iterations
lstm_400_while_placeholder 
lstm_400_while_placeholder_1 
lstm_400_while_placeholder_2 
lstm_400_while_placeholder_3-
)lstm_400_while_lstm_400_strided_slice_1_0i
elstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0:	d?R
?lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?M
>lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
lstm_400_while_identity
lstm_400_while_identity_1
lstm_400_while_identity_2
lstm_400_while_identity_3
lstm_400_while_identity_4
lstm_400_while_identity_5+
'lstm_400_while_lstm_400_strided_slice_1g
clstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensorN
;lstm_400_while_lstm_cell_118_matmul_readvariableop_resource:	d?P
=lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource:	2?K
<lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource:	???3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp?2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp?4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp?
@lstm_400/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_400/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensor_0lstm_400_while_placeholderIlstm_400/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp=lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_400/while/lstm_cell_118/MatMulMatMul9lstm_400/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp?lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_400/while/lstm_cell_118/MatMul_1MatMullstm_400_while_placeholder_2<lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_400/while/lstm_cell_118/addAddV2-lstm_400/while/lstm_cell_118/MatMul:product:0/lstm_400/while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp>lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_400/while/lstm_cell_118/BiasAddBiasAdd$lstm_400/while/lstm_cell_118/add:z:0;lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_400/while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_400/while/lstm_cell_118/splitSplit5lstm_400/while/lstm_cell_118/split/split_dim:output:0-lstm_400/while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_400/while/lstm_cell_118/SigmoidSigmoid+lstm_400/while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_400/while/lstm_cell_118/Sigmoid_1Sigmoid+lstm_400/while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_400/while/lstm_cell_118/mulMul*lstm_400/while/lstm_cell_118/Sigmoid_1:y:0lstm_400_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_400/while/lstm_cell_118/ReluRelu+lstm_400/while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_400/while/lstm_cell_118/mul_1Mul(lstm_400/while/lstm_cell_118/Sigmoid:y:0/lstm_400/while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_400/while/lstm_cell_118/add_1AddV2$lstm_400/while/lstm_cell_118/mul:z:0&lstm_400/while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_400/while/lstm_cell_118/Sigmoid_2Sigmoid+lstm_400/while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_400/while/lstm_cell_118/Relu_1Relu&lstm_400/while/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_400/while/lstm_cell_118/mul_2Mul*lstm_400/while/lstm_cell_118/Sigmoid_2:y:01lstm_400/while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_400/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_400_while_placeholder_1lstm_400_while_placeholder&lstm_400/while/lstm_cell_118/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_400/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_400/while/addAddV2lstm_400_while_placeholderlstm_400/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_400/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_400/while/add_1AddV2*lstm_400_while_lstm_400_while_loop_counterlstm_400/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_400/while/IdentityIdentitylstm_400/while/add_1:z:0^lstm_400/while/NoOp*
T0*
_output_shapes
: ?
lstm_400/while/Identity_1Identity0lstm_400_while_lstm_400_while_maximum_iterations^lstm_400/while/NoOp*
T0*
_output_shapes
: t
lstm_400/while/Identity_2Identitylstm_400/while/add:z:0^lstm_400/while/NoOp*
T0*
_output_shapes
: ?
lstm_400/while/Identity_3IdentityClstm_400/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_400/while/NoOp*
T0*
_output_shapes
: ?
lstm_400/while/Identity_4Identity&lstm_400/while/lstm_cell_118/mul_2:z:0^lstm_400/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_400/while/Identity_5Identity&lstm_400/while/lstm_cell_118/add_1:z:0^lstm_400/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_400/while/NoOpNoOp4^lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp3^lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp5^lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_400_while_identity lstm_400/while/Identity:output:0"?
lstm_400_while_identity_1"lstm_400/while/Identity_1:output:0"?
lstm_400_while_identity_2"lstm_400/while/Identity_2:output:0"?
lstm_400_while_identity_3"lstm_400/while/Identity_3:output:0"?
lstm_400_while_identity_4"lstm_400/while/Identity_4:output:0"?
lstm_400_while_identity_5"lstm_400/while/Identity_5:output:0"T
'lstm_400_while_lstm_400_strided_slice_1)lstm_400_while_lstm_400_strided_slice_1_0"~
<lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource>lstm_400_while_lstm_cell_118_biasadd_readvariableop_resource_0"?
=lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource?lstm_400_while_lstm_cell_118_matmul_1_readvariableop_resource_0"|
;lstm_400_while_lstm_cell_118_matmul_readvariableop_resource=lstm_400_while_lstm_cell_118_matmul_readvariableop_resource_0"?
clstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensorelstm_400_while_tensorarrayv2read_tensorlistgetitem_lstm_400_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp3lstm_400/while/lstm_cell_118/BiasAdd/ReadVariableOp2h
2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp2lstm_400/while/lstm_cell_118/MatMul/ReadVariableOp2l
4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp4lstm_400/while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_721559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_721559___redundant_placeholder04
0while_while_cond_721559___redundant_placeholder14
0while_while_cond_721559___redundant_placeholder24
0while_while_cond_721559___redundant_placeholder3
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_725461

inputs>
,lstm_cell_119_matmul_readvariableop_resource:2(@
.lstm_cell_119_matmul_1_readvariableop_resource:
(;
-lstm_cell_119_biasadd_readvariableop_resource:(
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
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
while_body_725377*
condR
while_cond_725376*K
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
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_724145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_117_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_117_matmul_readvariableop_resource:	?G
4while_lstm_cell_117_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_117_biasadd_readvariableop_resource:	???*while/lstm_cell_117/BiasAdd/ReadVariableOp?)while/lstm_cell_117/MatMul/ReadVariableOp?+while/lstm_cell_117/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_117/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_117/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_117/addAddV2$while/lstm_cell_117/MatMul:product:0&while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_117/BiasAddBiasAddwhile/lstm_cell_117/add:z:02while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_117/splitSplit,while/lstm_cell_117/split/split_dim:output:0$while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_117/SigmoidSigmoid"while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_1Sigmoid"while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mulMul!while/lstm_cell_117/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_117/ReluRelu"while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_1Mulwhile/lstm_cell_117/Sigmoid:y:0&while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/add_1AddV2while/lstm_cell_117/mul:z:0while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_117/Sigmoid_2Sigmoid"while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_117/Relu_1Reluwhile/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_117/mul_2Mul!while/lstm_cell_117/Sigmoid_2:y:0(while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_117/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_117/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_117/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_117/BiasAdd/ReadVariableOp*^while/lstm_cell_117/MatMul/ReadVariableOp,^while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_117_biasadd_readvariableop_resource5while_lstm_cell_117_biasadd_readvariableop_resource_0"n
4while_lstm_cell_117_matmul_1_readvariableop_resource6while_lstm_cell_117_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_117_matmul_readvariableop_resource4while_lstm_cell_117_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_117/BiasAdd/ReadVariableOp*while/lstm_cell_117/BiasAdd/ReadVariableOp2V
)while/lstm_cell_117/MatMul/ReadVariableOp)while/lstm_cell_117/MatMul/ReadVariableOp2Z
+while/lstm_cell_117/MatMul_1/ReadVariableOp+while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
/__inference_sequential_133_layer_call_fn_722137
lstm_399_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_399_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_722112o
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
_user_specified_namelstm_399_input
??
?
J__inference_sequential_133_layer_call_and_return_conditional_losses_723329

inputsH
5lstm_399_lstm_cell_117_matmul_readvariableop_resource:	?J
7lstm_399_lstm_cell_117_matmul_1_readvariableop_resource:	d?E
6lstm_399_lstm_cell_117_biasadd_readvariableop_resource:	?H
5lstm_400_lstm_cell_118_matmul_readvariableop_resource:	d?J
7lstm_400_lstm_cell_118_matmul_1_readvariableop_resource:	2?E
6lstm_400_lstm_cell_118_biasadd_readvariableop_resource:	?G
5lstm_401_lstm_cell_119_matmul_readvariableop_resource:2(I
7lstm_401_lstm_cell_119_matmul_1_readvariableop_resource:
(D
6lstm_401_lstm_cell_119_biasadd_readvariableop_resource:(:
(dense_133_matmul_readvariableop_resource:
7
)dense_133_biasadd_readvariableop_resource:
identity?? dense_133/BiasAdd/ReadVariableOp?dense_133/MatMul/ReadVariableOp?-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp?,lstm_399/lstm_cell_117/MatMul/ReadVariableOp?.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp?lstm_399/while?-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp?,lstm_400/lstm_cell_118/MatMul/ReadVariableOp?.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp?lstm_400/while?-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp?,lstm_401/lstm_cell_119/MatMul/ReadVariableOp?.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp?lstm_401/whileD
lstm_399/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_399/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_399/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_399/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_sliceStridedSlicelstm_399/Shape:output:0%lstm_399/strided_slice/stack:output:0'lstm_399/strided_slice/stack_1:output:0'lstm_399/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_399/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_399/zeros/packedPacklstm_399/strided_slice:output:0 lstm_399/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_399/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_399/zerosFilllstm_399/zeros/packed:output:0lstm_399/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_399/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_399/zeros_1/packedPacklstm_399/strided_slice:output:0"lstm_399/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_399/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_399/zeros_1Fill lstm_399/zeros_1/packed:output:0lstm_399/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_399/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_399/transpose	Transposeinputs lstm_399/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_399/Shape_1Shapelstm_399/transpose:y:0*
T0*
_output_shapes
:h
lstm_399/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_399/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_399/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_slice_1StridedSlicelstm_399/Shape_1:output:0'lstm_399/strided_slice_1/stack:output:0)lstm_399/strided_slice_1/stack_1:output:0)lstm_399/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_399/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_399/TensorArrayV2TensorListReserve-lstm_399/TensorArrayV2/element_shape:output:0!lstm_399/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_399/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_399/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_399/transpose:y:0Glstm_399/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_399/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_399/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_399/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_slice_2StridedSlicelstm_399/transpose:y:0'lstm_399/strided_slice_2/stack:output:0)lstm_399/strided_slice_2/stack_1:output:0)lstm_399/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_399/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp5lstm_399_lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_399/lstm_cell_117/MatMulMatMul!lstm_399/strided_slice_2:output:04lstm_399/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp7lstm_399_lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_399/lstm_cell_117/MatMul_1MatMullstm_399/zeros:output:06lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_399/lstm_cell_117/addAddV2'lstm_399/lstm_cell_117/MatMul:product:0)lstm_399/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp6lstm_399_lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_399/lstm_cell_117/BiasAddBiasAddlstm_399/lstm_cell_117/add:z:05lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_399/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_399/lstm_cell_117/splitSplit/lstm_399/lstm_cell_117/split/split_dim:output:0'lstm_399/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_399/lstm_cell_117/SigmoidSigmoid%lstm_399/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_399/lstm_cell_117/Sigmoid_1Sigmoid%lstm_399/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/mulMul$lstm_399/lstm_cell_117/Sigmoid_1:y:0lstm_399/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_399/lstm_cell_117/ReluRelu%lstm_399/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/mul_1Mul"lstm_399/lstm_cell_117/Sigmoid:y:0)lstm_399/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/add_1AddV2lstm_399/lstm_cell_117/mul:z:0 lstm_399/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_399/lstm_cell_117/Sigmoid_2Sigmoid%lstm_399/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_399/lstm_cell_117/Relu_1Relu lstm_399/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_399/lstm_cell_117/mul_2Mul$lstm_399/lstm_cell_117/Sigmoid_2:y:0+lstm_399/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_399/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_399/TensorArrayV2_1TensorListReserve/lstm_399/TensorArrayV2_1/element_shape:output:0!lstm_399/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_399/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_399/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_399/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_399/whileWhile$lstm_399/while/loop_counter:output:0*lstm_399/while/maximum_iterations:output:0lstm_399/time:output:0!lstm_399/TensorArrayV2_1:handle:0lstm_399/zeros:output:0lstm_399/zeros_1:output:0!lstm_399/strided_slice_1:output:0@lstm_399/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_399_lstm_cell_117_matmul_readvariableop_resource7lstm_399_lstm_cell_117_matmul_1_readvariableop_resource6lstm_399_lstm_cell_117_biasadd_readvariableop_resource*
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
lstm_399_while_body_722961*&
condR
lstm_399_while_cond_722960*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_399/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_399/TensorArrayV2Stack/TensorListStackTensorListStacklstm_399/while:output:3Blstm_399/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_399/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_399/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_399/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_399/strided_slice_3StridedSlice4lstm_399/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_399/strided_slice_3/stack:output:0)lstm_399/strided_slice_3/stack_1:output:0)lstm_399/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_399/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_399/transpose_1	Transpose4lstm_399/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_399/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_399/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_400/ShapeShapelstm_399/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_400/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_400/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_400/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_sliceStridedSlicelstm_400/Shape:output:0%lstm_400/strided_slice/stack:output:0'lstm_400/strided_slice/stack_1:output:0'lstm_400/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_400/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_400/zeros/packedPacklstm_400/strided_slice:output:0 lstm_400/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_400/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_400/zerosFilllstm_400/zeros/packed:output:0lstm_400/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_400/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_400/zeros_1/packedPacklstm_400/strided_slice:output:0"lstm_400/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_400/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_400/zeros_1Fill lstm_400/zeros_1/packed:output:0lstm_400/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_400/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_400/transpose	Transposelstm_399/transpose_1:y:0 lstm_400/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_400/Shape_1Shapelstm_400/transpose:y:0*
T0*
_output_shapes
:h
lstm_400/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_400/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_400/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_slice_1StridedSlicelstm_400/Shape_1:output:0'lstm_400/strided_slice_1/stack:output:0)lstm_400/strided_slice_1/stack_1:output:0)lstm_400/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_400/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_400/TensorArrayV2TensorListReserve-lstm_400/TensorArrayV2/element_shape:output:0!lstm_400/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_400/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_400/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_400/transpose:y:0Glstm_400/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_400/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_400/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_400/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_slice_2StridedSlicelstm_400/transpose:y:0'lstm_400/strided_slice_2/stack:output:0)lstm_400/strided_slice_2/stack_1:output:0)lstm_400/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_400/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp5lstm_400_lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_400/lstm_cell_118/MatMulMatMul!lstm_400/strided_slice_2:output:04lstm_400/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp7lstm_400_lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_400/lstm_cell_118/MatMul_1MatMullstm_400/zeros:output:06lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_400/lstm_cell_118/addAddV2'lstm_400/lstm_cell_118/MatMul:product:0)lstm_400/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp6lstm_400_lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_400/lstm_cell_118/BiasAddBiasAddlstm_400/lstm_cell_118/add:z:05lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_400/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_400/lstm_cell_118/splitSplit/lstm_400/lstm_cell_118/split/split_dim:output:0'lstm_400/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_400/lstm_cell_118/SigmoidSigmoid%lstm_400/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_400/lstm_cell_118/Sigmoid_1Sigmoid%lstm_400/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/mulMul$lstm_400/lstm_cell_118/Sigmoid_1:y:0lstm_400/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_400/lstm_cell_118/ReluRelu%lstm_400/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/mul_1Mul"lstm_400/lstm_cell_118/Sigmoid:y:0)lstm_400/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/add_1AddV2lstm_400/lstm_cell_118/mul:z:0 lstm_400/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_400/lstm_cell_118/Sigmoid_2Sigmoid%lstm_400/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_400/lstm_cell_118/Relu_1Relu lstm_400/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_400/lstm_cell_118/mul_2Mul$lstm_400/lstm_cell_118/Sigmoid_2:y:0+lstm_400/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_400/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_400/TensorArrayV2_1TensorListReserve/lstm_400/TensorArrayV2_1/element_shape:output:0!lstm_400/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_400/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_400/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_400/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_400/whileWhile$lstm_400/while/loop_counter:output:0*lstm_400/while/maximum_iterations:output:0lstm_400/time:output:0!lstm_400/TensorArrayV2_1:handle:0lstm_400/zeros:output:0lstm_400/zeros_1:output:0!lstm_400/strided_slice_1:output:0@lstm_400/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_400_lstm_cell_118_matmul_readvariableop_resource7lstm_400_lstm_cell_118_matmul_1_readvariableop_resource6lstm_400_lstm_cell_118_biasadd_readvariableop_resource*
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
lstm_400_while_body_723100*&
condR
lstm_400_while_cond_723099*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_400/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_400/TensorArrayV2Stack/TensorListStackTensorListStacklstm_400/while:output:3Blstm_400/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_400/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_400/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_400/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_400/strided_slice_3StridedSlice4lstm_400/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_400/strided_slice_3/stack:output:0)lstm_400/strided_slice_3/stack_1:output:0)lstm_400/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_400/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_400/transpose_1	Transpose4lstm_400/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_400/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_400/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_401/ShapeShapelstm_400/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_401/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_401/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_401/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_sliceStridedSlicelstm_401/Shape:output:0%lstm_401/strided_slice/stack:output:0'lstm_401/strided_slice/stack_1:output:0'lstm_401/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_401/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_401/zeros/packedPacklstm_401/strided_slice:output:0 lstm_401/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_401/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_401/zerosFilllstm_401/zeros/packed:output:0lstm_401/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_401/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_401/zeros_1/packedPacklstm_401/strided_slice:output:0"lstm_401/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_401/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_401/zeros_1Fill lstm_401/zeros_1/packed:output:0lstm_401/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_401/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_401/transpose	Transposelstm_400/transpose_1:y:0 lstm_401/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_401/Shape_1Shapelstm_401/transpose:y:0*
T0*
_output_shapes
:h
lstm_401/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_401/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_401/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_slice_1StridedSlicelstm_401/Shape_1:output:0'lstm_401/strided_slice_1/stack:output:0)lstm_401/strided_slice_1/stack_1:output:0)lstm_401/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_401/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_401/TensorArrayV2TensorListReserve-lstm_401/TensorArrayV2/element_shape:output:0!lstm_401/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_401/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_401/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_401/transpose:y:0Glstm_401/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_401/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_401/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_401/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_slice_2StridedSlicelstm_401/transpose:y:0'lstm_401/strided_slice_2/stack:output:0)lstm_401/strided_slice_2/stack_1:output:0)lstm_401/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_401/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp5lstm_401_lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_401/lstm_cell_119/MatMulMatMul!lstm_401/strided_slice_2:output:04lstm_401/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp7lstm_401_lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_401/lstm_cell_119/MatMul_1MatMullstm_401/zeros:output:06lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_401/lstm_cell_119/addAddV2'lstm_401/lstm_cell_119/MatMul:product:0)lstm_401/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp6lstm_401_lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_401/lstm_cell_119/BiasAddBiasAddlstm_401/lstm_cell_119/add:z:05lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_401/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_401/lstm_cell_119/splitSplit/lstm_401/lstm_cell_119/split/split_dim:output:0'lstm_401/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_401/lstm_cell_119/SigmoidSigmoid%lstm_401/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_401/lstm_cell_119/Sigmoid_1Sigmoid%lstm_401/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/mulMul$lstm_401/lstm_cell_119/Sigmoid_1:y:0lstm_401/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_401/lstm_cell_119/ReluRelu%lstm_401/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/mul_1Mul"lstm_401/lstm_cell_119/Sigmoid:y:0)lstm_401/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/add_1AddV2lstm_401/lstm_cell_119/mul:z:0 lstm_401/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_401/lstm_cell_119/Sigmoid_2Sigmoid%lstm_401/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_401/lstm_cell_119/Relu_1Relu lstm_401/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_401/lstm_cell_119/mul_2Mul$lstm_401/lstm_cell_119/Sigmoid_2:y:0+lstm_401/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_401/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_401/TensorArrayV2_1TensorListReserve/lstm_401/TensorArrayV2_1/element_shape:output:0!lstm_401/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_401/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_401/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_401/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_401/whileWhile$lstm_401/while/loop_counter:output:0*lstm_401/while/maximum_iterations:output:0lstm_401/time:output:0!lstm_401/TensorArrayV2_1:handle:0lstm_401/zeros:output:0lstm_401/zeros_1:output:0!lstm_401/strided_slice_1:output:0@lstm_401/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_401_lstm_cell_119_matmul_readvariableop_resource7lstm_401_lstm_cell_119_matmul_1_readvariableop_resource6lstm_401_lstm_cell_119_biasadd_readvariableop_resource*
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
lstm_401_while_body_723239*&
condR
lstm_401_while_cond_723238*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_401/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_401/TensorArrayV2Stack/TensorListStackTensorListStacklstm_401/while:output:3Blstm_401/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_401/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_401/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_401/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_401/strided_slice_3StridedSlice4lstm_401/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_401/strided_slice_3/stack:output:0)lstm_401/strided_slice_3/stack_1:output:0)lstm_401/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_401/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_401/transpose_1	Transpose4lstm_401/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_401/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_401/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_133/MatMul/ReadVariableOpReadVariableOp(dense_133_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_133/MatMulMatMul!lstm_401/strided_slice_3:output:0'dense_133/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_133/BiasAdd/ReadVariableOpReadVariableOp)dense_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_133/BiasAddBiasAdddense_133/MatMul:product:0(dense_133/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_133/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_133/BiasAdd/ReadVariableOp ^dense_133/MatMul/ReadVariableOp.^lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp-^lstm_399/lstm_cell_117/MatMul/ReadVariableOp/^lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp^lstm_399/while.^lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp-^lstm_400/lstm_cell_118/MatMul/ReadVariableOp/^lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp^lstm_400/while.^lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp-^lstm_401/lstm_cell_119/MatMul/ReadVariableOp/^lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp^lstm_401/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_133/BiasAdd/ReadVariableOp dense_133/BiasAdd/ReadVariableOp2B
dense_133/MatMul/ReadVariableOpdense_133/MatMul/ReadVariableOp2^
-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp-lstm_399/lstm_cell_117/BiasAdd/ReadVariableOp2\
,lstm_399/lstm_cell_117/MatMul/ReadVariableOp,lstm_399/lstm_cell_117/MatMul/ReadVariableOp2`
.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp.lstm_399/lstm_cell_117/MatMul_1/ReadVariableOp2 
lstm_399/whilelstm_399/while2^
-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp-lstm_400/lstm_cell_118/BiasAdd/ReadVariableOp2\
,lstm_400/lstm_cell_118/MatMul/ReadVariableOp,lstm_400/lstm_cell_118/MatMul/ReadVariableOp2`
.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp.lstm_400/lstm_cell_118/MatMul_1/ReadVariableOp2 
lstm_400/whilelstm_400/while2^
-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp-lstm_401/lstm_cell_119/BiasAdd/ReadVariableOp2\
,lstm_401/lstm_cell_119/MatMul/ReadVariableOp,lstm_401/lstm_cell_119/MatMul/ReadVariableOp2`
.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp.lstm_401/lstm_cell_119/MatMul_1/ReadVariableOp2 
lstm_401/whilelstm_401/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_721209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_721209___redundant_placeholder04
0while_while_cond_721209___redundant_placeholder14
0while_while_cond_721209___redundant_placeholder24
0while_while_cond_721209___redundant_placeholder3
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

lstm_399_while_body_723388.
*lstm_399_while_lstm_399_while_loop_counter4
0lstm_399_while_lstm_399_while_maximum_iterations
lstm_399_while_placeholder 
lstm_399_while_placeholder_1 
lstm_399_while_placeholder_2 
lstm_399_while_placeholder_3-
)lstm_399_while_lstm_399_strided_slice_1_0i
elstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0:	?R
?lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?M
>lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0:	?
lstm_399_while_identity
lstm_399_while_identity_1
lstm_399_while_identity_2
lstm_399_while_identity_3
lstm_399_while_identity_4
lstm_399_while_identity_5+
'lstm_399_while_lstm_399_strided_slice_1g
clstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensorN
;lstm_399_while_lstm_cell_117_matmul_readvariableop_resource:	?P
=lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource:	d?K
<lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource:	???3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp?2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp?4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp?
@lstm_399/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_399/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensor_0lstm_399_while_placeholderIlstm_399/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOp=lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_399/while/lstm_cell_117/MatMulMatMul9lstm_399/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp?lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_399/while/lstm_cell_117/MatMul_1MatMullstm_399_while_placeholder_2<lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_399/while/lstm_cell_117/addAddV2-lstm_399/while/lstm_cell_117/MatMul:product:0/lstm_399/while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp>lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_399/while/lstm_cell_117/BiasAddBiasAdd$lstm_399/while/lstm_cell_117/add:z:0;lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_399/while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_399/while/lstm_cell_117/splitSplit5lstm_399/while/lstm_cell_117/split/split_dim:output:0-lstm_399/while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_399/while/lstm_cell_117/SigmoidSigmoid+lstm_399/while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_399/while/lstm_cell_117/Sigmoid_1Sigmoid+lstm_399/while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_399/while/lstm_cell_117/mulMul*lstm_399/while/lstm_cell_117/Sigmoid_1:y:0lstm_399_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_399/while/lstm_cell_117/ReluRelu+lstm_399/while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_399/while/lstm_cell_117/mul_1Mul(lstm_399/while/lstm_cell_117/Sigmoid:y:0/lstm_399/while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_399/while/lstm_cell_117/add_1AddV2$lstm_399/while/lstm_cell_117/mul:z:0&lstm_399/while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_399/while/lstm_cell_117/Sigmoid_2Sigmoid+lstm_399/while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_399/while/lstm_cell_117/Relu_1Relu&lstm_399/while/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_399/while/lstm_cell_117/mul_2Mul*lstm_399/while/lstm_cell_117/Sigmoid_2:y:01lstm_399/while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_399/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_399_while_placeholder_1lstm_399_while_placeholder&lstm_399/while/lstm_cell_117/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_399/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_399/while/addAddV2lstm_399_while_placeholderlstm_399/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_399/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_399/while/add_1AddV2*lstm_399_while_lstm_399_while_loop_counterlstm_399/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_399/while/IdentityIdentitylstm_399/while/add_1:z:0^lstm_399/while/NoOp*
T0*
_output_shapes
: ?
lstm_399/while/Identity_1Identity0lstm_399_while_lstm_399_while_maximum_iterations^lstm_399/while/NoOp*
T0*
_output_shapes
: t
lstm_399/while/Identity_2Identitylstm_399/while/add:z:0^lstm_399/while/NoOp*
T0*
_output_shapes
: ?
lstm_399/while/Identity_3IdentityClstm_399/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_399/while/NoOp*
T0*
_output_shapes
: ?
lstm_399/while/Identity_4Identity&lstm_399/while/lstm_cell_117/mul_2:z:0^lstm_399/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_399/while/Identity_5Identity&lstm_399/while/lstm_cell_117/add_1:z:0^lstm_399/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_399/while/NoOpNoOp4^lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp3^lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp5^lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_399_while_identity lstm_399/while/Identity:output:0"?
lstm_399_while_identity_1"lstm_399/while/Identity_1:output:0"?
lstm_399_while_identity_2"lstm_399/while/Identity_2:output:0"?
lstm_399_while_identity_3"lstm_399/while/Identity_3:output:0"?
lstm_399_while_identity_4"lstm_399/while/Identity_4:output:0"?
lstm_399_while_identity_5"lstm_399/while/Identity_5:output:0"T
'lstm_399_while_lstm_399_strided_slice_1)lstm_399_while_lstm_399_strided_slice_1_0"~
<lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource>lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0"?
=lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource?lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0"|
;lstm_399_while_lstm_cell_117_matmul_readvariableop_resource=lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0"?
clstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensorelstm_399_while_tensorarrayv2read_tensorlistgetitem_lstm_399_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp3lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp2h
2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp2lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp2l
4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp4lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_722383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_722383___redundant_placeholder04
0while_while_cond_722383___redundant_placeholder14
0while_while_cond_722383___redundant_placeholder24
0while_while_cond_722383___redundant_placeholder3
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_724086
inputs_0?
,lstm_cell_117_matmul_readvariableop_resource:	?A
.lstm_cell_117_matmul_1_readvariableop_resource:	d?<
-lstm_cell_117_biasadd_readvariableop_resource:	?
identity??$lstm_cell_117/BiasAdd/ReadVariableOp?#lstm_cell_117/MatMul/ReadVariableOp?%lstm_cell_117/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_117/MatMul/ReadVariableOpReadVariableOp,lstm_cell_117_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_117/MatMulMatMulstrided_slice_2:output:0+lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_117_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_117/MatMul_1MatMulzeros:output:0-lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_117/addAddV2lstm_cell_117/MatMul:product:0 lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_117_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_117/BiasAddBiasAddlstm_cell_117/add:z:0,lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_117/splitSplit&lstm_cell_117/split/split_dim:output:0lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_117/SigmoidSigmoidlstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_1Sigmoidlstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_117/mulMullstm_cell_117/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_117/ReluRelulstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_1Mullstm_cell_117/Sigmoid:y:0 lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_117/add_1AddV2lstm_cell_117/mul:z:0lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_117/Sigmoid_2Sigmoidlstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_117/Relu_1Relulstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_117/mul_2Mullstm_cell_117/Sigmoid_2:y:0"lstm_cell_117/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_117_matmul_readvariableop_resource.lstm_cell_117_matmul_1_readvariableop_resource-lstm_cell_117_biasadd_readvariableop_resource*
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
while_body_724002*
condR
while_cond_724001*K
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
NoOpNoOp%^lstm_cell_117/BiasAdd/ReadVariableOp$^lstm_cell_117/MatMul/ReadVariableOp&^lstm_cell_117/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_117/BiasAdd/ReadVariableOp$lstm_cell_117/BiasAdd/ReadVariableOp2J
#lstm_cell_117/MatMul/ReadVariableOp#lstm_cell_117/MatMul/ReadVariableOp2N
%lstm_cell_117/MatMul_1/ReadVariableOp%lstm_cell_117/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
D__inference_lstm_400_layer_call_and_return_conditional_losses_724845

inputs?
,lstm_cell_118_matmul_readvariableop_resource:	d?A
.lstm_cell_118_matmul_1_readvariableop_resource:	2?<
-lstm_cell_118_biasadd_readvariableop_resource:	?
identity??$lstm_cell_118/BiasAdd/ReadVariableOp?#lstm_cell_118/MatMul/ReadVariableOp?%lstm_cell_118/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_118/MatMul/ReadVariableOpReadVariableOp,lstm_cell_118_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_118/MatMulMatMulstrided_slice_2:output:0+lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_118_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_118/MatMul_1MatMulzeros:output:0-lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_118/addAddV2lstm_cell_118/MatMul:product:0 lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_118_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_118/BiasAddBiasAddlstm_cell_118/add:z:0,lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_118/splitSplit&lstm_cell_118/split/split_dim:output:0lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_118/SigmoidSigmoidlstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_1Sigmoidlstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_118/mulMullstm_cell_118/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_118/ReluRelulstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_1Mullstm_cell_118/Sigmoid:y:0 lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_118/add_1AddV2lstm_cell_118/mul:z:0lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_118/Sigmoid_2Sigmoidlstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_118/Relu_1Relulstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_118/mul_2Mullstm_cell_118/Sigmoid_2:y:0"lstm_cell_118/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_118_matmul_readvariableop_resource.lstm_cell_118_matmul_1_readvariableop_resource-lstm_cell_118_biasadd_readvariableop_resource*
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
while_body_724761*
condR
while_cond_724760*K
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
NoOpNoOp%^lstm_cell_118/BiasAdd/ReadVariableOp$^lstm_cell_118/MatMul/ReadVariableOp&^lstm_cell_118/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_118/BiasAdd/ReadVariableOp$lstm_cell_118/BiasAdd/ReadVariableOp2J
#lstm_cell_118/MatMul/ReadVariableOp#lstm_cell_118/MatMul/ReadVariableOp2N
%lstm_cell_118/MatMul_1/ReadVariableOp%lstm_cell_118/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)__inference_lstm_400_layer_call_fn_724383
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_721088|
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
?K
?
D__inference_lstm_401_layer_call_and_return_conditional_losses_725175
inputs_0>
,lstm_cell_119_matmul_readvariableop_resource:2(@
.lstm_cell_119_matmul_1_readvariableop_resource:
(;
-lstm_cell_119_biasadd_readvariableop_resource:(
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
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
while_body_725091*
condR
while_cond_725090*K
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
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_725091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:2(F
4while_lstm_cell_119_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_119_biasadd_readvariableop_resource:(??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_725234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_119_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_119_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_119_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_119_matmul_readvariableop_resource:2(F
4while_lstm_cell_119_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_119_biasadd_readvariableop_resource:(??*while/lstm_cell_119/BiasAdd/ReadVariableOp?)while/lstm_cell_119/MatMul/ReadVariableOp?+while/lstm_cell_119/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_119/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_119_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_119/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_119_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_119/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_119/addAddV2$while/lstm_cell_119/MatMul:product:0&while/lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_119_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_119/BiasAddBiasAddwhile/lstm_cell_119/add:z:02while/lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_119/splitSplit,while/lstm_cell_119/split/split_dim:output:0$while/lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_119/SigmoidSigmoid"while/lstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_1Sigmoid"while/lstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mulMul!while/lstm_cell_119/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_119/ReluRelu"while/lstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_1Mulwhile/lstm_cell_119/Sigmoid:y:0&while/lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/add_1AddV2while/lstm_cell_119/mul:z:0while/lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_119/Sigmoid_2Sigmoid"while/lstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_119/Relu_1Reluwhile/lstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_119/mul_2Mul!while/lstm_cell_119/Sigmoid_2:y:0(while/lstm_cell_119/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_119/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_119/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_119/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_119/BiasAdd/ReadVariableOp*^while/lstm_cell_119/MatMul/ReadVariableOp,^while/lstm_cell_119/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_119_biasadd_readvariableop_resource5while_lstm_cell_119_biasadd_readvariableop_resource_0"n
4while_lstm_cell_119_matmul_1_readvariableop_resource6while_lstm_cell_119_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_119_matmul_readvariableop_resource4while_lstm_cell_119_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_119/BiasAdd/ReadVariableOp*while/lstm_cell_119/BiasAdd/ReadVariableOp2V
)while/lstm_cell_119/MatMul/ReadVariableOp)while/lstm_cell_119/MatMul/ReadVariableOp2Z
+while/lstm_cell_119/MatMul_1/ReadVariableOp+while/lstm_cell_119/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?T
?
)sequential_133_lstm_399_while_body_720220L
Hsequential_133_lstm_399_while_sequential_133_lstm_399_while_loop_counterR
Nsequential_133_lstm_399_while_sequential_133_lstm_399_while_maximum_iterations-
)sequential_133_lstm_399_while_placeholder/
+sequential_133_lstm_399_while_placeholder_1/
+sequential_133_lstm_399_while_placeholder_2/
+sequential_133_lstm_399_while_placeholder_3K
Gsequential_133_lstm_399_while_sequential_133_lstm_399_strided_slice_1_0?
?sequential_133_lstm_399_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_399_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_133_lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0:	?a
Nsequential_133_lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0:	d?\
Msequential_133_lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0:	?*
&sequential_133_lstm_399_while_identity,
(sequential_133_lstm_399_while_identity_1,
(sequential_133_lstm_399_while_identity_2,
(sequential_133_lstm_399_while_identity_3,
(sequential_133_lstm_399_while_identity_4,
(sequential_133_lstm_399_while_identity_5I
Esequential_133_lstm_399_while_sequential_133_lstm_399_strided_slice_1?
?sequential_133_lstm_399_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_399_tensorarrayunstack_tensorlistfromtensor]
Jsequential_133_lstm_399_while_lstm_cell_117_matmul_readvariableop_resource:	?_
Lsequential_133_lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource:	d?Z
Ksequential_133_lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource:	???Bsequential_133/lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp?Asequential_133/lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp?Csequential_133/lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp?
Osequential_133/lstm_399/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_133/lstm_399/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_133_lstm_399_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_399_tensorarrayunstack_tensorlistfromtensor_0)sequential_133_lstm_399_while_placeholderXsequential_133/lstm_399/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_133/lstm_399/while/lstm_cell_117/MatMul/ReadVariableOpReadVariableOpLsequential_133_lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_133/lstm_399/while/lstm_cell_117/MatMulMatMulHsequential_133/lstm_399/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_133/lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_133/lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOpReadVariableOpNsequential_133_lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_133/lstm_399/while/lstm_cell_117/MatMul_1MatMul+sequential_133_lstm_399_while_placeholder_2Ksequential_133/lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_133/lstm_399/while/lstm_cell_117/addAddV2<sequential_133/lstm_399/while/lstm_cell_117/MatMul:product:0>sequential_133/lstm_399/while/lstm_cell_117/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_133/lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOpReadVariableOpMsequential_133_lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_133/lstm_399/while/lstm_cell_117/BiasAddBiasAdd3sequential_133/lstm_399/while/lstm_cell_117/add:z:0Jsequential_133/lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_133/lstm_399/while/lstm_cell_117/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_133/lstm_399/while/lstm_cell_117/splitSplitDsequential_133/lstm_399/while/lstm_cell_117/split/split_dim:output:0<sequential_133/lstm_399/while/lstm_cell_117/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_133/lstm_399/while/lstm_cell_117/SigmoidSigmoid:sequential_133/lstm_399/while/lstm_cell_117/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_133/lstm_399/while/lstm_cell_117/Sigmoid_1Sigmoid:sequential_133/lstm_399/while/lstm_cell_117/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_133/lstm_399/while/lstm_cell_117/mulMul9sequential_133/lstm_399/while/lstm_cell_117/Sigmoid_1:y:0+sequential_133_lstm_399_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_133/lstm_399/while/lstm_cell_117/ReluRelu:sequential_133/lstm_399/while/lstm_cell_117/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_133/lstm_399/while/lstm_cell_117/mul_1Mul7sequential_133/lstm_399/while/lstm_cell_117/Sigmoid:y:0>sequential_133/lstm_399/while/lstm_cell_117/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_133/lstm_399/while/lstm_cell_117/add_1AddV23sequential_133/lstm_399/while/lstm_cell_117/mul:z:05sequential_133/lstm_399/while/lstm_cell_117/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_133/lstm_399/while/lstm_cell_117/Sigmoid_2Sigmoid:sequential_133/lstm_399/while/lstm_cell_117/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_133/lstm_399/while/lstm_cell_117/Relu_1Relu5sequential_133/lstm_399/while/lstm_cell_117/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_133/lstm_399/while/lstm_cell_117/mul_2Mul9sequential_133/lstm_399/while/lstm_cell_117/Sigmoid_2:y:0@sequential_133/lstm_399/while/lstm_cell_117/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_133/lstm_399/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_133_lstm_399_while_placeholder_1)sequential_133_lstm_399_while_placeholder5sequential_133/lstm_399/while/lstm_cell_117/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_133/lstm_399/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_133/lstm_399/while/addAddV2)sequential_133_lstm_399_while_placeholder,sequential_133/lstm_399/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_133/lstm_399/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_133/lstm_399/while/add_1AddV2Hsequential_133_lstm_399_while_sequential_133_lstm_399_while_loop_counter.sequential_133/lstm_399/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_133/lstm_399/while/IdentityIdentity'sequential_133/lstm_399/while/add_1:z:0#^sequential_133/lstm_399/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_399/while/Identity_1IdentityNsequential_133_lstm_399_while_sequential_133_lstm_399_while_maximum_iterations#^sequential_133/lstm_399/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_399/while/Identity_2Identity%sequential_133/lstm_399/while/add:z:0#^sequential_133/lstm_399/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_399/while/Identity_3IdentityRsequential_133/lstm_399/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_133/lstm_399/while/NoOp*
T0*
_output_shapes
: ?
(sequential_133/lstm_399/while/Identity_4Identity5sequential_133/lstm_399/while/lstm_cell_117/mul_2:z:0#^sequential_133/lstm_399/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_133/lstm_399/while/Identity_5Identity5sequential_133/lstm_399/while/lstm_cell_117/add_1:z:0#^sequential_133/lstm_399/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_133/lstm_399/while/NoOpNoOpC^sequential_133/lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOpB^sequential_133/lstm_399/while/lstm_cell_117/MatMul/ReadVariableOpD^sequential_133/lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_133_lstm_399_while_identity/sequential_133/lstm_399/while/Identity:output:0"]
(sequential_133_lstm_399_while_identity_11sequential_133/lstm_399/while/Identity_1:output:0"]
(sequential_133_lstm_399_while_identity_21sequential_133/lstm_399/while/Identity_2:output:0"]
(sequential_133_lstm_399_while_identity_31sequential_133/lstm_399/while/Identity_3:output:0"]
(sequential_133_lstm_399_while_identity_41sequential_133/lstm_399/while/Identity_4:output:0"]
(sequential_133_lstm_399_while_identity_51sequential_133/lstm_399/while/Identity_5:output:0"?
Ksequential_133_lstm_399_while_lstm_cell_117_biasadd_readvariableop_resourceMsequential_133_lstm_399_while_lstm_cell_117_biasadd_readvariableop_resource_0"?
Lsequential_133_lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resourceNsequential_133_lstm_399_while_lstm_cell_117_matmul_1_readvariableop_resource_0"?
Jsequential_133_lstm_399_while_lstm_cell_117_matmul_readvariableop_resourceLsequential_133_lstm_399_while_lstm_cell_117_matmul_readvariableop_resource_0"?
Esequential_133_lstm_399_while_sequential_133_lstm_399_strided_slice_1Gsequential_133_lstm_399_while_sequential_133_lstm_399_strided_slice_1_0"?
?sequential_133_lstm_399_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_399_tensorarrayunstack_tensorlistfromtensor?sequential_133_lstm_399_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_399_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_133/lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOpBsequential_133/lstm_399/while/lstm_cell_117/BiasAdd/ReadVariableOp2?
Asequential_133/lstm_399/while/lstm_cell_117/MatMul/ReadVariableOpAsequential_133/lstm_399/while/lstm_cell_117/MatMul/ReadVariableOp2?
Csequential_133/lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOpCsequential_133/lstm_399/while/lstm_cell_117/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
__inference__traced_save_726060
file_prefix/
+savev2_dense_133_kernel_read_readvariableop-
)savev2_dense_133_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_399_lstm_cell_399_kernel_read_readvariableopF
Bsavev2_lstm_399_lstm_cell_399_recurrent_kernel_read_readvariableop:
6savev2_lstm_399_lstm_cell_399_bias_read_readvariableop<
8savev2_lstm_400_lstm_cell_400_kernel_read_readvariableopF
Bsavev2_lstm_400_lstm_cell_400_recurrent_kernel_read_readvariableop:
6savev2_lstm_400_lstm_cell_400_bias_read_readvariableop<
8savev2_lstm_401_lstm_cell_401_kernel_read_readvariableopF
Bsavev2_lstm_401_lstm_cell_401_recurrent_kernel_read_readvariableop:
6savev2_lstm_401_lstm_cell_401_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_133_kernel_m_read_readvariableop4
0savev2_adam_dense_133_bias_m_read_readvariableopC
?savev2_adam_lstm_399_lstm_cell_399_kernel_m_read_readvariableopM
Isavev2_adam_lstm_399_lstm_cell_399_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_399_lstm_cell_399_bias_m_read_readvariableopC
?savev2_adam_lstm_400_lstm_cell_400_kernel_m_read_readvariableopM
Isavev2_adam_lstm_400_lstm_cell_400_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_400_lstm_cell_400_bias_m_read_readvariableopC
?savev2_adam_lstm_401_lstm_cell_401_kernel_m_read_readvariableopM
Isavev2_adam_lstm_401_lstm_cell_401_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_401_lstm_cell_401_bias_m_read_readvariableop6
2savev2_adam_dense_133_kernel_v_read_readvariableop4
0savev2_adam_dense_133_bias_v_read_readvariableopC
?savev2_adam_lstm_399_lstm_cell_399_kernel_v_read_readvariableopM
Isavev2_adam_lstm_399_lstm_cell_399_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_399_lstm_cell_399_bias_v_read_readvariableopC
?savev2_adam_lstm_400_lstm_cell_400_kernel_v_read_readvariableopM
Isavev2_adam_lstm_400_lstm_cell_400_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_400_lstm_cell_400_bias_v_read_readvariableopC
?savev2_adam_lstm_401_lstm_cell_401_kernel_v_read_readvariableopM
Isavev2_adam_lstm_401_lstm_cell_401_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_401_lstm_cell_401_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_133_kernel_read_readvariableop)savev2_dense_133_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_399_lstm_cell_399_kernel_read_readvariableopBsavev2_lstm_399_lstm_cell_399_recurrent_kernel_read_readvariableop6savev2_lstm_399_lstm_cell_399_bias_read_readvariableop8savev2_lstm_400_lstm_cell_400_kernel_read_readvariableopBsavev2_lstm_400_lstm_cell_400_recurrent_kernel_read_readvariableop6savev2_lstm_400_lstm_cell_400_bias_read_readvariableop8savev2_lstm_401_lstm_cell_401_kernel_read_readvariableopBsavev2_lstm_401_lstm_cell_401_recurrent_kernel_read_readvariableop6savev2_lstm_401_lstm_cell_401_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_133_kernel_m_read_readvariableop0savev2_adam_dense_133_bias_m_read_readvariableop?savev2_adam_lstm_399_lstm_cell_399_kernel_m_read_readvariableopIsavev2_adam_lstm_399_lstm_cell_399_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_399_lstm_cell_399_bias_m_read_readvariableop?savev2_adam_lstm_400_lstm_cell_400_kernel_m_read_readvariableopIsavev2_adam_lstm_400_lstm_cell_400_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_400_lstm_cell_400_bias_m_read_readvariableop?savev2_adam_lstm_401_lstm_cell_401_kernel_m_read_readvariableopIsavev2_adam_lstm_401_lstm_cell_401_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_401_lstm_cell_401_bias_m_read_readvariableop2savev2_adam_dense_133_kernel_v_read_readvariableop0savev2_adam_dense_133_bias_v_read_readvariableop?savev2_adam_lstm_399_lstm_cell_399_kernel_v_read_readvariableopIsavev2_adam_lstm_399_lstm_cell_399_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_399_lstm_cell_399_bias_v_read_readvariableop?savev2_adam_lstm_400_lstm_cell_400_kernel_v_read_readvariableopIsavev2_adam_lstm_400_lstm_cell_400_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_400_lstm_cell_400_bias_v_read_readvariableop?savev2_adam_lstm_401_lstm_cell_401_kernel_v_read_readvariableopIsavev2_adam_lstm_401_lstm_cell_401_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_401_lstm_cell_401_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_724475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_118_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_118_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_118_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_118_matmul_readvariableop_resource:	d?G
4while_lstm_cell_118_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_118_biasadd_readvariableop_resource:	???*while/lstm_cell_118/BiasAdd/ReadVariableOp?)while/lstm_cell_118/MatMul/ReadVariableOp?+while/lstm_cell_118/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_118/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_118_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_118/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_118/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_118/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_118_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_118/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_118/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_118/addAddV2$while/lstm_cell_118/MatMul:product:0&while/lstm_cell_118/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_118/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_118_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_118/BiasAddBiasAddwhile/lstm_cell_118/add:z:02while/lstm_cell_118/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_118/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_118/splitSplit,while/lstm_cell_118/split/split_dim:output:0$while/lstm_cell_118/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_118/SigmoidSigmoid"while/lstm_cell_118/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_1Sigmoid"while/lstm_cell_118/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mulMul!while/lstm_cell_118/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_118/ReluRelu"while/lstm_cell_118/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_1Mulwhile/lstm_cell_118/Sigmoid:y:0&while/lstm_cell_118/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/add_1AddV2while/lstm_cell_118/mul:z:0while/lstm_cell_118/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_118/Sigmoid_2Sigmoid"while/lstm_cell_118/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_118/Relu_1Reluwhile/lstm_cell_118/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_118/mul_2Mul!while/lstm_cell_118/Sigmoid_2:y:0(while/lstm_cell_118/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_118/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_118/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_118/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_118/BiasAdd/ReadVariableOp*^while/lstm_cell_118/MatMul/ReadVariableOp,^while/lstm_cell_118/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_118_biasadd_readvariableop_resource5while_lstm_cell_118_biasadd_readvariableop_resource_0"n
4while_lstm_cell_118_matmul_1_readvariableop_resource6while_lstm_cell_118_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_118_matmul_readvariableop_resource4while_lstm_cell_118_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_118/BiasAdd/ReadVariableOp*while/lstm_cell_118/BiasAdd/ReadVariableOp2V
)while/lstm_cell_118/MatMul/ReadVariableOp)while/lstm_cell_118/MatMul/ReadVariableOp2Z
+while/lstm_cell_118/MatMul_1/ReadVariableOp+while/lstm_cell_118/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_723858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_723858___redundant_placeholder04
0while_while_cond_723858___redundant_placeholder14
0while_while_cond_723858___redundant_placeholder24
0while_while_cond_723858___redundant_placeholder3
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_722087

inputs>
,lstm_cell_119_matmul_readvariableop_resource:2(@
.lstm_cell_119_matmul_1_readvariableop_resource:
(;
-lstm_cell_119_biasadd_readvariableop_resource:(
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
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
while_body_722003*
condR
while_cond_722002*K
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
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_400_while_cond_723526.
*lstm_400_while_lstm_400_while_loop_counter4
0lstm_400_while_lstm_400_while_maximum_iterations
lstm_400_while_placeholder 
lstm_400_while_placeholder_1 
lstm_400_while_placeholder_2 
lstm_400_while_placeholder_30
,lstm_400_while_less_lstm_400_strided_slice_1F
Blstm_400_while_lstm_400_while_cond_723526___redundant_placeholder0F
Blstm_400_while_lstm_400_while_cond_723526___redundant_placeholder1F
Blstm_400_while_lstm_400_while_cond_723526___redundant_placeholder2F
Blstm_400_while_lstm_400_while_cond_723526___redundant_placeholder3
lstm_400_while_identity
?
lstm_400/while/LessLesslstm_400_while_placeholder,lstm_400_while_less_lstm_400_strided_slice_1*
T0*
_output_shapes
: ]
lstm_400/while/IdentityIdentitylstm_400/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_400_while_identity lstm_400/while/Identity:output:0*(
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_725318
inputs_0>
,lstm_cell_119_matmul_readvariableop_resource:2(@
.lstm_cell_119_matmul_1_readvariableop_resource:
(;
-lstm_cell_119_biasadd_readvariableop_resource:(
identity??$lstm_cell_119/BiasAdd/ReadVariableOp?#lstm_cell_119/MatMul/ReadVariableOp?%lstm_cell_119/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_119/MatMul/ReadVariableOpReadVariableOp,lstm_cell_119_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_119/MatMulMatMulstrided_slice_2:output:0+lstm_cell_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_119/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_119_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_119/MatMul_1MatMulzeros:output:0-lstm_cell_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_119/addAddV2lstm_cell_119/MatMul:product:0 lstm_cell_119/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_119/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_119_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_119/BiasAddBiasAddlstm_cell_119/add:z:0,lstm_cell_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_119/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_119/splitSplit&lstm_cell_119/split/split_dim:output:0lstm_cell_119/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_119/SigmoidSigmoidlstm_cell_119/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_1Sigmoidlstm_cell_119/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_119/mulMullstm_cell_119/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_119/ReluRelulstm_cell_119/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_1Mullstm_cell_119/Sigmoid:y:0 lstm_cell_119/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_119/add_1AddV2lstm_cell_119/mul:z:0lstm_cell_119/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_119/Sigmoid_2Sigmoidlstm_cell_119/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_119/Relu_1Relulstm_cell_119/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_119/mul_2Mullstm_cell_119/Sigmoid_2:y:0"lstm_cell_119/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_119_matmul_readvariableop_resource.lstm_cell_119_matmul_1_readvariableop_resource-lstm_cell_119_biasadd_readvariableop_resource*
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
while_body_725234*
condR
while_cond_725233*K
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
NoOpNoOp%^lstm_cell_119/BiasAdd/ReadVariableOp$^lstm_cell_119/MatMul/ReadVariableOp&^lstm_cell_119/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_119/BiasAdd/ReadVariableOp$lstm_cell_119/BiasAdd/ReadVariableOp2J
#lstm_cell_119/MatMul/ReadVariableOp#lstm_cell_119/MatMul/ReadVariableOp2N
%lstm_cell_119/MatMul_1/ReadVariableOp%lstm_cell_119/MatMul_1/ReadVariableOp2
whilewhile:^ Z
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
lstm_399_input;
 serving_default_lstm_399_input:0?????????=
	dense_1330
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
2dense_133/kernel
:2dense_133/bias
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
0:.	?2lstm_399/lstm_cell_399/kernel
::8	d?2'lstm_399/lstm_cell_399/recurrent_kernel
*:(?2lstm_399/lstm_cell_399/bias
0:.	d?2lstm_400/lstm_cell_400/kernel
::8	2?2'lstm_400/lstm_cell_400/recurrent_kernel
*:(?2lstm_400/lstm_cell_400/bias
/:-2(2lstm_401/lstm_cell_401/kernel
9:7
(2'lstm_401/lstm_cell_401/recurrent_kernel
):'(2lstm_401/lstm_cell_401/bias
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
2Adam/dense_133/kernel/m
!:2Adam/dense_133/bias/m
5:3	?2$Adam/lstm_399/lstm_cell_399/kernel/m
?:=	d?2.Adam/lstm_399/lstm_cell_399/recurrent_kernel/m
/:-?2"Adam/lstm_399/lstm_cell_399/bias/m
5:3	d?2$Adam/lstm_400/lstm_cell_400/kernel/m
?:=	2?2.Adam/lstm_400/lstm_cell_400/recurrent_kernel/m
/:-?2"Adam/lstm_400/lstm_cell_400/bias/m
4:22(2$Adam/lstm_401/lstm_cell_401/kernel/m
>:<
(2.Adam/lstm_401/lstm_cell_401/recurrent_kernel/m
.:,(2"Adam/lstm_401/lstm_cell_401/bias/m
':%
2Adam/dense_133/kernel/v
!:2Adam/dense_133/bias/v
5:3	?2$Adam/lstm_399/lstm_cell_399/kernel/v
?:=	d?2.Adam/lstm_399/lstm_cell_399/recurrent_kernel/v
/:-?2"Adam/lstm_399/lstm_cell_399/bias/v
5:3	d?2$Adam/lstm_400/lstm_cell_400/kernel/v
?:=	2?2.Adam/lstm_400/lstm_cell_400/recurrent_kernel/v
/:-?2"Adam/lstm_400/lstm_cell_400/bias/v
4:22(2$Adam/lstm_401/lstm_cell_401/kernel/v
>:<
(2.Adam/lstm_401/lstm_cell_401/recurrent_kernel/v
.:,(2"Adam/lstm_401/lstm_cell_401/bias/v
?2?
/__inference_sequential_133_layer_call_fn_722137
/__inference_sequential_133_layer_call_fn_722875
/__inference_sequential_133_layer_call_fn_722902
/__inference_sequential_133_layer_call_fn_722753?
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_723329
J__inference_sequential_133_layer_call_and_return_conditional_losses_723756
J__inference_sequential_133_layer_call_and_return_conditional_losses_722783
J__inference_sequential_133_layer_call_and_return_conditional_losses_722813?
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
!__inference__wrapped_model_720588lstm_399_input"?
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
)__inference_lstm_399_layer_call_fn_723767
)__inference_lstm_399_layer_call_fn_723778
)__inference_lstm_399_layer_call_fn_723789
)__inference_lstm_399_layer_call_fn_723800?
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_723943
D__inference_lstm_399_layer_call_and_return_conditional_losses_724086
D__inference_lstm_399_layer_call_and_return_conditional_losses_724229
D__inference_lstm_399_layer_call_and_return_conditional_losses_724372?
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
)__inference_lstm_400_layer_call_fn_724383
)__inference_lstm_400_layer_call_fn_724394
)__inference_lstm_400_layer_call_fn_724405
)__inference_lstm_400_layer_call_fn_724416?
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_724559
D__inference_lstm_400_layer_call_and_return_conditional_losses_724702
D__inference_lstm_400_layer_call_and_return_conditional_losses_724845
D__inference_lstm_400_layer_call_and_return_conditional_losses_724988?
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
)__inference_lstm_401_layer_call_fn_724999
)__inference_lstm_401_layer_call_fn_725010
)__inference_lstm_401_layer_call_fn_725021
)__inference_lstm_401_layer_call_fn_725032?
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_725175
D__inference_lstm_401_layer_call_and_return_conditional_losses_725318
D__inference_lstm_401_layer_call_and_return_conditional_losses_725461
D__inference_lstm_401_layer_call_and_return_conditional_losses_725604?
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
*__inference_dense_133_layer_call_fn_725613?
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
E__inference_dense_133_layer_call_and_return_conditional_losses_725623?
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
$__inference_signature_wrapper_722848lstm_399_input"?
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
.__inference_lstm_cell_117_layer_call_fn_725640
.__inference_lstm_cell_117_layer_call_fn_725657?
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_725689
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_725721?
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
.__inference_lstm_cell_118_layer_call_fn_725738
.__inference_lstm_cell_118_layer_call_fn_725755?
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_725787
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_725819?
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
.__inference_lstm_cell_119_layer_call_fn_725836
.__inference_lstm_cell_119_layer_call_fn_725853?
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_725885
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_725917?
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
!__inference__wrapped_model_720588?-./012345!";?8
1?.
,?)
lstm_399_input?????????
? "5?2
0
	dense_133#? 
	dense_133??????????
E__inference_dense_133_layer_call_and_return_conditional_losses_725623\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_133_layer_call_fn_725613O!"/?,
%?"
 ?
inputs?????????

? "???????????
D__inference_lstm_399_layer_call_and_return_conditional_losses_723943?-./O?L
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_724086?-./O?L
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_724229q-./??<
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
D__inference_lstm_399_layer_call_and_return_conditional_losses_724372q-./??<
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
)__inference_lstm_399_layer_call_fn_723767}-./O?L
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
)__inference_lstm_399_layer_call_fn_723778}-./O?L
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
)__inference_lstm_399_layer_call_fn_723789d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
)__inference_lstm_399_layer_call_fn_723800d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
D__inference_lstm_400_layer_call_and_return_conditional_losses_724559?012O?L
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_724702?012O?L
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_724845q012??<
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
D__inference_lstm_400_layer_call_and_return_conditional_losses_724988q012??<
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
)__inference_lstm_400_layer_call_fn_724383}012O?L
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
)__inference_lstm_400_layer_call_fn_724394}012O?L
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
)__inference_lstm_400_layer_call_fn_724405d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
)__inference_lstm_400_layer_call_fn_724416d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
D__inference_lstm_401_layer_call_and_return_conditional_losses_725175}345O?L
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_725318}345O?L
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_725461m345??<
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
D__inference_lstm_401_layer_call_and_return_conditional_losses_725604m345??<
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
)__inference_lstm_401_layer_call_fn_724999p345O?L
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
)__inference_lstm_401_layer_call_fn_725010p345O?L
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
)__inference_lstm_401_layer_call_fn_725021`345??<
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
)__inference_lstm_401_layer_call_fn_725032`345??<
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_725689?-./??}
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
I__inference_lstm_cell_117_layer_call_and_return_conditional_losses_725721?-./??}
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
.__inference_lstm_cell_117_layer_call_fn_725640?-./??}
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
.__inference_lstm_cell_117_layer_call_fn_725657?-./??}
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_725787?012??}
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
I__inference_lstm_cell_118_layer_call_and_return_conditional_losses_725819?012??}
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
.__inference_lstm_cell_118_layer_call_fn_725738?012??}
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
.__inference_lstm_cell_118_layer_call_fn_725755?012??}
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_725885?345??}
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
I__inference_lstm_cell_119_layer_call_and_return_conditional_losses_725917?345??}
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
.__inference_lstm_cell_119_layer_call_fn_725836?345??}
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
.__inference_lstm_cell_119_layer_call_fn_725853?345??}
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_722783y-./012345!"C?@
9?6
,?)
lstm_399_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_133_layer_call_and_return_conditional_losses_722813y-./012345!"C?@
9?6
,?)
lstm_399_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_133_layer_call_and_return_conditional_losses_723329q-./012345!";?8
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
J__inference_sequential_133_layer_call_and_return_conditional_losses_723756q-./012345!";?8
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
/__inference_sequential_133_layer_call_fn_722137l-./012345!"C?@
9?6
,?)
lstm_399_input?????????
p 

 
? "???????????
/__inference_sequential_133_layer_call_fn_722753l-./012345!"C?@
9?6
,?)
lstm_399_input?????????
p

 
? "???????????
/__inference_sequential_133_layer_call_fn_722875d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_133_layer_call_fn_722902d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_722848?-./012345!"M?J
? 
C?@
>
lstm_399_input,?)
lstm_399_input?????????"5?2
0
	dense_133#? 
	dense_133?????????