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
dense_210/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_210/kernel
u
$dense_210/kernel/Read/ReadVariableOpReadVariableOpdense_210/kernel*
_output_shapes

:
*
dtype0
t
dense_210/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_210/bias
m
"dense_210/bias/Read/ReadVariableOpReadVariableOpdense_210/bias*
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
lstm_630/lstm_cell_630/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_630/lstm_cell_630/kernel
?
1lstm_630/lstm_cell_630/kernel/Read/ReadVariableOpReadVariableOplstm_630/lstm_cell_630/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_630/lstm_cell_630/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_630/lstm_cell_630/recurrent_kernel
?
;lstm_630/lstm_cell_630/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_630/lstm_cell_630/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_630/lstm_cell_630/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_630/lstm_cell_630/bias
?
/lstm_630/lstm_cell_630/bias/Read/ReadVariableOpReadVariableOplstm_630/lstm_cell_630/bias*
_output_shapes	
:?*
dtype0
?
lstm_631/lstm_cell_631/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_631/lstm_cell_631/kernel
?
1lstm_631/lstm_cell_631/kernel/Read/ReadVariableOpReadVariableOplstm_631/lstm_cell_631/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_631/lstm_cell_631/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_631/lstm_cell_631/recurrent_kernel
?
;lstm_631/lstm_cell_631/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_631/lstm_cell_631/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_631/lstm_cell_631/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_631/lstm_cell_631/bias
?
/lstm_631/lstm_cell_631/bias/Read/ReadVariableOpReadVariableOplstm_631/lstm_cell_631/bias*
_output_shapes	
:?*
dtype0
?
lstm_632/lstm_cell_632/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_632/lstm_cell_632/kernel
?
1lstm_632/lstm_cell_632/kernel/Read/ReadVariableOpReadVariableOplstm_632/lstm_cell_632/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_632/lstm_cell_632/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_632/lstm_cell_632/recurrent_kernel
?
;lstm_632/lstm_cell_632/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_632/lstm_cell_632/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_632/lstm_cell_632/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_632/lstm_cell_632/bias
?
/lstm_632/lstm_cell_632/bias/Read/ReadVariableOpReadVariableOplstm_632/lstm_cell_632/bias*
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
Adam/dense_210/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_210/kernel/m
?
+Adam/dense_210/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_210/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_210/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_210/bias/m
{
)Adam/dense_210/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_210/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_630/lstm_cell_630/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_630/lstm_cell_630/kernel/m
?
8Adam/lstm_630/lstm_cell_630/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_630/lstm_cell_630/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_630/lstm_cell_630/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_630/lstm_cell_630/recurrent_kernel/m
?
BAdam/lstm_630/lstm_cell_630/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_630/lstm_cell_630/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_630/lstm_cell_630/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_630/lstm_cell_630/bias/m
?
6Adam/lstm_630/lstm_cell_630/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_630/lstm_cell_630/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_631/lstm_cell_631/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_631/lstm_cell_631/kernel/m
?
8Adam/lstm_631/lstm_cell_631/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_631/lstm_cell_631/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_631/lstm_cell_631/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_631/lstm_cell_631/recurrent_kernel/m
?
BAdam/lstm_631/lstm_cell_631/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_631/lstm_cell_631/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_631/lstm_cell_631/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_631/lstm_cell_631/bias/m
?
6Adam/lstm_631/lstm_cell_631/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_631/lstm_cell_631/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_632/lstm_cell_632/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_632/lstm_cell_632/kernel/m
?
8Adam/lstm_632/lstm_cell_632/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_632/lstm_cell_632/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_632/lstm_cell_632/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_632/lstm_cell_632/recurrent_kernel/m
?
BAdam/lstm_632/lstm_cell_632/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_632/lstm_cell_632/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_632/lstm_cell_632/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_632/lstm_cell_632/bias/m
?
6Adam/lstm_632/lstm_cell_632/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_632/lstm_cell_632/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_210/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_210/kernel/v
?
+Adam/dense_210/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_210/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_210/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_210/bias/v
{
)Adam/dense_210/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_210/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_630/lstm_cell_630/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_630/lstm_cell_630/kernel/v
?
8Adam/lstm_630/lstm_cell_630/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_630/lstm_cell_630/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_630/lstm_cell_630/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_630/lstm_cell_630/recurrent_kernel/v
?
BAdam/lstm_630/lstm_cell_630/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_630/lstm_cell_630/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_630/lstm_cell_630/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_630/lstm_cell_630/bias/v
?
6Adam/lstm_630/lstm_cell_630/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_630/lstm_cell_630/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_631/lstm_cell_631/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_631/lstm_cell_631/kernel/v
?
8Adam/lstm_631/lstm_cell_631/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_631/lstm_cell_631/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_631/lstm_cell_631/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_631/lstm_cell_631/recurrent_kernel/v
?
BAdam/lstm_631/lstm_cell_631/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_631/lstm_cell_631/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_631/lstm_cell_631/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_631/lstm_cell_631/bias/v
?
6Adam/lstm_631/lstm_cell_631/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_631/lstm_cell_631/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_632/lstm_cell_632/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_632/lstm_cell_632/kernel/v
?
8Adam/lstm_632/lstm_cell_632/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_632/lstm_cell_632/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_632/lstm_cell_632/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_632/lstm_cell_632/recurrent_kernel/v
?
BAdam/lstm_632/lstm_cell_632/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_632/lstm_cell_632/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_632/lstm_cell_632/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_632/lstm_cell_632/bias/v
?
6Adam/lstm_632/lstm_cell_632/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_632/lstm_cell_632/bias/v*
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
VARIABLE_VALUEdense_210/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_210/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_630/lstm_cell_630/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_630/lstm_cell_630/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_630/lstm_cell_630/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_631/lstm_cell_631/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_631/lstm_cell_631/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_631/lstm_cell_631/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_632/lstm_cell_632/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_632/lstm_cell_632/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_632/lstm_cell_632/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_210/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_210/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_630/lstm_cell_630/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_630/lstm_cell_630/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_630/lstm_cell_630/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_631/lstm_cell_631/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_631/lstm_cell_631/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_631/lstm_cell_631/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_632/lstm_cell_632/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_632/lstm_cell_632/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_632/lstm_cell_632/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_210/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_210/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_630/lstm_cell_630/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_630/lstm_cell_630/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_630/lstm_cell_630/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_631/lstm_cell_631/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_631/lstm_cell_631/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_631/lstm_cell_631/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_632/lstm_cell_632/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_632/lstm_cell_632/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_632/lstm_cell_632/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_630_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_630_inputlstm_630/lstm_cell_630/kernel'lstm_630/lstm_cell_630/recurrent_kernellstm_630/lstm_cell_630/biaslstm_631/lstm_cell_631/kernel'lstm_631/lstm_cell_631/recurrent_kernellstm_631/lstm_cell_631/biaslstm_632/lstm_cell_632/kernel'lstm_632/lstm_cell_632/recurrent_kernellstm_632/lstm_cell_632/biasdense_210/kerneldense_210/bias*
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
%__inference_signature_wrapper_3662572
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_210/kernel/Read/ReadVariableOp"dense_210/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_630/lstm_cell_630/kernel/Read/ReadVariableOp;lstm_630/lstm_cell_630/recurrent_kernel/Read/ReadVariableOp/lstm_630/lstm_cell_630/bias/Read/ReadVariableOp1lstm_631/lstm_cell_631/kernel/Read/ReadVariableOp;lstm_631/lstm_cell_631/recurrent_kernel/Read/ReadVariableOp/lstm_631/lstm_cell_631/bias/Read/ReadVariableOp1lstm_632/lstm_cell_632/kernel/Read/ReadVariableOp;lstm_632/lstm_cell_632/recurrent_kernel/Read/ReadVariableOp/lstm_632/lstm_cell_632/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_210/kernel/m/Read/ReadVariableOp)Adam/dense_210/bias/m/Read/ReadVariableOp8Adam/lstm_630/lstm_cell_630/kernel/m/Read/ReadVariableOpBAdam/lstm_630/lstm_cell_630/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_630/lstm_cell_630/bias/m/Read/ReadVariableOp8Adam/lstm_631/lstm_cell_631/kernel/m/Read/ReadVariableOpBAdam/lstm_631/lstm_cell_631/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_631/lstm_cell_631/bias/m/Read/ReadVariableOp8Adam/lstm_632/lstm_cell_632/kernel/m/Read/ReadVariableOpBAdam/lstm_632/lstm_cell_632/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_632/lstm_cell_632/bias/m/Read/ReadVariableOp+Adam/dense_210/kernel/v/Read/ReadVariableOp)Adam/dense_210/bias/v/Read/ReadVariableOp8Adam/lstm_630/lstm_cell_630/kernel/v/Read/ReadVariableOpBAdam/lstm_630/lstm_cell_630/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_630/lstm_cell_630/bias/v/Read/ReadVariableOp8Adam/lstm_631/lstm_cell_631/kernel/v/Read/ReadVariableOpBAdam/lstm_631/lstm_cell_631/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_631/lstm_cell_631/bias/v/Read/ReadVariableOp8Adam/lstm_632/lstm_cell_632/kernel/v/Read/ReadVariableOpBAdam/lstm_632/lstm_cell_632/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_632/lstm_cell_632/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3665784
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_210/kerneldense_210/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_630/lstm_cell_630/kernel'lstm_630/lstm_cell_630/recurrent_kernellstm_630/lstm_cell_630/biaslstm_631/lstm_cell_631/kernel'lstm_631/lstm_cell_631/recurrent_kernellstm_631/lstm_cell_631/biaslstm_632/lstm_cell_632/kernel'lstm_632/lstm_cell_632/recurrent_kernellstm_632/lstm_cell_632/biastotalcountAdam/dense_210/kernel/mAdam/dense_210/bias/m$Adam/lstm_630/lstm_cell_630/kernel/m.Adam/lstm_630/lstm_cell_630/recurrent_kernel/m"Adam/lstm_630/lstm_cell_630/bias/m$Adam/lstm_631/lstm_cell_631/kernel/m.Adam/lstm_631/lstm_cell_631/recurrent_kernel/m"Adam/lstm_631/lstm_cell_631/bias/m$Adam/lstm_632/lstm_cell_632/kernel/m.Adam/lstm_632/lstm_cell_632/recurrent_kernel/m"Adam/lstm_632/lstm_cell_632/bias/mAdam/dense_210/kernel/vAdam/dense_210/bias/v$Adam/lstm_630/lstm_cell_630/kernel/v.Adam/lstm_630/lstm_cell_630/recurrent_kernel/v"Adam/lstm_630/lstm_cell_630/bias/v$Adam/lstm_631/lstm_cell_631/kernel/v.Adam/lstm_631/lstm_cell_631/recurrent_kernel/v"Adam/lstm_631/lstm_cell_631/bias/v$Adam/lstm_632/lstm_cell_632/kernel/v.Adam/lstm_632/lstm_cell_632/recurrent_kernel/v"Adam/lstm_632/lstm_cell_632/bias/v*4
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
#__inference__traced_restore_3665914??+
?
?
/__inference_lstm_cell_603_layer_call_fn_3665364

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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660379o
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
?T
?
*sequential_210_lstm_630_while_body_3659944L
Hsequential_210_lstm_630_while_sequential_210_lstm_630_while_loop_counterR
Nsequential_210_lstm_630_while_sequential_210_lstm_630_while_maximum_iterations-
)sequential_210_lstm_630_while_placeholder/
+sequential_210_lstm_630_while_placeholder_1/
+sequential_210_lstm_630_while_placeholder_2/
+sequential_210_lstm_630_while_placeholder_3K
Gsequential_210_lstm_630_while_sequential_210_lstm_630_strided_slice_1_0?
?sequential_210_lstm_630_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_630_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_210_lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0:	?a
Nsequential_210_lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?\
Msequential_210_lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0:	?*
&sequential_210_lstm_630_while_identity,
(sequential_210_lstm_630_while_identity_1,
(sequential_210_lstm_630_while_identity_2,
(sequential_210_lstm_630_while_identity_3,
(sequential_210_lstm_630_while_identity_4,
(sequential_210_lstm_630_while_identity_5I
Esequential_210_lstm_630_while_sequential_210_lstm_630_strided_slice_1?
?sequential_210_lstm_630_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_630_tensorarrayunstack_tensorlistfromtensor]
Jsequential_210_lstm_630_while_lstm_cell_603_matmul_readvariableop_resource:	?_
Lsequential_210_lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource:	d?Z
Ksequential_210_lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource:	???Bsequential_210/lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp?Asequential_210/lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp?Csequential_210/lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp?
Osequential_210/lstm_630/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_210/lstm_630/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_210_lstm_630_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_630_tensorarrayunstack_tensorlistfromtensor_0)sequential_210_lstm_630_while_placeholderXsequential_210/lstm_630/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_210/lstm_630/while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOpLsequential_210_lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_210/lstm_630/while/lstm_cell_603/MatMulMatMulHsequential_210/lstm_630/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_210/lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_210/lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOpNsequential_210_lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_210/lstm_630/while/lstm_cell_603/MatMul_1MatMul+sequential_210_lstm_630_while_placeholder_2Ksequential_210/lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_210/lstm_630/while/lstm_cell_603/addAddV2<sequential_210/lstm_630/while/lstm_cell_603/MatMul:product:0>sequential_210/lstm_630/while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_210/lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOpMsequential_210_lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_210/lstm_630/while/lstm_cell_603/BiasAddBiasAdd3sequential_210/lstm_630/while/lstm_cell_603/add:z:0Jsequential_210/lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_210/lstm_630/while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_210/lstm_630/while/lstm_cell_603/splitSplitDsequential_210/lstm_630/while/lstm_cell_603/split/split_dim:output:0<sequential_210/lstm_630/while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_210/lstm_630/while/lstm_cell_603/SigmoidSigmoid:sequential_210/lstm_630/while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_210/lstm_630/while/lstm_cell_603/Sigmoid_1Sigmoid:sequential_210/lstm_630/while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_210/lstm_630/while/lstm_cell_603/mulMul9sequential_210/lstm_630/while/lstm_cell_603/Sigmoid_1:y:0+sequential_210_lstm_630_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_210/lstm_630/while/lstm_cell_603/ReluRelu:sequential_210/lstm_630/while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_210/lstm_630/while/lstm_cell_603/mul_1Mul7sequential_210/lstm_630/while/lstm_cell_603/Sigmoid:y:0>sequential_210/lstm_630/while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_210/lstm_630/while/lstm_cell_603/add_1AddV23sequential_210/lstm_630/while/lstm_cell_603/mul:z:05sequential_210/lstm_630/while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_210/lstm_630/while/lstm_cell_603/Sigmoid_2Sigmoid:sequential_210/lstm_630/while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_210/lstm_630/while/lstm_cell_603/Relu_1Relu5sequential_210/lstm_630/while/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_210/lstm_630/while/lstm_cell_603/mul_2Mul9sequential_210/lstm_630/while/lstm_cell_603/Sigmoid_2:y:0@sequential_210/lstm_630/while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_210/lstm_630/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_210_lstm_630_while_placeholder_1)sequential_210_lstm_630_while_placeholder5sequential_210/lstm_630/while/lstm_cell_603/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_210/lstm_630/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_210/lstm_630/while/addAddV2)sequential_210_lstm_630_while_placeholder,sequential_210/lstm_630/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_210/lstm_630/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_210/lstm_630/while/add_1AddV2Hsequential_210_lstm_630_while_sequential_210_lstm_630_while_loop_counter.sequential_210/lstm_630/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_210/lstm_630/while/IdentityIdentity'sequential_210/lstm_630/while/add_1:z:0#^sequential_210/lstm_630/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_630/while/Identity_1IdentityNsequential_210_lstm_630_while_sequential_210_lstm_630_while_maximum_iterations#^sequential_210/lstm_630/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_630/while/Identity_2Identity%sequential_210/lstm_630/while/add:z:0#^sequential_210/lstm_630/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_630/while/Identity_3IdentityRsequential_210/lstm_630/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_210/lstm_630/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_630/while/Identity_4Identity5sequential_210/lstm_630/while/lstm_cell_603/mul_2:z:0#^sequential_210/lstm_630/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_210/lstm_630/while/Identity_5Identity5sequential_210/lstm_630/while/lstm_cell_603/add_1:z:0#^sequential_210/lstm_630/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_210/lstm_630/while/NoOpNoOpC^sequential_210/lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOpB^sequential_210/lstm_630/while/lstm_cell_603/MatMul/ReadVariableOpD^sequential_210/lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_210_lstm_630_while_identity/sequential_210/lstm_630/while/Identity:output:0"]
(sequential_210_lstm_630_while_identity_11sequential_210/lstm_630/while/Identity_1:output:0"]
(sequential_210_lstm_630_while_identity_21sequential_210/lstm_630/while/Identity_2:output:0"]
(sequential_210_lstm_630_while_identity_31sequential_210/lstm_630/while/Identity_3:output:0"]
(sequential_210_lstm_630_while_identity_41sequential_210/lstm_630/while/Identity_4:output:0"]
(sequential_210_lstm_630_while_identity_51sequential_210/lstm_630/while/Identity_5:output:0"?
Ksequential_210_lstm_630_while_lstm_cell_603_biasadd_readvariableop_resourceMsequential_210_lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0"?
Lsequential_210_lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resourceNsequential_210_lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0"?
Jsequential_210_lstm_630_while_lstm_cell_603_matmul_readvariableop_resourceLsequential_210_lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0"?
Esequential_210_lstm_630_while_sequential_210_lstm_630_strided_slice_1Gsequential_210_lstm_630_while_sequential_210_lstm_630_strided_slice_1_0"?
?sequential_210_lstm_630_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_630_tensorarrayunstack_tensorlistfromtensor?sequential_210_lstm_630_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_630_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_210/lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOpBsequential_210/lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp2?
Asequential_210/lstm_630/while/lstm_cell_603/MatMul/ReadVariableOpAsequential_210/lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp2?
Csequential_210/lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOpCsequential_210/lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3665543

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

lstm_632_while_body_3663390.
*lstm_632_while_lstm_632_while_loop_counter4
0lstm_632_while_lstm_632_while_maximum_iterations
lstm_632_while_placeholder 
lstm_632_while_placeholder_1 
lstm_632_while_placeholder_2 
lstm_632_while_placeholder_3-
)lstm_632_while_lstm_632_strided_slice_1_0i
elstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0:2(Q
?lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(L
>lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0:(
lstm_632_while_identity
lstm_632_while_identity_1
lstm_632_while_identity_2
lstm_632_while_identity_3
lstm_632_while_identity_4
lstm_632_while_identity_5+
'lstm_632_while_lstm_632_strided_slice_1g
clstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensorM
;lstm_632_while_lstm_cell_605_matmul_readvariableop_resource:2(O
=lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource:
(J
<lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource:(??3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp?2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp?4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp?
@lstm_632/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_632/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensor_0lstm_632_while_placeholderIlstm_632/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp=lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_632/while/lstm_cell_605/MatMulMatMul9lstm_632/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp?lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_632/while/lstm_cell_605/MatMul_1MatMullstm_632_while_placeholder_2<lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_632/while/lstm_cell_605/addAddV2-lstm_632/while/lstm_cell_605/MatMul:product:0/lstm_632/while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp>lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_632/while/lstm_cell_605/BiasAddBiasAdd$lstm_632/while/lstm_cell_605/add:z:0;lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_632/while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_632/while/lstm_cell_605/splitSplit5lstm_632/while/lstm_cell_605/split/split_dim:output:0-lstm_632/while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_632/while/lstm_cell_605/SigmoidSigmoid+lstm_632/while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_632/while/lstm_cell_605/Sigmoid_1Sigmoid+lstm_632/while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_632/while/lstm_cell_605/mulMul*lstm_632/while/lstm_cell_605/Sigmoid_1:y:0lstm_632_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_632/while/lstm_cell_605/ReluRelu+lstm_632/while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_632/while/lstm_cell_605/mul_1Mul(lstm_632/while/lstm_cell_605/Sigmoid:y:0/lstm_632/while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_632/while/lstm_cell_605/add_1AddV2$lstm_632/while/lstm_cell_605/mul:z:0&lstm_632/while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_632/while/lstm_cell_605/Sigmoid_2Sigmoid+lstm_632/while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_632/while/lstm_cell_605/Relu_1Relu&lstm_632/while/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_632/while/lstm_cell_605/mul_2Mul*lstm_632/while/lstm_cell_605/Sigmoid_2:y:01lstm_632/while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_632/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_632_while_placeholder_1lstm_632_while_placeholder&lstm_632/while/lstm_cell_605/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_632/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_632/while/addAddV2lstm_632_while_placeholderlstm_632/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_632/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_632/while/add_1AddV2*lstm_632_while_lstm_632_while_loop_counterlstm_632/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_632/while/IdentityIdentitylstm_632/while/add_1:z:0^lstm_632/while/NoOp*
T0*
_output_shapes
: ?
lstm_632/while/Identity_1Identity0lstm_632_while_lstm_632_while_maximum_iterations^lstm_632/while/NoOp*
T0*
_output_shapes
: t
lstm_632/while/Identity_2Identitylstm_632/while/add:z:0^lstm_632/while/NoOp*
T0*
_output_shapes
: ?
lstm_632/while/Identity_3IdentityClstm_632/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_632/while/NoOp*
T0*
_output_shapes
: ?
lstm_632/while/Identity_4Identity&lstm_632/while/lstm_cell_605/mul_2:z:0^lstm_632/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_632/while/Identity_5Identity&lstm_632/while/lstm_cell_605/add_1:z:0^lstm_632/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_632/while/NoOpNoOp4^lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp3^lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp5^lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_632_while_identity lstm_632/while/Identity:output:0"?
lstm_632_while_identity_1"lstm_632/while/Identity_1:output:0"?
lstm_632_while_identity_2"lstm_632/while/Identity_2:output:0"?
lstm_632_while_identity_3"lstm_632/while/Identity_3:output:0"?
lstm_632_while_identity_4"lstm_632/while/Identity_4:output:0"?
lstm_632_while_identity_5"lstm_632/while/Identity_5:output:0"T
'lstm_632_while_lstm_632_strided_slice_1)lstm_632_while_lstm_632_strided_slice_1_0"~
<lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource>lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0"?
=lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource?lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0"|
;lstm_632_while_lstm_cell_605_matmul_readvariableop_resource=lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0"?
clstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensorelstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp2h
2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp2l
4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664283
inputs_0?
,lstm_cell_604_matmul_readvariableop_resource:	d?A
.lstm_cell_604_matmul_1_readvariableop_resource:	2?<
-lstm_cell_604_biasadd_readvariableop_resource:	?
identity??$lstm_cell_604/BiasAdd/ReadVariableOp?#lstm_cell_604/MatMul/ReadVariableOp?%lstm_cell_604/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_604/MatMul/ReadVariableOpReadVariableOp,lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_604/MatMulMatMulstrided_slice_2:output:0+lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_604/MatMul_1MatMulzeros:output:0-lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_604/addAddV2lstm_cell_604/MatMul:product:0 lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_604/BiasAddBiasAddlstm_cell_604/add:z:0,lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_604/splitSplit&lstm_cell_604/split/split_dim:output:0lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_604/SigmoidSigmoidlstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_1Sigmoidlstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_604/mulMullstm_cell_604/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_604/ReluRelulstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_1Mullstm_cell_604/Sigmoid:y:0 lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_604/add_1AddV2lstm_cell_604/mul:z:0lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_2Sigmoidlstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_604/Relu_1Relulstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_2Mullstm_cell_604/Sigmoid_2:y:0"lstm_cell_604/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_604_matmul_readvariableop_resource.lstm_cell_604_matmul_1_readvariableop_resource-lstm_cell_604_biasadd_readvariableop_resource*
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
while_body_3664199*
condR
while_cond_3664198*K
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
NoOpNoOp%^lstm_cell_604/BiasAdd/ReadVariableOp$^lstm_cell_604/MatMul/ReadVariableOp&^lstm_cell_604/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_604/BiasAdd/ReadVariableOp$lstm_cell_604/BiasAdd/ReadVariableOp2J
#lstm_cell_604/MatMul/ReadVariableOp#lstm_cell_604/MatMul/ReadVariableOp2N
%lstm_cell_604/MatMul_1/ReadVariableOp%lstm_cell_604/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_631_layer_call_and_return_conditional_losses_3661003

inputs(
lstm_cell_604_3660921:	d?(
lstm_cell_604_3660923:	2?$
lstm_cell_604_3660925:	?
identity??%lstm_cell_604/StatefulPartitionedCall?while;
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
%lstm_cell_604/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_604_3660921lstm_cell_604_3660923lstm_cell_604_3660925*
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660875n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_604_3660921lstm_cell_604_3660923lstm_cell_604_3660925*
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
while_body_3660934*
condR
while_cond_3660933*K
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
NoOpNoOp&^lstm_cell_604/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_604/StatefulPartitionedCall%lstm_cell_604/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3661092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3661092___redundant_placeholder05
1while_while_cond_3661092___redundant_placeholder15
1while_while_cond_3661092___redundant_placeholder25
1while_while_cond_3661092___redundant_placeholder3
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3660812

inputs(
lstm_cell_604_3660730:	d?(
lstm_cell_604_3660732:	2?$
lstm_cell_604_3660734:	?
identity??%lstm_cell_604/StatefulPartitionedCall?while;
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
%lstm_cell_604/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_604_3660730lstm_cell_604_3660732lstm_cell_604_3660734*
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660729n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_604_3660730lstm_cell_604_3660732lstm_cell_604_3660734*
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
while_body_3660743*
condR
while_cond_3660742*K
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
NoOpNoOp&^lstm_cell_604/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_604/StatefulPartitionedCall%lstm_cell_604/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_632_while_cond_3662962.
*lstm_632_while_lstm_632_while_loop_counter4
0lstm_632_while_lstm_632_while_maximum_iterations
lstm_632_while_placeholder 
lstm_632_while_placeholder_1 
lstm_632_while_placeholder_2 
lstm_632_while_placeholder_30
,lstm_632_while_less_lstm_632_strided_slice_1G
Clstm_632_while_lstm_632_while_cond_3662962___redundant_placeholder0G
Clstm_632_while_lstm_632_while_cond_3662962___redundant_placeholder1G
Clstm_632_while_lstm_632_while_cond_3662962___redundant_placeholder2G
Clstm_632_while_lstm_632_while_cond_3662962___redundant_placeholder3
lstm_632_while_identity
?
lstm_632/while/LessLesslstm_632_while_placeholder,lstm_632_while_less_lstm_632_strided_slice_1*
T0*
_output_shapes
: ]
lstm_632/while/IdentityIdentitylstm_632/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_632_while_identity lstm_632/while/Identity:output:0*(
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
while_body_3661427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_603_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_603_matmul_readvariableop_resource:	?G
4while_lstm_cell_603_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_603_biasadd_readvariableop_resource:	???*while/lstm_cell_603/BiasAdd/ReadVariableOp?)while/lstm_cell_603/MatMul/ReadVariableOp?+while/lstm_cell_603/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_603/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_603/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_603/addAddV2$while/lstm_cell_603/MatMul:product:0&while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_603/BiasAddBiasAddwhile/lstm_cell_603/add:z:02while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_603/splitSplit,while/lstm_cell_603/split/split_dim:output:0$while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_603/SigmoidSigmoid"while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_1Sigmoid"while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mulMul!while/lstm_cell_603/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_603/ReluRelu"while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_1Mulwhile/lstm_cell_603/Sigmoid:y:0&while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/add_1AddV2while/lstm_cell_603/mul:z:0while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_2Sigmoid"while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_603/Relu_1Reluwhile/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_2Mul!while/lstm_cell_603/Sigmoid_2:y:0(while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_603/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_603/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_603/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_603/BiasAdd/ReadVariableOp*^while/lstm_cell_603/MatMul/ReadVariableOp,^while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_603_biasadd_readvariableop_resource5while_lstm_cell_603_biasadd_readvariableop_resource_0"n
4while_lstm_cell_603_matmul_1_readvariableop_resource6while_lstm_cell_603_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_603_matmul_readvariableop_resource4while_lstm_cell_603_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_603/BiasAdd/ReadVariableOp*while/lstm_cell_603/BiasAdd/ReadVariableOp2V
)while/lstm_cell_603/MatMul/ReadVariableOp)while/lstm_cell_603/MatMul/ReadVariableOp2Z
+while/lstm_cell_603/MatMul_1/ReadVariableOp+while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3664815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_605_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_605_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_605_matmul_readvariableop_resource:2(F
4while_lstm_cell_605_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_605_biasadd_readvariableop_resource:(??*while/lstm_cell_605/BiasAdd/ReadVariableOp?)while/lstm_cell_605/MatMul/ReadVariableOp?+while/lstm_cell_605/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_605/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_605/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_605/addAddV2$while/lstm_cell_605/MatMul:product:0&while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_605/BiasAddBiasAddwhile/lstm_cell_605/add:z:02while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_605/splitSplit,while/lstm_cell_605/split/split_dim:output:0$while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_605/SigmoidSigmoid"while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_1Sigmoid"while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mulMul!while/lstm_cell_605/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_605/ReluRelu"while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_1Mulwhile/lstm_cell_605/Sigmoid:y:0&while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/add_1AddV2while/lstm_cell_605/mul:z:0while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_2Sigmoid"while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_605/Relu_1Reluwhile/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_2Mul!while/lstm_cell_605/Sigmoid_2:y:0(while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_605/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_605/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_605/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_605/BiasAdd/ReadVariableOp*^while/lstm_cell_605/MatMul/ReadVariableOp,^while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_605_biasadd_readvariableop_resource5while_lstm_cell_605_biasadd_readvariableop_resource_0"n
4while_lstm_cell_605_matmul_1_readvariableop_resource6while_lstm_cell_605_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_605_matmul_readvariableop_resource4while_lstm_cell_605_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_605/BiasAdd/ReadVariableOp*while/lstm_cell_605/BiasAdd/ReadVariableOp2V
)while/lstm_cell_605/MatMul/ReadVariableOp)while/lstm_cell_605/MatMul/ReadVariableOp2Z
+while/lstm_cell_605/MatMul_1/ReadVariableOp+while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_631_while_body_3662824.
*lstm_631_while_lstm_631_while_loop_counter4
0lstm_631_while_lstm_631_while_maximum_iterations
lstm_631_while_placeholder 
lstm_631_while_placeholder_1 
lstm_631_while_placeholder_2 
lstm_631_while_placeholder_3-
)lstm_631_while_lstm_631_strided_slice_1_0i
elstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0:	d?R
?lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?M
>lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
lstm_631_while_identity
lstm_631_while_identity_1
lstm_631_while_identity_2
lstm_631_while_identity_3
lstm_631_while_identity_4
lstm_631_while_identity_5+
'lstm_631_while_lstm_631_strided_slice_1g
clstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensorN
;lstm_631_while_lstm_cell_604_matmul_readvariableop_resource:	d?P
=lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource:	2?K
<lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource:	???3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp?2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp?4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp?
@lstm_631/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_631/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensor_0lstm_631_while_placeholderIlstm_631/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp=lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_631/while/lstm_cell_604/MatMulMatMul9lstm_631/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp?lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_631/while/lstm_cell_604/MatMul_1MatMullstm_631_while_placeholder_2<lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_631/while/lstm_cell_604/addAddV2-lstm_631/while/lstm_cell_604/MatMul:product:0/lstm_631/while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp>lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_631/while/lstm_cell_604/BiasAddBiasAdd$lstm_631/while/lstm_cell_604/add:z:0;lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_631/while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_631/while/lstm_cell_604/splitSplit5lstm_631/while/lstm_cell_604/split/split_dim:output:0-lstm_631/while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_631/while/lstm_cell_604/SigmoidSigmoid+lstm_631/while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_631/while/lstm_cell_604/Sigmoid_1Sigmoid+lstm_631/while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_631/while/lstm_cell_604/mulMul*lstm_631/while/lstm_cell_604/Sigmoid_1:y:0lstm_631_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_631/while/lstm_cell_604/ReluRelu+lstm_631/while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_631/while/lstm_cell_604/mul_1Mul(lstm_631/while/lstm_cell_604/Sigmoid:y:0/lstm_631/while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_631/while/lstm_cell_604/add_1AddV2$lstm_631/while/lstm_cell_604/mul:z:0&lstm_631/while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_631/while/lstm_cell_604/Sigmoid_2Sigmoid+lstm_631/while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_631/while/lstm_cell_604/Relu_1Relu&lstm_631/while/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_631/while/lstm_cell_604/mul_2Mul*lstm_631/while/lstm_cell_604/Sigmoid_2:y:01lstm_631/while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_631/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_631_while_placeholder_1lstm_631_while_placeholder&lstm_631/while/lstm_cell_604/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_631/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_631/while/addAddV2lstm_631_while_placeholderlstm_631/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_631/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_631/while/add_1AddV2*lstm_631_while_lstm_631_while_loop_counterlstm_631/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_631/while/IdentityIdentitylstm_631/while/add_1:z:0^lstm_631/while/NoOp*
T0*
_output_shapes
: ?
lstm_631/while/Identity_1Identity0lstm_631_while_lstm_631_while_maximum_iterations^lstm_631/while/NoOp*
T0*
_output_shapes
: t
lstm_631/while/Identity_2Identitylstm_631/while/add:z:0^lstm_631/while/NoOp*
T0*
_output_shapes
: ?
lstm_631/while/Identity_3IdentityClstm_631/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_631/while/NoOp*
T0*
_output_shapes
: ?
lstm_631/while/Identity_4Identity&lstm_631/while/lstm_cell_604/mul_2:z:0^lstm_631/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_631/while/Identity_5Identity&lstm_631/while/lstm_cell_604/add_1:z:0^lstm_631/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_631/while/NoOpNoOp4^lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp3^lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp5^lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_631_while_identity lstm_631/while/Identity:output:0"?
lstm_631_while_identity_1"lstm_631/while/Identity_1:output:0"?
lstm_631_while_identity_2"lstm_631/while/Identity_2:output:0"?
lstm_631_while_identity_3"lstm_631/while/Identity_3:output:0"?
lstm_631_while_identity_4"lstm_631/while/Identity_4:output:0"?
lstm_631_while_identity_5"lstm_631/while/Identity_5:output:0"T
'lstm_631_while_lstm_631_strided_slice_1)lstm_631_while_lstm_631_strided_slice_1_0"~
<lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource>lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0"?
=lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource?lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0"|
;lstm_631_while_lstm_cell_604_matmul_readvariableop_resource=lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0"?
clstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensorelstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp2h
2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp2l
4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3662572
lstm_630_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_630_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3660312o
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
_user_specified_namelstm_630_input
?

?
lstm_632_while_cond_3663389.
*lstm_632_while_lstm_632_while_loop_counter4
0lstm_632_while_lstm_632_while_maximum_iterations
lstm_632_while_placeholder 
lstm_632_while_placeholder_1 
lstm_632_while_placeholder_2 
lstm_632_while_placeholder_30
,lstm_632_while_less_lstm_632_strided_slice_1G
Clstm_632_while_lstm_632_while_cond_3663389___redundant_placeholder0G
Clstm_632_while_lstm_632_while_cond_3663389___redundant_placeholder1G
Clstm_632_while_lstm_632_while_cond_3663389___redundant_placeholder2G
Clstm_632_while_lstm_632_while_cond_3663389___redundant_placeholder3
lstm_632_while_identity
?
lstm_632/while/LessLesslstm_632_while_placeholder,lstm_632_while_less_lstm_632_strided_slice_1*
T0*
_output_shapes
: ]
lstm_632/while/IdentityIdentitylstm_632/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_632_while_identity lstm_632/while/Identity:output:0*(
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664569

inputs?
,lstm_cell_604_matmul_readvariableop_resource:	d?A
.lstm_cell_604_matmul_1_readvariableop_resource:	2?<
-lstm_cell_604_biasadd_readvariableop_resource:	?
identity??$lstm_cell_604/BiasAdd/ReadVariableOp?#lstm_cell_604/MatMul/ReadVariableOp?%lstm_cell_604/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_604/MatMul/ReadVariableOpReadVariableOp,lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_604/MatMulMatMulstrided_slice_2:output:0+lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_604/MatMul_1MatMulzeros:output:0-lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_604/addAddV2lstm_cell_604/MatMul:product:0 lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_604/BiasAddBiasAddlstm_cell_604/add:z:0,lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_604/splitSplit&lstm_cell_604/split/split_dim:output:0lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_604/SigmoidSigmoidlstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_1Sigmoidlstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_604/mulMullstm_cell_604/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_604/ReluRelulstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_1Mullstm_cell_604/Sigmoid:y:0 lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_604/add_1AddV2lstm_cell_604/mul:z:0lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_2Sigmoidlstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_604/Relu_1Relulstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_2Mullstm_cell_604/Sigmoid_2:y:0"lstm_cell_604/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_604_matmul_readvariableop_resource.lstm_cell_604_matmul_1_readvariableop_resource-lstm_cell_604_biasadd_readvariableop_resource*
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
while_body_3664485*
condR
while_cond_3664484*K
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
NoOpNoOp%^lstm_cell_604/BiasAdd/ReadVariableOp$^lstm_cell_604/MatMul/ReadVariableOp&^lstm_cell_604/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_604/BiasAdd/ReadVariableOp$lstm_cell_604/BiasAdd/ReadVariableOp2J
#lstm_cell_604/MatMul/ReadVariableOp#lstm_cell_604/MatMul/ReadVariableOp2N
%lstm_cell_604/MatMul_1/ReadVariableOp%lstm_cell_604/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_603_layer_call_fn_3665381

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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660525o
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
*sequential_210_lstm_632_while_cond_3660221L
Hsequential_210_lstm_632_while_sequential_210_lstm_632_while_loop_counterR
Nsequential_210_lstm_632_while_sequential_210_lstm_632_while_maximum_iterations-
)sequential_210_lstm_632_while_placeholder/
+sequential_210_lstm_632_while_placeholder_1/
+sequential_210_lstm_632_while_placeholder_2/
+sequential_210_lstm_632_while_placeholder_3N
Jsequential_210_lstm_632_while_less_sequential_210_lstm_632_strided_slice_1e
asequential_210_lstm_632_while_sequential_210_lstm_632_while_cond_3660221___redundant_placeholder0e
asequential_210_lstm_632_while_sequential_210_lstm_632_while_cond_3660221___redundant_placeholder1e
asequential_210_lstm_632_while_sequential_210_lstm_632_while_cond_3660221___redundant_placeholder2e
asequential_210_lstm_632_while_sequential_210_lstm_632_while_cond_3660221___redundant_placeholder3*
&sequential_210_lstm_632_while_identity
?
"sequential_210/lstm_632/while/LessLess)sequential_210_lstm_632_while_placeholderJsequential_210_lstm_632_while_less_sequential_210_lstm_632_strided_slice_1*
T0*
_output_shapes
: {
&sequential_210/lstm_632/while/IdentityIdentity&sequential_210/lstm_632/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_210_lstm_632_while_identity/sequential_210/lstm_632/while/Identity:output:0*(
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3664096

inputs?
,lstm_cell_603_matmul_readvariableop_resource:	?A
.lstm_cell_603_matmul_1_readvariableop_resource:	d?<
-lstm_cell_603_biasadd_readvariableop_resource:	?
identity??$lstm_cell_603/BiasAdd/ReadVariableOp?#lstm_cell_603/MatMul/ReadVariableOp?%lstm_cell_603/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_603/MatMul/ReadVariableOpReadVariableOp,lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_603/MatMulMatMulstrided_slice_2:output:0+lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_603/MatMul_1MatMulzeros:output:0-lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_603/addAddV2lstm_cell_603/MatMul:product:0 lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_603/BiasAddBiasAddlstm_cell_603/add:z:0,lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_603/splitSplit&lstm_cell_603/split/split_dim:output:0lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_603/SigmoidSigmoidlstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_1Sigmoidlstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_603/mulMullstm_cell_603/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_603/ReluRelulstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_1Mullstm_cell_603/Sigmoid:y:0 lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_603/add_1AddV2lstm_cell_603/mul:z:0lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_2Sigmoidlstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_603/Relu_1Relulstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_2Mullstm_cell_603/Sigmoid_2:y:0"lstm_cell_603/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_603_matmul_readvariableop_resource.lstm_cell_603_matmul_1_readvariableop_resource-lstm_cell_603_biasadd_readvariableop_resource*
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
while_body_3664012*
condR
while_cond_3664011*K
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
NoOpNoOp%^lstm_cell_603/BiasAdd/ReadVariableOp$^lstm_cell_603/MatMul/ReadVariableOp&^lstm_cell_603/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_603/BiasAdd/ReadVariableOp$lstm_cell_603/BiasAdd/ReadVariableOp2J
#lstm_cell_603/MatMul/ReadVariableOp#lstm_cell_603/MatMul/ReadVariableOp2N
%lstm_cell_603/MatMul_1/ReadVariableOp%lstm_cell_603/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665042
inputs_0>
,lstm_cell_605_matmul_readvariableop_resource:2(@
.lstm_cell_605_matmul_1_readvariableop_resource:
(;
-lstm_cell_605_biasadd_readvariableop_resource:(
identity??$lstm_cell_605/BiasAdd/ReadVariableOp?#lstm_cell_605/MatMul/ReadVariableOp?%lstm_cell_605/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_605/MatMul/ReadVariableOpReadVariableOp,lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_605/MatMulMatMulstrided_slice_2:output:0+lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_605/MatMul_1MatMulzeros:output:0-lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_605/addAddV2lstm_cell_605/MatMul:product:0 lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_605/BiasAddBiasAddlstm_cell_605/add:z:0,lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_605/splitSplit&lstm_cell_605/split/split_dim:output:0lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_605/SigmoidSigmoidlstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_1Sigmoidlstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_605/mulMullstm_cell_605/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_605/ReluRelulstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_1Mullstm_cell_605/Sigmoid:y:0 lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_605/add_1AddV2lstm_cell_605/mul:z:0lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_2Sigmoidlstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_605/Relu_1Relulstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_2Mullstm_cell_605/Sigmoid_2:y:0"lstm_cell_605/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_605_matmul_readvariableop_resource.lstm_cell_605_matmul_1_readvariableop_resource-lstm_cell_605_biasadd_readvariableop_resource*
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
while_body_3664958*
condR
while_cond_3664957*K
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
NoOpNoOp%^lstm_cell_605/BiasAdd/ReadVariableOp$^lstm_cell_605/MatMul/ReadVariableOp&^lstm_cell_605/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_605/BiasAdd/ReadVariableOp$lstm_cell_605/BiasAdd/ReadVariableOp2J
#lstm_cell_605/MatMul/ReadVariableOp#lstm_cell_605/MatMul/ReadVariableOp2N
%lstm_cell_605/MatMul_1/ReadVariableOp%lstm_cell_605/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3663582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3663582___redundant_placeholder05
1while_while_cond_3663582___redundant_placeholder15
1while_while_cond_3663582___redundant_placeholder25
1while_while_cond_3663582___redundant_placeholder3
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3660653

inputs(
lstm_cell_603_3660571:	?(
lstm_cell_603_3660573:	d?$
lstm_cell_603_3660575:	?
identity??%lstm_cell_603/StatefulPartitionedCall?while;
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
%lstm_cell_603/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_603_3660571lstm_cell_603_3660573lstm_cell_603_3660575*
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660525n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_603_3660571lstm_cell_603_3660573lstm_cell_603_3660575*
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
while_body_3660584*
condR
while_cond_3660583*K
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
NoOpNoOp&^lstm_cell_603/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_603/StatefulPartitionedCall%lstm_cell_603/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3664341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3664341___redundant_placeholder05
1while_while_cond_3664341___redundant_placeholder15
1while_while_cond_3664341___redundant_placeholder25
1while_while_cond_3664341___redundant_placeholder3
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
*__inference_lstm_632_layer_call_fn_3664756

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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3662027o
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
?K
?
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664426
inputs_0?
,lstm_cell_604_matmul_readvariableop_resource:	d?A
.lstm_cell_604_matmul_1_readvariableop_resource:	2?<
-lstm_cell_604_biasadd_readvariableop_resource:	?
identity??$lstm_cell_604/BiasAdd/ReadVariableOp?#lstm_cell_604/MatMul/ReadVariableOp?%lstm_cell_604/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_604/MatMul/ReadVariableOpReadVariableOp,lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_604/MatMulMatMulstrided_slice_2:output:0+lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_604/MatMul_1MatMulzeros:output:0-lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_604/addAddV2lstm_cell_604/MatMul:product:0 lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_604/BiasAddBiasAddlstm_cell_604/add:z:0,lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_604/splitSplit&lstm_cell_604/split/split_dim:output:0lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_604/SigmoidSigmoidlstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_1Sigmoidlstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_604/mulMullstm_cell_604/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_604/ReluRelulstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_1Mullstm_cell_604/Sigmoid:y:0 lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_604/add_1AddV2lstm_cell_604/mul:z:0lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_2Sigmoidlstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_604/Relu_1Relulstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_2Mullstm_cell_604/Sigmoid_2:y:0"lstm_cell_604/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_604_matmul_readvariableop_resource.lstm_cell_604_matmul_1_readvariableop_resource-lstm_cell_604_biasadd_readvariableop_resource*
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
while_body_3664342*
condR
while_cond_3664341*K
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
NoOpNoOp%^lstm_cell_604/BiasAdd/ReadVariableOp$^lstm_cell_604/MatMul/ReadVariableOp&^lstm_cell_604/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_604/BiasAdd/ReadVariableOp$lstm_cell_604/BiasAdd/ReadVariableOp2J
#lstm_cell_604/MatMul/ReadVariableOp#lstm_cell_604/MatMul/ReadVariableOp2N
%lstm_cell_604/MatMul_1/ReadVariableOp%lstm_cell_604/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3661426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3661426___redundant_placeholder05
1while_while_cond_3661426___redundant_placeholder15
1while_while_cond_3661426___redundant_placeholder25
1while_while_cond_3661426___redundant_placeholder3
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
??
?
#__inference__traced_restore_3665914
file_prefix3
!assignvariableop_dense_210_kernel:
/
!assignvariableop_1_dense_210_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_630_lstm_cell_630_kernel:	?M
:assignvariableop_8_lstm_630_lstm_cell_630_recurrent_kernel:	d?=
.assignvariableop_9_lstm_630_lstm_cell_630_bias:	?D
1assignvariableop_10_lstm_631_lstm_cell_631_kernel:	d?N
;assignvariableop_11_lstm_631_lstm_cell_631_recurrent_kernel:	2?>
/assignvariableop_12_lstm_631_lstm_cell_631_bias:	?C
1assignvariableop_13_lstm_632_lstm_cell_632_kernel:2(M
;assignvariableop_14_lstm_632_lstm_cell_632_recurrent_kernel:
(=
/assignvariableop_15_lstm_632_lstm_cell_632_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_210_kernel_m:
7
)assignvariableop_19_adam_dense_210_bias_m:K
8assignvariableop_20_adam_lstm_630_lstm_cell_630_kernel_m:	?U
Bassignvariableop_21_adam_lstm_630_lstm_cell_630_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_630_lstm_cell_630_bias_m:	?K
8assignvariableop_23_adam_lstm_631_lstm_cell_631_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_631_lstm_cell_631_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_631_lstm_cell_631_bias_m:	?J
8assignvariableop_26_adam_lstm_632_lstm_cell_632_kernel_m:2(T
Bassignvariableop_27_adam_lstm_632_lstm_cell_632_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_632_lstm_cell_632_bias_m:(=
+assignvariableop_29_adam_dense_210_kernel_v:
7
)assignvariableop_30_adam_dense_210_bias_v:K
8assignvariableop_31_adam_lstm_630_lstm_cell_630_kernel_v:	?U
Bassignvariableop_32_adam_lstm_630_lstm_cell_630_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_630_lstm_cell_630_bias_v:	?K
8assignvariableop_34_adam_lstm_631_lstm_cell_631_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_631_lstm_cell_631_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_631_lstm_cell_631_bias_v:	?J
8assignvariableop_37_adam_lstm_632_lstm_cell_632_kernel_v:2(T
Bassignvariableop_38_adam_lstm_632_lstm_cell_632_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_632_lstm_cell_632_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_210_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_210_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_630_lstm_cell_630_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_630_lstm_cell_630_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_630_lstm_cell_630_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_631_lstm_cell_631_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_631_lstm_cell_631_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_631_lstm_cell_631_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_632_lstm_cell_632_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_632_lstm_cell_632_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_632_lstm_cell_632_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_210_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_210_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_630_lstm_cell_630_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_630_lstm_cell_630_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_630_lstm_cell_630_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_631_lstm_cell_631_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_631_lstm_cell_631_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_631_lstm_cell_631_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_632_lstm_cell_632_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_632_lstm_cell_632_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_632_lstm_cell_632_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_210_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_210_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_630_lstm_cell_630_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_630_lstm_cell_630_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_630_lstm_cell_630_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_631_lstm_cell_631_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_631_lstm_cell_631_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_631_lstm_cell_631_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_632_lstm_cell_632_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_632_lstm_cell_632_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_632_lstm_cell_632_bias_vIdentity_39:output:0"/device:CPU:0*
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662425

inputs#
lstm_630_3662398:	?#
lstm_630_3662400:	d?
lstm_630_3662402:	?#
lstm_631_3662405:	d?#
lstm_631_3662407:	2?
lstm_631_3662409:	?"
lstm_632_3662412:2("
lstm_632_3662414:
(
lstm_632_3662416:(#
dense_210_3662419:

dense_210_3662421:
identity??!dense_210/StatefulPartitionedCall? lstm_630/StatefulPartitionedCall? lstm_631/StatefulPartitionedCall? lstm_632/StatefulPartitionedCall?
 lstm_630/StatefulPartitionedCallStatefulPartitionedCallinputslstm_630_3662398lstm_630_3662400lstm_630_3662402*
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3662357?
 lstm_631/StatefulPartitionedCallStatefulPartitionedCall)lstm_630/StatefulPartitionedCall:output:0lstm_631_3662405lstm_631_3662407lstm_631_3662409*
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3662192?
 lstm_632/StatefulPartitionedCallStatefulPartitionedCall)lstm_631/StatefulPartitionedCall:output:0lstm_632_3662412lstm_632_3662414lstm_632_3662416*
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3662027?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall)lstm_632/StatefulPartitionedCall:output:0dense_210_3662419dense_210_3662421*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_3661829y
IdentityIdentity*dense_210/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_210/StatefulPartitionedCall!^lstm_630/StatefulPartitionedCall!^lstm_631/StatefulPartitionedCall!^lstm_632/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2D
 lstm_630/StatefulPartitionedCall lstm_630/StatefulPartitionedCall2D
 lstm_631/StatefulPartitionedCall lstm_631/StatefulPartitionedCall2D
 lstm_632/StatefulPartitionedCall lstm_632/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3663868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3663868___redundant_placeholder05
1while_while_cond_3663868___redundant_placeholder15
1while_while_cond_3663868___redundant_placeholder25
1while_while_cond_3663868___redundant_placeholder3
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660525

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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3661661

inputs?
,lstm_cell_604_matmul_readvariableop_resource:	d?A
.lstm_cell_604_matmul_1_readvariableop_resource:	2?<
-lstm_cell_604_biasadd_readvariableop_resource:	?
identity??$lstm_cell_604/BiasAdd/ReadVariableOp?#lstm_cell_604/MatMul/ReadVariableOp?%lstm_cell_604/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_604/MatMul/ReadVariableOpReadVariableOp,lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_604/MatMulMatMulstrided_slice_2:output:0+lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_604/MatMul_1MatMulzeros:output:0-lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_604/addAddV2lstm_cell_604/MatMul:product:0 lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_604/BiasAddBiasAddlstm_cell_604/add:z:0,lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_604/splitSplit&lstm_cell_604/split/split_dim:output:0lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_604/SigmoidSigmoidlstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_1Sigmoidlstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_604/mulMullstm_cell_604/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_604/ReluRelulstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_1Mullstm_cell_604/Sigmoid:y:0 lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_604/add_1AddV2lstm_cell_604/mul:z:0lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_2Sigmoidlstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_604/Relu_1Relulstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_2Mullstm_cell_604/Sigmoid_2:y:0"lstm_cell_604/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_604_matmul_readvariableop_resource.lstm_cell_604_matmul_1_readvariableop_resource-lstm_cell_604_biasadd_readvariableop_resource*
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
while_body_3661577*
condR
while_cond_3661576*K
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
NoOpNoOp%^lstm_cell_604/BiasAdd/ReadVariableOp$^lstm_cell_604/MatMul/ReadVariableOp&^lstm_cell_604/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_604/BiasAdd/ReadVariableOp$lstm_cell_604/BiasAdd/ReadVariableOp2J
#lstm_cell_604/MatMul/ReadVariableOp#lstm_cell_604/MatMul/ReadVariableOp2N
%lstm_cell_604/MatMul_1/ReadVariableOp%lstm_cell_604/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3663726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_603_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_603_matmul_readvariableop_resource:	?G
4while_lstm_cell_603_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_603_biasadd_readvariableop_resource:	???*while/lstm_cell_603/BiasAdd/ReadVariableOp?)while/lstm_cell_603/MatMul/ReadVariableOp?+while/lstm_cell_603/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_603/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_603/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_603/addAddV2$while/lstm_cell_603/MatMul:product:0&while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_603/BiasAddBiasAddwhile/lstm_cell_603/add:z:02while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_603/splitSplit,while/lstm_cell_603/split/split_dim:output:0$while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_603/SigmoidSigmoid"while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_1Sigmoid"while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mulMul!while/lstm_cell_603/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_603/ReluRelu"while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_1Mulwhile/lstm_cell_603/Sigmoid:y:0&while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/add_1AddV2while/lstm_cell_603/mul:z:0while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_2Sigmoid"while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_603/Relu_1Reluwhile/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_2Mul!while/lstm_cell_603/Sigmoid_2:y:0(while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_603/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_603/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_603/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_603/BiasAdd/ReadVariableOp*^while/lstm_cell_603/MatMul/ReadVariableOp,^while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_603_biasadd_readvariableop_resource5while_lstm_cell_603_biasadd_readvariableop_resource_0"n
4while_lstm_cell_603_matmul_1_readvariableop_resource6while_lstm_cell_603_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_603_matmul_readvariableop_resource4while_lstm_cell_603_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_603/BiasAdd/ReadVariableOp*while/lstm_cell_603/BiasAdd/ReadVariableOp2V
)while/lstm_cell_603/MatMul/ReadVariableOp)while/lstm_cell_603/MatMul/ReadVariableOp2Z
+while/lstm_cell_603/MatMul_1/ReadVariableOp+while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3660742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3660742___redundant_placeholder05
1while_while_cond_3660742___redundant_placeholder15
1while_while_cond_3660742___redundant_placeholder25
1while_while_cond_3660742___redundant_placeholder3
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
while_body_3661577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_604_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_604_matmul_readvariableop_resource:	d?G
4while_lstm_cell_604_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_604_biasadd_readvariableop_resource:	???*while/lstm_cell_604/BiasAdd/ReadVariableOp?)while/lstm_cell_604/MatMul/ReadVariableOp?+while/lstm_cell_604/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_604/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_604/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_604/addAddV2$while/lstm_cell_604/MatMul:product:0&while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_604/BiasAddBiasAddwhile/lstm_cell_604/add:z:02while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_604/splitSplit,while/lstm_cell_604/split/split_dim:output:0$while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_604/SigmoidSigmoid"while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_1Sigmoid"while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mulMul!while/lstm_cell_604/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_604/ReluRelu"while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_1Mulwhile/lstm_cell_604/Sigmoid:y:0&while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/add_1AddV2while/lstm_cell_604/mul:z:0while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_2Sigmoid"while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_604/Relu_1Reluwhile/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_2Mul!while/lstm_cell_604/Sigmoid_2:y:0(while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_604/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_604/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_604/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_604/BiasAdd/ReadVariableOp*^while/lstm_cell_604/MatMul/ReadVariableOp,^while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_604_biasadd_readvariableop_resource5while_lstm_cell_604_biasadd_readvariableop_resource_0"n
4while_lstm_cell_604_matmul_1_readvariableop_resource6while_lstm_cell_604_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_604_matmul_readvariableop_resource4while_lstm_cell_604_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_604/BiasAdd/ReadVariableOp*while/lstm_cell_604/BiasAdd/ReadVariableOp2V
)while/lstm_cell_604/MatMul/ReadVariableOp)while/lstm_cell_604/MatMul/ReadVariableOp2Z
+while/lstm_cell_604/MatMul_1/ReadVariableOp+while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3661943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_605_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_605_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_605_matmul_readvariableop_resource:2(F
4while_lstm_cell_605_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_605_biasadd_readvariableop_resource:(??*while/lstm_cell_605/BiasAdd/ReadVariableOp?)while/lstm_cell_605/MatMul/ReadVariableOp?+while/lstm_cell_605/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_605/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_605/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_605/addAddV2$while/lstm_cell_605/MatMul:product:0&while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_605/BiasAddBiasAddwhile/lstm_cell_605/add:z:02while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_605/splitSplit,while/lstm_cell_605/split/split_dim:output:0$while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_605/SigmoidSigmoid"while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_1Sigmoid"while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mulMul!while/lstm_cell_605/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_605/ReluRelu"while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_1Mulwhile/lstm_cell_605/Sigmoid:y:0&while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/add_1AddV2while/lstm_cell_605/mul:z:0while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_2Sigmoid"while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_605/Relu_1Reluwhile/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_2Mul!while/lstm_cell_605/Sigmoid_2:y:0(while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_605/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_605/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_605/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_605/BiasAdd/ReadVariableOp*^while/lstm_cell_605/MatMul/ReadVariableOp,^while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_605_biasadd_readvariableop_resource5while_lstm_cell_605_biasadd_readvariableop_resource_0"n
4while_lstm_cell_605_matmul_1_readvariableop_resource6while_lstm_cell_605_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_605_matmul_readvariableop_resource4while_lstm_cell_605_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_605/BiasAdd/ReadVariableOp*while/lstm_cell_605/BiasAdd/ReadVariableOp2V
)while/lstm_cell_605/MatMul/ReadVariableOp)while/lstm_cell_605/MatMul/ReadVariableOp2Z
+while/lstm_cell_605/MatMul_1/ReadVariableOp+while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_210_layer_call_fn_3662477
lstm_630_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_630_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662425o
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
_user_specified_namelstm_630_input
?
?
*__inference_lstm_630_layer_call_fn_3663502
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3660653|
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3665609

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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3662027

inputs>
,lstm_cell_605_matmul_readvariableop_resource:2(@
.lstm_cell_605_matmul_1_readvariableop_resource:
(;
-lstm_cell_605_biasadd_readvariableop_resource:(
identity??$lstm_cell_605/BiasAdd/ReadVariableOp?#lstm_cell_605/MatMul/ReadVariableOp?%lstm_cell_605/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_605/MatMul/ReadVariableOpReadVariableOp,lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_605/MatMulMatMulstrided_slice_2:output:0+lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_605/MatMul_1MatMulzeros:output:0-lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_605/addAddV2lstm_cell_605/MatMul:product:0 lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_605/BiasAddBiasAddlstm_cell_605/add:z:0,lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_605/splitSplit&lstm_cell_605/split/split_dim:output:0lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_605/SigmoidSigmoidlstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_1Sigmoidlstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_605/mulMullstm_cell_605/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_605/ReluRelulstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_1Mullstm_cell_605/Sigmoid:y:0 lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_605/add_1AddV2lstm_cell_605/mul:z:0lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_2Sigmoidlstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_605/Relu_1Relulstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_2Mullstm_cell_605/Sigmoid_2:y:0"lstm_cell_605/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_605_matmul_readvariableop_resource.lstm_cell_605_matmul_1_readvariableop_resource-lstm_cell_605_biasadd_readvariableop_resource*
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
while_body_3661943*
condR
while_cond_3661942*K
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
NoOpNoOp%^lstm_cell_605/BiasAdd/ReadVariableOp$^lstm_cell_605/MatMul/ReadVariableOp&^lstm_cell_605/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_605/BiasAdd/ReadVariableOp$lstm_cell_605/BiasAdd/ReadVariableOp2J
#lstm_cell_605/MatMul/ReadVariableOp#lstm_cell_605/MatMul/ReadVariableOp2N
%lstm_cell_605/MatMul_1/ReadVariableOp%lstm_cell_605/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_632_layer_call_fn_3664723
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661162o
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
*__inference_lstm_631_layer_call_fn_3664118
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3661003|
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665185

inputs>
,lstm_cell_605_matmul_readvariableop_resource:2(@
.lstm_cell_605_matmul_1_readvariableop_resource:
(;
-lstm_cell_605_biasadd_readvariableop_resource:(
identity??$lstm_cell_605/BiasAdd/ReadVariableOp?#lstm_cell_605/MatMul/ReadVariableOp?%lstm_cell_605/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_605/MatMul/ReadVariableOpReadVariableOp,lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_605/MatMulMatMulstrided_slice_2:output:0+lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_605/MatMul_1MatMulzeros:output:0-lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_605/addAddV2lstm_cell_605/MatMul:product:0 lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_605/BiasAddBiasAddlstm_cell_605/add:z:0,lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_605/splitSplit&lstm_cell_605/split/split_dim:output:0lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_605/SigmoidSigmoidlstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_1Sigmoidlstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_605/mulMullstm_cell_605/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_605/ReluRelulstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_1Mullstm_cell_605/Sigmoid:y:0 lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_605/add_1AddV2lstm_cell_605/mul:z:0lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_2Sigmoidlstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_605/Relu_1Relulstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_2Mullstm_cell_605/Sigmoid_2:y:0"lstm_cell_605/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_605_matmul_readvariableop_resource.lstm_cell_605_matmul_1_readvariableop_resource-lstm_cell_605_biasadd_readvariableop_resource*
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
while_body_3665101*
condR
while_cond_3665100*K
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
NoOpNoOp%^lstm_cell_605/BiasAdd/ReadVariableOp$^lstm_cell_605/MatMul/ReadVariableOp&^lstm_cell_605/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_605/BiasAdd/ReadVariableOp$lstm_cell_605/BiasAdd/ReadVariableOp2J
#lstm_cell_605/MatMul/ReadVariableOp#lstm_cell_605/MatMul/ReadVariableOp2N
%lstm_cell_605/MatMul_1/ReadVariableOp%lstm_cell_605/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
+__inference_dense_210_layer_call_fn_3665337

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
F__inference_dense_210_layer_call_and_return_conditional_losses_3661829o
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
while_body_3662108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_604_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_604_matmul_readvariableop_resource:	d?G
4while_lstm_cell_604_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_604_biasadd_readvariableop_resource:	???*while/lstm_cell_604/BiasAdd/ReadVariableOp?)while/lstm_cell_604/MatMul/ReadVariableOp?+while/lstm_cell_604/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_604/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_604/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_604/addAddV2$while/lstm_cell_604/MatMul:product:0&while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_604/BiasAddBiasAddwhile/lstm_cell_604/add:z:02while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_604/splitSplit,while/lstm_cell_604/split/split_dim:output:0$while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_604/SigmoidSigmoid"while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_1Sigmoid"while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mulMul!while/lstm_cell_604/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_604/ReluRelu"while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_1Mulwhile/lstm_cell_604/Sigmoid:y:0&while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/add_1AddV2while/lstm_cell_604/mul:z:0while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_2Sigmoid"while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_604/Relu_1Reluwhile/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_2Mul!while/lstm_cell_604/Sigmoid_2:y:0(while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_604/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_604/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_604/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_604/BiasAdd/ReadVariableOp*^while/lstm_cell_604/MatMul/ReadVariableOp,^while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_604_biasadd_readvariableop_resource5while_lstm_cell_604_biasadd_readvariableop_resource_0"n
4while_lstm_cell_604_matmul_1_readvariableop_resource6while_lstm_cell_604_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_604_matmul_readvariableop_resource4while_lstm_cell_604_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_604/BiasAdd/ReadVariableOp*while/lstm_cell_604/BiasAdd/ReadVariableOp2V
)while/lstm_cell_604/MatMul/ReadVariableOp)while/lstm_cell_604/MatMul/ReadVariableOp2Z
+while/lstm_cell_604/MatMul_1/ReadVariableOp+while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3665511

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
while_cond_3662272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3662272___redundant_placeholder05
1while_while_cond_3662272___redundant_placeholder15
1while_while_cond_3662272___redundant_placeholder25
1while_while_cond_3662272___redundant_placeholder3
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663810
inputs_0?
,lstm_cell_603_matmul_readvariableop_resource:	?A
.lstm_cell_603_matmul_1_readvariableop_resource:	d?<
-lstm_cell_603_biasadd_readvariableop_resource:	?
identity??$lstm_cell_603/BiasAdd/ReadVariableOp?#lstm_cell_603/MatMul/ReadVariableOp?%lstm_cell_603/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_603/MatMul/ReadVariableOpReadVariableOp,lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_603/MatMulMatMulstrided_slice_2:output:0+lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_603/MatMul_1MatMulzeros:output:0-lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_603/addAddV2lstm_cell_603/MatMul:product:0 lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_603/BiasAddBiasAddlstm_cell_603/add:z:0,lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_603/splitSplit&lstm_cell_603/split/split_dim:output:0lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_603/SigmoidSigmoidlstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_1Sigmoidlstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_603/mulMullstm_cell_603/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_603/ReluRelulstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_1Mullstm_cell_603/Sigmoid:y:0 lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_603/add_1AddV2lstm_cell_603/mul:z:0lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_2Sigmoidlstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_603/Relu_1Relulstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_2Mullstm_cell_603/Sigmoid_2:y:0"lstm_cell_603/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_603_matmul_readvariableop_resource.lstm_cell_603_matmul_1_readvariableop_resource-lstm_cell_603_biasadd_readvariableop_resource*
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
while_body_3663726*
condR
while_cond_3663725*K
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
NoOpNoOp%^lstm_cell_603/BiasAdd/ReadVariableOp$^lstm_cell_603/MatMul/ReadVariableOp&^lstm_cell_603/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_603/BiasAdd/ReadVariableOp$lstm_cell_603/BiasAdd/ReadVariableOp2J
#lstm_cell_603/MatMul/ReadVariableOp#lstm_cell_603/MatMul/ReadVariableOp2N
%lstm_cell_603/MatMul_1/ReadVariableOp%lstm_cell_603/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*sequential_210_lstm_631_while_cond_3660082L
Hsequential_210_lstm_631_while_sequential_210_lstm_631_while_loop_counterR
Nsequential_210_lstm_631_while_sequential_210_lstm_631_while_maximum_iterations-
)sequential_210_lstm_631_while_placeholder/
+sequential_210_lstm_631_while_placeholder_1/
+sequential_210_lstm_631_while_placeholder_2/
+sequential_210_lstm_631_while_placeholder_3N
Jsequential_210_lstm_631_while_less_sequential_210_lstm_631_strided_slice_1e
asequential_210_lstm_631_while_sequential_210_lstm_631_while_cond_3660082___redundant_placeholder0e
asequential_210_lstm_631_while_sequential_210_lstm_631_while_cond_3660082___redundant_placeholder1e
asequential_210_lstm_631_while_sequential_210_lstm_631_while_cond_3660082___redundant_placeholder2e
asequential_210_lstm_631_while_sequential_210_lstm_631_while_cond_3660082___redundant_placeholder3*
&sequential_210_lstm_631_while_identity
?
"sequential_210/lstm_631/while/LessLess)sequential_210_lstm_631_while_placeholderJsequential_210_lstm_631_while_less_sequential_210_lstm_631_strided_slice_1*
T0*
_output_shapes
: {
&sequential_210/lstm_631/while/IdentityIdentity&sequential_210/lstm_631/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_210_lstm_631_while_identity/sequential_210/lstm_631/while/Identity:output:0*(
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
while_body_3661284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_605_3661308_0:2(/
while_lstm_cell_605_3661310_0:
(+
while_lstm_cell_605_3661312_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_605_3661308:2(-
while_lstm_cell_605_3661310:
()
while_lstm_cell_605_3661312:(??+while/lstm_cell_605/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_605/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_605_3661308_0while_lstm_cell_605_3661310_0while_lstm_cell_605_3661312_0*
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661225?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_605/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_605/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_605/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_605/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_605_3661308while_lstm_cell_605_3661308_0"<
while_lstm_cell_605_3661310while_lstm_cell_605_3661310_0"<
while_lstm_cell_605_3661312while_lstm_cell_605_3661312_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_605/StatefulPartitionedCall+while/lstm_cell_605/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3663725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3663725___redundant_placeholder05
1while_while_cond_3663725___redundant_placeholder15
1while_while_cond_3663725___redundant_placeholder25
1while_while_cond_3663725___redundant_placeholder3
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3661836

inputs#
lstm_630_3661512:	?#
lstm_630_3661514:	d?
lstm_630_3661516:	?#
lstm_631_3661662:	d?#
lstm_631_3661664:	2?
lstm_631_3661666:	?"
lstm_632_3661812:2("
lstm_632_3661814:
(
lstm_632_3661816:(#
dense_210_3661830:

dense_210_3661832:
identity??!dense_210/StatefulPartitionedCall? lstm_630/StatefulPartitionedCall? lstm_631/StatefulPartitionedCall? lstm_632/StatefulPartitionedCall?
 lstm_630/StatefulPartitionedCallStatefulPartitionedCallinputslstm_630_3661512lstm_630_3661514lstm_630_3661516*
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3661511?
 lstm_631/StatefulPartitionedCallStatefulPartitionedCall)lstm_630/StatefulPartitionedCall:output:0lstm_631_3661662lstm_631_3661664lstm_631_3661666*
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3661661?
 lstm_632/StatefulPartitionedCallStatefulPartitionedCall)lstm_631/StatefulPartitionedCall:output:0lstm_632_3661812lstm_632_3661814lstm_632_3661816*
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661811?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall)lstm_632/StatefulPartitionedCall:output:0dense_210_3661830dense_210_3661832*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_3661829y
IdentityIdentity*dense_210/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_210/StatefulPartitionedCall!^lstm_630/StatefulPartitionedCall!^lstm_631/StatefulPartitionedCall!^lstm_632/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2D
 lstm_630/StatefulPartitionedCall lstm_630/StatefulPartitionedCall2D
 lstm_631/StatefulPartitionedCall lstm_631/StatefulPartitionedCall2D
 lstm_632/StatefulPartitionedCall lstm_632/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3660392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3660392___redundant_placeholder05
1while_while_cond_3660392___redundant_placeholder15
1while_while_cond_3660392___redundant_placeholder25
1while_while_cond_3660392___redundant_placeholder3
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
*__inference_lstm_632_layer_call_fn_3664734
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661353o
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3661511

inputs?
,lstm_cell_603_matmul_readvariableop_resource:	?A
.lstm_cell_603_matmul_1_readvariableop_resource:	d?<
-lstm_cell_603_biasadd_readvariableop_resource:	?
identity??$lstm_cell_603/BiasAdd/ReadVariableOp?#lstm_cell_603/MatMul/ReadVariableOp?%lstm_cell_603/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_603/MatMul/ReadVariableOpReadVariableOp,lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_603/MatMulMatMulstrided_slice_2:output:0+lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_603/MatMul_1MatMulzeros:output:0-lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_603/addAddV2lstm_cell_603/MatMul:product:0 lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_603/BiasAddBiasAddlstm_cell_603/add:z:0,lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_603/splitSplit&lstm_cell_603/split/split_dim:output:0lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_603/SigmoidSigmoidlstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_1Sigmoidlstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_603/mulMullstm_cell_603/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_603/ReluRelulstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_1Mullstm_cell_603/Sigmoid:y:0 lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_603/add_1AddV2lstm_cell_603/mul:z:0lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_2Sigmoidlstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_603/Relu_1Relulstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_2Mullstm_cell_603/Sigmoid_2:y:0"lstm_cell_603/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_603_matmul_readvariableop_resource.lstm_cell_603_matmul_1_readvariableop_resource-lstm_cell_603_biasadd_readvariableop_resource*
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
while_body_3661427*
condR
while_cond_3661426*K
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
NoOpNoOp%^lstm_cell_603/BiasAdd/ReadVariableOp$^lstm_cell_603/MatMul/ReadVariableOp&^lstm_cell_603/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_603/BiasAdd/ReadVariableOp$lstm_cell_603/BiasAdd/ReadVariableOp2J
#lstm_cell_603/MatMul/ReadVariableOp#lstm_cell_603/MatMul/ReadVariableOp2N
%lstm_cell_603/MatMul_1/ReadVariableOp%lstm_cell_603/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3660393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_603_3660417_0:	?0
while_lstm_cell_603_3660419_0:	d?,
while_lstm_cell_603_3660421_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_603_3660417:	?.
while_lstm_cell_603_3660419:	d?*
while_lstm_cell_603_3660421:	???+while/lstm_cell_603/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_603/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_603_3660417_0while_lstm_cell_603_3660419_0while_lstm_cell_603_3660421_0*
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660379?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_603/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_603/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_603/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_603/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_603_3660417while_lstm_cell_603_3660417_0"<
while_lstm_cell_603_3660419while_lstm_cell_603_3660419_0"<
while_lstm_cell_603_3660421while_lstm_cell_603_3660421_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_603/StatefulPartitionedCall+while/lstm_cell_603/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3660584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_603_3660608_0:	?0
while_lstm_cell_603_3660610_0:	d?,
while_lstm_cell_603_3660612_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_603_3660608:	?.
while_lstm_cell_603_3660610:	d?*
while_lstm_cell_603_3660612:	???+while/lstm_cell_603/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_603/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_603_3660608_0while_lstm_cell_603_3660610_0while_lstm_cell_603_3660612_0*
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660525?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_603/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_603/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_603/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_603/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_603_3660608while_lstm_cell_603_3660608_0"<
while_lstm_cell_603_3660610while_lstm_cell_603_3660610_0"<
while_lstm_cell_603_3660612while_lstm_cell_603_3660612_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_603/StatefulPartitionedCall+while/lstm_cell_603/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3664957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3664957___redundant_placeholder05
1while_while_cond_3664957___redundant_placeholder15
1while_while_cond_3664957___redundant_placeholder25
1while_while_cond_3664957___redundant_placeholder3
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
while_cond_3664198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3664198___redundant_placeholder05
1while_while_cond_3664198___redundant_placeholder15
1while_while_cond_3664198___redundant_placeholder25
1while_while_cond_3664198___redundant_placeholder3
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
while_cond_3662107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3662107___redundant_placeholder05
1while_while_cond_3662107___redundant_placeholder15
1while_while_cond_3662107___redundant_placeholder25
1while_while_cond_3662107___redundant_placeholder3
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
0__inference_sequential_210_layer_call_fn_3662626

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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662425o
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
while_cond_3660583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3660583___redundant_placeholder05
1while_while_cond_3660583___redundant_placeholder15
1while_while_cond_3660583___redundant_placeholder25
1while_while_cond_3660583___redundant_placeholder3
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
while_body_3661727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_605_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_605_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_605_matmul_readvariableop_resource:2(F
4while_lstm_cell_605_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_605_biasadd_readvariableop_resource:(??*while/lstm_cell_605/BiasAdd/ReadVariableOp?)while/lstm_cell_605/MatMul/ReadVariableOp?+while/lstm_cell_605/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_605/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_605/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_605/addAddV2$while/lstm_cell_605/MatMul:product:0&while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_605/BiasAddBiasAddwhile/lstm_cell_605/add:z:02while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_605/splitSplit,while/lstm_cell_605/split/split_dim:output:0$while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_605/SigmoidSigmoid"while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_1Sigmoid"while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mulMul!while/lstm_cell_605/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_605/ReluRelu"while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_1Mulwhile/lstm_cell_605/Sigmoid:y:0&while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/add_1AddV2while/lstm_cell_605/mul:z:0while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_2Sigmoid"while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_605/Relu_1Reluwhile/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_2Mul!while/lstm_cell_605/Sigmoid_2:y:0(while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_605/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_605/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_605/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_605/BiasAdd/ReadVariableOp*^while/lstm_cell_605/MatMul/ReadVariableOp,^while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_605_biasadd_readvariableop_resource5while_lstm_cell_605_biasadd_readvariableop_resource_0"n
4while_lstm_cell_605_matmul_1_readvariableop_resource6while_lstm_cell_605_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_605_matmul_readvariableop_resource4while_lstm_cell_605_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_605/BiasAdd/ReadVariableOp*while/lstm_cell_605/BiasAdd/ReadVariableOp2V
)while/lstm_cell_605/MatMul/ReadVariableOp)while/lstm_cell_605/MatMul/ReadVariableOp2Z
+while/lstm_cell_605/MatMul_1/ReadVariableOp+while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3665101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_605_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_605_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_605_matmul_readvariableop_resource:2(F
4while_lstm_cell_605_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_605_biasadd_readvariableop_resource:(??*while/lstm_cell_605/BiasAdd/ReadVariableOp?)while/lstm_cell_605/MatMul/ReadVariableOp?+while/lstm_cell_605/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_605/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_605/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_605/addAddV2$while/lstm_cell_605/MatMul:product:0&while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_605/BiasAddBiasAddwhile/lstm_cell_605/add:z:02while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_605/splitSplit,while/lstm_cell_605/split/split_dim:output:0$while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_605/SigmoidSigmoid"while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_1Sigmoid"while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mulMul!while/lstm_cell_605/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_605/ReluRelu"while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_1Mulwhile/lstm_cell_605/Sigmoid:y:0&while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/add_1AddV2while/lstm_cell_605/mul:z:0while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_2Sigmoid"while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_605/Relu_1Reluwhile/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_2Mul!while/lstm_cell_605/Sigmoid_2:y:0(while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_605/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_605/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_605/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_605/BiasAdd/ReadVariableOp*^while/lstm_cell_605/MatMul/ReadVariableOp,^while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_605_biasadd_readvariableop_resource5while_lstm_cell_605_biasadd_readvariableop_resource_0"n
4while_lstm_cell_605_matmul_1_readvariableop_resource6while_lstm_cell_605_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_605_matmul_readvariableop_resource4while_lstm_cell_605_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_605/BiasAdd/ReadVariableOp*while/lstm_cell_605/BiasAdd/ReadVariableOp2V
)while/lstm_cell_605/MatMul/ReadVariableOp)while/lstm_cell_605/MatMul/ReadVariableOp2Z
+while/lstm_cell_605/MatMul_1/ReadVariableOp+while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3664814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3664814___redundant_placeholder05
1while_while_cond_3664814___redundant_placeholder15
1while_while_cond_3664814___redundant_placeholder25
1while_while_cond_3664814___redundant_placeholder3
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
*__inference_lstm_631_layer_call_fn_3664129

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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3661661s
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
while_cond_3661942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3661942___redundant_placeholder05
1while_while_cond_3661942___redundant_placeholder15
1while_while_cond_3661942___redundant_placeholder25
1while_while_cond_3661942___redundant_placeholder3
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660729

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
while_cond_3664011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3664011___redundant_placeholder05
1while_while_cond_3664011___redundant_placeholder15
1while_while_cond_3664011___redundant_placeholder25
1while_while_cond_3664011___redundant_placeholder3
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
while_body_3664958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_605_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_605_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_605_matmul_readvariableop_resource:2(F
4while_lstm_cell_605_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_605_biasadd_readvariableop_resource:(??*while/lstm_cell_605/BiasAdd/ReadVariableOp?)while/lstm_cell_605/MatMul/ReadVariableOp?+while/lstm_cell_605/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_605/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_605/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_605/addAddV2$while/lstm_cell_605/MatMul:product:0&while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_605/BiasAddBiasAddwhile/lstm_cell_605/add:z:02while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_605/splitSplit,while/lstm_cell_605/split/split_dim:output:0$while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_605/SigmoidSigmoid"while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_1Sigmoid"while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mulMul!while/lstm_cell_605/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_605/ReluRelu"while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_1Mulwhile/lstm_cell_605/Sigmoid:y:0&while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/add_1AddV2while/lstm_cell_605/mul:z:0while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_2Sigmoid"while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_605/Relu_1Reluwhile/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_2Mul!while/lstm_cell_605/Sigmoid_2:y:0(while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_605/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_605/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_605/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_605/BiasAdd/ReadVariableOp*^while/lstm_cell_605/MatMul/ReadVariableOp,^while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_605_biasadd_readvariableop_resource5while_lstm_cell_605_biasadd_readvariableop_resource_0"n
4while_lstm_cell_605_matmul_1_readvariableop_resource6while_lstm_cell_605_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_605_matmul_readvariableop_resource4while_lstm_cell_605_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_605/BiasAdd/ReadVariableOp*while/lstm_cell_605/BiasAdd/ReadVariableOp2V
)while/lstm_cell_605/MatMul/ReadVariableOp)while/lstm_cell_605/MatMul/ReadVariableOp2Z
+while/lstm_cell_605/MatMul_1/ReadVariableOp+while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663667
inputs_0?
,lstm_cell_603_matmul_readvariableop_resource:	?A
.lstm_cell_603_matmul_1_readvariableop_resource:	d?<
-lstm_cell_603_biasadd_readvariableop_resource:	?
identity??$lstm_cell_603/BiasAdd/ReadVariableOp?#lstm_cell_603/MatMul/ReadVariableOp?%lstm_cell_603/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_603/MatMul/ReadVariableOpReadVariableOp,lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_603/MatMulMatMulstrided_slice_2:output:0+lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_603/MatMul_1MatMulzeros:output:0-lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_603/addAddV2lstm_cell_603/MatMul:product:0 lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_603/BiasAddBiasAddlstm_cell_603/add:z:0,lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_603/splitSplit&lstm_cell_603/split/split_dim:output:0lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_603/SigmoidSigmoidlstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_1Sigmoidlstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_603/mulMullstm_cell_603/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_603/ReluRelulstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_1Mullstm_cell_603/Sigmoid:y:0 lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_603/add_1AddV2lstm_cell_603/mul:z:0lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_2Sigmoidlstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_603/Relu_1Relulstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_2Mullstm_cell_603/Sigmoid_2:y:0"lstm_cell_603/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_603_matmul_readvariableop_resource.lstm_cell_603_matmul_1_readvariableop_resource-lstm_cell_603_biasadd_readvariableop_resource*
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
while_body_3663583*
condR
while_cond_3663582*K
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
NoOpNoOp%^lstm_cell_603/BiasAdd/ReadVariableOp$^lstm_cell_603/MatMul/ReadVariableOp&^lstm_cell_603/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_603/BiasAdd/ReadVariableOp$lstm_cell_603/BiasAdd/ReadVariableOp2J
#lstm_cell_603/MatMul/ReadVariableOp#lstm_cell_603/MatMul/ReadVariableOp2N
%lstm_cell_603/MatMul_1/ReadVariableOp%lstm_cell_603/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_604_layer_call_fn_3665479

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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660875o
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
lstm_630_while_cond_3663111.
*lstm_630_while_lstm_630_while_loop_counter4
0lstm_630_while_lstm_630_while_maximum_iterations
lstm_630_while_placeholder 
lstm_630_while_placeholder_1 
lstm_630_while_placeholder_2 
lstm_630_while_placeholder_30
,lstm_630_while_less_lstm_630_strided_slice_1G
Clstm_630_while_lstm_630_while_cond_3663111___redundant_placeholder0G
Clstm_630_while_lstm_630_while_cond_3663111___redundant_placeholder1G
Clstm_630_while_lstm_630_while_cond_3663111___redundant_placeholder2G
Clstm_630_while_lstm_630_while_cond_3663111___redundant_placeholder3
lstm_630_while_identity
?
lstm_630/while/LessLesslstm_630_while_placeholder,lstm_630_while_less_lstm_630_strided_slice_1*
T0*
_output_shapes
: ]
lstm_630/while/IdentityIdentitylstm_630/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_630_while_identity lstm_630/while/Identity:output:0*(
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
F__inference_dense_210_layer_call_and_return_conditional_losses_3665347

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
while_cond_3661726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3661726___redundant_placeholder05
1while_while_cond_3661726___redundant_placeholder15
1while_while_cond_3661726___redundant_placeholder25
1while_while_cond_3661726___redundant_placeholder3
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663953

inputs?
,lstm_cell_603_matmul_readvariableop_resource:	?A
.lstm_cell_603_matmul_1_readvariableop_resource:	d?<
-lstm_cell_603_biasadd_readvariableop_resource:	?
identity??$lstm_cell_603/BiasAdd/ReadVariableOp?#lstm_cell_603/MatMul/ReadVariableOp?%lstm_cell_603/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_603/MatMul/ReadVariableOpReadVariableOp,lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_603/MatMulMatMulstrided_slice_2:output:0+lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_603/MatMul_1MatMulzeros:output:0-lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_603/addAddV2lstm_cell_603/MatMul:product:0 lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_603/BiasAddBiasAddlstm_cell_603/add:z:0,lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_603/splitSplit&lstm_cell_603/split/split_dim:output:0lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_603/SigmoidSigmoidlstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_1Sigmoidlstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_603/mulMullstm_cell_603/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_603/ReluRelulstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_1Mullstm_cell_603/Sigmoid:y:0 lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_603/add_1AddV2lstm_cell_603/mul:z:0lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_2Sigmoidlstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_603/Relu_1Relulstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_2Mullstm_cell_603/Sigmoid_2:y:0"lstm_cell_603/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_603_matmul_readvariableop_resource.lstm_cell_603_matmul_1_readvariableop_resource-lstm_cell_603_biasadd_readvariableop_resource*
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
while_body_3663869*
condR
while_cond_3663868*K
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
NoOpNoOp%^lstm_cell_603/BiasAdd/ReadVariableOp$^lstm_cell_603/MatMul/ReadVariableOp&^lstm_cell_603/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_603/BiasAdd/ReadVariableOp$lstm_cell_603/BiasAdd/ReadVariableOp2J
#lstm_cell_603/MatMul/ReadVariableOp#lstm_cell_603/MatMul/ReadVariableOp2N
%lstm_cell_603/MatMul_1/ReadVariableOp%lstm_cell_603/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3660743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_604_3660767_0:	d?0
while_lstm_cell_604_3660769_0:	2?,
while_lstm_cell_604_3660771_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_604_3660767:	d?.
while_lstm_cell_604_3660769:	2?*
while_lstm_cell_604_3660771:	???+while/lstm_cell_604/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_604/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_604_3660767_0while_lstm_cell_604_3660769_0while_lstm_cell_604_3660771_0*
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660729?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_604/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_604/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_604/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_604/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_604_3660767while_lstm_cell_604_3660767_0"<
while_lstm_cell_604_3660769while_lstm_cell_604_3660769_0"<
while_lstm_cell_604_3660771while_lstm_cell_604_3660771_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_604/StatefulPartitionedCall+while/lstm_cell_604/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664712

inputs?
,lstm_cell_604_matmul_readvariableop_resource:	d?A
.lstm_cell_604_matmul_1_readvariableop_resource:	2?<
-lstm_cell_604_biasadd_readvariableop_resource:	?
identity??$lstm_cell_604/BiasAdd/ReadVariableOp?#lstm_cell_604/MatMul/ReadVariableOp?%lstm_cell_604/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_604/MatMul/ReadVariableOpReadVariableOp,lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_604/MatMulMatMulstrided_slice_2:output:0+lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_604/MatMul_1MatMulzeros:output:0-lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_604/addAddV2lstm_cell_604/MatMul:product:0 lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_604/BiasAddBiasAddlstm_cell_604/add:z:0,lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_604/splitSplit&lstm_cell_604/split/split_dim:output:0lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_604/SigmoidSigmoidlstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_1Sigmoidlstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_604/mulMullstm_cell_604/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_604/ReluRelulstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_1Mullstm_cell_604/Sigmoid:y:0 lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_604/add_1AddV2lstm_cell_604/mul:z:0lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_2Sigmoidlstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_604/Relu_1Relulstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_2Mullstm_cell_604/Sigmoid_2:y:0"lstm_cell_604/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_604_matmul_readvariableop_resource.lstm_cell_604_matmul_1_readvariableop_resource-lstm_cell_604_biasadd_readvariableop_resource*
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
while_body_3664628*
condR
while_cond_3664627*K
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
NoOpNoOp%^lstm_cell_604/BiasAdd/ReadVariableOp$^lstm_cell_604/MatMul/ReadVariableOp&^lstm_cell_604/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_604/BiasAdd/ReadVariableOp$lstm_cell_604/BiasAdd/ReadVariableOp2J
#lstm_cell_604/MatMul/ReadVariableOp#lstm_cell_604/MatMul/ReadVariableOp2N
%lstm_cell_604/MatMul_1/ReadVariableOp%lstm_cell_604/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_210_layer_call_and_return_conditional_losses_3661829

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
while_cond_3664627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3664627___redundant_placeholder05
1while_while_cond_3664627___redundant_placeholder15
1while_while_cond_3664627___redundant_placeholder25
1while_while_cond_3664627___redundant_placeholder3
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

lstm_631_while_body_3663251.
*lstm_631_while_lstm_631_while_loop_counter4
0lstm_631_while_lstm_631_while_maximum_iterations
lstm_631_while_placeholder 
lstm_631_while_placeholder_1 
lstm_631_while_placeholder_2 
lstm_631_while_placeholder_3-
)lstm_631_while_lstm_631_strided_slice_1_0i
elstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0:	d?R
?lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?M
>lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
lstm_631_while_identity
lstm_631_while_identity_1
lstm_631_while_identity_2
lstm_631_while_identity_3
lstm_631_while_identity_4
lstm_631_while_identity_5+
'lstm_631_while_lstm_631_strided_slice_1g
clstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensorN
;lstm_631_while_lstm_cell_604_matmul_readvariableop_resource:	d?P
=lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource:	2?K
<lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource:	???3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp?2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp?4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp?
@lstm_631/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_631/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensor_0lstm_631_while_placeholderIlstm_631/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp=lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_631/while/lstm_cell_604/MatMulMatMul9lstm_631/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp?lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_631/while/lstm_cell_604/MatMul_1MatMullstm_631_while_placeholder_2<lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_631/while/lstm_cell_604/addAddV2-lstm_631/while/lstm_cell_604/MatMul:product:0/lstm_631/while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp>lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_631/while/lstm_cell_604/BiasAddBiasAdd$lstm_631/while/lstm_cell_604/add:z:0;lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_631/while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_631/while/lstm_cell_604/splitSplit5lstm_631/while/lstm_cell_604/split/split_dim:output:0-lstm_631/while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_631/while/lstm_cell_604/SigmoidSigmoid+lstm_631/while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_631/while/lstm_cell_604/Sigmoid_1Sigmoid+lstm_631/while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_631/while/lstm_cell_604/mulMul*lstm_631/while/lstm_cell_604/Sigmoid_1:y:0lstm_631_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_631/while/lstm_cell_604/ReluRelu+lstm_631/while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_631/while/lstm_cell_604/mul_1Mul(lstm_631/while/lstm_cell_604/Sigmoid:y:0/lstm_631/while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_631/while/lstm_cell_604/add_1AddV2$lstm_631/while/lstm_cell_604/mul:z:0&lstm_631/while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_631/while/lstm_cell_604/Sigmoid_2Sigmoid+lstm_631/while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_631/while/lstm_cell_604/Relu_1Relu&lstm_631/while/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_631/while/lstm_cell_604/mul_2Mul*lstm_631/while/lstm_cell_604/Sigmoid_2:y:01lstm_631/while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_631/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_631_while_placeholder_1lstm_631_while_placeholder&lstm_631/while/lstm_cell_604/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_631/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_631/while/addAddV2lstm_631_while_placeholderlstm_631/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_631/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_631/while/add_1AddV2*lstm_631_while_lstm_631_while_loop_counterlstm_631/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_631/while/IdentityIdentitylstm_631/while/add_1:z:0^lstm_631/while/NoOp*
T0*
_output_shapes
: ?
lstm_631/while/Identity_1Identity0lstm_631_while_lstm_631_while_maximum_iterations^lstm_631/while/NoOp*
T0*
_output_shapes
: t
lstm_631/while/Identity_2Identitylstm_631/while/add:z:0^lstm_631/while/NoOp*
T0*
_output_shapes
: ?
lstm_631/while/Identity_3IdentityClstm_631/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_631/while/NoOp*
T0*
_output_shapes
: ?
lstm_631/while/Identity_4Identity&lstm_631/while/lstm_cell_604/mul_2:z:0^lstm_631/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_631/while/Identity_5Identity&lstm_631/while/lstm_cell_604/add_1:z:0^lstm_631/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_631/while/NoOpNoOp4^lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp3^lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp5^lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_631_while_identity lstm_631/while/Identity:output:0"?
lstm_631_while_identity_1"lstm_631/while/Identity_1:output:0"?
lstm_631_while_identity_2"lstm_631/while/Identity_2:output:0"?
lstm_631_while_identity_3"lstm_631/while/Identity_3:output:0"?
lstm_631_while_identity_4"lstm_631/while/Identity_4:output:0"?
lstm_631_while_identity_5"lstm_631/while/Identity_5:output:0"T
'lstm_631_while_lstm_631_strided_slice_1)lstm_631_while_lstm_631_strided_slice_1_0"~
<lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource>lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0"?
=lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource?lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0"|
;lstm_631_while_lstm_cell_604_matmul_readvariableop_resource=lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0"?
clstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensorelstm_631_while_tensorarrayv2read_tensorlistgetitem_lstm_631_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp3lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp2h
2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp2lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp2l
4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp4lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_631_layer_call_fn_3664140

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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3662192s
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

?
lstm_631_while_cond_3663250.
*lstm_631_while_lstm_631_while_loop_counter4
0lstm_631_while_lstm_631_while_maximum_iterations
lstm_631_while_placeholder 
lstm_631_while_placeholder_1 
lstm_631_while_placeholder_2 
lstm_631_while_placeholder_30
,lstm_631_while_less_lstm_631_strided_slice_1G
Clstm_631_while_lstm_631_while_cond_3663250___redundant_placeholder0G
Clstm_631_while_lstm_631_while_cond_3663250___redundant_placeholder1G
Clstm_631_while_lstm_631_while_cond_3663250___redundant_placeholder2G
Clstm_631_while_lstm_631_while_cond_3663250___redundant_placeholder3
lstm_631_while_identity
?
lstm_631/while/LessLesslstm_631_while_placeholder,lstm_631_while_less_lstm_631_strided_slice_1*
T0*
_output_shapes
: ]
lstm_631/while/IdentityIdentitylstm_631/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_631_while_identity lstm_631/while/Identity:output:0*(
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
while_body_3664199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_604_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_604_matmul_readvariableop_resource:	d?G
4while_lstm_cell_604_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_604_biasadd_readvariableop_resource:	???*while/lstm_cell_604/BiasAdd/ReadVariableOp?)while/lstm_cell_604/MatMul/ReadVariableOp?+while/lstm_cell_604/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_604/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_604/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_604/addAddV2$while/lstm_cell_604/MatMul:product:0&while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_604/BiasAddBiasAddwhile/lstm_cell_604/add:z:02while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_604/splitSplit,while/lstm_cell_604/split/split_dim:output:0$while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_604/SigmoidSigmoid"while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_1Sigmoid"while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mulMul!while/lstm_cell_604/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_604/ReluRelu"while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_1Mulwhile/lstm_cell_604/Sigmoid:y:0&while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/add_1AddV2while/lstm_cell_604/mul:z:0while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_2Sigmoid"while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_604/Relu_1Reluwhile/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_2Mul!while/lstm_cell_604/Sigmoid_2:y:0(while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_604/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_604/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_604/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_604/BiasAdd/ReadVariableOp*^while/lstm_cell_604/MatMul/ReadVariableOp,^while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_604_biasadd_readvariableop_resource5while_lstm_cell_604_biasadd_readvariableop_resource_0"n
4while_lstm_cell_604_matmul_1_readvariableop_resource6while_lstm_cell_604_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_604_matmul_readvariableop_resource4while_lstm_cell_604_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_604/BiasAdd/ReadVariableOp*while/lstm_cell_604/BiasAdd/ReadVariableOp2V
)while/lstm_cell_604/MatMul/ReadVariableOp)while/lstm_cell_604/MatMul/ReadVariableOp2Z
+while/lstm_cell_604/MatMul_1/ReadVariableOp+while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3665243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3665243___redundant_placeholder05
1while_while_cond_3665243___redundant_placeholder15
1while_while_cond_3665243___redundant_placeholder25
1while_while_cond_3665243___redundant_placeholder3
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
while_body_3664012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_603_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_603_matmul_readvariableop_resource:	?G
4while_lstm_cell_603_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_603_biasadd_readvariableop_resource:	???*while/lstm_cell_603/BiasAdd/ReadVariableOp?)while/lstm_cell_603/MatMul/ReadVariableOp?+while/lstm_cell_603/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_603/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_603/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_603/addAddV2$while/lstm_cell_603/MatMul:product:0&while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_603/BiasAddBiasAddwhile/lstm_cell_603/add:z:02while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_603/splitSplit,while/lstm_cell_603/split/split_dim:output:0$while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_603/SigmoidSigmoid"while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_1Sigmoid"while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mulMul!while/lstm_cell_603/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_603/ReluRelu"while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_1Mulwhile/lstm_cell_603/Sigmoid:y:0&while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/add_1AddV2while/lstm_cell_603/mul:z:0while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_2Sigmoid"while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_603/Relu_1Reluwhile/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_2Mul!while/lstm_cell_603/Sigmoid_2:y:0(while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_603/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_603/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_603/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_603/BiasAdd/ReadVariableOp*^while/lstm_cell_603/MatMul/ReadVariableOp,^while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_603_biasadd_readvariableop_resource5while_lstm_cell_603_biasadd_readvariableop_resource_0"n
4while_lstm_cell_603_matmul_1_readvariableop_resource6while_lstm_cell_603_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_603_matmul_readvariableop_resource4while_lstm_cell_603_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_603/BiasAdd/ReadVariableOp*while/lstm_cell_603/BiasAdd/ReadVariableOp2V
)while/lstm_cell_603/MatMul/ReadVariableOp)while/lstm_cell_603/MatMul/ReadVariableOp2Z
+while/lstm_cell_603/MatMul_1/ReadVariableOp+while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3664485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_604_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_604_matmul_readvariableop_resource:	d?G
4while_lstm_cell_604_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_604_biasadd_readvariableop_resource:	???*while/lstm_cell_604/BiasAdd/ReadVariableOp?)while/lstm_cell_604/MatMul/ReadVariableOp?+while/lstm_cell_604/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_604/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_604/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_604/addAddV2$while/lstm_cell_604/MatMul:product:0&while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_604/BiasAddBiasAddwhile/lstm_cell_604/add:z:02while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_604/splitSplit,while/lstm_cell_604/split/split_dim:output:0$while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_604/SigmoidSigmoid"while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_1Sigmoid"while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mulMul!while/lstm_cell_604/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_604/ReluRelu"while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_1Mulwhile/lstm_cell_604/Sigmoid:y:0&while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/add_1AddV2while/lstm_cell_604/mul:z:0while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_2Sigmoid"while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_604/Relu_1Reluwhile/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_2Mul!while/lstm_cell_604/Sigmoid_2:y:0(while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_604/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_604/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_604/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_604/BiasAdd/ReadVariableOp*^while/lstm_cell_604/MatMul/ReadVariableOp,^while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_604_biasadd_readvariableop_resource5while_lstm_cell_604_biasadd_readvariableop_resource_0"n
4while_lstm_cell_604_matmul_1_readvariableop_resource6while_lstm_cell_604_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_604_matmul_readvariableop_resource4while_lstm_cell_604_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_604/BiasAdd/ReadVariableOp*while/lstm_cell_604/BiasAdd/ReadVariableOp2V
)while/lstm_cell_604/MatMul/ReadVariableOp)while/lstm_cell_604/MatMul/ReadVariableOp2Z
+while/lstm_cell_604/MatMul_1/ReadVariableOp+while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3663480

inputsH
5lstm_630_lstm_cell_603_matmul_readvariableop_resource:	?J
7lstm_630_lstm_cell_603_matmul_1_readvariableop_resource:	d?E
6lstm_630_lstm_cell_603_biasadd_readvariableop_resource:	?H
5lstm_631_lstm_cell_604_matmul_readvariableop_resource:	d?J
7lstm_631_lstm_cell_604_matmul_1_readvariableop_resource:	2?E
6lstm_631_lstm_cell_604_biasadd_readvariableop_resource:	?G
5lstm_632_lstm_cell_605_matmul_readvariableop_resource:2(I
7lstm_632_lstm_cell_605_matmul_1_readvariableop_resource:
(D
6lstm_632_lstm_cell_605_biasadd_readvariableop_resource:(:
(dense_210_matmul_readvariableop_resource:
7
)dense_210_biasadd_readvariableop_resource:
identity?? dense_210/BiasAdd/ReadVariableOp?dense_210/MatMul/ReadVariableOp?-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp?,lstm_630/lstm_cell_603/MatMul/ReadVariableOp?.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp?lstm_630/while?-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp?,lstm_631/lstm_cell_604/MatMul/ReadVariableOp?.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp?lstm_631/while?-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp?,lstm_632/lstm_cell_605/MatMul/ReadVariableOp?.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp?lstm_632/whileD
lstm_630/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_630/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_630/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_630/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_sliceStridedSlicelstm_630/Shape:output:0%lstm_630/strided_slice/stack:output:0'lstm_630/strided_slice/stack_1:output:0'lstm_630/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_630/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_630/zeros/packedPacklstm_630/strided_slice:output:0 lstm_630/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_630/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_630/zerosFilllstm_630/zeros/packed:output:0lstm_630/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_630/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_630/zeros_1/packedPacklstm_630/strided_slice:output:0"lstm_630/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_630/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_630/zeros_1Fill lstm_630/zeros_1/packed:output:0lstm_630/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_630/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_630/transpose	Transposeinputs lstm_630/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_630/Shape_1Shapelstm_630/transpose:y:0*
T0*
_output_shapes
:h
lstm_630/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_630/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_630/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_slice_1StridedSlicelstm_630/Shape_1:output:0'lstm_630/strided_slice_1/stack:output:0)lstm_630/strided_slice_1/stack_1:output:0)lstm_630/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_630/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_630/TensorArrayV2TensorListReserve-lstm_630/TensorArrayV2/element_shape:output:0!lstm_630/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_630/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_630/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_630/transpose:y:0Glstm_630/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_630/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_630/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_630/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_slice_2StridedSlicelstm_630/transpose:y:0'lstm_630/strided_slice_2/stack:output:0)lstm_630/strided_slice_2/stack_1:output:0)lstm_630/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_630/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp5lstm_630_lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_630/lstm_cell_603/MatMulMatMul!lstm_630/strided_slice_2:output:04lstm_630/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp7lstm_630_lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_630/lstm_cell_603/MatMul_1MatMullstm_630/zeros:output:06lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_630/lstm_cell_603/addAddV2'lstm_630/lstm_cell_603/MatMul:product:0)lstm_630/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp6lstm_630_lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_630/lstm_cell_603/BiasAddBiasAddlstm_630/lstm_cell_603/add:z:05lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_630/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_630/lstm_cell_603/splitSplit/lstm_630/lstm_cell_603/split/split_dim:output:0'lstm_630/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_630/lstm_cell_603/SigmoidSigmoid%lstm_630/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_630/lstm_cell_603/Sigmoid_1Sigmoid%lstm_630/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/mulMul$lstm_630/lstm_cell_603/Sigmoid_1:y:0lstm_630/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_630/lstm_cell_603/ReluRelu%lstm_630/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/mul_1Mul"lstm_630/lstm_cell_603/Sigmoid:y:0)lstm_630/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/add_1AddV2lstm_630/lstm_cell_603/mul:z:0 lstm_630/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_630/lstm_cell_603/Sigmoid_2Sigmoid%lstm_630/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_630/lstm_cell_603/Relu_1Relu lstm_630/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/mul_2Mul$lstm_630/lstm_cell_603/Sigmoid_2:y:0+lstm_630/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_630/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_630/TensorArrayV2_1TensorListReserve/lstm_630/TensorArrayV2_1/element_shape:output:0!lstm_630/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_630/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_630/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_630/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_630/whileWhile$lstm_630/while/loop_counter:output:0*lstm_630/while/maximum_iterations:output:0lstm_630/time:output:0!lstm_630/TensorArrayV2_1:handle:0lstm_630/zeros:output:0lstm_630/zeros_1:output:0!lstm_630/strided_slice_1:output:0@lstm_630/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_630_lstm_cell_603_matmul_readvariableop_resource7lstm_630_lstm_cell_603_matmul_1_readvariableop_resource6lstm_630_lstm_cell_603_biasadd_readvariableop_resource*
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
lstm_630_while_body_3663112*'
condR
lstm_630_while_cond_3663111*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_630/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_630/TensorArrayV2Stack/TensorListStackTensorListStacklstm_630/while:output:3Blstm_630/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_630/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_630/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_630/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_slice_3StridedSlice4lstm_630/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_630/strided_slice_3/stack:output:0)lstm_630/strided_slice_3/stack_1:output:0)lstm_630/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_630/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_630/transpose_1	Transpose4lstm_630/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_630/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_630/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_631/ShapeShapelstm_630/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_631/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_631/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_631/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_sliceStridedSlicelstm_631/Shape:output:0%lstm_631/strided_slice/stack:output:0'lstm_631/strided_slice/stack_1:output:0'lstm_631/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_631/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_631/zeros/packedPacklstm_631/strided_slice:output:0 lstm_631/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_631/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_631/zerosFilllstm_631/zeros/packed:output:0lstm_631/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_631/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_631/zeros_1/packedPacklstm_631/strided_slice:output:0"lstm_631/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_631/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_631/zeros_1Fill lstm_631/zeros_1/packed:output:0lstm_631/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_631/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_631/transpose	Transposelstm_630/transpose_1:y:0 lstm_631/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_631/Shape_1Shapelstm_631/transpose:y:0*
T0*
_output_shapes
:h
lstm_631/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_631/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_631/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_slice_1StridedSlicelstm_631/Shape_1:output:0'lstm_631/strided_slice_1/stack:output:0)lstm_631/strided_slice_1/stack_1:output:0)lstm_631/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_631/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_631/TensorArrayV2TensorListReserve-lstm_631/TensorArrayV2/element_shape:output:0!lstm_631/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_631/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_631/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_631/transpose:y:0Glstm_631/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_631/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_631/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_631/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_slice_2StridedSlicelstm_631/transpose:y:0'lstm_631/strided_slice_2/stack:output:0)lstm_631/strided_slice_2/stack_1:output:0)lstm_631/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_631/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp5lstm_631_lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_631/lstm_cell_604/MatMulMatMul!lstm_631/strided_slice_2:output:04lstm_631/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp7lstm_631_lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_631/lstm_cell_604/MatMul_1MatMullstm_631/zeros:output:06lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_631/lstm_cell_604/addAddV2'lstm_631/lstm_cell_604/MatMul:product:0)lstm_631/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp6lstm_631_lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_631/lstm_cell_604/BiasAddBiasAddlstm_631/lstm_cell_604/add:z:05lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_631/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_631/lstm_cell_604/splitSplit/lstm_631/lstm_cell_604/split/split_dim:output:0'lstm_631/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_631/lstm_cell_604/SigmoidSigmoid%lstm_631/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_631/lstm_cell_604/Sigmoid_1Sigmoid%lstm_631/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/mulMul$lstm_631/lstm_cell_604/Sigmoid_1:y:0lstm_631/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_631/lstm_cell_604/ReluRelu%lstm_631/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/mul_1Mul"lstm_631/lstm_cell_604/Sigmoid:y:0)lstm_631/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/add_1AddV2lstm_631/lstm_cell_604/mul:z:0 lstm_631/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_631/lstm_cell_604/Sigmoid_2Sigmoid%lstm_631/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_631/lstm_cell_604/Relu_1Relu lstm_631/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/mul_2Mul$lstm_631/lstm_cell_604/Sigmoid_2:y:0+lstm_631/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_631/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_631/TensorArrayV2_1TensorListReserve/lstm_631/TensorArrayV2_1/element_shape:output:0!lstm_631/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_631/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_631/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_631/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_631/whileWhile$lstm_631/while/loop_counter:output:0*lstm_631/while/maximum_iterations:output:0lstm_631/time:output:0!lstm_631/TensorArrayV2_1:handle:0lstm_631/zeros:output:0lstm_631/zeros_1:output:0!lstm_631/strided_slice_1:output:0@lstm_631/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_631_lstm_cell_604_matmul_readvariableop_resource7lstm_631_lstm_cell_604_matmul_1_readvariableop_resource6lstm_631_lstm_cell_604_biasadd_readvariableop_resource*
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
lstm_631_while_body_3663251*'
condR
lstm_631_while_cond_3663250*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_631/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_631/TensorArrayV2Stack/TensorListStackTensorListStacklstm_631/while:output:3Blstm_631/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_631/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_631/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_631/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_slice_3StridedSlice4lstm_631/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_631/strided_slice_3/stack:output:0)lstm_631/strided_slice_3/stack_1:output:0)lstm_631/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_631/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_631/transpose_1	Transpose4lstm_631/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_631/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_631/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_632/ShapeShapelstm_631/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_632/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_632/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_632/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_sliceStridedSlicelstm_632/Shape:output:0%lstm_632/strided_slice/stack:output:0'lstm_632/strided_slice/stack_1:output:0'lstm_632/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_632/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_632/zeros/packedPacklstm_632/strided_slice:output:0 lstm_632/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_632/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_632/zerosFilllstm_632/zeros/packed:output:0lstm_632/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_632/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_632/zeros_1/packedPacklstm_632/strided_slice:output:0"lstm_632/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_632/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_632/zeros_1Fill lstm_632/zeros_1/packed:output:0lstm_632/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_632/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_632/transpose	Transposelstm_631/transpose_1:y:0 lstm_632/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_632/Shape_1Shapelstm_632/transpose:y:0*
T0*
_output_shapes
:h
lstm_632/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_632/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_632/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_slice_1StridedSlicelstm_632/Shape_1:output:0'lstm_632/strided_slice_1/stack:output:0)lstm_632/strided_slice_1/stack_1:output:0)lstm_632/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_632/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_632/TensorArrayV2TensorListReserve-lstm_632/TensorArrayV2/element_shape:output:0!lstm_632/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_632/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_632/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_632/transpose:y:0Glstm_632/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_632/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_632/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_632/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_slice_2StridedSlicelstm_632/transpose:y:0'lstm_632/strided_slice_2/stack:output:0)lstm_632/strided_slice_2/stack_1:output:0)lstm_632/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_632/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp5lstm_632_lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_632/lstm_cell_605/MatMulMatMul!lstm_632/strided_slice_2:output:04lstm_632/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp7lstm_632_lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_632/lstm_cell_605/MatMul_1MatMullstm_632/zeros:output:06lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_632/lstm_cell_605/addAddV2'lstm_632/lstm_cell_605/MatMul:product:0)lstm_632/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp6lstm_632_lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_632/lstm_cell_605/BiasAddBiasAddlstm_632/lstm_cell_605/add:z:05lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_632/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_632/lstm_cell_605/splitSplit/lstm_632/lstm_cell_605/split/split_dim:output:0'lstm_632/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_632/lstm_cell_605/SigmoidSigmoid%lstm_632/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_632/lstm_cell_605/Sigmoid_1Sigmoid%lstm_632/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/mulMul$lstm_632/lstm_cell_605/Sigmoid_1:y:0lstm_632/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_632/lstm_cell_605/ReluRelu%lstm_632/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/mul_1Mul"lstm_632/lstm_cell_605/Sigmoid:y:0)lstm_632/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/add_1AddV2lstm_632/lstm_cell_605/mul:z:0 lstm_632/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_632/lstm_cell_605/Sigmoid_2Sigmoid%lstm_632/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_632/lstm_cell_605/Relu_1Relu lstm_632/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/mul_2Mul$lstm_632/lstm_cell_605/Sigmoid_2:y:0+lstm_632/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_632/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_632/TensorArrayV2_1TensorListReserve/lstm_632/TensorArrayV2_1/element_shape:output:0!lstm_632/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_632/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_632/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_632/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_632/whileWhile$lstm_632/while/loop_counter:output:0*lstm_632/while/maximum_iterations:output:0lstm_632/time:output:0!lstm_632/TensorArrayV2_1:handle:0lstm_632/zeros:output:0lstm_632/zeros_1:output:0!lstm_632/strided_slice_1:output:0@lstm_632/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_632_lstm_cell_605_matmul_readvariableop_resource7lstm_632_lstm_cell_605_matmul_1_readvariableop_resource6lstm_632_lstm_cell_605_biasadd_readvariableop_resource*
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
lstm_632_while_body_3663390*'
condR
lstm_632_while_cond_3663389*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_632/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_632/TensorArrayV2Stack/TensorListStackTensorListStacklstm_632/while:output:3Blstm_632/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_632/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_632/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_632/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_slice_3StridedSlice4lstm_632/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_632/strided_slice_3/stack:output:0)lstm_632/strided_slice_3/stack_1:output:0)lstm_632/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_632/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_632/transpose_1	Transpose4lstm_632/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_632/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_632/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_210/MatMul/ReadVariableOpReadVariableOp(dense_210_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_210/MatMulMatMul!lstm_632/strided_slice_3:output:0'dense_210/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_210/BiasAdd/ReadVariableOpReadVariableOp)dense_210_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_210/BiasAddBiasAdddense_210/MatMul:product:0(dense_210/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_210/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_210/BiasAdd/ReadVariableOp ^dense_210/MatMul/ReadVariableOp.^lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp-^lstm_630/lstm_cell_603/MatMul/ReadVariableOp/^lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp^lstm_630/while.^lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp-^lstm_631/lstm_cell_604/MatMul/ReadVariableOp/^lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp^lstm_631/while.^lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp-^lstm_632/lstm_cell_605/MatMul/ReadVariableOp/^lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp^lstm_632/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_210/BiasAdd/ReadVariableOp dense_210/BiasAdd/ReadVariableOp2B
dense_210/MatMul/ReadVariableOpdense_210/MatMul/ReadVariableOp2^
-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp2\
,lstm_630/lstm_cell_603/MatMul/ReadVariableOp,lstm_630/lstm_cell_603/MatMul/ReadVariableOp2`
.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp2 
lstm_630/whilelstm_630/while2^
-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp2\
,lstm_631/lstm_cell_604/MatMul/ReadVariableOp,lstm_631/lstm_cell_604/MatMul/ReadVariableOp2`
.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp2 
lstm_631/whilelstm_631/while2^
-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp2\
,lstm_632/lstm_cell_605/MatMul/ReadVariableOp,lstm_632/lstm_cell_605/MatMul/ReadVariableOp2`
.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp2 
lstm_632/whilelstm_632/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3665413

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
?T
?
*sequential_210_lstm_631_while_body_3660083L
Hsequential_210_lstm_631_while_sequential_210_lstm_631_while_loop_counterR
Nsequential_210_lstm_631_while_sequential_210_lstm_631_while_maximum_iterations-
)sequential_210_lstm_631_while_placeholder/
+sequential_210_lstm_631_while_placeholder_1/
+sequential_210_lstm_631_while_placeholder_2/
+sequential_210_lstm_631_while_placeholder_3K
Gsequential_210_lstm_631_while_sequential_210_lstm_631_strided_slice_1_0?
?sequential_210_lstm_631_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_631_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_210_lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0:	d?a
Nsequential_210_lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?\
Msequential_210_lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0:	?*
&sequential_210_lstm_631_while_identity,
(sequential_210_lstm_631_while_identity_1,
(sequential_210_lstm_631_while_identity_2,
(sequential_210_lstm_631_while_identity_3,
(sequential_210_lstm_631_while_identity_4,
(sequential_210_lstm_631_while_identity_5I
Esequential_210_lstm_631_while_sequential_210_lstm_631_strided_slice_1?
?sequential_210_lstm_631_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_631_tensorarrayunstack_tensorlistfromtensor]
Jsequential_210_lstm_631_while_lstm_cell_604_matmul_readvariableop_resource:	d?_
Lsequential_210_lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource:	2?Z
Ksequential_210_lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource:	???Bsequential_210/lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp?Asequential_210/lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp?Csequential_210/lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp?
Osequential_210/lstm_631/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_210/lstm_631/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_210_lstm_631_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_631_tensorarrayunstack_tensorlistfromtensor_0)sequential_210_lstm_631_while_placeholderXsequential_210/lstm_631/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_210/lstm_631/while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOpLsequential_210_lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_210/lstm_631/while/lstm_cell_604/MatMulMatMulHsequential_210/lstm_631/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_210/lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_210/lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOpNsequential_210_lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_210/lstm_631/while/lstm_cell_604/MatMul_1MatMul+sequential_210_lstm_631_while_placeholder_2Ksequential_210/lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_210/lstm_631/while/lstm_cell_604/addAddV2<sequential_210/lstm_631/while/lstm_cell_604/MatMul:product:0>sequential_210/lstm_631/while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_210/lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOpMsequential_210_lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_210/lstm_631/while/lstm_cell_604/BiasAddBiasAdd3sequential_210/lstm_631/while/lstm_cell_604/add:z:0Jsequential_210/lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_210/lstm_631/while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_210/lstm_631/while/lstm_cell_604/splitSplitDsequential_210/lstm_631/while/lstm_cell_604/split/split_dim:output:0<sequential_210/lstm_631/while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_210/lstm_631/while/lstm_cell_604/SigmoidSigmoid:sequential_210/lstm_631/while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_210/lstm_631/while/lstm_cell_604/Sigmoid_1Sigmoid:sequential_210/lstm_631/while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_210/lstm_631/while/lstm_cell_604/mulMul9sequential_210/lstm_631/while/lstm_cell_604/Sigmoid_1:y:0+sequential_210_lstm_631_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_210/lstm_631/while/lstm_cell_604/ReluRelu:sequential_210/lstm_631/while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_210/lstm_631/while/lstm_cell_604/mul_1Mul7sequential_210/lstm_631/while/lstm_cell_604/Sigmoid:y:0>sequential_210/lstm_631/while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_210/lstm_631/while/lstm_cell_604/add_1AddV23sequential_210/lstm_631/while/lstm_cell_604/mul:z:05sequential_210/lstm_631/while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_210/lstm_631/while/lstm_cell_604/Sigmoid_2Sigmoid:sequential_210/lstm_631/while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_210/lstm_631/while/lstm_cell_604/Relu_1Relu5sequential_210/lstm_631/while/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_210/lstm_631/while/lstm_cell_604/mul_2Mul9sequential_210/lstm_631/while/lstm_cell_604/Sigmoid_2:y:0@sequential_210/lstm_631/while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_210/lstm_631/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_210_lstm_631_while_placeholder_1)sequential_210_lstm_631_while_placeholder5sequential_210/lstm_631/while/lstm_cell_604/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_210/lstm_631/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_210/lstm_631/while/addAddV2)sequential_210_lstm_631_while_placeholder,sequential_210/lstm_631/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_210/lstm_631/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_210/lstm_631/while/add_1AddV2Hsequential_210_lstm_631_while_sequential_210_lstm_631_while_loop_counter.sequential_210/lstm_631/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_210/lstm_631/while/IdentityIdentity'sequential_210/lstm_631/while/add_1:z:0#^sequential_210/lstm_631/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_631/while/Identity_1IdentityNsequential_210_lstm_631_while_sequential_210_lstm_631_while_maximum_iterations#^sequential_210/lstm_631/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_631/while/Identity_2Identity%sequential_210/lstm_631/while/add:z:0#^sequential_210/lstm_631/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_631/while/Identity_3IdentityRsequential_210/lstm_631/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_210/lstm_631/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_631/while/Identity_4Identity5sequential_210/lstm_631/while/lstm_cell_604/mul_2:z:0#^sequential_210/lstm_631/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_210/lstm_631/while/Identity_5Identity5sequential_210/lstm_631/while/lstm_cell_604/add_1:z:0#^sequential_210/lstm_631/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_210/lstm_631/while/NoOpNoOpC^sequential_210/lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOpB^sequential_210/lstm_631/while/lstm_cell_604/MatMul/ReadVariableOpD^sequential_210/lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_210_lstm_631_while_identity/sequential_210/lstm_631/while/Identity:output:0"]
(sequential_210_lstm_631_while_identity_11sequential_210/lstm_631/while/Identity_1:output:0"]
(sequential_210_lstm_631_while_identity_21sequential_210/lstm_631/while/Identity_2:output:0"]
(sequential_210_lstm_631_while_identity_31sequential_210/lstm_631/while/Identity_3:output:0"]
(sequential_210_lstm_631_while_identity_41sequential_210/lstm_631/while/Identity_4:output:0"]
(sequential_210_lstm_631_while_identity_51sequential_210/lstm_631/while/Identity_5:output:0"?
Ksequential_210_lstm_631_while_lstm_cell_604_biasadd_readvariableop_resourceMsequential_210_lstm_631_while_lstm_cell_604_biasadd_readvariableop_resource_0"?
Lsequential_210_lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resourceNsequential_210_lstm_631_while_lstm_cell_604_matmul_1_readvariableop_resource_0"?
Jsequential_210_lstm_631_while_lstm_cell_604_matmul_readvariableop_resourceLsequential_210_lstm_631_while_lstm_cell_604_matmul_readvariableop_resource_0"?
Esequential_210_lstm_631_while_sequential_210_lstm_631_strided_slice_1Gsequential_210_lstm_631_while_sequential_210_lstm_631_strided_slice_1_0"?
?sequential_210_lstm_631_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_631_tensorarrayunstack_tensorlistfromtensor?sequential_210_lstm_631_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_631_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_210/lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOpBsequential_210/lstm_631/while/lstm_cell_604/BiasAdd/ReadVariableOp2?
Asequential_210/lstm_631/while/lstm_cell_604/MatMul/ReadVariableOpAsequential_210/lstm_631/while/lstm_cell_604/MatMul/ReadVariableOp2?
Csequential_210/lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOpCsequential_210/lstm_631/while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3662192

inputs?
,lstm_cell_604_matmul_readvariableop_resource:	d?A
.lstm_cell_604_matmul_1_readvariableop_resource:	2?<
-lstm_cell_604_biasadd_readvariableop_resource:	?
identity??$lstm_cell_604/BiasAdd/ReadVariableOp?#lstm_cell_604/MatMul/ReadVariableOp?%lstm_cell_604/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_604/MatMul/ReadVariableOpReadVariableOp,lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_604/MatMulMatMulstrided_slice_2:output:0+lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_604/MatMul_1MatMulzeros:output:0-lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_604/addAddV2lstm_cell_604/MatMul:product:0 lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_604/BiasAddBiasAddlstm_cell_604/add:z:0,lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_604/splitSplit&lstm_cell_604/split/split_dim:output:0lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_604/SigmoidSigmoidlstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_1Sigmoidlstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_604/mulMullstm_cell_604/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_604/ReluRelulstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_1Mullstm_cell_604/Sigmoid:y:0 lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_604/add_1AddV2lstm_cell_604/mul:z:0lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_604/Sigmoid_2Sigmoidlstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_604/Relu_1Relulstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_604/mul_2Mullstm_cell_604/Sigmoid_2:y:0"lstm_cell_604/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_604_matmul_readvariableop_resource.lstm_cell_604_matmul_1_readvariableop_resource-lstm_cell_604_biasadd_readvariableop_resource*
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
while_body_3662108*
condR
while_cond_3662107*K
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
NoOpNoOp%^lstm_cell_604/BiasAdd/ReadVariableOp$^lstm_cell_604/MatMul/ReadVariableOp&^lstm_cell_604/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_604/BiasAdd/ReadVariableOp$lstm_cell_604/BiasAdd/ReadVariableOp2J
#lstm_cell_604/MatMul/ReadVariableOp#lstm_cell_604/MatMul/ReadVariableOp2N
%lstm_cell_604/MatMul_1/ReadVariableOp%lstm_cell_604/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3660312
lstm_630_inputW
Dsequential_210_lstm_630_lstm_cell_603_matmul_readvariableop_resource:	?Y
Fsequential_210_lstm_630_lstm_cell_603_matmul_1_readvariableop_resource:	d?T
Esequential_210_lstm_630_lstm_cell_603_biasadd_readvariableop_resource:	?W
Dsequential_210_lstm_631_lstm_cell_604_matmul_readvariableop_resource:	d?Y
Fsequential_210_lstm_631_lstm_cell_604_matmul_1_readvariableop_resource:	2?T
Esequential_210_lstm_631_lstm_cell_604_biasadd_readvariableop_resource:	?V
Dsequential_210_lstm_632_lstm_cell_605_matmul_readvariableop_resource:2(X
Fsequential_210_lstm_632_lstm_cell_605_matmul_1_readvariableop_resource:
(S
Esequential_210_lstm_632_lstm_cell_605_biasadd_readvariableop_resource:(I
7sequential_210_dense_210_matmul_readvariableop_resource:
F
8sequential_210_dense_210_biasadd_readvariableop_resource:
identity??/sequential_210/dense_210/BiasAdd/ReadVariableOp?.sequential_210/dense_210/MatMul/ReadVariableOp?<sequential_210/lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp?;sequential_210/lstm_630/lstm_cell_603/MatMul/ReadVariableOp?=sequential_210/lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp?sequential_210/lstm_630/while?<sequential_210/lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp?;sequential_210/lstm_631/lstm_cell_604/MatMul/ReadVariableOp?=sequential_210/lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp?sequential_210/lstm_631/while?<sequential_210/lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp?;sequential_210/lstm_632/lstm_cell_605/MatMul/ReadVariableOp?=sequential_210/lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp?sequential_210/lstm_632/while[
sequential_210/lstm_630/ShapeShapelstm_630_input*
T0*
_output_shapes
:u
+sequential_210/lstm_630/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_210/lstm_630/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_210/lstm_630/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_210/lstm_630/strided_sliceStridedSlice&sequential_210/lstm_630/Shape:output:04sequential_210/lstm_630/strided_slice/stack:output:06sequential_210/lstm_630/strided_slice/stack_1:output:06sequential_210/lstm_630/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_210/lstm_630/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_210/lstm_630/zeros/packedPack.sequential_210/lstm_630/strided_slice:output:0/sequential_210/lstm_630/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_210/lstm_630/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_210/lstm_630/zerosFill-sequential_210/lstm_630/zeros/packed:output:0,sequential_210/lstm_630/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_210/lstm_630/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_210/lstm_630/zeros_1/packedPack.sequential_210/lstm_630/strided_slice:output:01sequential_210/lstm_630/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_210/lstm_630/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_210/lstm_630/zeros_1Fill/sequential_210/lstm_630/zeros_1/packed:output:0.sequential_210/lstm_630/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_210/lstm_630/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_210/lstm_630/transpose	Transposelstm_630_input/sequential_210/lstm_630/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_210/lstm_630/Shape_1Shape%sequential_210/lstm_630/transpose:y:0*
T0*
_output_shapes
:w
-sequential_210/lstm_630/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_630/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_210/lstm_630/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_630/strided_slice_1StridedSlice(sequential_210/lstm_630/Shape_1:output:06sequential_210/lstm_630/strided_slice_1/stack:output:08sequential_210/lstm_630/strided_slice_1/stack_1:output:08sequential_210/lstm_630/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_210/lstm_630/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_210/lstm_630/TensorArrayV2TensorListReserve<sequential_210/lstm_630/TensorArrayV2/element_shape:output:00sequential_210/lstm_630/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_210/lstm_630/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_210/lstm_630/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_210/lstm_630/transpose:y:0Vsequential_210/lstm_630/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_210/lstm_630/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_630/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_210/lstm_630/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_630/strided_slice_2StridedSlice%sequential_210/lstm_630/transpose:y:06sequential_210/lstm_630/strided_slice_2/stack:output:08sequential_210/lstm_630/strided_slice_2/stack_1:output:08sequential_210/lstm_630/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_210/lstm_630/lstm_cell_603/MatMul/ReadVariableOpReadVariableOpDsequential_210_lstm_630_lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_210/lstm_630/lstm_cell_603/MatMulMatMul0sequential_210/lstm_630/strided_slice_2:output:0Csequential_210/lstm_630/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_210/lstm_630/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOpFsequential_210_lstm_630_lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_210/lstm_630/lstm_cell_603/MatMul_1MatMul&sequential_210/lstm_630/zeros:output:0Esequential_210/lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_210/lstm_630/lstm_cell_603/addAddV26sequential_210/lstm_630/lstm_cell_603/MatMul:product:08sequential_210/lstm_630/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_210/lstm_630/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOpEsequential_210_lstm_630_lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_210/lstm_630/lstm_cell_603/BiasAddBiasAdd-sequential_210/lstm_630/lstm_cell_603/add:z:0Dsequential_210/lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_210/lstm_630/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_210/lstm_630/lstm_cell_603/splitSplit>sequential_210/lstm_630/lstm_cell_603/split/split_dim:output:06sequential_210/lstm_630/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_210/lstm_630/lstm_cell_603/SigmoidSigmoid4sequential_210/lstm_630/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_210/lstm_630/lstm_cell_603/Sigmoid_1Sigmoid4sequential_210/lstm_630/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_210/lstm_630/lstm_cell_603/mulMul3sequential_210/lstm_630/lstm_cell_603/Sigmoid_1:y:0(sequential_210/lstm_630/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_210/lstm_630/lstm_cell_603/ReluRelu4sequential_210/lstm_630/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_210/lstm_630/lstm_cell_603/mul_1Mul1sequential_210/lstm_630/lstm_cell_603/Sigmoid:y:08sequential_210/lstm_630/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_210/lstm_630/lstm_cell_603/add_1AddV2-sequential_210/lstm_630/lstm_cell_603/mul:z:0/sequential_210/lstm_630/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_210/lstm_630/lstm_cell_603/Sigmoid_2Sigmoid4sequential_210/lstm_630/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_210/lstm_630/lstm_cell_603/Relu_1Relu/sequential_210/lstm_630/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_210/lstm_630/lstm_cell_603/mul_2Mul3sequential_210/lstm_630/lstm_cell_603/Sigmoid_2:y:0:sequential_210/lstm_630/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_210/lstm_630/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_210/lstm_630/TensorArrayV2_1TensorListReserve>sequential_210/lstm_630/TensorArrayV2_1/element_shape:output:00sequential_210/lstm_630/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_210/lstm_630/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_210/lstm_630/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_210/lstm_630/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_210/lstm_630/whileWhile3sequential_210/lstm_630/while/loop_counter:output:09sequential_210/lstm_630/while/maximum_iterations:output:0%sequential_210/lstm_630/time:output:00sequential_210/lstm_630/TensorArrayV2_1:handle:0&sequential_210/lstm_630/zeros:output:0(sequential_210/lstm_630/zeros_1:output:00sequential_210/lstm_630/strided_slice_1:output:0Osequential_210/lstm_630/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_210_lstm_630_lstm_cell_603_matmul_readvariableop_resourceFsequential_210_lstm_630_lstm_cell_603_matmul_1_readvariableop_resourceEsequential_210_lstm_630_lstm_cell_603_biasadd_readvariableop_resource*
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
*sequential_210_lstm_630_while_body_3659944*6
cond.R,
*sequential_210_lstm_630_while_cond_3659943*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_210/lstm_630/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_210/lstm_630/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_210/lstm_630/while:output:3Qsequential_210/lstm_630/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_210/lstm_630/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_210/lstm_630/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_630/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_630/strided_slice_3StridedSliceCsequential_210/lstm_630/TensorArrayV2Stack/TensorListStack:tensor:06sequential_210/lstm_630/strided_slice_3/stack:output:08sequential_210/lstm_630/strided_slice_3/stack_1:output:08sequential_210/lstm_630/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_210/lstm_630/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_210/lstm_630/transpose_1	TransposeCsequential_210/lstm_630/TensorArrayV2Stack/TensorListStack:tensor:01sequential_210/lstm_630/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_210/lstm_630/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_210/lstm_631/ShapeShape'sequential_210/lstm_630/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_210/lstm_631/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_210/lstm_631/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_210/lstm_631/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_210/lstm_631/strided_sliceStridedSlice&sequential_210/lstm_631/Shape:output:04sequential_210/lstm_631/strided_slice/stack:output:06sequential_210/lstm_631/strided_slice/stack_1:output:06sequential_210/lstm_631/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_210/lstm_631/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_210/lstm_631/zeros/packedPack.sequential_210/lstm_631/strided_slice:output:0/sequential_210/lstm_631/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_210/lstm_631/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_210/lstm_631/zerosFill-sequential_210/lstm_631/zeros/packed:output:0,sequential_210/lstm_631/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_210/lstm_631/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_210/lstm_631/zeros_1/packedPack.sequential_210/lstm_631/strided_slice:output:01sequential_210/lstm_631/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_210/lstm_631/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_210/lstm_631/zeros_1Fill/sequential_210/lstm_631/zeros_1/packed:output:0.sequential_210/lstm_631/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_210/lstm_631/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_210/lstm_631/transpose	Transpose'sequential_210/lstm_630/transpose_1:y:0/sequential_210/lstm_631/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_210/lstm_631/Shape_1Shape%sequential_210/lstm_631/transpose:y:0*
T0*
_output_shapes
:w
-sequential_210/lstm_631/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_631/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_210/lstm_631/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_631/strided_slice_1StridedSlice(sequential_210/lstm_631/Shape_1:output:06sequential_210/lstm_631/strided_slice_1/stack:output:08sequential_210/lstm_631/strided_slice_1/stack_1:output:08sequential_210/lstm_631/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_210/lstm_631/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_210/lstm_631/TensorArrayV2TensorListReserve<sequential_210/lstm_631/TensorArrayV2/element_shape:output:00sequential_210/lstm_631/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_210/lstm_631/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_210/lstm_631/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_210/lstm_631/transpose:y:0Vsequential_210/lstm_631/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_210/lstm_631/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_631/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_210/lstm_631/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_631/strided_slice_2StridedSlice%sequential_210/lstm_631/transpose:y:06sequential_210/lstm_631/strided_slice_2/stack:output:08sequential_210/lstm_631/strided_slice_2/stack_1:output:08sequential_210/lstm_631/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_210/lstm_631/lstm_cell_604/MatMul/ReadVariableOpReadVariableOpDsequential_210_lstm_631_lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_210/lstm_631/lstm_cell_604/MatMulMatMul0sequential_210/lstm_631/strided_slice_2:output:0Csequential_210/lstm_631/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_210/lstm_631/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOpFsequential_210_lstm_631_lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_210/lstm_631/lstm_cell_604/MatMul_1MatMul&sequential_210/lstm_631/zeros:output:0Esequential_210/lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_210/lstm_631/lstm_cell_604/addAddV26sequential_210/lstm_631/lstm_cell_604/MatMul:product:08sequential_210/lstm_631/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_210/lstm_631/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOpEsequential_210_lstm_631_lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_210/lstm_631/lstm_cell_604/BiasAddBiasAdd-sequential_210/lstm_631/lstm_cell_604/add:z:0Dsequential_210/lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_210/lstm_631/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_210/lstm_631/lstm_cell_604/splitSplit>sequential_210/lstm_631/lstm_cell_604/split/split_dim:output:06sequential_210/lstm_631/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_210/lstm_631/lstm_cell_604/SigmoidSigmoid4sequential_210/lstm_631/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_210/lstm_631/lstm_cell_604/Sigmoid_1Sigmoid4sequential_210/lstm_631/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_210/lstm_631/lstm_cell_604/mulMul3sequential_210/lstm_631/lstm_cell_604/Sigmoid_1:y:0(sequential_210/lstm_631/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_210/lstm_631/lstm_cell_604/ReluRelu4sequential_210/lstm_631/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_210/lstm_631/lstm_cell_604/mul_1Mul1sequential_210/lstm_631/lstm_cell_604/Sigmoid:y:08sequential_210/lstm_631/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_210/lstm_631/lstm_cell_604/add_1AddV2-sequential_210/lstm_631/lstm_cell_604/mul:z:0/sequential_210/lstm_631/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_210/lstm_631/lstm_cell_604/Sigmoid_2Sigmoid4sequential_210/lstm_631/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_210/lstm_631/lstm_cell_604/Relu_1Relu/sequential_210/lstm_631/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_210/lstm_631/lstm_cell_604/mul_2Mul3sequential_210/lstm_631/lstm_cell_604/Sigmoid_2:y:0:sequential_210/lstm_631/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_210/lstm_631/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_210/lstm_631/TensorArrayV2_1TensorListReserve>sequential_210/lstm_631/TensorArrayV2_1/element_shape:output:00sequential_210/lstm_631/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_210/lstm_631/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_210/lstm_631/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_210/lstm_631/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_210/lstm_631/whileWhile3sequential_210/lstm_631/while/loop_counter:output:09sequential_210/lstm_631/while/maximum_iterations:output:0%sequential_210/lstm_631/time:output:00sequential_210/lstm_631/TensorArrayV2_1:handle:0&sequential_210/lstm_631/zeros:output:0(sequential_210/lstm_631/zeros_1:output:00sequential_210/lstm_631/strided_slice_1:output:0Osequential_210/lstm_631/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_210_lstm_631_lstm_cell_604_matmul_readvariableop_resourceFsequential_210_lstm_631_lstm_cell_604_matmul_1_readvariableop_resourceEsequential_210_lstm_631_lstm_cell_604_biasadd_readvariableop_resource*
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
*sequential_210_lstm_631_while_body_3660083*6
cond.R,
*sequential_210_lstm_631_while_cond_3660082*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_210/lstm_631/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_210/lstm_631/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_210/lstm_631/while:output:3Qsequential_210/lstm_631/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_210/lstm_631/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_210/lstm_631/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_631/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_631/strided_slice_3StridedSliceCsequential_210/lstm_631/TensorArrayV2Stack/TensorListStack:tensor:06sequential_210/lstm_631/strided_slice_3/stack:output:08sequential_210/lstm_631/strided_slice_3/stack_1:output:08sequential_210/lstm_631/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_210/lstm_631/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_210/lstm_631/transpose_1	TransposeCsequential_210/lstm_631/TensorArrayV2Stack/TensorListStack:tensor:01sequential_210/lstm_631/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_210/lstm_631/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_210/lstm_632/ShapeShape'sequential_210/lstm_631/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_210/lstm_632/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_210/lstm_632/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_210/lstm_632/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_210/lstm_632/strided_sliceStridedSlice&sequential_210/lstm_632/Shape:output:04sequential_210/lstm_632/strided_slice/stack:output:06sequential_210/lstm_632/strided_slice/stack_1:output:06sequential_210/lstm_632/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_210/lstm_632/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_210/lstm_632/zeros/packedPack.sequential_210/lstm_632/strided_slice:output:0/sequential_210/lstm_632/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_210/lstm_632/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_210/lstm_632/zerosFill-sequential_210/lstm_632/zeros/packed:output:0,sequential_210/lstm_632/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_210/lstm_632/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_210/lstm_632/zeros_1/packedPack.sequential_210/lstm_632/strided_slice:output:01sequential_210/lstm_632/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_210/lstm_632/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_210/lstm_632/zeros_1Fill/sequential_210/lstm_632/zeros_1/packed:output:0.sequential_210/lstm_632/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_210/lstm_632/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_210/lstm_632/transpose	Transpose'sequential_210/lstm_631/transpose_1:y:0/sequential_210/lstm_632/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_210/lstm_632/Shape_1Shape%sequential_210/lstm_632/transpose:y:0*
T0*
_output_shapes
:w
-sequential_210/lstm_632/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_632/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_210/lstm_632/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_632/strided_slice_1StridedSlice(sequential_210/lstm_632/Shape_1:output:06sequential_210/lstm_632/strided_slice_1/stack:output:08sequential_210/lstm_632/strided_slice_1/stack_1:output:08sequential_210/lstm_632/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_210/lstm_632/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_210/lstm_632/TensorArrayV2TensorListReserve<sequential_210/lstm_632/TensorArrayV2/element_shape:output:00sequential_210/lstm_632/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_210/lstm_632/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_210/lstm_632/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_210/lstm_632/transpose:y:0Vsequential_210/lstm_632/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_210/lstm_632/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_632/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_210/lstm_632/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_632/strided_slice_2StridedSlice%sequential_210/lstm_632/transpose:y:06sequential_210/lstm_632/strided_slice_2/stack:output:08sequential_210/lstm_632/strided_slice_2/stack_1:output:08sequential_210/lstm_632/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_210/lstm_632/lstm_cell_605/MatMul/ReadVariableOpReadVariableOpDsequential_210_lstm_632_lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_210/lstm_632/lstm_cell_605/MatMulMatMul0sequential_210/lstm_632/strided_slice_2:output:0Csequential_210/lstm_632/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_210/lstm_632/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOpFsequential_210_lstm_632_lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_210/lstm_632/lstm_cell_605/MatMul_1MatMul&sequential_210/lstm_632/zeros:output:0Esequential_210/lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_210/lstm_632/lstm_cell_605/addAddV26sequential_210/lstm_632/lstm_cell_605/MatMul:product:08sequential_210/lstm_632/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_210/lstm_632/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOpEsequential_210_lstm_632_lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_210/lstm_632/lstm_cell_605/BiasAddBiasAdd-sequential_210/lstm_632/lstm_cell_605/add:z:0Dsequential_210/lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_210/lstm_632/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_210/lstm_632/lstm_cell_605/splitSplit>sequential_210/lstm_632/lstm_cell_605/split/split_dim:output:06sequential_210/lstm_632/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_210/lstm_632/lstm_cell_605/SigmoidSigmoid4sequential_210/lstm_632/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_210/lstm_632/lstm_cell_605/Sigmoid_1Sigmoid4sequential_210/lstm_632/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_210/lstm_632/lstm_cell_605/mulMul3sequential_210/lstm_632/lstm_cell_605/Sigmoid_1:y:0(sequential_210/lstm_632/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_210/lstm_632/lstm_cell_605/ReluRelu4sequential_210/lstm_632/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_210/lstm_632/lstm_cell_605/mul_1Mul1sequential_210/lstm_632/lstm_cell_605/Sigmoid:y:08sequential_210/lstm_632/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_210/lstm_632/lstm_cell_605/add_1AddV2-sequential_210/lstm_632/lstm_cell_605/mul:z:0/sequential_210/lstm_632/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_210/lstm_632/lstm_cell_605/Sigmoid_2Sigmoid4sequential_210/lstm_632/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_210/lstm_632/lstm_cell_605/Relu_1Relu/sequential_210/lstm_632/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_210/lstm_632/lstm_cell_605/mul_2Mul3sequential_210/lstm_632/lstm_cell_605/Sigmoid_2:y:0:sequential_210/lstm_632/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_210/lstm_632/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_210/lstm_632/TensorArrayV2_1TensorListReserve>sequential_210/lstm_632/TensorArrayV2_1/element_shape:output:00sequential_210/lstm_632/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_210/lstm_632/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_210/lstm_632/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_210/lstm_632/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_210/lstm_632/whileWhile3sequential_210/lstm_632/while/loop_counter:output:09sequential_210/lstm_632/while/maximum_iterations:output:0%sequential_210/lstm_632/time:output:00sequential_210/lstm_632/TensorArrayV2_1:handle:0&sequential_210/lstm_632/zeros:output:0(sequential_210/lstm_632/zeros_1:output:00sequential_210/lstm_632/strided_slice_1:output:0Osequential_210/lstm_632/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_210_lstm_632_lstm_cell_605_matmul_readvariableop_resourceFsequential_210_lstm_632_lstm_cell_605_matmul_1_readvariableop_resourceEsequential_210_lstm_632_lstm_cell_605_biasadd_readvariableop_resource*
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
*sequential_210_lstm_632_while_body_3660222*6
cond.R,
*sequential_210_lstm_632_while_cond_3660221*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_210/lstm_632/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_210/lstm_632/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_210/lstm_632/while:output:3Qsequential_210/lstm_632/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_210/lstm_632/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_210/lstm_632/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_210/lstm_632/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_210/lstm_632/strided_slice_3StridedSliceCsequential_210/lstm_632/TensorArrayV2Stack/TensorListStack:tensor:06sequential_210/lstm_632/strided_slice_3/stack:output:08sequential_210/lstm_632/strided_slice_3/stack_1:output:08sequential_210/lstm_632/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_210/lstm_632/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_210/lstm_632/transpose_1	TransposeCsequential_210/lstm_632/TensorArrayV2Stack/TensorListStack:tensor:01sequential_210/lstm_632/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_210/lstm_632/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_210/dense_210/MatMul/ReadVariableOpReadVariableOp7sequential_210_dense_210_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_210/dense_210/MatMulMatMul0sequential_210/lstm_632/strided_slice_3:output:06sequential_210/dense_210/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_210/dense_210/BiasAdd/ReadVariableOpReadVariableOp8sequential_210_dense_210_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_210/dense_210/BiasAddBiasAdd)sequential_210/dense_210/MatMul:product:07sequential_210/dense_210/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_210/dense_210/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_210/dense_210/BiasAdd/ReadVariableOp/^sequential_210/dense_210/MatMul/ReadVariableOp=^sequential_210/lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp<^sequential_210/lstm_630/lstm_cell_603/MatMul/ReadVariableOp>^sequential_210/lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp^sequential_210/lstm_630/while=^sequential_210/lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp<^sequential_210/lstm_631/lstm_cell_604/MatMul/ReadVariableOp>^sequential_210/lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp^sequential_210/lstm_631/while=^sequential_210/lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp<^sequential_210/lstm_632/lstm_cell_605/MatMul/ReadVariableOp>^sequential_210/lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp^sequential_210/lstm_632/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_210/dense_210/BiasAdd/ReadVariableOp/sequential_210/dense_210/BiasAdd/ReadVariableOp2`
.sequential_210/dense_210/MatMul/ReadVariableOp.sequential_210/dense_210/MatMul/ReadVariableOp2|
<sequential_210/lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp<sequential_210/lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp2z
;sequential_210/lstm_630/lstm_cell_603/MatMul/ReadVariableOp;sequential_210/lstm_630/lstm_cell_603/MatMul/ReadVariableOp2~
=sequential_210/lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp=sequential_210/lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp2>
sequential_210/lstm_630/whilesequential_210/lstm_630/while2|
<sequential_210/lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp<sequential_210/lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp2z
;sequential_210/lstm_631/lstm_cell_604/MatMul/ReadVariableOp;sequential_210/lstm_631/lstm_cell_604/MatMul/ReadVariableOp2~
=sequential_210/lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp=sequential_210/lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp2>
sequential_210/lstm_631/whilesequential_210/lstm_631/while2|
<sequential_210/lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp<sequential_210/lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp2z
;sequential_210/lstm_632/lstm_cell_605/MatMul/ReadVariableOp;sequential_210/lstm_632/lstm_cell_605/MatMul/ReadVariableOp2~
=sequential_210/lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp=sequential_210/lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp2>
sequential_210/lstm_632/whilesequential_210/lstm_632/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_630_input
?
?
*__inference_lstm_630_layer_call_fn_3663513

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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3661511s
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
while_body_3660934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_604_3660958_0:	d?0
while_lstm_cell_604_3660960_0:	2?,
while_lstm_cell_604_3660962_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_604_3660958:	d?.
while_lstm_cell_604_3660960:	2?*
while_lstm_cell_604_3660962:	???+while/lstm_cell_604/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_604/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_604_3660958_0while_lstm_cell_604_3660960_0while_lstm_cell_604_3660962_0*
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660875?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_604/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_604/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_604/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_604/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_604_3660958while_lstm_cell_604_3660958_0"<
while_lstm_cell_604_3660960while_lstm_cell_604_3660960_0"<
while_lstm_cell_604_3660962while_lstm_cell_604_3660962_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_604/StatefulPartitionedCall+while/lstm_cell_604/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_3665784
file_prefix/
+savev2_dense_210_kernel_read_readvariableop-
)savev2_dense_210_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_630_lstm_cell_630_kernel_read_readvariableopF
Bsavev2_lstm_630_lstm_cell_630_recurrent_kernel_read_readvariableop:
6savev2_lstm_630_lstm_cell_630_bias_read_readvariableop<
8savev2_lstm_631_lstm_cell_631_kernel_read_readvariableopF
Bsavev2_lstm_631_lstm_cell_631_recurrent_kernel_read_readvariableop:
6savev2_lstm_631_lstm_cell_631_bias_read_readvariableop<
8savev2_lstm_632_lstm_cell_632_kernel_read_readvariableopF
Bsavev2_lstm_632_lstm_cell_632_recurrent_kernel_read_readvariableop:
6savev2_lstm_632_lstm_cell_632_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_210_kernel_m_read_readvariableop4
0savev2_adam_dense_210_bias_m_read_readvariableopC
?savev2_adam_lstm_630_lstm_cell_630_kernel_m_read_readvariableopM
Isavev2_adam_lstm_630_lstm_cell_630_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_630_lstm_cell_630_bias_m_read_readvariableopC
?savev2_adam_lstm_631_lstm_cell_631_kernel_m_read_readvariableopM
Isavev2_adam_lstm_631_lstm_cell_631_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_631_lstm_cell_631_bias_m_read_readvariableopC
?savev2_adam_lstm_632_lstm_cell_632_kernel_m_read_readvariableopM
Isavev2_adam_lstm_632_lstm_cell_632_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_632_lstm_cell_632_bias_m_read_readvariableop6
2savev2_adam_dense_210_kernel_v_read_readvariableop4
0savev2_adam_dense_210_bias_v_read_readvariableopC
?savev2_adam_lstm_630_lstm_cell_630_kernel_v_read_readvariableopM
Isavev2_adam_lstm_630_lstm_cell_630_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_630_lstm_cell_630_bias_v_read_readvariableopC
?savev2_adam_lstm_631_lstm_cell_631_kernel_v_read_readvariableopM
Isavev2_adam_lstm_631_lstm_cell_631_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_631_lstm_cell_631_bias_v_read_readvariableopC
?savev2_adam_lstm_632_lstm_cell_632_kernel_v_read_readvariableopM
Isavev2_adam_lstm_632_lstm_cell_632_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_632_lstm_cell_632_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_210_kernel_read_readvariableop)savev2_dense_210_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_630_lstm_cell_630_kernel_read_readvariableopBsavev2_lstm_630_lstm_cell_630_recurrent_kernel_read_readvariableop6savev2_lstm_630_lstm_cell_630_bias_read_readvariableop8savev2_lstm_631_lstm_cell_631_kernel_read_readvariableopBsavev2_lstm_631_lstm_cell_631_recurrent_kernel_read_readvariableop6savev2_lstm_631_lstm_cell_631_bias_read_readvariableop8savev2_lstm_632_lstm_cell_632_kernel_read_readvariableopBsavev2_lstm_632_lstm_cell_632_recurrent_kernel_read_readvariableop6savev2_lstm_632_lstm_cell_632_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_210_kernel_m_read_readvariableop0savev2_adam_dense_210_bias_m_read_readvariableop?savev2_adam_lstm_630_lstm_cell_630_kernel_m_read_readvariableopIsavev2_adam_lstm_630_lstm_cell_630_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_630_lstm_cell_630_bias_m_read_readvariableop?savev2_adam_lstm_631_lstm_cell_631_kernel_m_read_readvariableopIsavev2_adam_lstm_631_lstm_cell_631_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_631_lstm_cell_631_bias_m_read_readvariableop?savev2_adam_lstm_632_lstm_cell_632_kernel_m_read_readvariableopIsavev2_adam_lstm_632_lstm_cell_632_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_632_lstm_cell_632_bias_m_read_readvariableop2savev2_adam_dense_210_kernel_v_read_readvariableop0savev2_adam_dense_210_bias_v_read_readvariableop?savev2_adam_lstm_630_lstm_cell_630_kernel_v_read_readvariableopIsavev2_adam_lstm_630_lstm_cell_630_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_630_lstm_cell_630_bias_v_read_readvariableop?savev2_adam_lstm_631_lstm_cell_631_kernel_v_read_readvariableopIsavev2_adam_lstm_631_lstm_cell_631_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_631_lstm_cell_631_bias_v_read_readvariableop?savev2_adam_lstm_632_lstm_cell_632_kernel_v_read_readvariableopIsavev2_adam_lstm_632_lstm_cell_632_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_632_lstm_cell_632_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
/__inference_lstm_cell_604_layer_call_fn_3665462

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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660729o
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
while_cond_3661283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3661283___redundant_placeholder05
1while_while_cond_3661283___redundant_placeholder15
1while_while_cond_3661283___redundant_placeholder25
1while_while_cond_3661283___redundant_placeholder3
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

lstm_630_while_body_3662685.
*lstm_630_while_lstm_630_while_loop_counter4
0lstm_630_while_lstm_630_while_maximum_iterations
lstm_630_while_placeholder 
lstm_630_while_placeholder_1 
lstm_630_while_placeholder_2 
lstm_630_while_placeholder_3-
)lstm_630_while_lstm_630_strided_slice_1_0i
elstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0:	?R
?lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?M
>lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
lstm_630_while_identity
lstm_630_while_identity_1
lstm_630_while_identity_2
lstm_630_while_identity_3
lstm_630_while_identity_4
lstm_630_while_identity_5+
'lstm_630_while_lstm_630_strided_slice_1g
clstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensorN
;lstm_630_while_lstm_cell_603_matmul_readvariableop_resource:	?P
=lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource:	d?K
<lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource:	???3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp?2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp?4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp?
@lstm_630/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_630/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensor_0lstm_630_while_placeholderIlstm_630/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp=lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_630/while/lstm_cell_603/MatMulMatMul9lstm_630/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp?lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_630/while/lstm_cell_603/MatMul_1MatMullstm_630_while_placeholder_2<lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_630/while/lstm_cell_603/addAddV2-lstm_630/while/lstm_cell_603/MatMul:product:0/lstm_630/while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp>lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_630/while/lstm_cell_603/BiasAddBiasAdd$lstm_630/while/lstm_cell_603/add:z:0;lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_630/while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_630/while/lstm_cell_603/splitSplit5lstm_630/while/lstm_cell_603/split/split_dim:output:0-lstm_630/while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_630/while/lstm_cell_603/SigmoidSigmoid+lstm_630/while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_630/while/lstm_cell_603/Sigmoid_1Sigmoid+lstm_630/while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_630/while/lstm_cell_603/mulMul*lstm_630/while/lstm_cell_603/Sigmoid_1:y:0lstm_630_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_630/while/lstm_cell_603/ReluRelu+lstm_630/while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_630/while/lstm_cell_603/mul_1Mul(lstm_630/while/lstm_cell_603/Sigmoid:y:0/lstm_630/while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_630/while/lstm_cell_603/add_1AddV2$lstm_630/while/lstm_cell_603/mul:z:0&lstm_630/while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_630/while/lstm_cell_603/Sigmoid_2Sigmoid+lstm_630/while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_630/while/lstm_cell_603/Relu_1Relu&lstm_630/while/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_630/while/lstm_cell_603/mul_2Mul*lstm_630/while/lstm_cell_603/Sigmoid_2:y:01lstm_630/while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_630/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_630_while_placeholder_1lstm_630_while_placeholder&lstm_630/while/lstm_cell_603/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_630/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_630/while/addAddV2lstm_630_while_placeholderlstm_630/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_630/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_630/while/add_1AddV2*lstm_630_while_lstm_630_while_loop_counterlstm_630/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_630/while/IdentityIdentitylstm_630/while/add_1:z:0^lstm_630/while/NoOp*
T0*
_output_shapes
: ?
lstm_630/while/Identity_1Identity0lstm_630_while_lstm_630_while_maximum_iterations^lstm_630/while/NoOp*
T0*
_output_shapes
: t
lstm_630/while/Identity_2Identitylstm_630/while/add:z:0^lstm_630/while/NoOp*
T0*
_output_shapes
: ?
lstm_630/while/Identity_3IdentityClstm_630/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_630/while/NoOp*
T0*
_output_shapes
: ?
lstm_630/while/Identity_4Identity&lstm_630/while/lstm_cell_603/mul_2:z:0^lstm_630/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_630/while/Identity_5Identity&lstm_630/while/lstm_cell_603/add_1:z:0^lstm_630/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_630/while/NoOpNoOp4^lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp3^lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp5^lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_630_while_identity lstm_630/while/Identity:output:0"?
lstm_630_while_identity_1"lstm_630/while/Identity_1:output:0"?
lstm_630_while_identity_2"lstm_630/while/Identity_2:output:0"?
lstm_630_while_identity_3"lstm_630/while/Identity_3:output:0"?
lstm_630_while_identity_4"lstm_630/while/Identity_4:output:0"?
lstm_630_while_identity_5"lstm_630/while/Identity_5:output:0"T
'lstm_630_while_lstm_630_strided_slice_1)lstm_630_while_lstm_630_strided_slice_1_0"~
<lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource>lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0"?
=lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource?lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0"|
;lstm_630_while_lstm_cell_603_matmul_readvariableop_resource=lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0"?
clstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensorelstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp2h
2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp2l
4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661811

inputs>
,lstm_cell_605_matmul_readvariableop_resource:2(@
.lstm_cell_605_matmul_1_readvariableop_resource:
(;
-lstm_cell_605_biasadd_readvariableop_resource:(
identity??$lstm_cell_605/BiasAdd/ReadVariableOp?#lstm_cell_605/MatMul/ReadVariableOp?%lstm_cell_605/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_605/MatMul/ReadVariableOpReadVariableOp,lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_605/MatMulMatMulstrided_slice_2:output:0+lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_605/MatMul_1MatMulzeros:output:0-lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_605/addAddV2lstm_cell_605/MatMul:product:0 lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_605/BiasAddBiasAddlstm_cell_605/add:z:0,lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_605/splitSplit&lstm_cell_605/split/split_dim:output:0lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_605/SigmoidSigmoidlstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_1Sigmoidlstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_605/mulMullstm_cell_605/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_605/ReluRelulstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_1Mullstm_cell_605/Sigmoid:y:0 lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_605/add_1AddV2lstm_cell_605/mul:z:0lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_2Sigmoidlstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_605/Relu_1Relulstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_2Mullstm_cell_605/Sigmoid_2:y:0"lstm_cell_605/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_605_matmul_readvariableop_resource.lstm_cell_605_matmul_1_readvariableop_resource-lstm_cell_605_biasadd_readvariableop_resource*
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
while_body_3661727*
condR
while_cond_3661726*K
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
NoOpNoOp%^lstm_cell_605/BiasAdd/ReadVariableOp$^lstm_cell_605/MatMul/ReadVariableOp&^lstm_cell_605/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_605/BiasAdd/ReadVariableOp$lstm_cell_605/BiasAdd/ReadVariableOp2J
#lstm_cell_605/MatMul/ReadVariableOp#lstm_cell_605/MatMul/ReadVariableOp2N
%lstm_cell_605/MatMul_1/ReadVariableOp%lstm_cell_605/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_3661093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_605_3661117_0:2(/
while_lstm_cell_605_3661119_0:
(+
while_lstm_cell_605_3661121_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_605_3661117:2(-
while_lstm_cell_605_3661119:
()
while_lstm_cell_605_3661121:(??+while/lstm_cell_605/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_605/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_605_3661117_0while_lstm_cell_605_3661119_0while_lstm_cell_605_3661121_0*
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661079?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_605/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_605/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_605/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_605/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_605_3661117while_lstm_cell_605_3661117_0"<
while_lstm_cell_605_3661119while_lstm_cell_605_3661119_0"<
while_lstm_cell_605_3661121while_lstm_cell_605_3661121_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_605/StatefulPartitionedCall+while/lstm_cell_605/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3664899
inputs_0>
,lstm_cell_605_matmul_readvariableop_resource:2(@
.lstm_cell_605_matmul_1_readvariableop_resource:
(;
-lstm_cell_605_biasadd_readvariableop_resource:(
identity??$lstm_cell_605/BiasAdd/ReadVariableOp?#lstm_cell_605/MatMul/ReadVariableOp?%lstm_cell_605/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_605/MatMul/ReadVariableOpReadVariableOp,lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_605/MatMulMatMulstrided_slice_2:output:0+lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_605/MatMul_1MatMulzeros:output:0-lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_605/addAddV2lstm_cell_605/MatMul:product:0 lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_605/BiasAddBiasAddlstm_cell_605/add:z:0,lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_605/splitSplit&lstm_cell_605/split/split_dim:output:0lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_605/SigmoidSigmoidlstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_1Sigmoidlstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_605/mulMullstm_cell_605/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_605/ReluRelulstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_1Mullstm_cell_605/Sigmoid:y:0 lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_605/add_1AddV2lstm_cell_605/mul:z:0lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_2Sigmoidlstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_605/Relu_1Relulstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_2Mullstm_cell_605/Sigmoid_2:y:0"lstm_cell_605/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_605_matmul_readvariableop_resource.lstm_cell_605_matmul_1_readvariableop_resource-lstm_cell_605_biasadd_readvariableop_resource*
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
while_body_3664815*
condR
while_cond_3664814*K
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
NoOpNoOp%^lstm_cell_605/BiasAdd/ReadVariableOp$^lstm_cell_605/MatMul/ReadVariableOp&^lstm_cell_605/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_605/BiasAdd/ReadVariableOp$lstm_cell_605/BiasAdd/ReadVariableOp2J
#lstm_cell_605/MatMul/ReadVariableOp#lstm_cell_605/MatMul/ReadVariableOp2N
%lstm_cell_605/MatMul_1/ReadVariableOp%lstm_cell_605/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661162

inputs'
lstm_cell_605_3661080:2('
lstm_cell_605_3661082:
(#
lstm_cell_605_3661084:(
identity??%lstm_cell_605/StatefulPartitionedCall?while;
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
%lstm_cell_605/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_605_3661080lstm_cell_605_3661082lstm_cell_605_3661084*
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661079n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_605_3661080lstm_cell_605_3661082lstm_cell_605_3661084*
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
while_body_3661093*
condR
while_cond_3661092*K
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
NoOpNoOp&^lstm_cell_605/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_605/StatefulPartitionedCall%lstm_cell_605/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_631_while_cond_3662823.
*lstm_631_while_lstm_631_while_loop_counter4
0lstm_631_while_lstm_631_while_maximum_iterations
lstm_631_while_placeholder 
lstm_631_while_placeholder_1 
lstm_631_while_placeholder_2 
lstm_631_while_placeholder_30
,lstm_631_while_less_lstm_631_strided_slice_1G
Clstm_631_while_lstm_631_while_cond_3662823___redundant_placeholder0G
Clstm_631_while_lstm_631_while_cond_3662823___redundant_placeholder1G
Clstm_631_while_lstm_631_while_cond_3662823___redundant_placeholder2G
Clstm_631_while_lstm_631_while_cond_3662823___redundant_placeholder3
lstm_631_while_identity
?
lstm_631/while/LessLesslstm_631_while_placeholder,lstm_631_while_less_lstm_631_strided_slice_1*
T0*
_output_shapes
: ]
lstm_631/while/IdentityIdentitylstm_631/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_631_while_identity lstm_631/while/Identity:output:0*(
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
*sequential_210_lstm_630_while_cond_3659943L
Hsequential_210_lstm_630_while_sequential_210_lstm_630_while_loop_counterR
Nsequential_210_lstm_630_while_sequential_210_lstm_630_while_maximum_iterations-
)sequential_210_lstm_630_while_placeholder/
+sequential_210_lstm_630_while_placeholder_1/
+sequential_210_lstm_630_while_placeholder_2/
+sequential_210_lstm_630_while_placeholder_3N
Jsequential_210_lstm_630_while_less_sequential_210_lstm_630_strided_slice_1e
asequential_210_lstm_630_while_sequential_210_lstm_630_while_cond_3659943___redundant_placeholder0e
asequential_210_lstm_630_while_sequential_210_lstm_630_while_cond_3659943___redundant_placeholder1e
asequential_210_lstm_630_while_sequential_210_lstm_630_while_cond_3659943___redundant_placeholder2e
asequential_210_lstm_630_while_sequential_210_lstm_630_while_cond_3659943___redundant_placeholder3*
&sequential_210_lstm_630_while_identity
?
"sequential_210/lstm_630/while/LessLess)sequential_210_lstm_630_while_placeholderJsequential_210_lstm_630_while_less_sequential_210_lstm_630_strided_slice_1*
T0*
_output_shapes
: {
&sequential_210/lstm_630/while/IdentityIdentity&sequential_210/lstm_630/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_210_lstm_630_while_identity/sequential_210/lstm_630/while/Identity:output:0*(
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
while_body_3662273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_603_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_603_matmul_readvariableop_resource:	?G
4while_lstm_cell_603_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_603_biasadd_readvariableop_resource:	???*while/lstm_cell_603/BiasAdd/ReadVariableOp?)while/lstm_cell_603/MatMul/ReadVariableOp?+while/lstm_cell_603/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_603/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_603/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_603/addAddV2$while/lstm_cell_603/MatMul:product:0&while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_603/BiasAddBiasAddwhile/lstm_cell_603/add:z:02while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_603/splitSplit,while/lstm_cell_603/split/split_dim:output:0$while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_603/SigmoidSigmoid"while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_1Sigmoid"while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mulMul!while/lstm_cell_603/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_603/ReluRelu"while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_1Mulwhile/lstm_cell_603/Sigmoid:y:0&while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/add_1AddV2while/lstm_cell_603/mul:z:0while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_2Sigmoid"while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_603/Relu_1Reluwhile/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_2Mul!while/lstm_cell_603/Sigmoid_2:y:0(while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_603/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_603/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_603/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_603/BiasAdd/ReadVariableOp*^while/lstm_cell_603/MatMul/ReadVariableOp,^while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_603_biasadd_readvariableop_resource5while_lstm_cell_603_biasadd_readvariableop_resource_0"n
4while_lstm_cell_603_matmul_1_readvariableop_resource6while_lstm_cell_603_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_603_matmul_readvariableop_resource4while_lstm_cell_603_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_603/BiasAdd/ReadVariableOp*while/lstm_cell_603/BiasAdd/ReadVariableOp2V
)while/lstm_cell_603/MatMul/ReadVariableOp)while/lstm_cell_603/MatMul/ReadVariableOp2Z
+while/lstm_cell_603/MatMul_1/ReadVariableOp+while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_632_while_body_3662963.
*lstm_632_while_lstm_632_while_loop_counter4
0lstm_632_while_lstm_632_while_maximum_iterations
lstm_632_while_placeholder 
lstm_632_while_placeholder_1 
lstm_632_while_placeholder_2 
lstm_632_while_placeholder_3-
)lstm_632_while_lstm_632_strided_slice_1_0i
elstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0:2(Q
?lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(L
>lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0:(
lstm_632_while_identity
lstm_632_while_identity_1
lstm_632_while_identity_2
lstm_632_while_identity_3
lstm_632_while_identity_4
lstm_632_while_identity_5+
'lstm_632_while_lstm_632_strided_slice_1g
clstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensorM
;lstm_632_while_lstm_cell_605_matmul_readvariableop_resource:2(O
=lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource:
(J
<lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource:(??3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp?2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp?4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp?
@lstm_632/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_632/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensor_0lstm_632_while_placeholderIlstm_632/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp=lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_632/while/lstm_cell_605/MatMulMatMul9lstm_632/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp?lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_632/while/lstm_cell_605/MatMul_1MatMullstm_632_while_placeholder_2<lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_632/while/lstm_cell_605/addAddV2-lstm_632/while/lstm_cell_605/MatMul:product:0/lstm_632/while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp>lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_632/while/lstm_cell_605/BiasAddBiasAdd$lstm_632/while/lstm_cell_605/add:z:0;lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_632/while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_632/while/lstm_cell_605/splitSplit5lstm_632/while/lstm_cell_605/split/split_dim:output:0-lstm_632/while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_632/while/lstm_cell_605/SigmoidSigmoid+lstm_632/while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_632/while/lstm_cell_605/Sigmoid_1Sigmoid+lstm_632/while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_632/while/lstm_cell_605/mulMul*lstm_632/while/lstm_cell_605/Sigmoid_1:y:0lstm_632_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_632/while/lstm_cell_605/ReluRelu+lstm_632/while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_632/while/lstm_cell_605/mul_1Mul(lstm_632/while/lstm_cell_605/Sigmoid:y:0/lstm_632/while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_632/while/lstm_cell_605/add_1AddV2$lstm_632/while/lstm_cell_605/mul:z:0&lstm_632/while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_632/while/lstm_cell_605/Sigmoid_2Sigmoid+lstm_632/while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_632/while/lstm_cell_605/Relu_1Relu&lstm_632/while/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_632/while/lstm_cell_605/mul_2Mul*lstm_632/while/lstm_cell_605/Sigmoid_2:y:01lstm_632/while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_632/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_632_while_placeholder_1lstm_632_while_placeholder&lstm_632/while/lstm_cell_605/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_632/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_632/while/addAddV2lstm_632_while_placeholderlstm_632/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_632/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_632/while/add_1AddV2*lstm_632_while_lstm_632_while_loop_counterlstm_632/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_632/while/IdentityIdentitylstm_632/while/add_1:z:0^lstm_632/while/NoOp*
T0*
_output_shapes
: ?
lstm_632/while/Identity_1Identity0lstm_632_while_lstm_632_while_maximum_iterations^lstm_632/while/NoOp*
T0*
_output_shapes
: t
lstm_632/while/Identity_2Identitylstm_632/while/add:z:0^lstm_632/while/NoOp*
T0*
_output_shapes
: ?
lstm_632/while/Identity_3IdentityClstm_632/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_632/while/NoOp*
T0*
_output_shapes
: ?
lstm_632/while/Identity_4Identity&lstm_632/while/lstm_cell_605/mul_2:z:0^lstm_632/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_632/while/Identity_5Identity&lstm_632/while/lstm_cell_605/add_1:z:0^lstm_632/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_632/while/NoOpNoOp4^lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp3^lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp5^lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_632_while_identity lstm_632/while/Identity:output:0"?
lstm_632_while_identity_1"lstm_632/while/Identity_1:output:0"?
lstm_632_while_identity_2"lstm_632/while/Identity_2:output:0"?
lstm_632_while_identity_3"lstm_632/while/Identity_3:output:0"?
lstm_632_while_identity_4"lstm_632/while/Identity_4:output:0"?
lstm_632_while_identity_5"lstm_632/while/Identity_5:output:0"T
'lstm_632_while_lstm_632_strided_slice_1)lstm_632_while_lstm_632_strided_slice_1_0"~
<lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource>lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0"?
=lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource?lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0"|
;lstm_632_while_lstm_cell_605_matmul_readvariableop_resource=lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0"?
clstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensorelstm_632_while_tensorarrayv2read_tensorlistgetitem_lstm_632_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp3lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp2h
2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp2lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp2l
4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp4lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_605_layer_call_fn_3665560

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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661079o
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
while_body_3664628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_604_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_604_matmul_readvariableop_resource:	d?G
4while_lstm_cell_604_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_604_biasadd_readvariableop_resource:	???*while/lstm_cell_604/BiasAdd/ReadVariableOp?)while/lstm_cell_604/MatMul/ReadVariableOp?+while/lstm_cell_604/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_604/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_604/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_604/addAddV2$while/lstm_cell_604/MatMul:product:0&while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_604/BiasAddBiasAddwhile/lstm_cell_604/add:z:02while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_604/splitSplit,while/lstm_cell_604/split/split_dim:output:0$while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_604/SigmoidSigmoid"while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_1Sigmoid"while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mulMul!while/lstm_cell_604/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_604/ReluRelu"while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_1Mulwhile/lstm_cell_604/Sigmoid:y:0&while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/add_1AddV2while/lstm_cell_604/mul:z:0while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_2Sigmoid"while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_604/Relu_1Reluwhile/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_2Mul!while/lstm_cell_604/Sigmoid_2:y:0(while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_604/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_604/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_604/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_604/BiasAdd/ReadVariableOp*^while/lstm_cell_604/MatMul/ReadVariableOp,^while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_604_biasadd_readvariableop_resource5while_lstm_cell_604_biasadd_readvariableop_resource_0"n
4while_lstm_cell_604_matmul_1_readvariableop_resource6while_lstm_cell_604_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_604_matmul_readvariableop_resource4while_lstm_cell_604_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_604/BiasAdd/ReadVariableOp*while/lstm_cell_604/BiasAdd/ReadVariableOp2V
)while/lstm_cell_604/MatMul/ReadVariableOp)while/lstm_cell_604/MatMul/ReadVariableOp2Z
+while/lstm_cell_604/MatMul_1/ReadVariableOp+while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_210_layer_call_fn_3661861
lstm_630_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_630_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3661836o
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
_user_specified_namelstm_630_input
?8
?
while_body_3664342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_604_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_604_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_604_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_604_matmul_readvariableop_resource:	d?G
4while_lstm_cell_604_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_604_biasadd_readvariableop_resource:	???*while/lstm_cell_604/BiasAdd/ReadVariableOp?)while/lstm_cell_604/MatMul/ReadVariableOp?+while/lstm_cell_604/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_604_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_604/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_604_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_604/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_604/addAddV2$while/lstm_cell_604/MatMul:product:0&while/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_604_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_604/BiasAddBiasAddwhile/lstm_cell_604/add:z:02while/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_604/splitSplit,while/lstm_cell_604/split/split_dim:output:0$while/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_604/SigmoidSigmoid"while/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_1Sigmoid"while/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mulMul!while/lstm_cell_604/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_604/ReluRelu"while/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_1Mulwhile/lstm_cell_604/Sigmoid:y:0&while/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/add_1AddV2while/lstm_cell_604/mul:z:0while/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_604/Sigmoid_2Sigmoid"while/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_604/Relu_1Reluwhile/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_604/mul_2Mul!while/lstm_cell_604/Sigmoid_2:y:0(while/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_604/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_604/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_604/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_604/BiasAdd/ReadVariableOp*^while/lstm_cell_604/MatMul/ReadVariableOp,^while/lstm_cell_604/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_604_biasadd_readvariableop_resource5while_lstm_cell_604_biasadd_readvariableop_resource_0"n
4while_lstm_cell_604_matmul_1_readvariableop_resource6while_lstm_cell_604_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_604_matmul_readvariableop_resource4while_lstm_cell_604_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_604/BiasAdd/ReadVariableOp*while/lstm_cell_604/BiasAdd/ReadVariableOp2V
)while/lstm_cell_604/MatMul/ReadVariableOp)while/lstm_cell_604/MatMul/ReadVariableOp2Z
+while/lstm_cell_604/MatMul_1/ReadVariableOp+while/lstm_cell_604/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_605_layer_call_fn_3665577

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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661225o
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
?
?
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662537
lstm_630_input#
lstm_630_3662510:	?#
lstm_630_3662512:	d?
lstm_630_3662514:	?#
lstm_631_3662517:	d?#
lstm_631_3662519:	2?
lstm_631_3662521:	?"
lstm_632_3662524:2("
lstm_632_3662526:
(
lstm_632_3662528:(#
dense_210_3662531:

dense_210_3662533:
identity??!dense_210/StatefulPartitionedCall? lstm_630/StatefulPartitionedCall? lstm_631/StatefulPartitionedCall? lstm_632/StatefulPartitionedCall?
 lstm_630/StatefulPartitionedCallStatefulPartitionedCalllstm_630_inputlstm_630_3662510lstm_630_3662512lstm_630_3662514*
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3662357?
 lstm_631/StatefulPartitionedCallStatefulPartitionedCall)lstm_630/StatefulPartitionedCall:output:0lstm_631_3662517lstm_631_3662519lstm_631_3662521*
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3662192?
 lstm_632/StatefulPartitionedCallStatefulPartitionedCall)lstm_631/StatefulPartitionedCall:output:0lstm_632_3662524lstm_632_3662526lstm_632_3662528*
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3662027?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall)lstm_632/StatefulPartitionedCall:output:0dense_210_3662531dense_210_3662533*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_3661829y
IdentityIdentity*dense_210/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_210/StatefulPartitionedCall!^lstm_630/StatefulPartitionedCall!^lstm_631/StatefulPartitionedCall!^lstm_632/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2D
 lstm_630/StatefulPartitionedCall lstm_630/StatefulPartitionedCall2D
 lstm_631/StatefulPartitionedCall lstm_631/StatefulPartitionedCall2D
 lstm_632/StatefulPartitionedCall lstm_632/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_630_input
??
?
K__inference_sequential_210_layer_call_and_return_conditional_losses_3663053

inputsH
5lstm_630_lstm_cell_603_matmul_readvariableop_resource:	?J
7lstm_630_lstm_cell_603_matmul_1_readvariableop_resource:	d?E
6lstm_630_lstm_cell_603_biasadd_readvariableop_resource:	?H
5lstm_631_lstm_cell_604_matmul_readvariableop_resource:	d?J
7lstm_631_lstm_cell_604_matmul_1_readvariableop_resource:	2?E
6lstm_631_lstm_cell_604_biasadd_readvariableop_resource:	?G
5lstm_632_lstm_cell_605_matmul_readvariableop_resource:2(I
7lstm_632_lstm_cell_605_matmul_1_readvariableop_resource:
(D
6lstm_632_lstm_cell_605_biasadd_readvariableop_resource:(:
(dense_210_matmul_readvariableop_resource:
7
)dense_210_biasadd_readvariableop_resource:
identity?? dense_210/BiasAdd/ReadVariableOp?dense_210/MatMul/ReadVariableOp?-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp?,lstm_630/lstm_cell_603/MatMul/ReadVariableOp?.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp?lstm_630/while?-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp?,lstm_631/lstm_cell_604/MatMul/ReadVariableOp?.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp?lstm_631/while?-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp?,lstm_632/lstm_cell_605/MatMul/ReadVariableOp?.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp?lstm_632/whileD
lstm_630/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_630/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_630/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_630/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_sliceStridedSlicelstm_630/Shape:output:0%lstm_630/strided_slice/stack:output:0'lstm_630/strided_slice/stack_1:output:0'lstm_630/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_630/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_630/zeros/packedPacklstm_630/strided_slice:output:0 lstm_630/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_630/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_630/zerosFilllstm_630/zeros/packed:output:0lstm_630/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_630/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_630/zeros_1/packedPacklstm_630/strided_slice:output:0"lstm_630/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_630/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_630/zeros_1Fill lstm_630/zeros_1/packed:output:0lstm_630/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_630/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_630/transpose	Transposeinputs lstm_630/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_630/Shape_1Shapelstm_630/transpose:y:0*
T0*
_output_shapes
:h
lstm_630/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_630/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_630/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_slice_1StridedSlicelstm_630/Shape_1:output:0'lstm_630/strided_slice_1/stack:output:0)lstm_630/strided_slice_1/stack_1:output:0)lstm_630/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_630/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_630/TensorArrayV2TensorListReserve-lstm_630/TensorArrayV2/element_shape:output:0!lstm_630/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_630/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_630/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_630/transpose:y:0Glstm_630/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_630/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_630/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_630/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_slice_2StridedSlicelstm_630/transpose:y:0'lstm_630/strided_slice_2/stack:output:0)lstm_630/strided_slice_2/stack_1:output:0)lstm_630/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_630/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp5lstm_630_lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_630/lstm_cell_603/MatMulMatMul!lstm_630/strided_slice_2:output:04lstm_630/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp7lstm_630_lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_630/lstm_cell_603/MatMul_1MatMullstm_630/zeros:output:06lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_630/lstm_cell_603/addAddV2'lstm_630/lstm_cell_603/MatMul:product:0)lstm_630/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp6lstm_630_lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_630/lstm_cell_603/BiasAddBiasAddlstm_630/lstm_cell_603/add:z:05lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_630/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_630/lstm_cell_603/splitSplit/lstm_630/lstm_cell_603/split/split_dim:output:0'lstm_630/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_630/lstm_cell_603/SigmoidSigmoid%lstm_630/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_630/lstm_cell_603/Sigmoid_1Sigmoid%lstm_630/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/mulMul$lstm_630/lstm_cell_603/Sigmoid_1:y:0lstm_630/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_630/lstm_cell_603/ReluRelu%lstm_630/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/mul_1Mul"lstm_630/lstm_cell_603/Sigmoid:y:0)lstm_630/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/add_1AddV2lstm_630/lstm_cell_603/mul:z:0 lstm_630/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_630/lstm_cell_603/Sigmoid_2Sigmoid%lstm_630/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_630/lstm_cell_603/Relu_1Relu lstm_630/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_630/lstm_cell_603/mul_2Mul$lstm_630/lstm_cell_603/Sigmoid_2:y:0+lstm_630/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_630/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_630/TensorArrayV2_1TensorListReserve/lstm_630/TensorArrayV2_1/element_shape:output:0!lstm_630/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_630/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_630/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_630/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_630/whileWhile$lstm_630/while/loop_counter:output:0*lstm_630/while/maximum_iterations:output:0lstm_630/time:output:0!lstm_630/TensorArrayV2_1:handle:0lstm_630/zeros:output:0lstm_630/zeros_1:output:0!lstm_630/strided_slice_1:output:0@lstm_630/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_630_lstm_cell_603_matmul_readvariableop_resource7lstm_630_lstm_cell_603_matmul_1_readvariableop_resource6lstm_630_lstm_cell_603_biasadd_readvariableop_resource*
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
lstm_630_while_body_3662685*'
condR
lstm_630_while_cond_3662684*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_630/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_630/TensorArrayV2Stack/TensorListStackTensorListStacklstm_630/while:output:3Blstm_630/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_630/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_630/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_630/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_630/strided_slice_3StridedSlice4lstm_630/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_630/strided_slice_3/stack:output:0)lstm_630/strided_slice_3/stack_1:output:0)lstm_630/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_630/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_630/transpose_1	Transpose4lstm_630/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_630/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_630/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_631/ShapeShapelstm_630/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_631/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_631/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_631/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_sliceStridedSlicelstm_631/Shape:output:0%lstm_631/strided_slice/stack:output:0'lstm_631/strided_slice/stack_1:output:0'lstm_631/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_631/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_631/zeros/packedPacklstm_631/strided_slice:output:0 lstm_631/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_631/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_631/zerosFilllstm_631/zeros/packed:output:0lstm_631/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_631/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_631/zeros_1/packedPacklstm_631/strided_slice:output:0"lstm_631/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_631/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_631/zeros_1Fill lstm_631/zeros_1/packed:output:0lstm_631/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_631/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_631/transpose	Transposelstm_630/transpose_1:y:0 lstm_631/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_631/Shape_1Shapelstm_631/transpose:y:0*
T0*
_output_shapes
:h
lstm_631/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_631/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_631/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_slice_1StridedSlicelstm_631/Shape_1:output:0'lstm_631/strided_slice_1/stack:output:0)lstm_631/strided_slice_1/stack_1:output:0)lstm_631/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_631/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_631/TensorArrayV2TensorListReserve-lstm_631/TensorArrayV2/element_shape:output:0!lstm_631/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_631/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_631/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_631/transpose:y:0Glstm_631/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_631/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_631/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_631/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_slice_2StridedSlicelstm_631/transpose:y:0'lstm_631/strided_slice_2/stack:output:0)lstm_631/strided_slice_2/stack_1:output:0)lstm_631/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_631/lstm_cell_604/MatMul/ReadVariableOpReadVariableOp5lstm_631_lstm_cell_604_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_631/lstm_cell_604/MatMulMatMul!lstm_631/strided_slice_2:output:04lstm_631/lstm_cell_604/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOpReadVariableOp7lstm_631_lstm_cell_604_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_631/lstm_cell_604/MatMul_1MatMullstm_631/zeros:output:06lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_631/lstm_cell_604/addAddV2'lstm_631/lstm_cell_604/MatMul:product:0)lstm_631/lstm_cell_604/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOpReadVariableOp6lstm_631_lstm_cell_604_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_631/lstm_cell_604/BiasAddBiasAddlstm_631/lstm_cell_604/add:z:05lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_631/lstm_cell_604/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_631/lstm_cell_604/splitSplit/lstm_631/lstm_cell_604/split/split_dim:output:0'lstm_631/lstm_cell_604/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_631/lstm_cell_604/SigmoidSigmoid%lstm_631/lstm_cell_604/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_631/lstm_cell_604/Sigmoid_1Sigmoid%lstm_631/lstm_cell_604/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/mulMul$lstm_631/lstm_cell_604/Sigmoid_1:y:0lstm_631/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_631/lstm_cell_604/ReluRelu%lstm_631/lstm_cell_604/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/mul_1Mul"lstm_631/lstm_cell_604/Sigmoid:y:0)lstm_631/lstm_cell_604/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/add_1AddV2lstm_631/lstm_cell_604/mul:z:0 lstm_631/lstm_cell_604/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_631/lstm_cell_604/Sigmoid_2Sigmoid%lstm_631/lstm_cell_604/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_631/lstm_cell_604/Relu_1Relu lstm_631/lstm_cell_604/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_631/lstm_cell_604/mul_2Mul$lstm_631/lstm_cell_604/Sigmoid_2:y:0+lstm_631/lstm_cell_604/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_631/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_631/TensorArrayV2_1TensorListReserve/lstm_631/TensorArrayV2_1/element_shape:output:0!lstm_631/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_631/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_631/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_631/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_631/whileWhile$lstm_631/while/loop_counter:output:0*lstm_631/while/maximum_iterations:output:0lstm_631/time:output:0!lstm_631/TensorArrayV2_1:handle:0lstm_631/zeros:output:0lstm_631/zeros_1:output:0!lstm_631/strided_slice_1:output:0@lstm_631/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_631_lstm_cell_604_matmul_readvariableop_resource7lstm_631_lstm_cell_604_matmul_1_readvariableop_resource6lstm_631_lstm_cell_604_biasadd_readvariableop_resource*
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
lstm_631_while_body_3662824*'
condR
lstm_631_while_cond_3662823*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_631/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_631/TensorArrayV2Stack/TensorListStackTensorListStacklstm_631/while:output:3Blstm_631/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_631/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_631/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_631/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_631/strided_slice_3StridedSlice4lstm_631/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_631/strided_slice_3/stack:output:0)lstm_631/strided_slice_3/stack_1:output:0)lstm_631/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_631/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_631/transpose_1	Transpose4lstm_631/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_631/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_631/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_632/ShapeShapelstm_631/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_632/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_632/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_632/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_sliceStridedSlicelstm_632/Shape:output:0%lstm_632/strided_slice/stack:output:0'lstm_632/strided_slice/stack_1:output:0'lstm_632/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_632/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_632/zeros/packedPacklstm_632/strided_slice:output:0 lstm_632/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_632/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_632/zerosFilllstm_632/zeros/packed:output:0lstm_632/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_632/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_632/zeros_1/packedPacklstm_632/strided_slice:output:0"lstm_632/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_632/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_632/zeros_1Fill lstm_632/zeros_1/packed:output:0lstm_632/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_632/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_632/transpose	Transposelstm_631/transpose_1:y:0 lstm_632/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_632/Shape_1Shapelstm_632/transpose:y:0*
T0*
_output_shapes
:h
lstm_632/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_632/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_632/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_slice_1StridedSlicelstm_632/Shape_1:output:0'lstm_632/strided_slice_1/stack:output:0)lstm_632/strided_slice_1/stack_1:output:0)lstm_632/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_632/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_632/TensorArrayV2TensorListReserve-lstm_632/TensorArrayV2/element_shape:output:0!lstm_632/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_632/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_632/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_632/transpose:y:0Glstm_632/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_632/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_632/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_632/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_slice_2StridedSlicelstm_632/transpose:y:0'lstm_632/strided_slice_2/stack:output:0)lstm_632/strided_slice_2/stack_1:output:0)lstm_632/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_632/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp5lstm_632_lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_632/lstm_cell_605/MatMulMatMul!lstm_632/strided_slice_2:output:04lstm_632/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp7lstm_632_lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_632/lstm_cell_605/MatMul_1MatMullstm_632/zeros:output:06lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_632/lstm_cell_605/addAddV2'lstm_632/lstm_cell_605/MatMul:product:0)lstm_632/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp6lstm_632_lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_632/lstm_cell_605/BiasAddBiasAddlstm_632/lstm_cell_605/add:z:05lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_632/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_632/lstm_cell_605/splitSplit/lstm_632/lstm_cell_605/split/split_dim:output:0'lstm_632/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_632/lstm_cell_605/SigmoidSigmoid%lstm_632/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_632/lstm_cell_605/Sigmoid_1Sigmoid%lstm_632/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/mulMul$lstm_632/lstm_cell_605/Sigmoid_1:y:0lstm_632/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_632/lstm_cell_605/ReluRelu%lstm_632/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/mul_1Mul"lstm_632/lstm_cell_605/Sigmoid:y:0)lstm_632/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/add_1AddV2lstm_632/lstm_cell_605/mul:z:0 lstm_632/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_632/lstm_cell_605/Sigmoid_2Sigmoid%lstm_632/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_632/lstm_cell_605/Relu_1Relu lstm_632/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_632/lstm_cell_605/mul_2Mul$lstm_632/lstm_cell_605/Sigmoid_2:y:0+lstm_632/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_632/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_632/TensorArrayV2_1TensorListReserve/lstm_632/TensorArrayV2_1/element_shape:output:0!lstm_632/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_632/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_632/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_632/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_632/whileWhile$lstm_632/while/loop_counter:output:0*lstm_632/while/maximum_iterations:output:0lstm_632/time:output:0!lstm_632/TensorArrayV2_1:handle:0lstm_632/zeros:output:0lstm_632/zeros_1:output:0!lstm_632/strided_slice_1:output:0@lstm_632/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_632_lstm_cell_605_matmul_readvariableop_resource7lstm_632_lstm_cell_605_matmul_1_readvariableop_resource6lstm_632_lstm_cell_605_biasadd_readvariableop_resource*
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
lstm_632_while_body_3662963*'
condR
lstm_632_while_cond_3662962*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_632/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_632/TensorArrayV2Stack/TensorListStackTensorListStacklstm_632/while:output:3Blstm_632/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_632/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_632/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_632/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_632/strided_slice_3StridedSlice4lstm_632/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_632/strided_slice_3/stack:output:0)lstm_632/strided_slice_3/stack_1:output:0)lstm_632/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_632/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_632/transpose_1	Transpose4lstm_632/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_632/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_632/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_210/MatMul/ReadVariableOpReadVariableOp(dense_210_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_210/MatMulMatMul!lstm_632/strided_slice_3:output:0'dense_210/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_210/BiasAdd/ReadVariableOpReadVariableOp)dense_210_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_210/BiasAddBiasAdddense_210/MatMul:product:0(dense_210/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_210/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_210/BiasAdd/ReadVariableOp ^dense_210/MatMul/ReadVariableOp.^lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp-^lstm_630/lstm_cell_603/MatMul/ReadVariableOp/^lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp^lstm_630/while.^lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp-^lstm_631/lstm_cell_604/MatMul/ReadVariableOp/^lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp^lstm_631/while.^lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp-^lstm_632/lstm_cell_605/MatMul/ReadVariableOp/^lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp^lstm_632/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_210/BiasAdd/ReadVariableOp dense_210/BiasAdd/ReadVariableOp2B
dense_210/MatMul/ReadVariableOpdense_210/MatMul/ReadVariableOp2^
-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp-lstm_630/lstm_cell_603/BiasAdd/ReadVariableOp2\
,lstm_630/lstm_cell_603/MatMul/ReadVariableOp,lstm_630/lstm_cell_603/MatMul/ReadVariableOp2`
.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp.lstm_630/lstm_cell_603/MatMul_1/ReadVariableOp2 
lstm_630/whilelstm_630/while2^
-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp-lstm_631/lstm_cell_604/BiasAdd/ReadVariableOp2\
,lstm_631/lstm_cell_604/MatMul/ReadVariableOp,lstm_631/lstm_cell_604/MatMul/ReadVariableOp2`
.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp.lstm_631/lstm_cell_604/MatMul_1/ReadVariableOp2 
lstm_631/whilelstm_631/while2^
-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp-lstm_632/lstm_cell_605/BiasAdd/ReadVariableOp2\
,lstm_632/lstm_cell_605/MatMul/ReadVariableOp,lstm_632/lstm_cell_605/MatMul/ReadVariableOp2`
.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp.lstm_632/lstm_cell_605/MatMul_1/ReadVariableOp2 
lstm_632/whilelstm_632/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_630_layer_call_and_return_conditional_losses_3660462

inputs(
lstm_cell_603_3660380:	?(
lstm_cell_603_3660382:	d?$
lstm_cell_603_3660384:	?
identity??%lstm_cell_603/StatefulPartitionedCall?while;
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
%lstm_cell_603/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_603_3660380lstm_cell_603_3660382lstm_cell_603_3660384*
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660379n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_603_3660380lstm_cell_603_3660382lstm_cell_603_3660384*
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
while_body_3660393*
condR
while_cond_3660392*K
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
NoOpNoOp&^lstm_cell_603/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_603/StatefulPartitionedCall%lstm_cell_603/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_3663869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_603_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_603_matmul_readvariableop_resource:	?G
4while_lstm_cell_603_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_603_biasadd_readvariableop_resource:	???*while/lstm_cell_603/BiasAdd/ReadVariableOp?)while/lstm_cell_603/MatMul/ReadVariableOp?+while/lstm_cell_603/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_603/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_603/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_603/addAddV2$while/lstm_cell_603/MatMul:product:0&while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_603/BiasAddBiasAddwhile/lstm_cell_603/add:z:02while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_603/splitSplit,while/lstm_cell_603/split/split_dim:output:0$while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_603/SigmoidSigmoid"while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_1Sigmoid"while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mulMul!while/lstm_cell_603/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_603/ReluRelu"while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_1Mulwhile/lstm_cell_603/Sigmoid:y:0&while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/add_1AddV2while/lstm_cell_603/mul:z:0while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_2Sigmoid"while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_603/Relu_1Reluwhile/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_2Mul!while/lstm_cell_603/Sigmoid_2:y:0(while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_603/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_603/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_603/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_603/BiasAdd/ReadVariableOp*^while/lstm_cell_603/MatMul/ReadVariableOp,^while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_603_biasadd_readvariableop_resource5while_lstm_cell_603_biasadd_readvariableop_resource_0"n
4while_lstm_cell_603_matmul_1_readvariableop_resource6while_lstm_cell_603_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_603_matmul_readvariableop_resource4while_lstm_cell_603_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_603/BiasAdd/ReadVariableOp*while/lstm_cell_603/BiasAdd/ReadVariableOp2V
)while/lstm_cell_603/MatMul/ReadVariableOp)while/lstm_cell_603/MatMul/ReadVariableOp2Z
+while/lstm_cell_603/MatMul_1/ReadVariableOp+while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3660933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3660933___redundant_placeholder05
1while_while_cond_3660933___redundant_placeholder15
1while_while_cond_3660933___redundant_placeholder25
1while_while_cond_3660933___redundant_placeholder3
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

lstm_630_while_body_3663112.
*lstm_630_while_lstm_630_while_loop_counter4
0lstm_630_while_lstm_630_while_maximum_iterations
lstm_630_while_placeholder 
lstm_630_while_placeholder_1 
lstm_630_while_placeholder_2 
lstm_630_while_placeholder_3-
)lstm_630_while_lstm_630_strided_slice_1_0i
elstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0:	?R
?lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?M
>lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
lstm_630_while_identity
lstm_630_while_identity_1
lstm_630_while_identity_2
lstm_630_while_identity_3
lstm_630_while_identity_4
lstm_630_while_identity_5+
'lstm_630_while_lstm_630_strided_slice_1g
clstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensorN
;lstm_630_while_lstm_cell_603_matmul_readvariableop_resource:	?P
=lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource:	d?K
<lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource:	???3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp?2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp?4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp?
@lstm_630/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_630/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensor_0lstm_630_while_placeholderIlstm_630/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp=lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_630/while/lstm_cell_603/MatMulMatMul9lstm_630/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp?lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_630/while/lstm_cell_603/MatMul_1MatMullstm_630_while_placeholder_2<lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_630/while/lstm_cell_603/addAddV2-lstm_630/while/lstm_cell_603/MatMul:product:0/lstm_630/while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp>lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_630/while/lstm_cell_603/BiasAddBiasAdd$lstm_630/while/lstm_cell_603/add:z:0;lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_630/while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_630/while/lstm_cell_603/splitSplit5lstm_630/while/lstm_cell_603/split/split_dim:output:0-lstm_630/while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_630/while/lstm_cell_603/SigmoidSigmoid+lstm_630/while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_630/while/lstm_cell_603/Sigmoid_1Sigmoid+lstm_630/while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_630/while/lstm_cell_603/mulMul*lstm_630/while/lstm_cell_603/Sigmoid_1:y:0lstm_630_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_630/while/lstm_cell_603/ReluRelu+lstm_630/while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_630/while/lstm_cell_603/mul_1Mul(lstm_630/while/lstm_cell_603/Sigmoid:y:0/lstm_630/while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_630/while/lstm_cell_603/add_1AddV2$lstm_630/while/lstm_cell_603/mul:z:0&lstm_630/while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_630/while/lstm_cell_603/Sigmoid_2Sigmoid+lstm_630/while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_630/while/lstm_cell_603/Relu_1Relu&lstm_630/while/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_630/while/lstm_cell_603/mul_2Mul*lstm_630/while/lstm_cell_603/Sigmoid_2:y:01lstm_630/while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_630/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_630_while_placeholder_1lstm_630_while_placeholder&lstm_630/while/lstm_cell_603/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_630/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_630/while/addAddV2lstm_630_while_placeholderlstm_630/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_630/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_630/while/add_1AddV2*lstm_630_while_lstm_630_while_loop_counterlstm_630/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_630/while/IdentityIdentitylstm_630/while/add_1:z:0^lstm_630/while/NoOp*
T0*
_output_shapes
: ?
lstm_630/while/Identity_1Identity0lstm_630_while_lstm_630_while_maximum_iterations^lstm_630/while/NoOp*
T0*
_output_shapes
: t
lstm_630/while/Identity_2Identitylstm_630/while/add:z:0^lstm_630/while/NoOp*
T0*
_output_shapes
: ?
lstm_630/while/Identity_3IdentityClstm_630/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_630/while/NoOp*
T0*
_output_shapes
: ?
lstm_630/while/Identity_4Identity&lstm_630/while/lstm_cell_603/mul_2:z:0^lstm_630/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_630/while/Identity_5Identity&lstm_630/while/lstm_cell_603/add_1:z:0^lstm_630/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_630/while/NoOpNoOp4^lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp3^lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp5^lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_630_while_identity lstm_630/while/Identity:output:0"?
lstm_630_while_identity_1"lstm_630/while/Identity_1:output:0"?
lstm_630_while_identity_2"lstm_630/while/Identity_2:output:0"?
lstm_630_while_identity_3"lstm_630/while/Identity_3:output:0"?
lstm_630_while_identity_4"lstm_630/while/Identity_4:output:0"?
lstm_630_while_identity_5"lstm_630/while/Identity_5:output:0"T
'lstm_630_while_lstm_630_strided_slice_1)lstm_630_while_lstm_630_strided_slice_1_0"~
<lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource>lstm_630_while_lstm_cell_603_biasadd_readvariableop_resource_0"?
=lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource?lstm_630_while_lstm_cell_603_matmul_1_readvariableop_resource_0"|
;lstm_630_while_lstm_cell_603_matmul_readvariableop_resource=lstm_630_while_lstm_cell_603_matmul_readvariableop_resource_0"?
clstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensorelstm_630_while_tensorarrayv2read_tensorlistgetitem_lstm_630_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp3lstm_630/while/lstm_cell_603/BiasAdd/ReadVariableOp2h
2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp2lstm_630/while/lstm_cell_603/MatMul/ReadVariableOp2l
4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp4lstm_630/while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_632_layer_call_fn_3664745

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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661811o
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661353

inputs'
lstm_cell_605_3661271:2('
lstm_cell_605_3661273:
(#
lstm_cell_605_3661275:(
identity??%lstm_cell_605/StatefulPartitionedCall?while;
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
%lstm_cell_605/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_605_3661271lstm_cell_605_3661273lstm_cell_605_3661275*
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661225n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_605_3661271lstm_cell_605_3661273lstm_cell_605_3661275*
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
while_body_3661284*
condR
while_cond_3661283*K
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
NoOpNoOp&^lstm_cell_605/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_605/StatefulPartitionedCall%lstm_cell_605/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_630_layer_call_and_return_conditional_losses_3662357

inputs?
,lstm_cell_603_matmul_readvariableop_resource:	?A
.lstm_cell_603_matmul_1_readvariableop_resource:	d?<
-lstm_cell_603_biasadd_readvariableop_resource:	?
identity??$lstm_cell_603/BiasAdd/ReadVariableOp?#lstm_cell_603/MatMul/ReadVariableOp?%lstm_cell_603/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_603/MatMul/ReadVariableOpReadVariableOp,lstm_cell_603_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_603/MatMulMatMulstrided_slice_2:output:0+lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_603_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_603/MatMul_1MatMulzeros:output:0-lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_603/addAddV2lstm_cell_603/MatMul:product:0 lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_603_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_603/BiasAddBiasAddlstm_cell_603/add:z:0,lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_603/splitSplit&lstm_cell_603/split/split_dim:output:0lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_603/SigmoidSigmoidlstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_1Sigmoidlstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_603/mulMullstm_cell_603/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_603/ReluRelulstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_1Mullstm_cell_603/Sigmoid:y:0 lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_603/add_1AddV2lstm_cell_603/mul:z:0lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_603/Sigmoid_2Sigmoidlstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_603/Relu_1Relulstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_603/mul_2Mullstm_cell_603/Sigmoid_2:y:0"lstm_cell_603/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_603_matmul_readvariableop_resource.lstm_cell_603_matmul_1_readvariableop_resource-lstm_cell_603_biasadd_readvariableop_resource*
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
while_body_3662273*
condR
while_cond_3662272*K
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
NoOpNoOp%^lstm_cell_603/BiasAdd/ReadVariableOp$^lstm_cell_603/MatMul/ReadVariableOp&^lstm_cell_603/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_603/BiasAdd/ReadVariableOp$lstm_cell_603/BiasAdd/ReadVariableOp2J
#lstm_cell_603/MatMul/ReadVariableOp#lstm_cell_603/MatMul/ReadVariableOp2N
%lstm_cell_603/MatMul_1/ReadVariableOp%lstm_cell_603/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_630_layer_call_fn_3663524

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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3662357s
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
?
*__inference_lstm_630_layer_call_fn_3663491
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3660462|
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
while_body_3665244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_605_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_605_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_605_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_605_matmul_readvariableop_resource:2(F
4while_lstm_cell_605_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_605_biasadd_readvariableop_resource:(??*while/lstm_cell_605/BiasAdd/ReadVariableOp?)while/lstm_cell_605/MatMul/ReadVariableOp?+while/lstm_cell_605/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_605/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_605/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_605/addAddV2$while/lstm_cell_605/MatMul:product:0&while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_605/BiasAddBiasAddwhile/lstm_cell_605/add:z:02while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_605/splitSplit,while/lstm_cell_605/split/split_dim:output:0$while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_605/SigmoidSigmoid"while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_1Sigmoid"while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mulMul!while/lstm_cell_605/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_605/ReluRelu"while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_1Mulwhile/lstm_cell_605/Sigmoid:y:0&while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/add_1AddV2while/lstm_cell_605/mul:z:0while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_605/Sigmoid_2Sigmoid"while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_605/Relu_1Reluwhile/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_605/mul_2Mul!while/lstm_cell_605/Sigmoid_2:y:0(while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_605/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_605/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_605/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_605/BiasAdd/ReadVariableOp*^while/lstm_cell_605/MatMul/ReadVariableOp,^while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_605_biasadd_readvariableop_resource5while_lstm_cell_605_biasadd_readvariableop_resource_0"n
4while_lstm_cell_605_matmul_1_readvariableop_resource6while_lstm_cell_605_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_605_matmul_readvariableop_resource4while_lstm_cell_605_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_605/BiasAdd/ReadVariableOp*while/lstm_cell_605/BiasAdd/ReadVariableOp2V
)while/lstm_cell_605/MatMul/ReadVariableOp)while/lstm_cell_605/MatMul/ReadVariableOp2Z
+while/lstm_cell_605/MatMul_1/ReadVariableOp+while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3664484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3664484___redundant_placeholder05
1while_while_cond_3664484___redundant_placeholder15
1while_while_cond_3664484___redundant_placeholder25
1while_while_cond_3664484___redundant_placeholder3
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3660379

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
*sequential_210_lstm_632_while_body_3660222L
Hsequential_210_lstm_632_while_sequential_210_lstm_632_while_loop_counterR
Nsequential_210_lstm_632_while_sequential_210_lstm_632_while_maximum_iterations-
)sequential_210_lstm_632_while_placeholder/
+sequential_210_lstm_632_while_placeholder_1/
+sequential_210_lstm_632_while_placeholder_2/
+sequential_210_lstm_632_while_placeholder_3K
Gsequential_210_lstm_632_while_sequential_210_lstm_632_strided_slice_1_0?
?sequential_210_lstm_632_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_632_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_210_lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0:2(`
Nsequential_210_lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0:
([
Msequential_210_lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0:(*
&sequential_210_lstm_632_while_identity,
(sequential_210_lstm_632_while_identity_1,
(sequential_210_lstm_632_while_identity_2,
(sequential_210_lstm_632_while_identity_3,
(sequential_210_lstm_632_while_identity_4,
(sequential_210_lstm_632_while_identity_5I
Esequential_210_lstm_632_while_sequential_210_lstm_632_strided_slice_1?
?sequential_210_lstm_632_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_632_tensorarrayunstack_tensorlistfromtensor\
Jsequential_210_lstm_632_while_lstm_cell_605_matmul_readvariableop_resource:2(^
Lsequential_210_lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource:
(Y
Ksequential_210_lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource:(??Bsequential_210/lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp?Asequential_210/lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp?Csequential_210/lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp?
Osequential_210/lstm_632/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_210/lstm_632/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_210_lstm_632_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_632_tensorarrayunstack_tensorlistfromtensor_0)sequential_210_lstm_632_while_placeholderXsequential_210/lstm_632/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_210/lstm_632/while/lstm_cell_605/MatMul/ReadVariableOpReadVariableOpLsequential_210_lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_210/lstm_632/while/lstm_cell_605/MatMulMatMulHsequential_210/lstm_632/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_210/lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_210/lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOpNsequential_210_lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_210/lstm_632/while/lstm_cell_605/MatMul_1MatMul+sequential_210_lstm_632_while_placeholder_2Ksequential_210/lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_210/lstm_632/while/lstm_cell_605/addAddV2<sequential_210/lstm_632/while/lstm_cell_605/MatMul:product:0>sequential_210/lstm_632/while/lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_210/lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOpMsequential_210_lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_210/lstm_632/while/lstm_cell_605/BiasAddBiasAdd3sequential_210/lstm_632/while/lstm_cell_605/add:z:0Jsequential_210/lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_210/lstm_632/while/lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_210/lstm_632/while/lstm_cell_605/splitSplitDsequential_210/lstm_632/while/lstm_cell_605/split/split_dim:output:0<sequential_210/lstm_632/while/lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_210/lstm_632/while/lstm_cell_605/SigmoidSigmoid:sequential_210/lstm_632/while/lstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_210/lstm_632/while/lstm_cell_605/Sigmoid_1Sigmoid:sequential_210/lstm_632/while/lstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_210/lstm_632/while/lstm_cell_605/mulMul9sequential_210/lstm_632/while/lstm_cell_605/Sigmoid_1:y:0+sequential_210_lstm_632_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_210/lstm_632/while/lstm_cell_605/ReluRelu:sequential_210/lstm_632/while/lstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_210/lstm_632/while/lstm_cell_605/mul_1Mul7sequential_210/lstm_632/while/lstm_cell_605/Sigmoid:y:0>sequential_210/lstm_632/while/lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_210/lstm_632/while/lstm_cell_605/add_1AddV23sequential_210/lstm_632/while/lstm_cell_605/mul:z:05sequential_210/lstm_632/while/lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_210/lstm_632/while/lstm_cell_605/Sigmoid_2Sigmoid:sequential_210/lstm_632/while/lstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_210/lstm_632/while/lstm_cell_605/Relu_1Relu5sequential_210/lstm_632/while/lstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_210/lstm_632/while/lstm_cell_605/mul_2Mul9sequential_210/lstm_632/while/lstm_cell_605/Sigmoid_2:y:0@sequential_210/lstm_632/while/lstm_cell_605/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_210/lstm_632/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_210_lstm_632_while_placeholder_1)sequential_210_lstm_632_while_placeholder5sequential_210/lstm_632/while/lstm_cell_605/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_210/lstm_632/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_210/lstm_632/while/addAddV2)sequential_210_lstm_632_while_placeholder,sequential_210/lstm_632/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_210/lstm_632/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_210/lstm_632/while/add_1AddV2Hsequential_210_lstm_632_while_sequential_210_lstm_632_while_loop_counter.sequential_210/lstm_632/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_210/lstm_632/while/IdentityIdentity'sequential_210/lstm_632/while/add_1:z:0#^sequential_210/lstm_632/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_632/while/Identity_1IdentityNsequential_210_lstm_632_while_sequential_210_lstm_632_while_maximum_iterations#^sequential_210/lstm_632/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_632/while/Identity_2Identity%sequential_210/lstm_632/while/add:z:0#^sequential_210/lstm_632/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_632/while/Identity_3IdentityRsequential_210/lstm_632/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_210/lstm_632/while/NoOp*
T0*
_output_shapes
: ?
(sequential_210/lstm_632/while/Identity_4Identity5sequential_210/lstm_632/while/lstm_cell_605/mul_2:z:0#^sequential_210/lstm_632/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_210/lstm_632/while/Identity_5Identity5sequential_210/lstm_632/while/lstm_cell_605/add_1:z:0#^sequential_210/lstm_632/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_210/lstm_632/while/NoOpNoOpC^sequential_210/lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOpB^sequential_210/lstm_632/while/lstm_cell_605/MatMul/ReadVariableOpD^sequential_210/lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_210_lstm_632_while_identity/sequential_210/lstm_632/while/Identity:output:0"]
(sequential_210_lstm_632_while_identity_11sequential_210/lstm_632/while/Identity_1:output:0"]
(sequential_210_lstm_632_while_identity_21sequential_210/lstm_632/while/Identity_2:output:0"]
(sequential_210_lstm_632_while_identity_31sequential_210/lstm_632/while/Identity_3:output:0"]
(sequential_210_lstm_632_while_identity_41sequential_210/lstm_632/while/Identity_4:output:0"]
(sequential_210_lstm_632_while_identity_51sequential_210/lstm_632/while/Identity_5:output:0"?
Ksequential_210_lstm_632_while_lstm_cell_605_biasadd_readvariableop_resourceMsequential_210_lstm_632_while_lstm_cell_605_biasadd_readvariableop_resource_0"?
Lsequential_210_lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resourceNsequential_210_lstm_632_while_lstm_cell_605_matmul_1_readvariableop_resource_0"?
Jsequential_210_lstm_632_while_lstm_cell_605_matmul_readvariableop_resourceLsequential_210_lstm_632_while_lstm_cell_605_matmul_readvariableop_resource_0"?
Esequential_210_lstm_632_while_sequential_210_lstm_632_strided_slice_1Gsequential_210_lstm_632_while_sequential_210_lstm_632_strided_slice_1_0"?
?sequential_210_lstm_632_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_632_tensorarrayunstack_tensorlistfromtensor?sequential_210_lstm_632_while_tensorarrayv2read_tensorlistgetitem_sequential_210_lstm_632_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_210/lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOpBsequential_210/lstm_632/while/lstm_cell_605/BiasAdd/ReadVariableOp2?
Asequential_210/lstm_632/while/lstm_cell_605/MatMul/ReadVariableOpAsequential_210/lstm_632/while/lstm_cell_605/MatMul/ReadVariableOp2?
Csequential_210/lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOpCsequential_210/lstm_632/while/lstm_cell_605/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3665100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3665100___redundant_placeholder05
1while_while_cond_3665100___redundant_placeholder15
1while_while_cond_3665100___redundant_placeholder25
1while_while_cond_3665100___redundant_placeholder3
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661079

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
0__inference_sequential_210_layer_call_fn_3662599

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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3661836o
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
?
?
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662507
lstm_630_input#
lstm_630_3662480:	?#
lstm_630_3662482:	d?
lstm_630_3662484:	?#
lstm_631_3662487:	d?#
lstm_631_3662489:	2?
lstm_631_3662491:	?"
lstm_632_3662494:2("
lstm_632_3662496:
(
lstm_632_3662498:(#
dense_210_3662501:

dense_210_3662503:
identity??!dense_210/StatefulPartitionedCall? lstm_630/StatefulPartitionedCall? lstm_631/StatefulPartitionedCall? lstm_632/StatefulPartitionedCall?
 lstm_630/StatefulPartitionedCallStatefulPartitionedCalllstm_630_inputlstm_630_3662480lstm_630_3662482lstm_630_3662484*
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3661511?
 lstm_631/StatefulPartitionedCallStatefulPartitionedCall)lstm_630/StatefulPartitionedCall:output:0lstm_631_3662487lstm_631_3662489lstm_631_3662491*
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3661661?
 lstm_632/StatefulPartitionedCallStatefulPartitionedCall)lstm_631/StatefulPartitionedCall:output:0lstm_632_3662494lstm_632_3662496lstm_632_3662498*
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3661811?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall)lstm_632/StatefulPartitionedCall:output:0dense_210_3662501dense_210_3662503*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_3661829y
IdentityIdentity*dense_210/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_210/StatefulPartitionedCall!^lstm_630/StatefulPartitionedCall!^lstm_631/StatefulPartitionedCall!^lstm_632/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2D
 lstm_630/StatefulPartitionedCall lstm_630/StatefulPartitionedCall2D
 lstm_631/StatefulPartitionedCall lstm_631/StatefulPartitionedCall2D
 lstm_632/StatefulPartitionedCall lstm_632/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_630_input
?
?
while_cond_3661576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3661576___redundant_placeholder05
1while_while_cond_3661576___redundant_placeholder15
1while_while_cond_3661576___redundant_placeholder25
1while_while_cond_3661576___redundant_placeholder3
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
lstm_630_while_cond_3662684.
*lstm_630_while_lstm_630_while_loop_counter4
0lstm_630_while_lstm_630_while_maximum_iterations
lstm_630_while_placeholder 
lstm_630_while_placeholder_1 
lstm_630_while_placeholder_2 
lstm_630_while_placeholder_30
,lstm_630_while_less_lstm_630_strided_slice_1G
Clstm_630_while_lstm_630_while_cond_3662684___redundant_placeholder0G
Clstm_630_while_lstm_630_while_cond_3662684___redundant_placeholder1G
Clstm_630_while_lstm_630_while_cond_3662684___redundant_placeholder2G
Clstm_630_while_lstm_630_while_cond_3662684___redundant_placeholder3
lstm_630_while_identity
?
lstm_630/while/LessLesslstm_630_while_placeholder,lstm_630_while_less_lstm_630_strided_slice_1*
T0*
_output_shapes
: ]
lstm_630/while/IdentityIdentitylstm_630/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_630_while_identity lstm_630/while/Identity:output:0*(
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3661225

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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3665445

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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3665641

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
*__inference_lstm_631_layer_call_fn_3664107
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3660812|
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
?
?
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3660875

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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665328

inputs>
,lstm_cell_605_matmul_readvariableop_resource:2(@
.lstm_cell_605_matmul_1_readvariableop_resource:
(;
-lstm_cell_605_biasadd_readvariableop_resource:(
identity??$lstm_cell_605/BiasAdd/ReadVariableOp?#lstm_cell_605/MatMul/ReadVariableOp?%lstm_cell_605/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_605/MatMul/ReadVariableOpReadVariableOp,lstm_cell_605_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_605/MatMulMatMulstrided_slice_2:output:0+lstm_cell_605/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_605/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_605_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_605/MatMul_1MatMulzeros:output:0-lstm_cell_605/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_605/addAddV2lstm_cell_605/MatMul:product:0 lstm_cell_605/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_605/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_605_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_605/BiasAddBiasAddlstm_cell_605/add:z:0,lstm_cell_605/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_605/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_605/splitSplit&lstm_cell_605/split/split_dim:output:0lstm_cell_605/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_605/SigmoidSigmoidlstm_cell_605/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_1Sigmoidlstm_cell_605/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_605/mulMullstm_cell_605/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_605/ReluRelulstm_cell_605/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_1Mullstm_cell_605/Sigmoid:y:0 lstm_cell_605/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_605/add_1AddV2lstm_cell_605/mul:z:0lstm_cell_605/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_605/Sigmoid_2Sigmoidlstm_cell_605/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_605/Relu_1Relulstm_cell_605/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_605/mul_2Mullstm_cell_605/Sigmoid_2:y:0"lstm_cell_605/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_605_matmul_readvariableop_resource.lstm_cell_605_matmul_1_readvariableop_resource-lstm_cell_605_biasadd_readvariableop_resource*
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
while_body_3665244*
condR
while_cond_3665243*K
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
NoOpNoOp%^lstm_cell_605/BiasAdd/ReadVariableOp$^lstm_cell_605/MatMul/ReadVariableOp&^lstm_cell_605/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_605/BiasAdd/ReadVariableOp$lstm_cell_605/BiasAdd/ReadVariableOp2J
#lstm_cell_605/MatMul/ReadVariableOp#lstm_cell_605/MatMul/ReadVariableOp2N
%lstm_cell_605/MatMul_1/ReadVariableOp%lstm_cell_605/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3663583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_603_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_603_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_603_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_603_matmul_readvariableop_resource:	?G
4while_lstm_cell_603_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_603_biasadd_readvariableop_resource:	???*while/lstm_cell_603/BiasAdd/ReadVariableOp?)while/lstm_cell_603/MatMul/ReadVariableOp?+while/lstm_cell_603/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_603/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_603_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_603/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_603/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_603/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_603_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_603/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_603/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_603/addAddV2$while/lstm_cell_603/MatMul:product:0&while/lstm_cell_603/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_603/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_603_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_603/BiasAddBiasAddwhile/lstm_cell_603/add:z:02while/lstm_cell_603/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_603/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_603/splitSplit,while/lstm_cell_603/split/split_dim:output:0$while/lstm_cell_603/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_603/SigmoidSigmoid"while/lstm_cell_603/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_1Sigmoid"while/lstm_cell_603/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mulMul!while/lstm_cell_603/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_603/ReluRelu"while/lstm_cell_603/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_1Mulwhile/lstm_cell_603/Sigmoid:y:0&while/lstm_cell_603/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/add_1AddV2while/lstm_cell_603/mul:z:0while/lstm_cell_603/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_603/Sigmoid_2Sigmoid"while/lstm_cell_603/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_603/Relu_1Reluwhile/lstm_cell_603/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_603/mul_2Mul!while/lstm_cell_603/Sigmoid_2:y:0(while/lstm_cell_603/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_603/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_603/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_603/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_603/BiasAdd/ReadVariableOp*^while/lstm_cell_603/MatMul/ReadVariableOp,^while/lstm_cell_603/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_603_biasadd_readvariableop_resource5while_lstm_cell_603_biasadd_readvariableop_resource_0"n
4while_lstm_cell_603_matmul_1_readvariableop_resource6while_lstm_cell_603_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_603_matmul_readvariableop_resource4while_lstm_cell_603_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_603/BiasAdd/ReadVariableOp*while/lstm_cell_603/BiasAdd/ReadVariableOp2V
)while/lstm_cell_603/MatMul/ReadVariableOp)while/lstm_cell_603/MatMul/ReadVariableOp2Z
+while/lstm_cell_603/MatMul_1/ReadVariableOp+while/lstm_cell_603/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_630_input;
 serving_default_lstm_630_input:0?????????=
	dense_2100
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
2dense_210/kernel
:2dense_210/bias
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
0:.	?2lstm_630/lstm_cell_630/kernel
::8	d?2'lstm_630/lstm_cell_630/recurrent_kernel
*:(?2lstm_630/lstm_cell_630/bias
0:.	d?2lstm_631/lstm_cell_631/kernel
::8	2?2'lstm_631/lstm_cell_631/recurrent_kernel
*:(?2lstm_631/lstm_cell_631/bias
/:-2(2lstm_632/lstm_cell_632/kernel
9:7
(2'lstm_632/lstm_cell_632/recurrent_kernel
):'(2lstm_632/lstm_cell_632/bias
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
2Adam/dense_210/kernel/m
!:2Adam/dense_210/bias/m
5:3	?2$Adam/lstm_630/lstm_cell_630/kernel/m
?:=	d?2.Adam/lstm_630/lstm_cell_630/recurrent_kernel/m
/:-?2"Adam/lstm_630/lstm_cell_630/bias/m
5:3	d?2$Adam/lstm_631/lstm_cell_631/kernel/m
?:=	2?2.Adam/lstm_631/lstm_cell_631/recurrent_kernel/m
/:-?2"Adam/lstm_631/lstm_cell_631/bias/m
4:22(2$Adam/lstm_632/lstm_cell_632/kernel/m
>:<
(2.Adam/lstm_632/lstm_cell_632/recurrent_kernel/m
.:,(2"Adam/lstm_632/lstm_cell_632/bias/m
':%
2Adam/dense_210/kernel/v
!:2Adam/dense_210/bias/v
5:3	?2$Adam/lstm_630/lstm_cell_630/kernel/v
?:=	d?2.Adam/lstm_630/lstm_cell_630/recurrent_kernel/v
/:-?2"Adam/lstm_630/lstm_cell_630/bias/v
5:3	d?2$Adam/lstm_631/lstm_cell_631/kernel/v
?:=	2?2.Adam/lstm_631/lstm_cell_631/recurrent_kernel/v
/:-?2"Adam/lstm_631/lstm_cell_631/bias/v
4:22(2$Adam/lstm_632/lstm_cell_632/kernel/v
>:<
(2.Adam/lstm_632/lstm_cell_632/recurrent_kernel/v
.:,(2"Adam/lstm_632/lstm_cell_632/bias/v
?2?
0__inference_sequential_210_layer_call_fn_3661861
0__inference_sequential_210_layer_call_fn_3662599
0__inference_sequential_210_layer_call_fn_3662626
0__inference_sequential_210_layer_call_fn_3662477?
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3663053
K__inference_sequential_210_layer_call_and_return_conditional_losses_3663480
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662507
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662537?
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
"__inference__wrapped_model_3660312lstm_630_input"?
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
*__inference_lstm_630_layer_call_fn_3663491
*__inference_lstm_630_layer_call_fn_3663502
*__inference_lstm_630_layer_call_fn_3663513
*__inference_lstm_630_layer_call_fn_3663524?
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663667
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663810
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663953
E__inference_lstm_630_layer_call_and_return_conditional_losses_3664096?
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
*__inference_lstm_631_layer_call_fn_3664107
*__inference_lstm_631_layer_call_fn_3664118
*__inference_lstm_631_layer_call_fn_3664129
*__inference_lstm_631_layer_call_fn_3664140?
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664283
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664426
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664569
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664712?
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
*__inference_lstm_632_layer_call_fn_3664723
*__inference_lstm_632_layer_call_fn_3664734
*__inference_lstm_632_layer_call_fn_3664745
*__inference_lstm_632_layer_call_fn_3664756?
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3664899
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665042
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665185
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665328?
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
+__inference_dense_210_layer_call_fn_3665337?
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
F__inference_dense_210_layer_call_and_return_conditional_losses_3665347?
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
%__inference_signature_wrapper_3662572lstm_630_input"?
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
/__inference_lstm_cell_603_layer_call_fn_3665364
/__inference_lstm_cell_603_layer_call_fn_3665381?
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3665413
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3665445?
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
/__inference_lstm_cell_604_layer_call_fn_3665462
/__inference_lstm_cell_604_layer_call_fn_3665479?
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3665511
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3665543?
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
/__inference_lstm_cell_605_layer_call_fn_3665560
/__inference_lstm_cell_605_layer_call_fn_3665577?
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3665609
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3665641?
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
"__inference__wrapped_model_3660312?-./012345!";?8
1?.
,?)
lstm_630_input?????????
? "5?2
0
	dense_210#? 
	dense_210??????????
F__inference_dense_210_layer_call_and_return_conditional_losses_3665347\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_210_layer_call_fn_3665337O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663667?-./O?L
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663810?-./O?L
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3663953q-./??<
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
E__inference_lstm_630_layer_call_and_return_conditional_losses_3664096q-./??<
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
*__inference_lstm_630_layer_call_fn_3663491}-./O?L
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
*__inference_lstm_630_layer_call_fn_3663502}-./O?L
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
*__inference_lstm_630_layer_call_fn_3663513d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_630_layer_call_fn_3663524d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664283?012O?L
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664426?012O?L
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664569q012??<
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
E__inference_lstm_631_layer_call_and_return_conditional_losses_3664712q012??<
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
*__inference_lstm_631_layer_call_fn_3664107}012O?L
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
*__inference_lstm_631_layer_call_fn_3664118}012O?L
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
*__inference_lstm_631_layer_call_fn_3664129d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_631_layer_call_fn_3664140d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_632_layer_call_and_return_conditional_losses_3664899}345O?L
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665042}345O?L
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665185m345??<
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
E__inference_lstm_632_layer_call_and_return_conditional_losses_3665328m345??<
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
*__inference_lstm_632_layer_call_fn_3664723p345O?L
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
*__inference_lstm_632_layer_call_fn_3664734p345O?L
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
*__inference_lstm_632_layer_call_fn_3664745`345??<
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
*__inference_lstm_632_layer_call_fn_3664756`345??<
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3665413?-./??}
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
J__inference_lstm_cell_603_layer_call_and_return_conditional_losses_3665445?-./??}
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
/__inference_lstm_cell_603_layer_call_fn_3665364?-./??}
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
/__inference_lstm_cell_603_layer_call_fn_3665381?-./??}
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3665511?012??}
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
J__inference_lstm_cell_604_layer_call_and_return_conditional_losses_3665543?012??}
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
/__inference_lstm_cell_604_layer_call_fn_3665462?012??}
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
/__inference_lstm_cell_604_layer_call_fn_3665479?012??}
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3665609?345??}
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
J__inference_lstm_cell_605_layer_call_and_return_conditional_losses_3665641?345??}
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
/__inference_lstm_cell_605_layer_call_fn_3665560?345??}
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
/__inference_lstm_cell_605_layer_call_fn_3665577?345??}
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662507y-./012345!"C?@
9?6
,?)
lstm_630_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_210_layer_call_and_return_conditional_losses_3662537y-./012345!"C?@
9?6
,?)
lstm_630_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_210_layer_call_and_return_conditional_losses_3663053q-./012345!";?8
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
K__inference_sequential_210_layer_call_and_return_conditional_losses_3663480q-./012345!";?8
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
0__inference_sequential_210_layer_call_fn_3661861l-./012345!"C?@
9?6
,?)
lstm_630_input?????????
p 

 
? "???????????
0__inference_sequential_210_layer_call_fn_3662477l-./012345!"C?@
9?6
,?)
lstm_630_input?????????
p

 
? "???????????
0__inference_sequential_210_layer_call_fn_3662599d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_210_layer_call_fn_3662626d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3662572?-./012345!"M?J
? 
C?@
>
lstm_630_input,?)
lstm_630_input?????????"5?2
0
	dense_210#? 
	dense_210?????????