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
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_58/kernel
s
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel*
_output_shapes

:
*
dtype0
r
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_58/bias
k
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
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
lstm_174/lstm_cell_174/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_174/lstm_cell_174/kernel
?
1lstm_174/lstm_cell_174/kernel/Read/ReadVariableOpReadVariableOplstm_174/lstm_cell_174/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_174/lstm_cell_174/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_174/lstm_cell_174/recurrent_kernel
?
;lstm_174/lstm_cell_174/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_174/lstm_cell_174/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_174/lstm_cell_174/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_174/lstm_cell_174/bias
?
/lstm_174/lstm_cell_174/bias/Read/ReadVariableOpReadVariableOplstm_174/lstm_cell_174/bias*
_output_shapes	
:?*
dtype0
?
lstm_175/lstm_cell_175/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_175/lstm_cell_175/kernel
?
1lstm_175/lstm_cell_175/kernel/Read/ReadVariableOpReadVariableOplstm_175/lstm_cell_175/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_175/lstm_cell_175/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_175/lstm_cell_175/recurrent_kernel
?
;lstm_175/lstm_cell_175/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_175/lstm_cell_175/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_175/lstm_cell_175/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_175/lstm_cell_175/bias
?
/lstm_175/lstm_cell_175/bias/Read/ReadVariableOpReadVariableOplstm_175/lstm_cell_175/bias*
_output_shapes	
:?*
dtype0
?
lstm_176/lstm_cell_176/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_176/lstm_cell_176/kernel
?
1lstm_176/lstm_cell_176/kernel/Read/ReadVariableOpReadVariableOplstm_176/lstm_cell_176/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_176/lstm_cell_176/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_176/lstm_cell_176/recurrent_kernel
?
;lstm_176/lstm_cell_176/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_176/lstm_cell_176/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_176/lstm_cell_176/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_176/lstm_cell_176/bias
?
/lstm_176/lstm_cell_176/bias/Read/ReadVariableOpReadVariableOplstm_176/lstm_cell_176/bias*
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
Adam/dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_58/kernel/m
?
*Adam/dense_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_58/bias/m
y
(Adam/dense_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_174/lstm_cell_174/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_174/lstm_cell_174/kernel/m
?
8Adam/lstm_174/lstm_cell_174/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_174/lstm_cell_174/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_174/lstm_cell_174/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_174/lstm_cell_174/recurrent_kernel/m
?
BAdam/lstm_174/lstm_cell_174/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_174/lstm_cell_174/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_174/lstm_cell_174/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_174/lstm_cell_174/bias/m
?
6Adam/lstm_174/lstm_cell_174/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_174/lstm_cell_174/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_175/lstm_cell_175/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_175/lstm_cell_175/kernel/m
?
8Adam/lstm_175/lstm_cell_175/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_175/lstm_cell_175/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_175/lstm_cell_175/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_175/lstm_cell_175/recurrent_kernel/m
?
BAdam/lstm_175/lstm_cell_175/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_175/lstm_cell_175/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_175/lstm_cell_175/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_175/lstm_cell_175/bias/m
?
6Adam/lstm_175/lstm_cell_175/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_175/lstm_cell_175/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_176/lstm_cell_176/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_176/lstm_cell_176/kernel/m
?
8Adam/lstm_176/lstm_cell_176/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_176/lstm_cell_176/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_176/lstm_cell_176/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_176/lstm_cell_176/recurrent_kernel/m
?
BAdam/lstm_176/lstm_cell_176/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_176/lstm_cell_176/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_176/lstm_cell_176/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_176/lstm_cell_176/bias/m
?
6Adam/lstm_176/lstm_cell_176/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_176/lstm_cell_176/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_58/kernel/v
?
*Adam/dense_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_58/bias/v
y
(Adam/dense_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_174/lstm_cell_174/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_174/lstm_cell_174/kernel/v
?
8Adam/lstm_174/lstm_cell_174/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_174/lstm_cell_174/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_174/lstm_cell_174/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_174/lstm_cell_174/recurrent_kernel/v
?
BAdam/lstm_174/lstm_cell_174/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_174/lstm_cell_174/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_174/lstm_cell_174/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_174/lstm_cell_174/bias/v
?
6Adam/lstm_174/lstm_cell_174/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_174/lstm_cell_174/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_175/lstm_cell_175/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_175/lstm_cell_175/kernel/v
?
8Adam/lstm_175/lstm_cell_175/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_175/lstm_cell_175/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_175/lstm_cell_175/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_175/lstm_cell_175/recurrent_kernel/v
?
BAdam/lstm_175/lstm_cell_175/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_175/lstm_cell_175/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_175/lstm_cell_175/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_175/lstm_cell_175/bias/v
?
6Adam/lstm_175/lstm_cell_175/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_175/lstm_cell_175/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_176/lstm_cell_176/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_176/lstm_cell_176/kernel/v
?
8Adam/lstm_176/lstm_cell_176/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_176/lstm_cell_176/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_176/lstm_cell_176/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_176/lstm_cell_176/recurrent_kernel/v
?
BAdam/lstm_176/lstm_cell_176/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_176/lstm_cell_176/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_176/lstm_cell_176/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_176/lstm_cell_176/bias/v
?
6Adam/lstm_176/lstm_cell_176/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_176/lstm_cell_176/bias/v*
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
VARIABLE_VALUEdense_58/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_58/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_174/lstm_cell_174/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_174/lstm_cell_174/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_174/lstm_cell_174/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_175/lstm_cell_175/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_175/lstm_cell_175/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_175/lstm_cell_175/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_176/lstm_cell_176/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_176/lstm_cell_176/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_176/lstm_cell_176/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_58/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_174/lstm_cell_174/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_174/lstm_cell_174/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_174/lstm_cell_174/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_175/lstm_cell_175/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_175/lstm_cell_175/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_175/lstm_cell_175/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_176/lstm_cell_176/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_176/lstm_cell_176/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_176/lstm_cell_176/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_58/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_174/lstm_cell_174/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_174/lstm_cell_174/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_174/lstm_cell_174/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_175/lstm_cell_175/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_175/lstm_cell_175/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_175/lstm_cell_175/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_176/lstm_cell_176/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_176/lstm_cell_176/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_176/lstm_cell_176/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_174_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_174_inputlstm_174/lstm_cell_174/kernel'lstm_174/lstm_cell_174/recurrent_kernellstm_174/lstm_cell_174/biaslstm_175/lstm_cell_175/kernel'lstm_175/lstm_cell_175/recurrent_kernellstm_175/lstm_cell_175/biaslstm_176/lstm_cell_176/kernel'lstm_176/lstm_cell_176/recurrent_kernellstm_176/lstm_cell_176/biasdense_58/kerneldense_58/bias*
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
%__inference_signature_wrapper_3044049
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_174/lstm_cell_174/kernel/Read/ReadVariableOp;lstm_174/lstm_cell_174/recurrent_kernel/Read/ReadVariableOp/lstm_174/lstm_cell_174/bias/Read/ReadVariableOp1lstm_175/lstm_cell_175/kernel/Read/ReadVariableOp;lstm_175/lstm_cell_175/recurrent_kernel/Read/ReadVariableOp/lstm_175/lstm_cell_175/bias/Read/ReadVariableOp1lstm_176/lstm_cell_176/kernel/Read/ReadVariableOp;lstm_176/lstm_cell_176/recurrent_kernel/Read/ReadVariableOp/lstm_176/lstm_cell_176/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_58/kernel/m/Read/ReadVariableOp(Adam/dense_58/bias/m/Read/ReadVariableOp8Adam/lstm_174/lstm_cell_174/kernel/m/Read/ReadVariableOpBAdam/lstm_174/lstm_cell_174/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_174/lstm_cell_174/bias/m/Read/ReadVariableOp8Adam/lstm_175/lstm_cell_175/kernel/m/Read/ReadVariableOpBAdam/lstm_175/lstm_cell_175/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_175/lstm_cell_175/bias/m/Read/ReadVariableOp8Adam/lstm_176/lstm_cell_176/kernel/m/Read/ReadVariableOpBAdam/lstm_176/lstm_cell_176/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_176/lstm_cell_176/bias/m/Read/ReadVariableOp*Adam/dense_58/kernel/v/Read/ReadVariableOp(Adam/dense_58/bias/v/Read/ReadVariableOp8Adam/lstm_174/lstm_cell_174/kernel/v/Read/ReadVariableOpBAdam/lstm_174/lstm_cell_174/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_174/lstm_cell_174/bias/v/Read/ReadVariableOp8Adam/lstm_175/lstm_cell_175/kernel/v/Read/ReadVariableOpBAdam/lstm_175/lstm_cell_175/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_175/lstm_cell_175/bias/v/Read/ReadVariableOp8Adam/lstm_176/lstm_cell_176/kernel/v/Read/ReadVariableOpBAdam/lstm_176/lstm_cell_176/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_176/lstm_cell_176/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3047261
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_58/kerneldense_58/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_174/lstm_cell_174/kernel'lstm_174/lstm_cell_174/recurrent_kernellstm_174/lstm_cell_174/biaslstm_175/lstm_cell_175/kernel'lstm_175/lstm_cell_175/recurrent_kernellstm_175/lstm_cell_175/biaslstm_176/lstm_cell_176/kernel'lstm_176/lstm_cell_176/recurrent_kernellstm_176/lstm_cell_176/biastotalcountAdam/dense_58/kernel/mAdam/dense_58/bias/m$Adam/lstm_174/lstm_cell_174/kernel/m.Adam/lstm_174/lstm_cell_174/recurrent_kernel/m"Adam/lstm_174/lstm_cell_174/bias/m$Adam/lstm_175/lstm_cell_175/kernel/m.Adam/lstm_175/lstm_cell_175/recurrent_kernel/m"Adam/lstm_175/lstm_cell_175/bias/m$Adam/lstm_176/lstm_cell_176/kernel/m.Adam/lstm_176/lstm_cell_176/recurrent_kernel/m"Adam/lstm_176/lstm_cell_176/bias/mAdam/dense_58/kernel/vAdam/dense_58/bias/v$Adam/lstm_174/lstm_cell_174/kernel/v.Adam/lstm_174/lstm_cell_174/recurrent_kernel/v"Adam/lstm_174/lstm_cell_174/bias/v$Adam/lstm_175/lstm_cell_175/kernel/v.Adam/lstm_175/lstm_cell_175/recurrent_kernel/v"Adam/lstm_175/lstm_cell_175/bias/v$Adam/lstm_176/lstm_cell_176/kernel/v.Adam/lstm_176/lstm_cell_176/recurrent_kernel/v"Adam/lstm_176/lstm_cell_176/bias/v*4
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
#__inference__traced_restore_3047391??+
?
?
*__inference_lstm_176_layer_call_fn_3046211
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3042830o
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
while_body_3045346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_501_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_501_matmul_readvariableop_resource:	?G
4while_lstm_cell_501_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_501_biasadd_readvariableop_resource:	???*while/lstm_cell_501/BiasAdd/ReadVariableOp?)while/lstm_cell_501/MatMul/ReadVariableOp?+while/lstm_cell_501/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_501/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_501/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_501/addAddV2$while/lstm_cell_501/MatMul:product:0&while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_501/BiasAddBiasAddwhile/lstm_cell_501/add:z:02while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_501/splitSplit,while/lstm_cell_501/split/split_dim:output:0$while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_501/SigmoidSigmoid"while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_1Sigmoid"while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mulMul!while/lstm_cell_501/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_501/ReluRelu"while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_1Mulwhile/lstm_cell_501/Sigmoid:y:0&while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/add_1AddV2while/lstm_cell_501/mul:z:0while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_2Sigmoid"while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_501/Relu_1Reluwhile/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_2Mul!while/lstm_cell_501/Sigmoid_2:y:0(while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_501/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_501/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_501/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_501/BiasAdd/ReadVariableOp*^while/lstm_cell_501/MatMul/ReadVariableOp,^while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_501_biasadd_readvariableop_resource5while_lstm_cell_501_biasadd_readvariableop_resource_0"n
4while_lstm_cell_501_matmul_1_readvariableop_resource6while_lstm_cell_501_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_501_matmul_readvariableop_resource4while_lstm_cell_501_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_501/BiasAdd/ReadVariableOp*while/lstm_cell_501/BiasAdd/ReadVariableOp2V
)while/lstm_cell_501/MatMul/ReadVariableOp)while/lstm_cell_501/MatMul/ReadVariableOp2Z
+while/lstm_cell_501/MatMul_1/ReadVariableOp+while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_174_layer_call_fn_3044990

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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3042988s
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
*__inference_lstm_176_layer_call_fn_3046222

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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043288o
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
while_body_3045203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_501_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_501_matmul_readvariableop_resource:	?G
4while_lstm_cell_501_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_501_biasadd_readvariableop_resource:	???*while/lstm_cell_501/BiasAdd/ReadVariableOp?)while/lstm_cell_501/MatMul/ReadVariableOp?+while/lstm_cell_501/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_501/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_501/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_501/addAddV2$while/lstm_cell_501/MatMul:product:0&while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_501/BiasAddBiasAddwhile/lstm_cell_501/add:z:02while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_501/splitSplit,while/lstm_cell_501/split/split_dim:output:0$while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_501/SigmoidSigmoid"while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_1Sigmoid"while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mulMul!while/lstm_cell_501/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_501/ReluRelu"while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_1Mulwhile/lstm_cell_501/Sigmoid:y:0&while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/add_1AddV2while/lstm_cell_501/mul:z:0while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_2Sigmoid"while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_501/Relu_1Reluwhile/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_2Mul!while/lstm_cell_501/Sigmoid_2:y:0(while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_501/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_501/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_501/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_501/BiasAdd/ReadVariableOp*^while/lstm_cell_501/MatMul/ReadVariableOp,^while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_501_biasadd_readvariableop_resource5while_lstm_cell_501_biasadd_readvariableop_resource_0"n
4while_lstm_cell_501_matmul_1_readvariableop_resource6while_lstm_cell_501_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_501_matmul_readvariableop_resource4while_lstm_cell_501_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_501/BiasAdd/ReadVariableOp*while/lstm_cell_501/BiasAdd/ReadVariableOp2V
)while/lstm_cell_501/MatMul/ReadVariableOp)while/lstm_cell_501/MatMul/ReadVariableOp2Z
+while/lstm_cell_501/MatMul_1/ReadVariableOp+while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_175_layer_call_fn_3045606

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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043138s
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3042130

inputs(
lstm_cell_501_3042048:	?(
lstm_cell_501_3042050:	d?$
lstm_cell_501_3042052:	?
identity??%lstm_cell_501/StatefulPartitionedCall?while;
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
%lstm_cell_501/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_501_3042048lstm_cell_501_3042050lstm_cell_501_3042052*
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3042002n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_501_3042048lstm_cell_501_3042050lstm_cell_501_3042052*
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
while_body_3042061*
condR
while_cond_3042060*K
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
NoOpNoOp&^lstm_cell_501/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_501/StatefulPartitionedCall%lstm_cell_501/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045573

inputs?
,lstm_cell_501_matmul_readvariableop_resource:	?A
.lstm_cell_501_matmul_1_readvariableop_resource:	d?<
-lstm_cell_501_biasadd_readvariableop_resource:	?
identity??$lstm_cell_501/BiasAdd/ReadVariableOp?#lstm_cell_501/MatMul/ReadVariableOp?%lstm_cell_501/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_501/MatMul/ReadVariableOpReadVariableOp,lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_501/MatMulMatMulstrided_slice_2:output:0+lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_501/MatMul_1MatMulzeros:output:0-lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_501/addAddV2lstm_cell_501/MatMul:product:0 lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_501/BiasAddBiasAddlstm_cell_501/add:z:0,lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_501/splitSplit&lstm_cell_501/split/split_dim:output:0lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_501/SigmoidSigmoidlstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_1Sigmoidlstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_501/mulMullstm_cell_501/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_501/ReluRelulstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_1Mullstm_cell_501/Sigmoid:y:0 lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_501/add_1AddV2lstm_cell_501/mul:z:0lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_2Sigmoidlstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_501/Relu_1Relulstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_2Mullstm_cell_501/Sigmoid_2:y:0"lstm_cell_501/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_501_matmul_readvariableop_resource.lstm_cell_501_matmul_1_readvariableop_resource-lstm_cell_501_biasadd_readvariableop_resource*
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
while_body_3045489*
condR
while_cond_3045488*K
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
NoOpNoOp%^lstm_cell_501/BiasAdd/ReadVariableOp$^lstm_cell_501/MatMul/ReadVariableOp&^lstm_cell_501/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_501/BiasAdd/ReadVariableOp$lstm_cell_501/BiasAdd/ReadVariableOp2J
#lstm_cell_501/MatMul/ReadVariableOp#lstm_cell_501/MatMul/ReadVariableOp2N
%lstm_cell_501/MatMul_1/ReadVariableOp%lstm_cell_501/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3042219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3042219___redundant_placeholder05
1while_while_cond_3042219___redundant_placeholder15
1while_while_cond_3042219___redundant_placeholder25
1while_while_cond_3042219___redundant_placeholder3
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3047086

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
while_cond_3043203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3043203___redundant_placeholder05
1while_while_cond_3043203___redundant_placeholder15
1while_while_cond_3043203___redundant_placeholder25
1while_while_cond_3043203___redundant_placeholder3
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
)sequential_58_lstm_175_while_cond_3041559J
Fsequential_58_lstm_175_while_sequential_58_lstm_175_while_loop_counterP
Lsequential_58_lstm_175_while_sequential_58_lstm_175_while_maximum_iterations,
(sequential_58_lstm_175_while_placeholder.
*sequential_58_lstm_175_while_placeholder_1.
*sequential_58_lstm_175_while_placeholder_2.
*sequential_58_lstm_175_while_placeholder_3L
Hsequential_58_lstm_175_while_less_sequential_58_lstm_175_strided_slice_1c
_sequential_58_lstm_175_while_sequential_58_lstm_175_while_cond_3041559___redundant_placeholder0c
_sequential_58_lstm_175_while_sequential_58_lstm_175_while_cond_3041559___redundant_placeholder1c
_sequential_58_lstm_175_while_sequential_58_lstm_175_while_cond_3041559___redundant_placeholder2c
_sequential_58_lstm_175_while_sequential_58_lstm_175_while_cond_3041559___redundant_placeholder3)
%sequential_58_lstm_175_while_identity
?
!sequential_58/lstm_175/while/LessLess(sequential_58_lstm_175_while_placeholderHsequential_58_lstm_175_while_less_sequential_58_lstm_175_strided_slice_1*
T0*
_output_shapes
: y
%sequential_58/lstm_175/while/IdentityIdentity%sequential_58/lstm_175/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_58_lstm_175_while_identity.sequential_58/lstm_175/while/Identity:output:0*(
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3046046

inputs?
,lstm_cell_502_matmul_readvariableop_resource:	d?A
.lstm_cell_502_matmul_1_readvariableop_resource:	2?<
-lstm_cell_502_biasadd_readvariableop_resource:	?
identity??$lstm_cell_502/BiasAdd/ReadVariableOp?#lstm_cell_502/MatMul/ReadVariableOp?%lstm_cell_502/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_502/MatMul/ReadVariableOpReadVariableOp,lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_502/MatMulMatMulstrided_slice_2:output:0+lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_502/MatMul_1MatMulzeros:output:0-lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_502/addAddV2lstm_cell_502/MatMul:product:0 lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_502/BiasAddBiasAddlstm_cell_502/add:z:0,lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_502/splitSplit&lstm_cell_502/split/split_dim:output:0lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_502/SigmoidSigmoidlstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_1Sigmoidlstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_502/mulMullstm_cell_502/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_502/ReluRelulstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_1Mullstm_cell_502/Sigmoid:y:0 lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_502/add_1AddV2lstm_cell_502/mul:z:0lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_2Sigmoidlstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_502/Relu_1Relulstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_2Mullstm_cell_502/Sigmoid_2:y:0"lstm_cell_502/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_502_matmul_readvariableop_resource.lstm_cell_502_matmul_1_readvariableop_resource-lstm_cell_502_biasadd_readvariableop_resource*
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
while_body_3045962*
condR
while_cond_3045961*K
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
NoOpNoOp%^lstm_cell_502/BiasAdd/ReadVariableOp$^lstm_cell_502/MatMul/ReadVariableOp&^lstm_cell_502/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_502/BiasAdd/ReadVariableOp$lstm_cell_502/BiasAdd/ReadVariableOp2J
#lstm_cell_502/MatMul/ReadVariableOp#lstm_cell_502/MatMul/ReadVariableOp2N
%lstm_cell_502/MatMul_1/ReadVariableOp%lstm_cell_502/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045287
inputs_0?
,lstm_cell_501_matmul_readvariableop_resource:	?A
.lstm_cell_501_matmul_1_readvariableop_resource:	d?<
-lstm_cell_501_biasadd_readvariableop_resource:	?
identity??$lstm_cell_501/BiasAdd/ReadVariableOp?#lstm_cell_501/MatMul/ReadVariableOp?%lstm_cell_501/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_501/MatMul/ReadVariableOpReadVariableOp,lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_501/MatMulMatMulstrided_slice_2:output:0+lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_501/MatMul_1MatMulzeros:output:0-lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_501/addAddV2lstm_cell_501/MatMul:product:0 lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_501/BiasAddBiasAddlstm_cell_501/add:z:0,lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_501/splitSplit&lstm_cell_501/split/split_dim:output:0lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_501/SigmoidSigmoidlstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_1Sigmoidlstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_501/mulMullstm_cell_501/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_501/ReluRelulstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_1Mullstm_cell_501/Sigmoid:y:0 lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_501/add_1AddV2lstm_cell_501/mul:z:0lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_2Sigmoidlstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_501/Relu_1Relulstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_2Mullstm_cell_501/Sigmoid_2:y:0"lstm_cell_501/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_501_matmul_readvariableop_resource.lstm_cell_501_matmul_1_readvariableop_resource-lstm_cell_501_biasadd_readvariableop_resource*
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
while_body_3045203*
condR
while_cond_3045202*K
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
NoOpNoOp%^lstm_cell_501/BiasAdd/ReadVariableOp$^lstm_cell_501/MatMul/ReadVariableOp&^lstm_cell_501/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_501/BiasAdd/ReadVariableOp$lstm_cell_501/BiasAdd/ReadVariableOp2J
#lstm_cell_501/MatMul/ReadVariableOp#lstm_cell_501/MatMul/ReadVariableOp2N
%lstm_cell_501/MatMul_1/ReadVariableOp%lstm_cell_501/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043138

inputs?
,lstm_cell_502_matmul_readvariableop_resource:	d?A
.lstm_cell_502_matmul_1_readvariableop_resource:	2?<
-lstm_cell_502_biasadd_readvariableop_resource:	?
identity??$lstm_cell_502/BiasAdd/ReadVariableOp?#lstm_cell_502/MatMul/ReadVariableOp?%lstm_cell_502/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_502/MatMul/ReadVariableOpReadVariableOp,lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_502/MatMulMatMulstrided_slice_2:output:0+lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_502/MatMul_1MatMulzeros:output:0-lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_502/addAddV2lstm_cell_502/MatMul:product:0 lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_502/BiasAddBiasAddlstm_cell_502/add:z:0,lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_502/splitSplit&lstm_cell_502/split/split_dim:output:0lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_502/SigmoidSigmoidlstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_1Sigmoidlstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_502/mulMullstm_cell_502/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_502/ReluRelulstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_1Mullstm_cell_502/Sigmoid:y:0 lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_502/add_1AddV2lstm_cell_502/mul:z:0lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_2Sigmoidlstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_502/Relu_1Relulstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_2Mullstm_cell_502/Sigmoid_2:y:0"lstm_cell_502/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_502_matmul_readvariableop_resource.lstm_cell_502_matmul_1_readvariableop_resource-lstm_cell_502_biasadd_readvariableop_resource*
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
while_body_3043054*
condR
while_cond_3043053*K
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
NoOpNoOp%^lstm_cell_502/BiasAdd/ReadVariableOp$^lstm_cell_502/MatMul/ReadVariableOp&^lstm_cell_502/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_502/BiasAdd/ReadVariableOp$lstm_cell_502/BiasAdd/ReadVariableOp2J
#lstm_cell_502/MatMul/ReadVariableOp#lstm_cell_502/MatMul/ReadVariableOp2N
%lstm_cell_502/MatMul_1/ReadVariableOp%lstm_cell_502/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3045059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3045059___redundant_placeholder05
1while_while_cond_3045059___redundant_placeholder15
1while_while_cond_3045059___redundant_placeholder25
1while_while_cond_3045059___redundant_placeholder3
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
while_body_3043420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_503_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_503_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_503_matmul_readvariableop_resource:2(F
4while_lstm_cell_503_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_503_biasadd_readvariableop_resource:(??*while/lstm_cell_503/BiasAdd/ReadVariableOp?)while/lstm_cell_503/MatMul/ReadVariableOp?+while/lstm_cell_503/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_503/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_503/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_503/addAddV2$while/lstm_cell_503/MatMul:product:0&while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_503/BiasAddBiasAddwhile/lstm_cell_503/add:z:02while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_503/splitSplit,while/lstm_cell_503/split/split_dim:output:0$while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_503/SigmoidSigmoid"while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_1Sigmoid"while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mulMul!while/lstm_cell_503/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_503/ReluRelu"while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_1Mulwhile/lstm_cell_503/Sigmoid:y:0&while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/add_1AddV2while/lstm_cell_503/mul:z:0while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_2Sigmoid"while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_503/Relu_1Reluwhile/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_2Mul!while/lstm_cell_503/Sigmoid_2:y:0(while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_503/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_503/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_503/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_503/BiasAdd/ReadVariableOp*^while/lstm_cell_503/MatMul/ReadVariableOp,^while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_503_biasadd_readvariableop_resource5while_lstm_cell_503_biasadd_readvariableop_resource_0"n
4while_lstm_cell_503_matmul_1_readvariableop_resource6while_lstm_cell_503_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_503_matmul_readvariableop_resource4while_lstm_cell_503_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_503/BiasAdd/ReadVariableOp*while/lstm_cell_503/BiasAdd/ReadVariableOp2V
)while/lstm_cell_503/MatMul/ReadVariableOp)while/lstm_cell_503/MatMul/ReadVariableOp2Z
+while/lstm_cell_503/MatMul_1/ReadVariableOp+while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_175_while_body_3044728.
*lstm_175_while_lstm_175_while_loop_counter4
0lstm_175_while_lstm_175_while_maximum_iterations
lstm_175_while_placeholder 
lstm_175_while_placeholder_1 
lstm_175_while_placeholder_2 
lstm_175_while_placeholder_3-
)lstm_175_while_lstm_175_strided_slice_1_0i
elstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0:	d?R
?lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?M
>lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
lstm_175_while_identity
lstm_175_while_identity_1
lstm_175_while_identity_2
lstm_175_while_identity_3
lstm_175_while_identity_4
lstm_175_while_identity_5+
'lstm_175_while_lstm_175_strided_slice_1g
clstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensorN
;lstm_175_while_lstm_cell_502_matmul_readvariableop_resource:	d?P
=lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource:	2?K
<lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource:	???3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp?2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp?4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp?
@lstm_175/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_175/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensor_0lstm_175_while_placeholderIlstm_175/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp=lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_175/while/lstm_cell_502/MatMulMatMul9lstm_175/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp?lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_175/while/lstm_cell_502/MatMul_1MatMullstm_175_while_placeholder_2<lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_175/while/lstm_cell_502/addAddV2-lstm_175/while/lstm_cell_502/MatMul:product:0/lstm_175/while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp>lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_175/while/lstm_cell_502/BiasAddBiasAdd$lstm_175/while/lstm_cell_502/add:z:0;lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_175/while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_175/while/lstm_cell_502/splitSplit5lstm_175/while/lstm_cell_502/split/split_dim:output:0-lstm_175/while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_175/while/lstm_cell_502/SigmoidSigmoid+lstm_175/while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_175/while/lstm_cell_502/Sigmoid_1Sigmoid+lstm_175/while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_175/while/lstm_cell_502/mulMul*lstm_175/while/lstm_cell_502/Sigmoid_1:y:0lstm_175_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_175/while/lstm_cell_502/ReluRelu+lstm_175/while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_175/while/lstm_cell_502/mul_1Mul(lstm_175/while/lstm_cell_502/Sigmoid:y:0/lstm_175/while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_175/while/lstm_cell_502/add_1AddV2$lstm_175/while/lstm_cell_502/mul:z:0&lstm_175/while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_175/while/lstm_cell_502/Sigmoid_2Sigmoid+lstm_175/while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_175/while/lstm_cell_502/Relu_1Relu&lstm_175/while/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_175/while/lstm_cell_502/mul_2Mul*lstm_175/while/lstm_cell_502/Sigmoid_2:y:01lstm_175/while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_175/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_175_while_placeholder_1lstm_175_while_placeholder&lstm_175/while/lstm_cell_502/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_175/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_175/while/addAddV2lstm_175_while_placeholderlstm_175/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_175/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_175/while/add_1AddV2*lstm_175_while_lstm_175_while_loop_counterlstm_175/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_175/while/IdentityIdentitylstm_175/while/add_1:z:0^lstm_175/while/NoOp*
T0*
_output_shapes
: ?
lstm_175/while/Identity_1Identity0lstm_175_while_lstm_175_while_maximum_iterations^lstm_175/while/NoOp*
T0*
_output_shapes
: t
lstm_175/while/Identity_2Identitylstm_175/while/add:z:0^lstm_175/while/NoOp*
T0*
_output_shapes
: ?
lstm_175/while/Identity_3IdentityClstm_175/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_175/while/NoOp*
T0*
_output_shapes
: ?
lstm_175/while/Identity_4Identity&lstm_175/while/lstm_cell_502/mul_2:z:0^lstm_175/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_175/while/Identity_5Identity&lstm_175/while/lstm_cell_502/add_1:z:0^lstm_175/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_175/while/NoOpNoOp4^lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp3^lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp5^lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_175_while_identity lstm_175/while/Identity:output:0"?
lstm_175_while_identity_1"lstm_175/while/Identity_1:output:0"?
lstm_175_while_identity_2"lstm_175/while/Identity_2:output:0"?
lstm_175_while_identity_3"lstm_175/while/Identity_3:output:0"?
lstm_175_while_identity_4"lstm_175/while/Identity_4:output:0"?
lstm_175_while_identity_5"lstm_175/while/Identity_5:output:0"T
'lstm_175_while_lstm_175_strided_slice_1)lstm_175_while_lstm_175_strided_slice_1_0"~
<lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource>lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0"?
=lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource?lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0"|
;lstm_175_while_lstm_cell_502_matmul_readvariableop_resource=lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0"?
clstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensorelstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp2h
2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp2l
4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042352

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
?
while_body_3043054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_502_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_502_matmul_readvariableop_resource:	d?G
4while_lstm_cell_502_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_502_biasadd_readvariableop_resource:	???*while/lstm_cell_502/BiasAdd/ReadVariableOp?)while/lstm_cell_502/MatMul/ReadVariableOp?+while/lstm_cell_502/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_502/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_502/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_502/addAddV2$while/lstm_cell_502/MatMul:product:0&while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_502/BiasAddBiasAddwhile/lstm_cell_502/add:z:02while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_502/splitSplit,while/lstm_cell_502/split/split_dim:output:0$while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_502/SigmoidSigmoid"while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_1Sigmoid"while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mulMul!while/lstm_cell_502/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_502/ReluRelu"while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_1Mulwhile/lstm_cell_502/Sigmoid:y:0&while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/add_1AddV2while/lstm_cell_502/mul:z:0while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_2Sigmoid"while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_502/Relu_1Reluwhile/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_2Mul!while/lstm_cell_502/Sigmoid_2:y:0(while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_502/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_502/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_502/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_502/BiasAdd/ReadVariableOp*^while/lstm_cell_502/MatMul/ReadVariableOp,^while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_502_biasadd_readvariableop_resource5while_lstm_cell_502_biasadd_readvariableop_resource_0"n
4while_lstm_cell_502_matmul_1_readvariableop_resource6while_lstm_cell_502_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_502_matmul_readvariableop_resource4while_lstm_cell_502_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_502/BiasAdd/ReadVariableOp*while/lstm_cell_502/BiasAdd/ReadVariableOp2V
)while/lstm_cell_502/MatMul/ReadVariableOp)while/lstm_cell_502/MatMul/ReadVariableOp2Z
+while/lstm_cell_502/MatMul_1/ReadVariableOp+while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_175_while_body_3044301.
*lstm_175_while_lstm_175_while_loop_counter4
0lstm_175_while_lstm_175_while_maximum_iterations
lstm_175_while_placeholder 
lstm_175_while_placeholder_1 
lstm_175_while_placeholder_2 
lstm_175_while_placeholder_3-
)lstm_175_while_lstm_175_strided_slice_1_0i
elstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0:	d?R
?lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?M
>lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
lstm_175_while_identity
lstm_175_while_identity_1
lstm_175_while_identity_2
lstm_175_while_identity_3
lstm_175_while_identity_4
lstm_175_while_identity_5+
'lstm_175_while_lstm_175_strided_slice_1g
clstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensorN
;lstm_175_while_lstm_cell_502_matmul_readvariableop_resource:	d?P
=lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource:	2?K
<lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource:	???3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp?2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp?4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp?
@lstm_175/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_175/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensor_0lstm_175_while_placeholderIlstm_175/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp=lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_175/while/lstm_cell_502/MatMulMatMul9lstm_175/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp?lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_175/while/lstm_cell_502/MatMul_1MatMullstm_175_while_placeholder_2<lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_175/while/lstm_cell_502/addAddV2-lstm_175/while/lstm_cell_502/MatMul:product:0/lstm_175/while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp>lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_175/while/lstm_cell_502/BiasAddBiasAdd$lstm_175/while/lstm_cell_502/add:z:0;lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_175/while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_175/while/lstm_cell_502/splitSplit5lstm_175/while/lstm_cell_502/split/split_dim:output:0-lstm_175/while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_175/while/lstm_cell_502/SigmoidSigmoid+lstm_175/while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_175/while/lstm_cell_502/Sigmoid_1Sigmoid+lstm_175/while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_175/while/lstm_cell_502/mulMul*lstm_175/while/lstm_cell_502/Sigmoid_1:y:0lstm_175_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_175/while/lstm_cell_502/ReluRelu+lstm_175/while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_175/while/lstm_cell_502/mul_1Mul(lstm_175/while/lstm_cell_502/Sigmoid:y:0/lstm_175/while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_175/while/lstm_cell_502/add_1AddV2$lstm_175/while/lstm_cell_502/mul:z:0&lstm_175/while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_175/while/lstm_cell_502/Sigmoid_2Sigmoid+lstm_175/while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_175/while/lstm_cell_502/Relu_1Relu&lstm_175/while/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_175/while/lstm_cell_502/mul_2Mul*lstm_175/while/lstm_cell_502/Sigmoid_2:y:01lstm_175/while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_175/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_175_while_placeholder_1lstm_175_while_placeholder&lstm_175/while/lstm_cell_502/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_175/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_175/while/addAddV2lstm_175_while_placeholderlstm_175/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_175/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_175/while/add_1AddV2*lstm_175_while_lstm_175_while_loop_counterlstm_175/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_175/while/IdentityIdentitylstm_175/while/add_1:z:0^lstm_175/while/NoOp*
T0*
_output_shapes
: ?
lstm_175/while/Identity_1Identity0lstm_175_while_lstm_175_while_maximum_iterations^lstm_175/while/NoOp*
T0*
_output_shapes
: t
lstm_175/while/Identity_2Identitylstm_175/while/add:z:0^lstm_175/while/NoOp*
T0*
_output_shapes
: ?
lstm_175/while/Identity_3IdentityClstm_175/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_175/while/NoOp*
T0*
_output_shapes
: ?
lstm_175/while/Identity_4Identity&lstm_175/while/lstm_cell_502/mul_2:z:0^lstm_175/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_175/while/Identity_5Identity&lstm_175/while/lstm_cell_502/add_1:z:0^lstm_175/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_175/while/NoOpNoOp4^lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp3^lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp5^lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_175_while_identity lstm_175/while/Identity:output:0"?
lstm_175_while_identity_1"lstm_175/while/Identity_1:output:0"?
lstm_175_while_identity_2"lstm_175/while/Identity_2:output:0"?
lstm_175_while_identity_3"lstm_175/while/Identity_3:output:0"?
lstm_175_while_identity_4"lstm_175/while/Identity_4:output:0"?
lstm_175_while_identity_5"lstm_175/while/Identity_5:output:0"T
'lstm_175_while_lstm_175_strided_slice_1)lstm_175_while_lstm_175_strided_slice_1_0"~
<lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource>lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0"?
=lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource?lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0"|
;lstm_175_while_lstm_cell_502_matmul_readvariableop_resource=lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0"?
clstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensorelstm_175_while_tensorarrayv2read_tensorlistgetitem_lstm_175_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp3lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp2h
2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp2lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp2l
4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp4lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3043585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_502_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_502_matmul_readvariableop_resource:	d?G
4while_lstm_cell_502_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_502_biasadd_readvariableop_resource:	???*while/lstm_cell_502/BiasAdd/ReadVariableOp?)while/lstm_cell_502/MatMul/ReadVariableOp?+while/lstm_cell_502/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_502/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_502/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_502/addAddV2$while/lstm_cell_502/MatMul:product:0&while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_502/BiasAddBiasAddwhile/lstm_cell_502/add:z:02while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_502/splitSplit,while/lstm_cell_502/split/split_dim:output:0$while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_502/SigmoidSigmoid"while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_1Sigmoid"while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mulMul!while/lstm_cell_502/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_502/ReluRelu"while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_1Mulwhile/lstm_cell_502/Sigmoid:y:0&while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/add_1AddV2while/lstm_cell_502/mul:z:0while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_2Sigmoid"while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_502/Relu_1Reluwhile/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_2Mul!while/lstm_cell_502/Sigmoid_2:y:0(while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_502/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_502/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_502/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_502/BiasAdd/ReadVariableOp*^while/lstm_cell_502/MatMul/ReadVariableOp,^while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_502_biasadd_readvariableop_resource5while_lstm_cell_502_biasadd_readvariableop_resource_0"n
4while_lstm_cell_502_matmul_1_readvariableop_resource6while_lstm_cell_502_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_502_matmul_readvariableop_resource4while_lstm_cell_502_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_502/BiasAdd/ReadVariableOp*while/lstm_cell_502/BiasAdd/ReadVariableOp2V
)while/lstm_cell_502/MatMul/ReadVariableOp)while/lstm_cell_502/MatMul/ReadVariableOp2Z
+while/lstm_cell_502/MatMul_1/ReadVariableOp+while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3046720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3046720___redundant_placeholder05
1while_while_cond_3046720___redundant_placeholder15
1while_while_cond_3046720___redundant_placeholder25
1while_while_cond_3046720___redundant_placeholder3
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
/__inference_lstm_cell_501_layer_call_fn_3046841

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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3041856o
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3045760
inputs_0?
,lstm_cell_502_matmul_readvariableop_resource:	d?A
.lstm_cell_502_matmul_1_readvariableop_resource:	2?<
-lstm_cell_502_biasadd_readvariableop_resource:	?
identity??$lstm_cell_502/BiasAdd/ReadVariableOp?#lstm_cell_502/MatMul/ReadVariableOp?%lstm_cell_502/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_502/MatMul/ReadVariableOpReadVariableOp,lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_502/MatMulMatMulstrided_slice_2:output:0+lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_502/MatMul_1MatMulzeros:output:0-lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_502/addAddV2lstm_cell_502/MatMul:product:0 lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_502/BiasAddBiasAddlstm_cell_502/add:z:0,lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_502/splitSplit&lstm_cell_502/split/split_dim:output:0lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_502/SigmoidSigmoidlstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_1Sigmoidlstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_502/mulMullstm_cell_502/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_502/ReluRelulstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_1Mullstm_cell_502/Sigmoid:y:0 lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_502/add_1AddV2lstm_cell_502/mul:z:0lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_2Sigmoidlstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_502/Relu_1Relulstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_2Mullstm_cell_502/Sigmoid_2:y:0"lstm_cell_502/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_502_matmul_readvariableop_resource.lstm_cell_502_matmul_1_readvariableop_resource-lstm_cell_502_biasadd_readvariableop_resource*
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
while_body_3045676*
condR
while_cond_3045675*K
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
NoOpNoOp%^lstm_cell_502/BiasAdd/ReadVariableOp$^lstm_cell_502/MatMul/ReadVariableOp&^lstm_cell_502/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_502/BiasAdd/ReadVariableOp$lstm_cell_502/BiasAdd/ReadVariableOp2J
#lstm_cell_502/MatMul/ReadVariableOp#lstm_cell_502/MatMul/ReadVariableOp2N
%lstm_cell_502/MatMul_1/ReadVariableOp%lstm_cell_502/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3046292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_503_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_503_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_503_matmul_readvariableop_resource:2(F
4while_lstm_cell_503_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_503_biasadd_readvariableop_resource:(??*while/lstm_cell_503/BiasAdd/ReadVariableOp?)while/lstm_cell_503/MatMul/ReadVariableOp?+while/lstm_cell_503/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_503/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_503/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_503/addAddV2$while/lstm_cell_503/MatMul:product:0&while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_503/BiasAddBiasAddwhile/lstm_cell_503/add:z:02while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_503/splitSplit,while/lstm_cell_503/split/split_dim:output:0$while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_503/SigmoidSigmoid"while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_1Sigmoid"while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mulMul!while/lstm_cell_503/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_503/ReluRelu"while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_1Mulwhile/lstm_cell_503/Sigmoid:y:0&while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/add_1AddV2while/lstm_cell_503/mul:z:0while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_2Sigmoid"while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_503/Relu_1Reluwhile/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_2Mul!while/lstm_cell_503/Sigmoid_2:y:0(while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_503/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_503/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_503/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_503/BiasAdd/ReadVariableOp*^while/lstm_cell_503/MatMul/ReadVariableOp,^while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_503_biasadd_readvariableop_resource5while_lstm_cell_503_biasadd_readvariableop_resource_0"n
4while_lstm_cell_503_matmul_1_readvariableop_resource6while_lstm_cell_503_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_503_matmul_readvariableop_resource4while_lstm_cell_503_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_503/BiasAdd/ReadVariableOp*while/lstm_cell_503/BiasAdd/ReadVariableOp2V
)while/lstm_cell_503/MatMul/ReadVariableOp)while/lstm_cell_503/MatMul/ReadVariableOp2Z
+while/lstm_cell_503/MatMul_1/ReadVariableOp+while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3046824

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
?J
?
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046805

inputs>
,lstm_cell_503_matmul_readvariableop_resource:2(@
.lstm_cell_503_matmul_1_readvariableop_resource:
(;
-lstm_cell_503_biasadd_readvariableop_resource:(
identity??$lstm_cell_503/BiasAdd/ReadVariableOp?#lstm_cell_503/MatMul/ReadVariableOp?%lstm_cell_503/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_503/MatMul/ReadVariableOpReadVariableOp,lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_503/MatMulMatMulstrided_slice_2:output:0+lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_503/MatMul_1MatMulzeros:output:0-lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_503/addAddV2lstm_cell_503/MatMul:product:0 lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_503/BiasAddBiasAddlstm_cell_503/add:z:0,lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_503/splitSplit&lstm_cell_503/split/split_dim:output:0lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_503/SigmoidSigmoidlstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_1Sigmoidlstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_503/mulMullstm_cell_503/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_503/ReluRelulstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_1Mullstm_cell_503/Sigmoid:y:0 lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_503/add_1AddV2lstm_cell_503/mul:z:0lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_2Sigmoidlstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_503/Relu_1Relulstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_2Mullstm_cell_503/Sigmoid_2:y:0"lstm_cell_503/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_503_matmul_readvariableop_resource.lstm_cell_503_matmul_1_readvariableop_resource-lstm_cell_503_biasadd_readvariableop_resource*
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
while_body_3046721*
condR
while_cond_3046720*K
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
NoOpNoOp%^lstm_cell_503/BiasAdd/ReadVariableOp$^lstm_cell_503/MatMul/ReadVariableOp&^lstm_cell_503/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_503/BiasAdd/ReadVariableOp$lstm_cell_503/BiasAdd/ReadVariableOp2J
#lstm_cell_503/MatMul/ReadVariableOp#lstm_cell_503/MatMul/ReadVariableOp2N
%lstm_cell_503/MatMul_1/ReadVariableOp%lstm_cell_503/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043313

inputs#
lstm_174_3042989:	?#
lstm_174_3042991:	d?
lstm_174_3042993:	?#
lstm_175_3043139:	d?#
lstm_175_3043141:	2?
lstm_175_3043143:	?"
lstm_176_3043289:2("
lstm_176_3043291:
(
lstm_176_3043293:("
dense_58_3043307:

dense_58_3043309:
identity?? dense_58/StatefulPartitionedCall? lstm_174/StatefulPartitionedCall? lstm_175/StatefulPartitionedCall? lstm_176/StatefulPartitionedCall?
 lstm_174/StatefulPartitionedCallStatefulPartitionedCallinputslstm_174_3042989lstm_174_3042991lstm_174_3042993*
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3042988?
 lstm_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_174/StatefulPartitionedCall:output:0lstm_175_3043139lstm_175_3043141lstm_175_3043143*
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043138?
 lstm_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_175/StatefulPartitionedCall:output:0lstm_176_3043289lstm_176_3043291lstm_176_3043293*
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043288?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)lstm_176/StatefulPartitionedCall:output:0dense_58_3043307dense_58_3043309*
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3043306x
IdentityIdentity)dense_58/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_58/StatefulPartitionedCall!^lstm_174/StatefulPartitionedCall!^lstm_175/StatefulPartitionedCall!^lstm_176/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 lstm_174/StatefulPartitionedCall lstm_174/StatefulPartitionedCall2D
 lstm_175/StatefulPartitionedCall lstm_175/StatefulPartitionedCall2D
 lstm_176/StatefulPartitionedCall lstm_176/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
)sequential_58_lstm_174_while_body_3041421J
Fsequential_58_lstm_174_while_sequential_58_lstm_174_while_loop_counterP
Lsequential_58_lstm_174_while_sequential_58_lstm_174_while_maximum_iterations,
(sequential_58_lstm_174_while_placeholder.
*sequential_58_lstm_174_while_placeholder_1.
*sequential_58_lstm_174_while_placeholder_2.
*sequential_58_lstm_174_while_placeholder_3I
Esequential_58_lstm_174_while_sequential_58_lstm_174_strided_slice_1_0?
?sequential_58_lstm_174_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_174_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_58_lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0:	?`
Msequential_58_lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?[
Lsequential_58_lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0:	?)
%sequential_58_lstm_174_while_identity+
'sequential_58_lstm_174_while_identity_1+
'sequential_58_lstm_174_while_identity_2+
'sequential_58_lstm_174_while_identity_3+
'sequential_58_lstm_174_while_identity_4+
'sequential_58_lstm_174_while_identity_5G
Csequential_58_lstm_174_while_sequential_58_lstm_174_strided_slice_1?
sequential_58_lstm_174_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_174_tensorarrayunstack_tensorlistfromtensor\
Isequential_58_lstm_174_while_lstm_cell_501_matmul_readvariableop_resource:	?^
Ksequential_58_lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource:	d?Y
Jsequential_58_lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource:	???Asequential_58/lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp?@sequential_58/lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp?Bsequential_58/lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp?
Nsequential_58/lstm_174/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_58/lstm_174/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_58_lstm_174_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_174_tensorarrayunstack_tensorlistfromtensor_0(sequential_58_lstm_174_while_placeholderWsequential_58/lstm_174/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_58/lstm_174/while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOpKsequential_58_lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_58/lstm_174/while/lstm_cell_501/MatMulMatMulGsequential_58/lstm_174/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_58/lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_58/lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOpMsequential_58_lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_58/lstm_174/while/lstm_cell_501/MatMul_1MatMul*sequential_58_lstm_174_while_placeholder_2Jsequential_58/lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_58/lstm_174/while/lstm_cell_501/addAddV2;sequential_58/lstm_174/while/lstm_cell_501/MatMul:product:0=sequential_58/lstm_174/while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_58/lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOpLsequential_58_lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_58/lstm_174/while/lstm_cell_501/BiasAddBiasAdd2sequential_58/lstm_174/while/lstm_cell_501/add:z:0Isequential_58/lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_58/lstm_174/while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_58/lstm_174/while/lstm_cell_501/splitSplitCsequential_58/lstm_174/while/lstm_cell_501/split/split_dim:output:0;sequential_58/lstm_174/while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_58/lstm_174/while/lstm_cell_501/SigmoidSigmoid9sequential_58/lstm_174/while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_58/lstm_174/while/lstm_cell_501/Sigmoid_1Sigmoid9sequential_58/lstm_174/while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_58/lstm_174/while/lstm_cell_501/mulMul8sequential_58/lstm_174/while/lstm_cell_501/Sigmoid_1:y:0*sequential_58_lstm_174_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_58/lstm_174/while/lstm_cell_501/ReluRelu9sequential_58/lstm_174/while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_58/lstm_174/while/lstm_cell_501/mul_1Mul6sequential_58/lstm_174/while/lstm_cell_501/Sigmoid:y:0=sequential_58/lstm_174/while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_58/lstm_174/while/lstm_cell_501/add_1AddV22sequential_58/lstm_174/while/lstm_cell_501/mul:z:04sequential_58/lstm_174/while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_58/lstm_174/while/lstm_cell_501/Sigmoid_2Sigmoid9sequential_58/lstm_174/while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_58/lstm_174/while/lstm_cell_501/Relu_1Relu4sequential_58/lstm_174/while/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_58/lstm_174/while/lstm_cell_501/mul_2Mul8sequential_58/lstm_174/while/lstm_cell_501/Sigmoid_2:y:0?sequential_58/lstm_174/while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_58/lstm_174/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_58_lstm_174_while_placeholder_1(sequential_58_lstm_174_while_placeholder4sequential_58/lstm_174/while/lstm_cell_501/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_58/lstm_174/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_58/lstm_174/while/addAddV2(sequential_58_lstm_174_while_placeholder+sequential_58/lstm_174/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_58/lstm_174/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_58/lstm_174/while/add_1AddV2Fsequential_58_lstm_174_while_sequential_58_lstm_174_while_loop_counter-sequential_58/lstm_174/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_58/lstm_174/while/IdentityIdentity&sequential_58/lstm_174/while/add_1:z:0"^sequential_58/lstm_174/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_174/while/Identity_1IdentityLsequential_58_lstm_174_while_sequential_58_lstm_174_while_maximum_iterations"^sequential_58/lstm_174/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_174/while/Identity_2Identity$sequential_58/lstm_174/while/add:z:0"^sequential_58/lstm_174/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_174/while/Identity_3IdentityQsequential_58/lstm_174/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_58/lstm_174/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_174/while/Identity_4Identity4sequential_58/lstm_174/while/lstm_cell_501/mul_2:z:0"^sequential_58/lstm_174/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_58/lstm_174/while/Identity_5Identity4sequential_58/lstm_174/while/lstm_cell_501/add_1:z:0"^sequential_58/lstm_174/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_58/lstm_174/while/NoOpNoOpB^sequential_58/lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOpA^sequential_58/lstm_174/while/lstm_cell_501/MatMul/ReadVariableOpC^sequential_58/lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_58_lstm_174_while_identity.sequential_58/lstm_174/while/Identity:output:0"[
'sequential_58_lstm_174_while_identity_10sequential_58/lstm_174/while/Identity_1:output:0"[
'sequential_58_lstm_174_while_identity_20sequential_58/lstm_174/while/Identity_2:output:0"[
'sequential_58_lstm_174_while_identity_30sequential_58/lstm_174/while/Identity_3:output:0"[
'sequential_58_lstm_174_while_identity_40sequential_58/lstm_174/while/Identity_4:output:0"[
'sequential_58_lstm_174_while_identity_50sequential_58/lstm_174/while/Identity_5:output:0"?
Jsequential_58_lstm_174_while_lstm_cell_501_biasadd_readvariableop_resourceLsequential_58_lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0"?
Ksequential_58_lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resourceMsequential_58_lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0"?
Isequential_58_lstm_174_while_lstm_cell_501_matmul_readvariableop_resourceKsequential_58_lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0"?
Csequential_58_lstm_174_while_sequential_58_lstm_174_strided_slice_1Esequential_58_lstm_174_while_sequential_58_lstm_174_strided_slice_1_0"?
sequential_58_lstm_174_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_174_tensorarrayunstack_tensorlistfromtensor?sequential_58_lstm_174_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_174_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_58/lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOpAsequential_58/lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp2?
@sequential_58/lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp@sequential_58/lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp2?
Bsequential_58/lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOpBsequential_58/lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3042060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3042060___redundant_placeholder05
1while_while_cond_3042060___redundant_placeholder15
1while_while_cond_3042060___redundant_placeholder25
1while_while_cond_3042060___redundant_placeholder3
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
while_body_3042411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_502_3042435_0:	d?0
while_lstm_cell_502_3042437_0:	2?,
while_lstm_cell_502_3042439_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_502_3042435:	d?.
while_lstm_cell_502_3042437:	2?*
while_lstm_cell_502_3042439:	???+while/lstm_cell_502/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_502/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_502_3042435_0while_lstm_cell_502_3042437_0while_lstm_cell_502_3042439_0*
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042352?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_502/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_502/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_502/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_502/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_502_3042435while_lstm_cell_502_3042435_0"<
while_lstm_cell_502_3042437while_lstm_cell_502_3042437_0"<
while_lstm_cell_502_3042439while_lstm_cell_502_3042439_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_502/StatefulPartitionedCall+while/lstm_cell_502/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_174_while_cond_3044588.
*lstm_174_while_lstm_174_while_loop_counter4
0lstm_174_while_lstm_174_while_maximum_iterations
lstm_174_while_placeholder 
lstm_174_while_placeholder_1 
lstm_174_while_placeholder_2 
lstm_174_while_placeholder_30
,lstm_174_while_less_lstm_174_strided_slice_1G
Clstm_174_while_lstm_174_while_cond_3044588___redundant_placeholder0G
Clstm_174_while_lstm_174_while_cond_3044588___redundant_placeholder1G
Clstm_174_while_lstm_174_while_cond_3044588___redundant_placeholder2G
Clstm_174_while_lstm_174_while_cond_3044588___redundant_placeholder3
lstm_174_while_identity
?
lstm_174/while/LessLesslstm_174_while_placeholder,lstm_174_while_less_lstm_174_strided_slice_1*
T0*
_output_shapes
: ]
lstm_174/while/IdentityIdentitylstm_174/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_174_while_identity lstm_174/while/Identity:output:0*(
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

lstm_176_while_body_3044867.
*lstm_176_while_lstm_176_while_loop_counter4
0lstm_176_while_lstm_176_while_maximum_iterations
lstm_176_while_placeholder 
lstm_176_while_placeholder_1 
lstm_176_while_placeholder_2 
lstm_176_while_placeholder_3-
)lstm_176_while_lstm_176_strided_slice_1_0i
elstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0:2(Q
?lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(L
>lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0:(
lstm_176_while_identity
lstm_176_while_identity_1
lstm_176_while_identity_2
lstm_176_while_identity_3
lstm_176_while_identity_4
lstm_176_while_identity_5+
'lstm_176_while_lstm_176_strided_slice_1g
clstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensorM
;lstm_176_while_lstm_cell_503_matmul_readvariableop_resource:2(O
=lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource:
(J
<lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource:(??3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp?2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp?4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp?
@lstm_176/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_176/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensor_0lstm_176_while_placeholderIlstm_176/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp=lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_176/while/lstm_cell_503/MatMulMatMul9lstm_176/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp?lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_176/while/lstm_cell_503/MatMul_1MatMullstm_176_while_placeholder_2<lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_176/while/lstm_cell_503/addAddV2-lstm_176/while/lstm_cell_503/MatMul:product:0/lstm_176/while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp>lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_176/while/lstm_cell_503/BiasAddBiasAdd$lstm_176/while/lstm_cell_503/add:z:0;lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_176/while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_176/while/lstm_cell_503/splitSplit5lstm_176/while/lstm_cell_503/split/split_dim:output:0-lstm_176/while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_176/while/lstm_cell_503/SigmoidSigmoid+lstm_176/while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_176/while/lstm_cell_503/Sigmoid_1Sigmoid+lstm_176/while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_176/while/lstm_cell_503/mulMul*lstm_176/while/lstm_cell_503/Sigmoid_1:y:0lstm_176_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_176/while/lstm_cell_503/ReluRelu+lstm_176/while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_176/while/lstm_cell_503/mul_1Mul(lstm_176/while/lstm_cell_503/Sigmoid:y:0/lstm_176/while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_176/while/lstm_cell_503/add_1AddV2$lstm_176/while/lstm_cell_503/mul:z:0&lstm_176/while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_176/while/lstm_cell_503/Sigmoid_2Sigmoid+lstm_176/while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_176/while/lstm_cell_503/Relu_1Relu&lstm_176/while/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_176/while/lstm_cell_503/mul_2Mul*lstm_176/while/lstm_cell_503/Sigmoid_2:y:01lstm_176/while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_176/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_176_while_placeholder_1lstm_176_while_placeholder&lstm_176/while/lstm_cell_503/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_176/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_176/while/addAddV2lstm_176_while_placeholderlstm_176/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_176/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_176/while/add_1AddV2*lstm_176_while_lstm_176_while_loop_counterlstm_176/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_176/while/IdentityIdentitylstm_176/while/add_1:z:0^lstm_176/while/NoOp*
T0*
_output_shapes
: ?
lstm_176/while/Identity_1Identity0lstm_176_while_lstm_176_while_maximum_iterations^lstm_176/while/NoOp*
T0*
_output_shapes
: t
lstm_176/while/Identity_2Identitylstm_176/while/add:z:0^lstm_176/while/NoOp*
T0*
_output_shapes
: ?
lstm_176/while/Identity_3IdentityClstm_176/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_176/while/NoOp*
T0*
_output_shapes
: ?
lstm_176/while/Identity_4Identity&lstm_176/while/lstm_cell_503/mul_2:z:0^lstm_176/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_176/while/Identity_5Identity&lstm_176/while/lstm_cell_503/add_1:z:0^lstm_176/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_176/while/NoOpNoOp4^lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp3^lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp5^lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_176_while_identity lstm_176/while/Identity:output:0"?
lstm_176_while_identity_1"lstm_176/while/Identity_1:output:0"?
lstm_176_while_identity_2"lstm_176/while/Identity_2:output:0"?
lstm_176_while_identity_3"lstm_176/while/Identity_3:output:0"?
lstm_176_while_identity_4"lstm_176/while/Identity_4:output:0"?
lstm_176_while_identity_5"lstm_176/while/Identity_5:output:0"T
'lstm_176_while_lstm_176_strided_slice_1)lstm_176_while_lstm_176_strided_slice_1_0"~
<lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource>lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0"?
=lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource?lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0"|
;lstm_176_while_lstm_cell_503_matmul_readvariableop_resource=lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0"?
clstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensorelstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp2h
2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp2l
4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3042903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3042903___redundant_placeholder05
1while_while_cond_3042903___redundant_placeholder15
1while_while_cond_3042903___redundant_placeholder25
1while_while_cond_3042903___redundant_placeholder3
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
while_cond_3043053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3043053___redundant_placeholder05
1while_while_cond_3043053___redundant_placeholder15
1while_while_cond_3043053___redundant_placeholder25
1while_while_cond_3043053___redundant_placeholder3
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
)sequential_58_lstm_174_while_cond_3041420J
Fsequential_58_lstm_174_while_sequential_58_lstm_174_while_loop_counterP
Lsequential_58_lstm_174_while_sequential_58_lstm_174_while_maximum_iterations,
(sequential_58_lstm_174_while_placeholder.
*sequential_58_lstm_174_while_placeholder_1.
*sequential_58_lstm_174_while_placeholder_2.
*sequential_58_lstm_174_while_placeholder_3L
Hsequential_58_lstm_174_while_less_sequential_58_lstm_174_strided_slice_1c
_sequential_58_lstm_174_while_sequential_58_lstm_174_while_cond_3041420___redundant_placeholder0c
_sequential_58_lstm_174_while_sequential_58_lstm_174_while_cond_3041420___redundant_placeholder1c
_sequential_58_lstm_174_while_sequential_58_lstm_174_while_cond_3041420___redundant_placeholder2c
_sequential_58_lstm_174_while_sequential_58_lstm_174_while_cond_3041420___redundant_placeholder3)
%sequential_58_lstm_174_while_identity
?
!sequential_58/lstm_174/while/LessLess(sequential_58_lstm_174_while_placeholderHsequential_58_lstm_174_while_less_sequential_58_lstm_174_strided_slice_1*
T0*
_output_shapes
: y
%sequential_58/lstm_174/while/IdentityIdentity%sequential_58/lstm_174/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_58_lstm_174_while_identity.sequential_58/lstm_174/while/Identity:output:0*(
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
/__inference_lstm_cell_503_layer_call_fn_3047037

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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042556o
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
?S
?
)sequential_58_lstm_175_while_body_3041560J
Fsequential_58_lstm_175_while_sequential_58_lstm_175_while_loop_counterP
Lsequential_58_lstm_175_while_sequential_58_lstm_175_while_maximum_iterations,
(sequential_58_lstm_175_while_placeholder.
*sequential_58_lstm_175_while_placeholder_1.
*sequential_58_lstm_175_while_placeholder_2.
*sequential_58_lstm_175_while_placeholder_3I
Esequential_58_lstm_175_while_sequential_58_lstm_175_strided_slice_1_0?
?sequential_58_lstm_175_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_175_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_58_lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0:	d?`
Msequential_58_lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?[
Lsequential_58_lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0:	?)
%sequential_58_lstm_175_while_identity+
'sequential_58_lstm_175_while_identity_1+
'sequential_58_lstm_175_while_identity_2+
'sequential_58_lstm_175_while_identity_3+
'sequential_58_lstm_175_while_identity_4+
'sequential_58_lstm_175_while_identity_5G
Csequential_58_lstm_175_while_sequential_58_lstm_175_strided_slice_1?
sequential_58_lstm_175_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_175_tensorarrayunstack_tensorlistfromtensor\
Isequential_58_lstm_175_while_lstm_cell_502_matmul_readvariableop_resource:	d?^
Ksequential_58_lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource:	2?Y
Jsequential_58_lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource:	???Asequential_58/lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp?@sequential_58/lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp?Bsequential_58/lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp?
Nsequential_58/lstm_175/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_58/lstm_175/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_58_lstm_175_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_175_tensorarrayunstack_tensorlistfromtensor_0(sequential_58_lstm_175_while_placeholderWsequential_58/lstm_175/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_58/lstm_175/while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOpKsequential_58_lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_58/lstm_175/while/lstm_cell_502/MatMulMatMulGsequential_58/lstm_175/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_58/lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_58/lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOpMsequential_58_lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_58/lstm_175/while/lstm_cell_502/MatMul_1MatMul*sequential_58_lstm_175_while_placeholder_2Jsequential_58/lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_58/lstm_175/while/lstm_cell_502/addAddV2;sequential_58/lstm_175/while/lstm_cell_502/MatMul:product:0=sequential_58/lstm_175/while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_58/lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOpLsequential_58_lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_58/lstm_175/while/lstm_cell_502/BiasAddBiasAdd2sequential_58/lstm_175/while/lstm_cell_502/add:z:0Isequential_58/lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_58/lstm_175/while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_58/lstm_175/while/lstm_cell_502/splitSplitCsequential_58/lstm_175/while/lstm_cell_502/split/split_dim:output:0;sequential_58/lstm_175/while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_58/lstm_175/while/lstm_cell_502/SigmoidSigmoid9sequential_58/lstm_175/while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_58/lstm_175/while/lstm_cell_502/Sigmoid_1Sigmoid9sequential_58/lstm_175/while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_58/lstm_175/while/lstm_cell_502/mulMul8sequential_58/lstm_175/while/lstm_cell_502/Sigmoid_1:y:0*sequential_58_lstm_175_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_58/lstm_175/while/lstm_cell_502/ReluRelu9sequential_58/lstm_175/while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_58/lstm_175/while/lstm_cell_502/mul_1Mul6sequential_58/lstm_175/while/lstm_cell_502/Sigmoid:y:0=sequential_58/lstm_175/while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_58/lstm_175/while/lstm_cell_502/add_1AddV22sequential_58/lstm_175/while/lstm_cell_502/mul:z:04sequential_58/lstm_175/while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_58/lstm_175/while/lstm_cell_502/Sigmoid_2Sigmoid9sequential_58/lstm_175/while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_58/lstm_175/while/lstm_cell_502/Relu_1Relu4sequential_58/lstm_175/while/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_58/lstm_175/while/lstm_cell_502/mul_2Mul8sequential_58/lstm_175/while/lstm_cell_502/Sigmoid_2:y:0?sequential_58/lstm_175/while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_58/lstm_175/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_58_lstm_175_while_placeholder_1(sequential_58_lstm_175_while_placeholder4sequential_58/lstm_175/while/lstm_cell_502/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_58/lstm_175/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_58/lstm_175/while/addAddV2(sequential_58_lstm_175_while_placeholder+sequential_58/lstm_175/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_58/lstm_175/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_58/lstm_175/while/add_1AddV2Fsequential_58_lstm_175_while_sequential_58_lstm_175_while_loop_counter-sequential_58/lstm_175/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_58/lstm_175/while/IdentityIdentity&sequential_58/lstm_175/while/add_1:z:0"^sequential_58/lstm_175/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_175/while/Identity_1IdentityLsequential_58_lstm_175_while_sequential_58_lstm_175_while_maximum_iterations"^sequential_58/lstm_175/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_175/while/Identity_2Identity$sequential_58/lstm_175/while/add:z:0"^sequential_58/lstm_175/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_175/while/Identity_3IdentityQsequential_58/lstm_175/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_58/lstm_175/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_175/while/Identity_4Identity4sequential_58/lstm_175/while/lstm_cell_502/mul_2:z:0"^sequential_58/lstm_175/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_58/lstm_175/while/Identity_5Identity4sequential_58/lstm_175/while/lstm_cell_502/add_1:z:0"^sequential_58/lstm_175/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_58/lstm_175/while/NoOpNoOpB^sequential_58/lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOpA^sequential_58/lstm_175/while/lstm_cell_502/MatMul/ReadVariableOpC^sequential_58/lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_58_lstm_175_while_identity.sequential_58/lstm_175/while/Identity:output:0"[
'sequential_58_lstm_175_while_identity_10sequential_58/lstm_175/while/Identity_1:output:0"[
'sequential_58_lstm_175_while_identity_20sequential_58/lstm_175/while/Identity_2:output:0"[
'sequential_58_lstm_175_while_identity_30sequential_58/lstm_175/while/Identity_3:output:0"[
'sequential_58_lstm_175_while_identity_40sequential_58/lstm_175/while/Identity_4:output:0"[
'sequential_58_lstm_175_while_identity_50sequential_58/lstm_175/while/Identity_5:output:0"?
Jsequential_58_lstm_175_while_lstm_cell_502_biasadd_readvariableop_resourceLsequential_58_lstm_175_while_lstm_cell_502_biasadd_readvariableop_resource_0"?
Ksequential_58_lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resourceMsequential_58_lstm_175_while_lstm_cell_502_matmul_1_readvariableop_resource_0"?
Isequential_58_lstm_175_while_lstm_cell_502_matmul_readvariableop_resourceKsequential_58_lstm_175_while_lstm_cell_502_matmul_readvariableop_resource_0"?
Csequential_58_lstm_175_while_sequential_58_lstm_175_strided_slice_1Esequential_58_lstm_175_while_sequential_58_lstm_175_strided_slice_1_0"?
sequential_58_lstm_175_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_175_tensorarrayunstack_tensorlistfromtensor?sequential_58_lstm_175_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_175_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_58/lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOpAsequential_58/lstm_175/while/lstm_cell_502/BiasAdd/ReadVariableOp2?
@sequential_58/lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp@sequential_58/lstm_175/while/lstm_cell_502/MatMul/ReadVariableOp2?
Bsequential_58/lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOpBsequential_58/lstm_175/while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3042480

inputs(
lstm_cell_502_3042398:	d?(
lstm_cell_502_3042400:	2?$
lstm_cell_502_3042402:	?
identity??%lstm_cell_502/StatefulPartitionedCall?while;
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
%lstm_cell_502/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_502_3042398lstm_cell_502_3042400lstm_cell_502_3042402*
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042352n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_502_3042398lstm_cell_502_3042400lstm_cell_502_3042402*
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
while_body_3042411*
condR
while_cond_3042410*K
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
NoOpNoOp&^lstm_cell_502/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_502/StatefulPartitionedCall%lstm_cell_502/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_502_layer_call_fn_3046939

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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042206o
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044957

inputsH
5lstm_174_lstm_cell_501_matmul_readvariableop_resource:	?J
7lstm_174_lstm_cell_501_matmul_1_readvariableop_resource:	d?E
6lstm_174_lstm_cell_501_biasadd_readvariableop_resource:	?H
5lstm_175_lstm_cell_502_matmul_readvariableop_resource:	d?J
7lstm_175_lstm_cell_502_matmul_1_readvariableop_resource:	2?E
6lstm_175_lstm_cell_502_biasadd_readvariableop_resource:	?G
5lstm_176_lstm_cell_503_matmul_readvariableop_resource:2(I
7lstm_176_lstm_cell_503_matmul_1_readvariableop_resource:
(D
6lstm_176_lstm_cell_503_biasadd_readvariableop_resource:(9
'dense_58_matmul_readvariableop_resource:
6
(dense_58_biasadd_readvariableop_resource:
identity??dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp?,lstm_174/lstm_cell_501/MatMul/ReadVariableOp?.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp?lstm_174/while?-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp?,lstm_175/lstm_cell_502/MatMul/ReadVariableOp?.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp?lstm_175/while?-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp?,lstm_176/lstm_cell_503/MatMul/ReadVariableOp?.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp?lstm_176/whileD
lstm_174/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_174/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_174/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_174/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_sliceStridedSlicelstm_174/Shape:output:0%lstm_174/strided_slice/stack:output:0'lstm_174/strided_slice/stack_1:output:0'lstm_174/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_174/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_174/zeros/packedPacklstm_174/strided_slice:output:0 lstm_174/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_174/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_174/zerosFilllstm_174/zeros/packed:output:0lstm_174/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_174/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_174/zeros_1/packedPacklstm_174/strided_slice:output:0"lstm_174/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_174/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_174/zeros_1Fill lstm_174/zeros_1/packed:output:0lstm_174/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_174/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_174/transpose	Transposeinputs lstm_174/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_174/Shape_1Shapelstm_174/transpose:y:0*
T0*
_output_shapes
:h
lstm_174/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_174/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_174/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_slice_1StridedSlicelstm_174/Shape_1:output:0'lstm_174/strided_slice_1/stack:output:0)lstm_174/strided_slice_1/stack_1:output:0)lstm_174/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_174/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_174/TensorArrayV2TensorListReserve-lstm_174/TensorArrayV2/element_shape:output:0!lstm_174/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_174/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_174/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_174/transpose:y:0Glstm_174/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_174/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_174/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_174/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_slice_2StridedSlicelstm_174/transpose:y:0'lstm_174/strided_slice_2/stack:output:0)lstm_174/strided_slice_2/stack_1:output:0)lstm_174/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_174/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp5lstm_174_lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_174/lstm_cell_501/MatMulMatMul!lstm_174/strided_slice_2:output:04lstm_174/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp7lstm_174_lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_174/lstm_cell_501/MatMul_1MatMullstm_174/zeros:output:06lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_174/lstm_cell_501/addAddV2'lstm_174/lstm_cell_501/MatMul:product:0)lstm_174/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp6lstm_174_lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_174/lstm_cell_501/BiasAddBiasAddlstm_174/lstm_cell_501/add:z:05lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_174/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_174/lstm_cell_501/splitSplit/lstm_174/lstm_cell_501/split/split_dim:output:0'lstm_174/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_174/lstm_cell_501/SigmoidSigmoid%lstm_174/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_174/lstm_cell_501/Sigmoid_1Sigmoid%lstm_174/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/mulMul$lstm_174/lstm_cell_501/Sigmoid_1:y:0lstm_174/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_174/lstm_cell_501/ReluRelu%lstm_174/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/mul_1Mul"lstm_174/lstm_cell_501/Sigmoid:y:0)lstm_174/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/add_1AddV2lstm_174/lstm_cell_501/mul:z:0 lstm_174/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_174/lstm_cell_501/Sigmoid_2Sigmoid%lstm_174/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_174/lstm_cell_501/Relu_1Relu lstm_174/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/mul_2Mul$lstm_174/lstm_cell_501/Sigmoid_2:y:0+lstm_174/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_174/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_174/TensorArrayV2_1TensorListReserve/lstm_174/TensorArrayV2_1/element_shape:output:0!lstm_174/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_174/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_174/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_174/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_174/whileWhile$lstm_174/while/loop_counter:output:0*lstm_174/while/maximum_iterations:output:0lstm_174/time:output:0!lstm_174/TensorArrayV2_1:handle:0lstm_174/zeros:output:0lstm_174/zeros_1:output:0!lstm_174/strided_slice_1:output:0@lstm_174/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_174_lstm_cell_501_matmul_readvariableop_resource7lstm_174_lstm_cell_501_matmul_1_readvariableop_resource6lstm_174_lstm_cell_501_biasadd_readvariableop_resource*
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
lstm_174_while_body_3044589*'
condR
lstm_174_while_cond_3044588*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_174/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_174/TensorArrayV2Stack/TensorListStackTensorListStacklstm_174/while:output:3Blstm_174/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_174/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_174/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_174/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_slice_3StridedSlice4lstm_174/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_174/strided_slice_3/stack:output:0)lstm_174/strided_slice_3/stack_1:output:0)lstm_174/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_174/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_174/transpose_1	Transpose4lstm_174/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_174/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_174/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_175/ShapeShapelstm_174/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_175/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_175/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_175/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_sliceStridedSlicelstm_175/Shape:output:0%lstm_175/strided_slice/stack:output:0'lstm_175/strided_slice/stack_1:output:0'lstm_175/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_175/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_175/zeros/packedPacklstm_175/strided_slice:output:0 lstm_175/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_175/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_175/zerosFilllstm_175/zeros/packed:output:0lstm_175/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_175/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_175/zeros_1/packedPacklstm_175/strided_slice:output:0"lstm_175/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_175/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_175/zeros_1Fill lstm_175/zeros_1/packed:output:0lstm_175/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_175/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_175/transpose	Transposelstm_174/transpose_1:y:0 lstm_175/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_175/Shape_1Shapelstm_175/transpose:y:0*
T0*
_output_shapes
:h
lstm_175/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_175/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_175/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_slice_1StridedSlicelstm_175/Shape_1:output:0'lstm_175/strided_slice_1/stack:output:0)lstm_175/strided_slice_1/stack_1:output:0)lstm_175/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_175/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_175/TensorArrayV2TensorListReserve-lstm_175/TensorArrayV2/element_shape:output:0!lstm_175/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_175/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_175/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_175/transpose:y:0Glstm_175/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_175/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_175/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_175/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_slice_2StridedSlicelstm_175/transpose:y:0'lstm_175/strided_slice_2/stack:output:0)lstm_175/strided_slice_2/stack_1:output:0)lstm_175/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_175/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp5lstm_175_lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_175/lstm_cell_502/MatMulMatMul!lstm_175/strided_slice_2:output:04lstm_175/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp7lstm_175_lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_175/lstm_cell_502/MatMul_1MatMullstm_175/zeros:output:06lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_175/lstm_cell_502/addAddV2'lstm_175/lstm_cell_502/MatMul:product:0)lstm_175/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp6lstm_175_lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_175/lstm_cell_502/BiasAddBiasAddlstm_175/lstm_cell_502/add:z:05lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_175/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_175/lstm_cell_502/splitSplit/lstm_175/lstm_cell_502/split/split_dim:output:0'lstm_175/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_175/lstm_cell_502/SigmoidSigmoid%lstm_175/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_175/lstm_cell_502/Sigmoid_1Sigmoid%lstm_175/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/mulMul$lstm_175/lstm_cell_502/Sigmoid_1:y:0lstm_175/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_175/lstm_cell_502/ReluRelu%lstm_175/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/mul_1Mul"lstm_175/lstm_cell_502/Sigmoid:y:0)lstm_175/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/add_1AddV2lstm_175/lstm_cell_502/mul:z:0 lstm_175/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_175/lstm_cell_502/Sigmoid_2Sigmoid%lstm_175/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_175/lstm_cell_502/Relu_1Relu lstm_175/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/mul_2Mul$lstm_175/lstm_cell_502/Sigmoid_2:y:0+lstm_175/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_175/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_175/TensorArrayV2_1TensorListReserve/lstm_175/TensorArrayV2_1/element_shape:output:0!lstm_175/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_175/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_175/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_175/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_175/whileWhile$lstm_175/while/loop_counter:output:0*lstm_175/while/maximum_iterations:output:0lstm_175/time:output:0!lstm_175/TensorArrayV2_1:handle:0lstm_175/zeros:output:0lstm_175/zeros_1:output:0!lstm_175/strided_slice_1:output:0@lstm_175/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_175_lstm_cell_502_matmul_readvariableop_resource7lstm_175_lstm_cell_502_matmul_1_readvariableop_resource6lstm_175_lstm_cell_502_biasadd_readvariableop_resource*
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
lstm_175_while_body_3044728*'
condR
lstm_175_while_cond_3044727*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_175/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_175/TensorArrayV2Stack/TensorListStackTensorListStacklstm_175/while:output:3Blstm_175/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_175/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_175/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_175/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_slice_3StridedSlice4lstm_175/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_175/strided_slice_3/stack:output:0)lstm_175/strided_slice_3/stack_1:output:0)lstm_175/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_175/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_175/transpose_1	Transpose4lstm_175/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_175/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_175/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_176/ShapeShapelstm_175/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_sliceStridedSlicelstm_176/Shape:output:0%lstm_176/strided_slice/stack:output:0'lstm_176/strided_slice/stack_1:output:0'lstm_176/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_176/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_176/zeros/packedPacklstm_176/strided_slice:output:0 lstm_176/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_176/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_176/zerosFilllstm_176/zeros/packed:output:0lstm_176/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_176/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_176/zeros_1/packedPacklstm_176/strided_slice:output:0"lstm_176/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_176/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_176/zeros_1Fill lstm_176/zeros_1/packed:output:0lstm_176/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_176/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_176/transpose	Transposelstm_175/transpose_1:y:0 lstm_176/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_176/Shape_1Shapelstm_176/transpose:y:0*
T0*
_output_shapes
:h
lstm_176/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_176/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_176/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_slice_1StridedSlicelstm_176/Shape_1:output:0'lstm_176/strided_slice_1/stack:output:0)lstm_176/strided_slice_1/stack_1:output:0)lstm_176/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_176/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_176/TensorArrayV2TensorListReserve-lstm_176/TensorArrayV2/element_shape:output:0!lstm_176/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_176/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_176/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_176/transpose:y:0Glstm_176/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_176/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_176/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_176/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_slice_2StridedSlicelstm_176/transpose:y:0'lstm_176/strided_slice_2/stack:output:0)lstm_176/strided_slice_2/stack_1:output:0)lstm_176/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_176/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp5lstm_176_lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_176/lstm_cell_503/MatMulMatMul!lstm_176/strided_slice_2:output:04lstm_176/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp7lstm_176_lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_176/lstm_cell_503/MatMul_1MatMullstm_176/zeros:output:06lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_176/lstm_cell_503/addAddV2'lstm_176/lstm_cell_503/MatMul:product:0)lstm_176/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp6lstm_176_lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_176/lstm_cell_503/BiasAddBiasAddlstm_176/lstm_cell_503/add:z:05lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_176/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_176/lstm_cell_503/splitSplit/lstm_176/lstm_cell_503/split/split_dim:output:0'lstm_176/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_176/lstm_cell_503/SigmoidSigmoid%lstm_176/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_176/lstm_cell_503/Sigmoid_1Sigmoid%lstm_176/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/mulMul$lstm_176/lstm_cell_503/Sigmoid_1:y:0lstm_176/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_176/lstm_cell_503/ReluRelu%lstm_176/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/mul_1Mul"lstm_176/lstm_cell_503/Sigmoid:y:0)lstm_176/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/add_1AddV2lstm_176/lstm_cell_503/mul:z:0 lstm_176/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_176/lstm_cell_503/Sigmoid_2Sigmoid%lstm_176/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_176/lstm_cell_503/Relu_1Relu lstm_176/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/mul_2Mul$lstm_176/lstm_cell_503/Sigmoid_2:y:0+lstm_176/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_176/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_176/TensorArrayV2_1TensorListReserve/lstm_176/TensorArrayV2_1/element_shape:output:0!lstm_176/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_176/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_176/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_176/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_176/whileWhile$lstm_176/while/loop_counter:output:0*lstm_176/while/maximum_iterations:output:0lstm_176/time:output:0!lstm_176/TensorArrayV2_1:handle:0lstm_176/zeros:output:0lstm_176/zeros_1:output:0!lstm_176/strided_slice_1:output:0@lstm_176/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_176_lstm_cell_503_matmul_readvariableop_resource7lstm_176_lstm_cell_503_matmul_1_readvariableop_resource6lstm_176_lstm_cell_503_biasadd_readvariableop_resource*
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
lstm_176_while_body_3044867*'
condR
lstm_176_while_cond_3044866*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_176/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_176/TensorArrayV2Stack/TensorListStackTensorListStacklstm_176/while:output:3Blstm_176/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_176/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_176/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_176/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_slice_3StridedSlice4lstm_176/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_176/strided_slice_3/stack:output:0)lstm_176/strided_slice_3/stack_1:output:0)lstm_176/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_176/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_176/transpose_1	Transpose4lstm_176/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_176/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_176/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_58/MatMulMatMul!lstm_176/strided_slice_3:output:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_58/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp.^lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp-^lstm_174/lstm_cell_501/MatMul/ReadVariableOp/^lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp^lstm_174/while.^lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp-^lstm_175/lstm_cell_502/MatMul/ReadVariableOp/^lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp^lstm_175/while.^lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp-^lstm_176/lstm_cell_503/MatMul/ReadVariableOp/^lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp^lstm_176/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2^
-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp2\
,lstm_174/lstm_cell_501/MatMul/ReadVariableOp,lstm_174/lstm_cell_501/MatMul/ReadVariableOp2`
.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp2 
lstm_174/whilelstm_174/while2^
-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp2\
,lstm_175/lstm_cell_502/MatMul/ReadVariableOp,lstm_175/lstm_cell_502/MatMul/ReadVariableOp2`
.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp2 
lstm_175/whilelstm_175/while2^
-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp2\
,lstm_176/lstm_cell_503/MatMul/ReadVariableOp,lstm_176/lstm_cell_503/MatMul/ReadVariableOp2`
.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp2 
lstm_176/whilelstm_176/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042556

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
?
/__inference_lstm_cell_503_layer_call_fn_3047054

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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042702o
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
while_body_3045060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_501_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_501_matmul_readvariableop_resource:	?G
4while_lstm_cell_501_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_501_biasadd_readvariableop_resource:	???*while/lstm_cell_501/BiasAdd/ReadVariableOp?)while/lstm_cell_501/MatMul/ReadVariableOp?+while/lstm_cell_501/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_501/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_501/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_501/addAddV2$while/lstm_cell_501/MatMul:product:0&while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_501/BiasAddBiasAddwhile/lstm_cell_501/add:z:02while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_501/splitSplit,while/lstm_cell_501/split/split_dim:output:0$while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_501/SigmoidSigmoid"while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_1Sigmoid"while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mulMul!while/lstm_cell_501/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_501/ReluRelu"while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_1Mulwhile/lstm_cell_501/Sigmoid:y:0&while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/add_1AddV2while/lstm_cell_501/mul:z:0while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_2Sigmoid"while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_501/Relu_1Reluwhile/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_2Mul!while/lstm_cell_501/Sigmoid_2:y:0(while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_501/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_501/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_501/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_501/BiasAdd/ReadVariableOp*^while/lstm_cell_501/MatMul/ReadVariableOp,^while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_501_biasadd_readvariableop_resource5while_lstm_cell_501_biasadd_readvariableop_resource_0"n
4while_lstm_cell_501_matmul_1_readvariableop_resource6while_lstm_cell_501_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_501_matmul_readvariableop_resource4while_lstm_cell_501_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_501/BiasAdd/ReadVariableOp*while/lstm_cell_501/BiasAdd/ReadVariableOp2V
)while/lstm_cell_501/MatMul/ReadVariableOp)while/lstm_cell_501/MatMul/ReadVariableOp2Z
+while/lstm_cell_501/MatMul_1/ReadVariableOp+while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3045489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_501_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_501_matmul_readvariableop_resource:	?G
4while_lstm_cell_501_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_501_biasadd_readvariableop_resource:	???*while/lstm_cell_501/BiasAdd/ReadVariableOp?)while/lstm_cell_501/MatMul/ReadVariableOp?+while/lstm_cell_501/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_501/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_501/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_501/addAddV2$while/lstm_cell_501/MatMul:product:0&while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_501/BiasAddBiasAddwhile/lstm_cell_501/add:z:02while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_501/splitSplit,while/lstm_cell_501/split/split_dim:output:0$while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_501/SigmoidSigmoid"while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_1Sigmoid"while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mulMul!while/lstm_cell_501/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_501/ReluRelu"while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_1Mulwhile/lstm_cell_501/Sigmoid:y:0&while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/add_1AddV2while/lstm_cell_501/mul:z:0while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_2Sigmoid"while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_501/Relu_1Reluwhile/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_2Mul!while/lstm_cell_501/Sigmoid_2:y:0(while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_501/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_501/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_501/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_501/BiasAdd/ReadVariableOp*^while/lstm_cell_501/MatMul/ReadVariableOp,^while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_501_biasadd_readvariableop_resource5while_lstm_cell_501_biasadd_readvariableop_resource_0"n
4while_lstm_cell_501_matmul_1_readvariableop_resource6while_lstm_cell_501_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_501_matmul_readvariableop_resource4while_lstm_cell_501_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_501/BiasAdd/ReadVariableOp*while/lstm_cell_501/BiasAdd/ReadVariableOp2V
)while/lstm_cell_501/MatMul/ReadVariableOp)while/lstm_cell_501/MatMul/ReadVariableOp2Z
+while/lstm_cell_501/MatMul_1/ReadVariableOp+while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_58_layer_call_fn_3044076

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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043313o
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
/__inference_sequential_58_layer_call_fn_3043954
lstm_174_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_174_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043902o
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
_user_specified_namelstm_174_input
?
?
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3047020

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
?J
?
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043504

inputs>
,lstm_cell_503_matmul_readvariableop_resource:2(@
.lstm_cell_503_matmul_1_readvariableop_resource:
(;
-lstm_cell_503_biasadd_readvariableop_resource:(
identity??$lstm_cell_503/BiasAdd/ReadVariableOp?#lstm_cell_503/MatMul/ReadVariableOp?%lstm_cell_503/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_503/MatMul/ReadVariableOpReadVariableOp,lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_503/MatMulMatMulstrided_slice_2:output:0+lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_503/MatMul_1MatMulzeros:output:0-lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_503/addAddV2lstm_cell_503/MatMul:product:0 lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_503/BiasAddBiasAddlstm_cell_503/add:z:0,lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_503/splitSplit&lstm_cell_503/split/split_dim:output:0lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_503/SigmoidSigmoidlstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_1Sigmoidlstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_503/mulMullstm_cell_503/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_503/ReluRelulstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_1Mullstm_cell_503/Sigmoid:y:0 lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_503/add_1AddV2lstm_cell_503/mul:z:0lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_2Sigmoidlstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_503/Relu_1Relulstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_2Mullstm_cell_503/Sigmoid_2:y:0"lstm_cell_503/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_503_matmul_readvariableop_resource.lstm_cell_503_matmul_1_readvariableop_resource-lstm_cell_503_biasadd_readvariableop_resource*
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
while_body_3043420*
condR
while_cond_3043419*K
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
NoOpNoOp%^lstm_cell_503/BiasAdd/ReadVariableOp$^lstm_cell_503/MatMul/ReadVariableOp&^lstm_cell_503/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_503/BiasAdd/ReadVariableOp$lstm_cell_503/BiasAdd/ReadVariableOp2J
#lstm_cell_503/MatMul/ReadVariableOp#lstm_cell_503/MatMul/ReadVariableOp2N
%lstm_cell_503/MatMul_1/ReadVariableOp%lstm_cell_503/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_501_layer_call_fn_3046858

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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3042002o
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
?
while_body_3046578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_503_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_503_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_503_matmul_readvariableop_resource:2(F
4while_lstm_cell_503_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_503_biasadd_readvariableop_resource:(??*while/lstm_cell_503/BiasAdd/ReadVariableOp?)while/lstm_cell_503/MatMul/ReadVariableOp?+while/lstm_cell_503/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_503/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_503/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_503/addAddV2$while/lstm_cell_503/MatMul:product:0&while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_503/BiasAddBiasAddwhile/lstm_cell_503/add:z:02while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_503/splitSplit,while/lstm_cell_503/split/split_dim:output:0$while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_503/SigmoidSigmoid"while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_1Sigmoid"while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mulMul!while/lstm_cell_503/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_503/ReluRelu"while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_1Mulwhile/lstm_cell_503/Sigmoid:y:0&while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/add_1AddV2while/lstm_cell_503/mul:z:0while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_2Sigmoid"while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_503/Relu_1Reluwhile/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_2Mul!while/lstm_cell_503/Sigmoid_2:y:0(while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_503/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_503/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_503/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_503/BiasAdd/ReadVariableOp*^while/lstm_cell_503/MatMul/ReadVariableOp,^while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_503_biasadd_readvariableop_resource5while_lstm_cell_503_biasadd_readvariableop_resource_0"n
4while_lstm_cell_503_matmul_1_readvariableop_resource6while_lstm_cell_503_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_503_matmul_readvariableop_resource4while_lstm_cell_503_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_503/BiasAdd/ReadVariableOp*while/lstm_cell_503/BiasAdd/ReadVariableOp2V
)while/lstm_cell_503/MatMul/ReadVariableOp)while/lstm_cell_503/MatMul/ReadVariableOp2Z
+while/lstm_cell_503/MatMul_1/ReadVariableOp+while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3041939

inputs(
lstm_cell_501_3041857:	?(
lstm_cell_501_3041859:	d?$
lstm_cell_501_3041861:	?
identity??%lstm_cell_501/StatefulPartitionedCall?while;
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
%lstm_cell_501/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_501_3041857lstm_cell_501_3041859lstm_cell_501_3041861*
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3041856n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_501_3041857lstm_cell_501_3041859lstm_cell_501_3041861*
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
while_body_3041870*
condR
while_cond_3041869*K
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
NoOpNoOp&^lstm_cell_501/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_501/StatefulPartitionedCall%lstm_cell_501/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046376
inputs_0>
,lstm_cell_503_matmul_readvariableop_resource:2(@
.lstm_cell_503_matmul_1_readvariableop_resource:
(;
-lstm_cell_503_biasadd_readvariableop_resource:(
identity??$lstm_cell_503/BiasAdd/ReadVariableOp?#lstm_cell_503/MatMul/ReadVariableOp?%lstm_cell_503/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_503/MatMul/ReadVariableOpReadVariableOp,lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_503/MatMulMatMulstrided_slice_2:output:0+lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_503/MatMul_1MatMulzeros:output:0-lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_503/addAddV2lstm_cell_503/MatMul:product:0 lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_503/BiasAddBiasAddlstm_cell_503/add:z:0,lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_503/splitSplit&lstm_cell_503/split/split_dim:output:0lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_503/SigmoidSigmoidlstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_1Sigmoidlstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_503/mulMullstm_cell_503/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_503/ReluRelulstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_1Mullstm_cell_503/Sigmoid:y:0 lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_503/add_1AddV2lstm_cell_503/mul:z:0lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_2Sigmoidlstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_503/Relu_1Relulstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_2Mullstm_cell_503/Sigmoid_2:y:0"lstm_cell_503/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_503_matmul_readvariableop_resource.lstm_cell_503_matmul_1_readvariableop_resource-lstm_cell_503_biasadd_readvariableop_resource*
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
while_body_3046292*
condR
while_cond_3046291*K
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
NoOpNoOp%^lstm_cell_503/BiasAdd/ReadVariableOp$^lstm_cell_503/MatMul/ReadVariableOp&^lstm_cell_503/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_503/BiasAdd/ReadVariableOp$lstm_cell_503/BiasAdd/ReadVariableOp2J
#lstm_cell_503/MatMul/ReadVariableOp#lstm_cell_503/MatMul/ReadVariableOp2N
%lstm_cell_503/MatMul_1/ReadVariableOp%lstm_cell_503/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_174_layer_call_and_return_conditional_losses_3043834

inputs?
,lstm_cell_501_matmul_readvariableop_resource:	?A
.lstm_cell_501_matmul_1_readvariableop_resource:	d?<
-lstm_cell_501_biasadd_readvariableop_resource:	?
identity??$lstm_cell_501/BiasAdd/ReadVariableOp?#lstm_cell_501/MatMul/ReadVariableOp?%lstm_cell_501/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_501/MatMul/ReadVariableOpReadVariableOp,lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_501/MatMulMatMulstrided_slice_2:output:0+lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_501/MatMul_1MatMulzeros:output:0-lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_501/addAddV2lstm_cell_501/MatMul:product:0 lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_501/BiasAddBiasAddlstm_cell_501/add:z:0,lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_501/splitSplit&lstm_cell_501/split/split_dim:output:0lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_501/SigmoidSigmoidlstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_1Sigmoidlstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_501/mulMullstm_cell_501/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_501/ReluRelulstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_1Mullstm_cell_501/Sigmoid:y:0 lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_501/add_1AddV2lstm_cell_501/mul:z:0lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_2Sigmoidlstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_501/Relu_1Relulstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_2Mullstm_cell_501/Sigmoid_2:y:0"lstm_cell_501/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_501_matmul_readvariableop_resource.lstm_cell_501_matmul_1_readvariableop_resource-lstm_cell_501_biasadd_readvariableop_resource*
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
while_body_3043750*
condR
while_cond_3043749*K
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
NoOpNoOp%^lstm_cell_501/BiasAdd/ReadVariableOp$^lstm_cell_501/MatMul/ReadVariableOp&^lstm_cell_501/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_501/BiasAdd/ReadVariableOp$lstm_cell_501/BiasAdd/ReadVariableOp2J
#lstm_cell_501/MatMul/ReadVariableOp#lstm_cell_501/MatMul/ReadVariableOp2N
%lstm_cell_501/MatMul_1/ReadVariableOp%lstm_cell_501/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_174_layer_call_fn_3044979
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3042130|
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045430

inputs?
,lstm_cell_501_matmul_readvariableop_resource:	?A
.lstm_cell_501_matmul_1_readvariableop_resource:	d?<
-lstm_cell_501_biasadd_readvariableop_resource:	?
identity??$lstm_cell_501/BiasAdd/ReadVariableOp?#lstm_cell_501/MatMul/ReadVariableOp?%lstm_cell_501/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_501/MatMul/ReadVariableOpReadVariableOp,lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_501/MatMulMatMulstrided_slice_2:output:0+lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_501/MatMul_1MatMulzeros:output:0-lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_501/addAddV2lstm_cell_501/MatMul:product:0 lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_501/BiasAddBiasAddlstm_cell_501/add:z:0,lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_501/splitSplit&lstm_cell_501/split/split_dim:output:0lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_501/SigmoidSigmoidlstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_1Sigmoidlstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_501/mulMullstm_cell_501/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_501/ReluRelulstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_1Mullstm_cell_501/Sigmoid:y:0 lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_501/add_1AddV2lstm_cell_501/mul:z:0lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_2Sigmoidlstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_501/Relu_1Relulstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_2Mullstm_cell_501/Sigmoid_2:y:0"lstm_cell_501/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_501_matmul_readvariableop_resource.lstm_cell_501_matmul_1_readvariableop_resource-lstm_cell_501_biasadd_readvariableop_resource*
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
while_body_3045346*
condR
while_cond_3045345*K
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
NoOpNoOp%^lstm_cell_501/BiasAdd/ReadVariableOp$^lstm_cell_501/MatMul/ReadVariableOp&^lstm_cell_501/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_501/BiasAdd/ReadVariableOp$lstm_cell_501/BiasAdd/ReadVariableOp2J
#lstm_cell_501/MatMul/ReadVariableOp#lstm_cell_501/MatMul/ReadVariableOp2N
%lstm_cell_501/MatMul_1/ReadVariableOp%lstm_cell_501/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3046721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_503_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_503_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_503_matmul_readvariableop_resource:2(F
4while_lstm_cell_503_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_503_biasadd_readvariableop_resource:(??*while/lstm_cell_503/BiasAdd/ReadVariableOp?)while/lstm_cell_503/MatMul/ReadVariableOp?+while/lstm_cell_503/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_503/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_503/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_503/addAddV2$while/lstm_cell_503/MatMul:product:0&while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_503/BiasAddBiasAddwhile/lstm_cell_503/add:z:02while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_503/splitSplit,while/lstm_cell_503/split/split_dim:output:0$while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_503/SigmoidSigmoid"while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_1Sigmoid"while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mulMul!while/lstm_cell_503/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_503/ReluRelu"while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_1Mulwhile/lstm_cell_503/Sigmoid:y:0&while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/add_1AddV2while/lstm_cell_503/mul:z:0while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_2Sigmoid"while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_503/Relu_1Reluwhile/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_2Mul!while/lstm_cell_503/Sigmoid_2:y:0(while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_503/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_503/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_503/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_503/BiasAdd/ReadVariableOp*^while/lstm_cell_503/MatMul/ReadVariableOp,^while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_503_biasadd_readvariableop_resource5while_lstm_cell_503_biasadd_readvariableop_resource_0"n
4while_lstm_cell_503_matmul_1_readvariableop_resource6while_lstm_cell_503_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_503_matmul_readvariableop_resource4while_lstm_cell_503_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_503/BiasAdd/ReadVariableOp*while/lstm_cell_503/BiasAdd/ReadVariableOp2V
)while/lstm_cell_503/MatMul/ReadVariableOp)while/lstm_cell_503/MatMul/ReadVariableOp2Z
+while/lstm_cell_503/MatMul_1/ReadVariableOp+while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_174_while_cond_3044161.
*lstm_174_while_lstm_174_while_loop_counter4
0lstm_174_while_lstm_174_while_maximum_iterations
lstm_174_while_placeholder 
lstm_174_while_placeholder_1 
lstm_174_while_placeholder_2 
lstm_174_while_placeholder_30
,lstm_174_while_less_lstm_174_strided_slice_1G
Clstm_174_while_lstm_174_while_cond_3044161___redundant_placeholder0G
Clstm_174_while_lstm_174_while_cond_3044161___redundant_placeholder1G
Clstm_174_while_lstm_174_while_cond_3044161___redundant_placeholder2G
Clstm_174_while_lstm_174_while_cond_3044161___redundant_placeholder3
lstm_174_while_identity
?
lstm_174/while/LessLesslstm_174_while_placeholder,lstm_174_while_less_lstm_174_strided_slice_1*
T0*
_output_shapes
: ]
lstm_174/while/IdentityIdentitylstm_174/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_174_while_identity lstm_174/while/Identity:output:0*(
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
while_body_3042761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_503_3042785_0:2(/
while_lstm_cell_503_3042787_0:
(+
while_lstm_cell_503_3042789_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_503_3042785:2(-
while_lstm_cell_503_3042787:
()
while_lstm_cell_503_3042789:(??+while/lstm_cell_503/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_503/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_503_3042785_0while_lstm_cell_503_3042787_0while_lstm_cell_503_3042789_0*
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042702?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_503/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_503/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_503/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_503/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_503_3042785while_lstm_cell_503_3042785_0"<
while_lstm_cell_503_3042787while_lstm_cell_503_3042787_0"<
while_lstm_cell_503_3042789while_lstm_cell_503_3042789_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_503/StatefulPartitionedCall+while/lstm_cell_503/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_175_layer_call_fn_3045584
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3042289|
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
while_cond_3045202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3045202___redundant_placeholder05
1while_while_cond_3045202___redundant_placeholder15
1while_while_cond_3045202___redundant_placeholder25
1while_while_cond_3045202___redundant_placeholder3
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3042639

inputs'
lstm_cell_503_3042557:2('
lstm_cell_503_3042559:
(#
lstm_cell_503_3042561:(
identity??%lstm_cell_503/StatefulPartitionedCall?while;
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
%lstm_cell_503/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_503_3042557lstm_cell_503_3042559lstm_cell_503_3042561*
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042556n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_503_3042557lstm_cell_503_3042559lstm_cell_503_3042561*
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
while_body_3042570*
condR
while_cond_3042569*K
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
NoOpNoOp&^lstm_cell_503/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_503/StatefulPartitionedCall%lstm_cell_503/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3045962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_502_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_502_matmul_readvariableop_resource:	d?G
4while_lstm_cell_502_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_502_biasadd_readvariableop_resource:	???*while/lstm_cell_502/BiasAdd/ReadVariableOp?)while/lstm_cell_502/MatMul/ReadVariableOp?+while/lstm_cell_502/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_502/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_502/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_502/addAddV2$while/lstm_cell_502/MatMul:product:0&while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_502/BiasAddBiasAddwhile/lstm_cell_502/add:z:02while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_502/splitSplit,while/lstm_cell_502/split/split_dim:output:0$while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_502/SigmoidSigmoid"while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_1Sigmoid"while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mulMul!while/lstm_cell_502/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_502/ReluRelu"while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_1Mulwhile/lstm_cell_502/Sigmoid:y:0&while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/add_1AddV2while/lstm_cell_502/mul:z:0while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_2Sigmoid"while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_502/Relu_1Reluwhile/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_2Mul!while/lstm_cell_502/Sigmoid_2:y:0(while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_502/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_502/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_502/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_502/BiasAdd/ReadVariableOp*^while/lstm_cell_502/MatMul/ReadVariableOp,^while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_502_biasadd_readvariableop_resource5while_lstm_cell_502_biasadd_readvariableop_resource_0"n
4while_lstm_cell_502_matmul_1_readvariableop_resource6while_lstm_cell_502_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_502_matmul_readvariableop_resource4while_lstm_cell_502_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_502/BiasAdd/ReadVariableOp*while/lstm_cell_502/BiasAdd/ReadVariableOp2V
)while/lstm_cell_502/MatMul/ReadVariableOp)while/lstm_cell_502/MatMul/ReadVariableOp2Z
+while/lstm_cell_502/MatMul_1/ReadVariableOp+while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046662

inputs>
,lstm_cell_503_matmul_readvariableop_resource:2(@
.lstm_cell_503_matmul_1_readvariableop_resource:
(;
-lstm_cell_503_biasadd_readvariableop_resource:(
identity??$lstm_cell_503/BiasAdd/ReadVariableOp?#lstm_cell_503/MatMul/ReadVariableOp?%lstm_cell_503/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_503/MatMul/ReadVariableOpReadVariableOp,lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_503/MatMulMatMulstrided_slice_2:output:0+lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_503/MatMul_1MatMulzeros:output:0-lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_503/addAddV2lstm_cell_503/MatMul:product:0 lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_503/BiasAddBiasAddlstm_cell_503/add:z:0,lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_503/splitSplit&lstm_cell_503/split/split_dim:output:0lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_503/SigmoidSigmoidlstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_1Sigmoidlstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_503/mulMullstm_cell_503/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_503/ReluRelulstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_1Mullstm_cell_503/Sigmoid:y:0 lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_503/add_1AddV2lstm_cell_503/mul:z:0lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_2Sigmoidlstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_503/Relu_1Relulstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_2Mullstm_cell_503/Sigmoid_2:y:0"lstm_cell_503/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_503_matmul_readvariableop_resource.lstm_cell_503_matmul_1_readvariableop_resource-lstm_cell_503_biasadd_readvariableop_resource*
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
while_body_3046578*
condR
while_cond_3046577*K
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
NoOpNoOp%^lstm_cell_503/BiasAdd/ReadVariableOp$^lstm_cell_503/MatMul/ReadVariableOp&^lstm_cell_503/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_503/BiasAdd/ReadVariableOp$lstm_cell_503/BiasAdd/ReadVariableOp2J
#lstm_cell_503/MatMul/ReadVariableOp#lstm_cell_503/MatMul/ReadVariableOp2N
%lstm_cell_503/MatMul_1/ReadVariableOp%lstm_cell_503/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_58_layer_call_fn_3043338
lstm_174_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_174_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043313o
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
_user_specified_namelstm_174_input
?8
?
while_body_3046435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_503_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_503_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_503_matmul_readvariableop_resource:2(F
4while_lstm_cell_503_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_503_biasadd_readvariableop_resource:(??*while/lstm_cell_503/BiasAdd/ReadVariableOp?)while/lstm_cell_503/MatMul/ReadVariableOp?+while/lstm_cell_503/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_503/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_503/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_503/addAddV2$while/lstm_cell_503/MatMul:product:0&while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_503/BiasAddBiasAddwhile/lstm_cell_503/add:z:02while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_503/splitSplit,while/lstm_cell_503/split/split_dim:output:0$while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_503/SigmoidSigmoid"while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_1Sigmoid"while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mulMul!while/lstm_cell_503/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_503/ReluRelu"while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_1Mulwhile/lstm_cell_503/Sigmoid:y:0&while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/add_1AddV2while/lstm_cell_503/mul:z:0while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_2Sigmoid"while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_503/Relu_1Reluwhile/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_2Mul!while/lstm_cell_503/Sigmoid_2:y:0(while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_503/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_503/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_503/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_503/BiasAdd/ReadVariableOp*^while/lstm_cell_503/MatMul/ReadVariableOp,^while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_503_biasadd_readvariableop_resource5while_lstm_cell_503_biasadd_readvariableop_resource_0"n
4while_lstm_cell_503_matmul_1_readvariableop_resource6while_lstm_cell_503_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_503_matmul_readvariableop_resource4while_lstm_cell_503_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_503/BiasAdd/ReadVariableOp*while/lstm_cell_503/BiasAdd/ReadVariableOp2V
)while/lstm_cell_503/MatMul/ReadVariableOp)while/lstm_cell_503/MatMul/ReadVariableOp2Z
+while/lstm_cell_503/MatMul_1/ReadVariableOp+while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042206

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
?
while_body_3045819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_502_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_502_matmul_readvariableop_resource:	d?G
4while_lstm_cell_502_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_502_biasadd_readvariableop_resource:	???*while/lstm_cell_502/BiasAdd/ReadVariableOp?)while/lstm_cell_502/MatMul/ReadVariableOp?+while/lstm_cell_502/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_502/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_502/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_502/addAddV2$while/lstm_cell_502/MatMul:product:0&while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_502/BiasAddBiasAddwhile/lstm_cell_502/add:z:02while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_502/splitSplit,while/lstm_cell_502/split/split_dim:output:0$while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_502/SigmoidSigmoid"while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_1Sigmoid"while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mulMul!while/lstm_cell_502/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_502/ReluRelu"while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_1Mulwhile/lstm_cell_502/Sigmoid:y:0&while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/add_1AddV2while/lstm_cell_502/mul:z:0while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_2Sigmoid"while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_502/Relu_1Reluwhile/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_2Mul!while/lstm_cell_502/Sigmoid_2:y:0(while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_502/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_502/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_502/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_502/BiasAdd/ReadVariableOp*^while/lstm_cell_502/MatMul/ReadVariableOp,^while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_502_biasadd_readvariableop_resource5while_lstm_cell_502_biasadd_readvariableop_resource_0"n
4while_lstm_cell_502_matmul_1_readvariableop_resource6while_lstm_cell_502_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_502_matmul_readvariableop_resource4while_lstm_cell_502_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_502/BiasAdd/ReadVariableOp*while/lstm_cell_502/BiasAdd/ReadVariableOp2V
)while/lstm_cell_502/MatMul/ReadVariableOp)while/lstm_cell_502/MatMul/ReadVariableOp2Z
+while/lstm_cell_502/MatMul_1/ReadVariableOp+while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3046104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3046104___redundant_placeholder05
1while_while_cond_3046104___redundant_placeholder15
1while_while_cond_3046104___redundant_placeholder25
1while_while_cond_3046104___redundant_placeholder3
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
while_body_3042904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_501_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_501_matmul_readvariableop_resource:	?G
4while_lstm_cell_501_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_501_biasadd_readvariableop_resource:	???*while/lstm_cell_501/BiasAdd/ReadVariableOp?)while/lstm_cell_501/MatMul/ReadVariableOp?+while/lstm_cell_501/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_501/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_501/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_501/addAddV2$while/lstm_cell_501/MatMul:product:0&while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_501/BiasAddBiasAddwhile/lstm_cell_501/add:z:02while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_501/splitSplit,while/lstm_cell_501/split/split_dim:output:0$while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_501/SigmoidSigmoid"while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_1Sigmoid"while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mulMul!while/lstm_cell_501/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_501/ReluRelu"while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_1Mulwhile/lstm_cell_501/Sigmoid:y:0&while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/add_1AddV2while/lstm_cell_501/mul:z:0while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_2Sigmoid"while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_501/Relu_1Reluwhile/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_2Mul!while/lstm_cell_501/Sigmoid_2:y:0(while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_501/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_501/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_501/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_501/BiasAdd/ReadVariableOp*^while/lstm_cell_501/MatMul/ReadVariableOp,^while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_501_biasadd_readvariableop_resource5while_lstm_cell_501_biasadd_readvariableop_resource_0"n
4while_lstm_cell_501_matmul_1_readvariableop_resource6while_lstm_cell_501_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_501_matmul_readvariableop_resource4while_lstm_cell_501_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_501/BiasAdd/ReadVariableOp*while/lstm_cell_501/BiasAdd/ReadVariableOp2V
)while/lstm_cell_501/MatMul/ReadVariableOp)while/lstm_cell_501/MatMul/ReadVariableOp2Z
+while/lstm_cell_501/MatMul_1/ReadVariableOp+while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3045345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3045345___redundant_placeholder05
1while_while_cond_3045345___redundant_placeholder15
1while_while_cond_3045345___redundant_placeholder25
1while_while_cond_3045345___redundant_placeholder3
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
*__inference_lstm_176_layer_call_fn_3046233

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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043504o
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
lstm_175_while_cond_3044727.
*lstm_175_while_lstm_175_while_loop_counter4
0lstm_175_while_lstm_175_while_maximum_iterations
lstm_175_while_placeholder 
lstm_175_while_placeholder_1 
lstm_175_while_placeholder_2 
lstm_175_while_placeholder_30
,lstm_175_while_less_lstm_175_strided_slice_1G
Clstm_175_while_lstm_175_while_cond_3044727___redundant_placeholder0G
Clstm_175_while_lstm_175_while_cond_3044727___redundant_placeholder1G
Clstm_175_while_lstm_175_while_cond_3044727___redundant_placeholder2G
Clstm_175_while_lstm_175_while_cond_3044727___redundant_placeholder3
lstm_175_while_identity
?
lstm_175/while/LessLesslstm_175_while_placeholder,lstm_175_while_less_lstm_175_strided_slice_1*
T0*
_output_shapes
: ]
lstm_175/while/IdentityIdentitylstm_175/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_175_while_identity lstm_175/while/Identity:output:0*(
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3046988

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
?J
?
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043669

inputs?
,lstm_cell_502_matmul_readvariableop_resource:	d?A
.lstm_cell_502_matmul_1_readvariableop_resource:	2?<
-lstm_cell_502_biasadd_readvariableop_resource:	?
identity??$lstm_cell_502/BiasAdd/ReadVariableOp?#lstm_cell_502/MatMul/ReadVariableOp?%lstm_cell_502/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_502/MatMul/ReadVariableOpReadVariableOp,lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_502/MatMulMatMulstrided_slice_2:output:0+lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_502/MatMul_1MatMulzeros:output:0-lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_502/addAddV2lstm_cell_502/MatMul:product:0 lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_502/BiasAddBiasAddlstm_cell_502/add:z:0,lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_502/splitSplit&lstm_cell_502/split/split_dim:output:0lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_502/SigmoidSigmoidlstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_1Sigmoidlstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_502/mulMullstm_cell_502/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_502/ReluRelulstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_1Mullstm_cell_502/Sigmoid:y:0 lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_502/add_1AddV2lstm_cell_502/mul:z:0lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_2Sigmoidlstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_502/Relu_1Relulstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_2Mullstm_cell_502/Sigmoid_2:y:0"lstm_cell_502/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_502_matmul_readvariableop_resource.lstm_cell_502_matmul_1_readvariableop_resource-lstm_cell_502_biasadd_readvariableop_resource*
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
while_body_3043585*
condR
while_cond_3043584*K
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
NoOpNoOp%^lstm_cell_502/BiasAdd/ReadVariableOp$^lstm_cell_502/MatMul/ReadVariableOp&^lstm_cell_502/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_502/BiasAdd/ReadVariableOp$lstm_cell_502/BiasAdd/ReadVariableOp2J
#lstm_cell_502/MatMul/ReadVariableOp#lstm_cell_502/MatMul/ReadVariableOp2N
%lstm_cell_502/MatMul_1/ReadVariableOp%lstm_cell_502/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3041869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3041869___redundant_placeholder05
1while_while_cond_3041869___redundant_placeholder15
1while_while_cond_3041869___redundant_placeholder25
1while_while_cond_3041869___redundant_placeholder3
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
*__inference_dense_58_layer_call_fn_3046814

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
E__inference_dense_58_layer_call_and_return_conditional_losses_3043306o
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3041856

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
while_cond_3042760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3042760___redundant_placeholder05
1while_while_cond_3042760___redundant_placeholder15
1while_while_cond_3042760___redundant_placeholder25
1while_while_cond_3042760___redundant_placeholder3
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
while_cond_3046291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3046291___redundant_placeholder05
1while_while_cond_3046291___redundant_placeholder15
1while_while_cond_3046291___redundant_placeholder25
1while_while_cond_3046291___redundant_placeholder3
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
*__inference_lstm_174_layer_call_fn_3045001

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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3043834s
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
while_cond_3042410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3042410___redundant_placeholder05
1while_while_cond_3042410___redundant_placeholder15
1while_while_cond_3042410___redundant_placeholder25
1while_while_cond_3042410___redundant_placeholder3
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3046890

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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3046922

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
/__inference_sequential_58_layer_call_fn_3044103

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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043902o
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
*__inference_lstm_175_layer_call_fn_3045595
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3042480|
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
while_cond_3045488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3045488___redundant_placeholder05
1while_while_cond_3045488___redundant_placeholder15
1while_while_cond_3045488___redundant_placeholder25
1while_while_cond_3045488___redundant_placeholder3
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
/__inference_lstm_cell_502_layer_call_fn_3046956

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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042352o
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
while_cond_3042569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3042569___redundant_placeholder05
1while_while_cond_3042569___redundant_placeholder15
1while_while_cond_3042569___redundant_placeholder25
1while_while_cond_3042569___redundant_placeholder3
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
while_cond_3043419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3043419___redundant_placeholder05
1while_while_cond_3043419___redundant_placeholder15
1while_while_cond_3043419___redundant_placeholder25
1while_while_cond_3043419___redundant_placeholder3
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046519
inputs_0>
,lstm_cell_503_matmul_readvariableop_resource:2(@
.lstm_cell_503_matmul_1_readvariableop_resource:
(;
-lstm_cell_503_biasadd_readvariableop_resource:(
identity??$lstm_cell_503/BiasAdd/ReadVariableOp?#lstm_cell_503/MatMul/ReadVariableOp?%lstm_cell_503/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_503/MatMul/ReadVariableOpReadVariableOp,lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_503/MatMulMatMulstrided_slice_2:output:0+lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_503/MatMul_1MatMulzeros:output:0-lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_503/addAddV2lstm_cell_503/MatMul:product:0 lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_503/BiasAddBiasAddlstm_cell_503/add:z:0,lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_503/splitSplit&lstm_cell_503/split/split_dim:output:0lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_503/SigmoidSigmoidlstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_1Sigmoidlstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_503/mulMullstm_cell_503/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_503/ReluRelulstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_1Mullstm_cell_503/Sigmoid:y:0 lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_503/add_1AddV2lstm_cell_503/mul:z:0lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_2Sigmoidlstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_503/Relu_1Relulstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_2Mullstm_cell_503/Sigmoid_2:y:0"lstm_cell_503/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_503_matmul_readvariableop_resource.lstm_cell_503_matmul_1_readvariableop_resource-lstm_cell_503_biasadd_readvariableop_resource*
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
while_body_3046435*
condR
while_cond_3046434*K
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
NoOpNoOp%^lstm_cell_503/BiasAdd/ReadVariableOp$^lstm_cell_503/MatMul/ReadVariableOp&^lstm_cell_503/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_503/BiasAdd/ReadVariableOp$lstm_cell_503/BiasAdd/ReadVariableOp2J
#lstm_cell_503/MatMul/ReadVariableOp#lstm_cell_503/MatMul/ReadVariableOp2N
%lstm_cell_503/MatMul_1/ReadVariableOp%lstm_cell_503/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_175_while_cond_3044300.
*lstm_175_while_lstm_175_while_loop_counter4
0lstm_175_while_lstm_175_while_maximum_iterations
lstm_175_while_placeholder 
lstm_175_while_placeholder_1 
lstm_175_while_placeholder_2 
lstm_175_while_placeholder_30
,lstm_175_while_less_lstm_175_strided_slice_1G
Clstm_175_while_lstm_175_while_cond_3044300___redundant_placeholder0G
Clstm_175_while_lstm_175_while_cond_3044300___redundant_placeholder1G
Clstm_175_while_lstm_175_while_cond_3044300___redundant_placeholder2G
Clstm_175_while_lstm_175_while_cond_3044300___redundant_placeholder3
lstm_175_while_identity
?
lstm_175/while/LessLesslstm_175_while_placeholder,lstm_175_while_less_lstm_175_strided_slice_1*
T0*
_output_shapes
: ]
lstm_175/while/IdentityIdentitylstm_175/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_175_while_identity lstm_175/while/Identity:output:0*(
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
while_body_3041870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_501_3041894_0:	?0
while_lstm_cell_501_3041896_0:	d?,
while_lstm_cell_501_3041898_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_501_3041894:	?.
while_lstm_cell_501_3041896:	d?*
while_lstm_cell_501_3041898:	???+while/lstm_cell_501/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_501/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_501_3041894_0while_lstm_cell_501_3041896_0while_lstm_cell_501_3041898_0*
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3041856?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_501/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_501/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_501/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_501/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_501_3041894while_lstm_cell_501_3041894_0"<
while_lstm_cell_501_3041896while_lstm_cell_501_3041896_0"<
while_lstm_cell_501_3041898while_lstm_cell_501_3041898_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_501/StatefulPartitionedCall+while/lstm_cell_501/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3042289

inputs(
lstm_cell_502_3042207:	d?(
lstm_cell_502_3042209:	2?$
lstm_cell_502_3042211:	?
identity??%lstm_cell_502/StatefulPartitionedCall?while;
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
%lstm_cell_502/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_502_3042207lstm_cell_502_3042209lstm_cell_502_3042211*
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042206n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_502_3042207lstm_cell_502_3042209lstm_cell_502_3042211*
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
while_body_3042220*
condR
while_cond_3042219*K
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
NoOpNoOp&^lstm_cell_502/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_502/StatefulPartitionedCall%lstm_cell_502/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3045675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3045675___redundant_placeholder05
1while_while_cond_3045675___redundant_placeholder15
1while_while_cond_3045675___redundant_placeholder25
1while_while_cond_3045675___redundant_placeholder3
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
while_body_3046105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_502_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_502_matmul_readvariableop_resource:	d?G
4while_lstm_cell_502_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_502_biasadd_readvariableop_resource:	???*while/lstm_cell_502/BiasAdd/ReadVariableOp?)while/lstm_cell_502/MatMul/ReadVariableOp?+while/lstm_cell_502/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_502/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_502/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_502/addAddV2$while/lstm_cell_502/MatMul:product:0&while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_502/BiasAddBiasAddwhile/lstm_cell_502/add:z:02while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_502/splitSplit,while/lstm_cell_502/split/split_dim:output:0$while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_502/SigmoidSigmoid"while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_1Sigmoid"while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mulMul!while/lstm_cell_502/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_502/ReluRelu"while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_1Mulwhile/lstm_cell_502/Sigmoid:y:0&while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/add_1AddV2while/lstm_cell_502/mul:z:0while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_2Sigmoid"while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_502/Relu_1Reluwhile/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_2Mul!while/lstm_cell_502/Sigmoid_2:y:0(while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_502/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_502/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_502/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_502/BiasAdd/ReadVariableOp*^while/lstm_cell_502/MatMul/ReadVariableOp,^while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_502_biasadd_readvariableop_resource5while_lstm_cell_502_biasadd_readvariableop_resource_0"n
4while_lstm_cell_502_matmul_1_readvariableop_resource6while_lstm_cell_502_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_502_matmul_readvariableop_resource4while_lstm_cell_502_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_502/BiasAdd/ReadVariableOp*while/lstm_cell_502/BiasAdd/ReadVariableOp2V
)while/lstm_cell_502/MatMul/ReadVariableOp)while/lstm_cell_502/MatMul/ReadVariableOp2Z
+while/lstm_cell_502/MatMul_1/ReadVariableOp+while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044014
lstm_174_input#
lstm_174_3043987:	?#
lstm_174_3043989:	d?
lstm_174_3043991:	?#
lstm_175_3043994:	d?#
lstm_175_3043996:	2?
lstm_175_3043998:	?"
lstm_176_3044001:2("
lstm_176_3044003:
(
lstm_176_3044005:("
dense_58_3044008:

dense_58_3044010:
identity?? dense_58/StatefulPartitionedCall? lstm_174/StatefulPartitionedCall? lstm_175/StatefulPartitionedCall? lstm_176/StatefulPartitionedCall?
 lstm_174/StatefulPartitionedCallStatefulPartitionedCalllstm_174_inputlstm_174_3043987lstm_174_3043989lstm_174_3043991*
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3043834?
 lstm_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_174/StatefulPartitionedCall:output:0lstm_175_3043994lstm_175_3043996lstm_175_3043998*
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043669?
 lstm_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_175/StatefulPartitionedCall:output:0lstm_176_3044001lstm_176_3044003lstm_176_3044005*
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043504?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)lstm_176/StatefulPartitionedCall:output:0dense_58_3044008dense_58_3044010*
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3043306x
IdentityIdentity)dense_58/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_58/StatefulPartitionedCall!^lstm_174/StatefulPartitionedCall!^lstm_175/StatefulPartitionedCall!^lstm_176/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 lstm_174/StatefulPartitionedCall lstm_174/StatefulPartitionedCall2D
 lstm_175/StatefulPartitionedCall lstm_175/StatefulPartitionedCall2D
 lstm_176/StatefulPartitionedCall lstm_176/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_174_input
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043902

inputs#
lstm_174_3043875:	?#
lstm_174_3043877:	d?
lstm_174_3043879:	?#
lstm_175_3043882:	d?#
lstm_175_3043884:	2?
lstm_175_3043886:	?"
lstm_176_3043889:2("
lstm_176_3043891:
(
lstm_176_3043893:("
dense_58_3043896:

dense_58_3043898:
identity?? dense_58/StatefulPartitionedCall? lstm_174/StatefulPartitionedCall? lstm_175/StatefulPartitionedCall? lstm_176/StatefulPartitionedCall?
 lstm_174/StatefulPartitionedCallStatefulPartitionedCallinputslstm_174_3043875lstm_174_3043877lstm_174_3043879*
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3043834?
 lstm_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_174/StatefulPartitionedCall:output:0lstm_175_3043882lstm_175_3043884lstm_175_3043886*
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043669?
 lstm_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_175/StatefulPartitionedCall:output:0lstm_176_3043889lstm_176_3043891lstm_176_3043893*
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043504?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)lstm_176/StatefulPartitionedCall:output:0dense_58_3043896dense_58_3043898*
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3043306x
IdentityIdentity)dense_58/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_58/StatefulPartitionedCall!^lstm_174/StatefulPartitionedCall!^lstm_175/StatefulPartitionedCall!^lstm_176/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 lstm_174/StatefulPartitionedCall lstm_174/StatefulPartitionedCall2D
 lstm_175/StatefulPartitionedCall lstm_175/StatefulPartitionedCall2D
 lstm_176/StatefulPartitionedCall lstm_176/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_3047261
file_prefix.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_174_lstm_cell_174_kernel_read_readvariableopF
Bsavev2_lstm_174_lstm_cell_174_recurrent_kernel_read_readvariableop:
6savev2_lstm_174_lstm_cell_174_bias_read_readvariableop<
8savev2_lstm_175_lstm_cell_175_kernel_read_readvariableopF
Bsavev2_lstm_175_lstm_cell_175_recurrent_kernel_read_readvariableop:
6savev2_lstm_175_lstm_cell_175_bias_read_readvariableop<
8savev2_lstm_176_lstm_cell_176_kernel_read_readvariableopF
Bsavev2_lstm_176_lstm_cell_176_recurrent_kernel_read_readvariableop:
6savev2_lstm_176_lstm_cell_176_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_58_kernel_m_read_readvariableop3
/savev2_adam_dense_58_bias_m_read_readvariableopC
?savev2_adam_lstm_174_lstm_cell_174_kernel_m_read_readvariableopM
Isavev2_adam_lstm_174_lstm_cell_174_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_174_lstm_cell_174_bias_m_read_readvariableopC
?savev2_adam_lstm_175_lstm_cell_175_kernel_m_read_readvariableopM
Isavev2_adam_lstm_175_lstm_cell_175_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_175_lstm_cell_175_bias_m_read_readvariableopC
?savev2_adam_lstm_176_lstm_cell_176_kernel_m_read_readvariableopM
Isavev2_adam_lstm_176_lstm_cell_176_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_176_lstm_cell_176_bias_m_read_readvariableop5
1savev2_adam_dense_58_kernel_v_read_readvariableop3
/savev2_adam_dense_58_bias_v_read_readvariableopC
?savev2_adam_lstm_174_lstm_cell_174_kernel_v_read_readvariableopM
Isavev2_adam_lstm_174_lstm_cell_174_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_174_lstm_cell_174_bias_v_read_readvariableopC
?savev2_adam_lstm_175_lstm_cell_175_kernel_v_read_readvariableopM
Isavev2_adam_lstm_175_lstm_cell_175_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_175_lstm_cell_175_bias_v_read_readvariableopC
?savev2_adam_lstm_176_lstm_cell_176_kernel_v_read_readvariableopM
Isavev2_adam_lstm_176_lstm_cell_176_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_176_lstm_cell_176_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_174_lstm_cell_174_kernel_read_readvariableopBsavev2_lstm_174_lstm_cell_174_recurrent_kernel_read_readvariableop6savev2_lstm_174_lstm_cell_174_bias_read_readvariableop8savev2_lstm_175_lstm_cell_175_kernel_read_readvariableopBsavev2_lstm_175_lstm_cell_175_recurrent_kernel_read_readvariableop6savev2_lstm_175_lstm_cell_175_bias_read_readvariableop8savev2_lstm_176_lstm_cell_176_kernel_read_readvariableopBsavev2_lstm_176_lstm_cell_176_recurrent_kernel_read_readvariableop6savev2_lstm_176_lstm_cell_176_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_58_kernel_m_read_readvariableop/savev2_adam_dense_58_bias_m_read_readvariableop?savev2_adam_lstm_174_lstm_cell_174_kernel_m_read_readvariableopIsavev2_adam_lstm_174_lstm_cell_174_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_174_lstm_cell_174_bias_m_read_readvariableop?savev2_adam_lstm_175_lstm_cell_175_kernel_m_read_readvariableopIsavev2_adam_lstm_175_lstm_cell_175_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_175_lstm_cell_175_bias_m_read_readvariableop?savev2_adam_lstm_176_lstm_cell_176_kernel_m_read_readvariableopIsavev2_adam_lstm_176_lstm_cell_176_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_176_lstm_cell_176_bias_m_read_readvariableop1savev2_adam_dense_58_kernel_v_read_readvariableop/savev2_adam_dense_58_bias_v_read_readvariableop?savev2_adam_lstm_174_lstm_cell_174_kernel_v_read_readvariableopIsavev2_adam_lstm_174_lstm_cell_174_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_174_lstm_cell_174_bias_v_read_readvariableop?savev2_adam_lstm_175_lstm_cell_175_kernel_v_read_readvariableopIsavev2_adam_lstm_175_lstm_cell_175_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_175_lstm_cell_175_bias_v_read_readvariableop?savev2_adam_lstm_176_lstm_cell_176_kernel_v_read_readvariableopIsavev2_adam_lstm_176_lstm_cell_176_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_176_lstm_cell_176_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?K
?
E__inference_lstm_175_layer_call_and_return_conditional_losses_3045903
inputs_0?
,lstm_cell_502_matmul_readvariableop_resource:	d?A
.lstm_cell_502_matmul_1_readvariableop_resource:	2?<
-lstm_cell_502_biasadd_readvariableop_resource:	?
identity??$lstm_cell_502/BiasAdd/ReadVariableOp?#lstm_cell_502/MatMul/ReadVariableOp?%lstm_cell_502/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_502/MatMul/ReadVariableOpReadVariableOp,lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_502/MatMulMatMulstrided_slice_2:output:0+lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_502/MatMul_1MatMulzeros:output:0-lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_502/addAddV2lstm_cell_502/MatMul:product:0 lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_502/BiasAddBiasAddlstm_cell_502/add:z:0,lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_502/splitSplit&lstm_cell_502/split/split_dim:output:0lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_502/SigmoidSigmoidlstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_1Sigmoidlstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_502/mulMullstm_cell_502/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_502/ReluRelulstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_1Mullstm_cell_502/Sigmoid:y:0 lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_502/add_1AddV2lstm_cell_502/mul:z:0lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_2Sigmoidlstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_502/Relu_1Relulstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_2Mullstm_cell_502/Sigmoid_2:y:0"lstm_cell_502/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_502_matmul_readvariableop_resource.lstm_cell_502_matmul_1_readvariableop_resource-lstm_cell_502_biasadd_readvariableop_resource*
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
while_body_3045819*
condR
while_cond_3045818*K
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
NoOpNoOp%^lstm_cell_502/BiasAdd/ReadVariableOp$^lstm_cell_502/MatMul/ReadVariableOp&^lstm_cell_502/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_502/BiasAdd/ReadVariableOp$lstm_cell_502/BiasAdd/ReadVariableOp2J
#lstm_cell_502/MatMul/ReadVariableOp#lstm_cell_502/MatMul/ReadVariableOp2N
%lstm_cell_502/MatMul_1/ReadVariableOp%lstm_cell_502/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
#__inference__traced_restore_3047391
file_prefix2
 assignvariableop_dense_58_kernel:
.
 assignvariableop_1_dense_58_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_174_lstm_cell_174_kernel:	?M
:assignvariableop_8_lstm_174_lstm_cell_174_recurrent_kernel:	d?=
.assignvariableop_9_lstm_174_lstm_cell_174_bias:	?D
1assignvariableop_10_lstm_175_lstm_cell_175_kernel:	d?N
;assignvariableop_11_lstm_175_lstm_cell_175_recurrent_kernel:	2?>
/assignvariableop_12_lstm_175_lstm_cell_175_bias:	?C
1assignvariableop_13_lstm_176_lstm_cell_176_kernel:2(M
;assignvariableop_14_lstm_176_lstm_cell_176_recurrent_kernel:
(=
/assignvariableop_15_lstm_176_lstm_cell_176_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_58_kernel_m:
6
(assignvariableop_19_adam_dense_58_bias_m:K
8assignvariableop_20_adam_lstm_174_lstm_cell_174_kernel_m:	?U
Bassignvariableop_21_adam_lstm_174_lstm_cell_174_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_174_lstm_cell_174_bias_m:	?K
8assignvariableop_23_adam_lstm_175_lstm_cell_175_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_175_lstm_cell_175_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_175_lstm_cell_175_bias_m:	?J
8assignvariableop_26_adam_lstm_176_lstm_cell_176_kernel_m:2(T
Bassignvariableop_27_adam_lstm_176_lstm_cell_176_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_176_lstm_cell_176_bias_m:(<
*assignvariableop_29_adam_dense_58_kernel_v:
6
(assignvariableop_30_adam_dense_58_bias_v:K
8assignvariableop_31_adam_lstm_174_lstm_cell_174_kernel_v:	?U
Bassignvariableop_32_adam_lstm_174_lstm_cell_174_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_174_lstm_cell_174_bias_v:	?K
8assignvariableop_34_adam_lstm_175_lstm_cell_175_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_175_lstm_cell_175_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_175_lstm_cell_175_bias_v:	?J
8assignvariableop_37_adam_lstm_176_lstm_cell_176_kernel_v:2(T
Bassignvariableop_38_adam_lstm_176_lstm_cell_176_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_176_lstm_cell_176_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_58_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_58_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_174_lstm_cell_174_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_174_lstm_cell_174_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_174_lstm_cell_174_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_175_lstm_cell_175_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_175_lstm_cell_175_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_175_lstm_cell_175_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_176_lstm_cell_176_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_176_lstm_cell_176_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_176_lstm_cell_176_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_58_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_58_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_174_lstm_cell_174_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_174_lstm_cell_174_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_174_lstm_cell_174_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_175_lstm_cell_175_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_175_lstm_cell_175_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_175_lstm_cell_175_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_176_lstm_cell_176_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_176_lstm_cell_176_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_176_lstm_cell_176_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_58_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_58_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_174_lstm_cell_174_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_174_lstm_cell_174_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_174_lstm_cell_174_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_175_lstm_cell_175_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_175_lstm_cell_175_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_175_lstm_cell_175_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_176_lstm_cell_176_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_176_lstm_cell_176_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_176_lstm_cell_176_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
)sequential_58_lstm_176_while_cond_3041698J
Fsequential_58_lstm_176_while_sequential_58_lstm_176_while_loop_counterP
Lsequential_58_lstm_176_while_sequential_58_lstm_176_while_maximum_iterations,
(sequential_58_lstm_176_while_placeholder.
*sequential_58_lstm_176_while_placeholder_1.
*sequential_58_lstm_176_while_placeholder_2.
*sequential_58_lstm_176_while_placeholder_3L
Hsequential_58_lstm_176_while_less_sequential_58_lstm_176_strided_slice_1c
_sequential_58_lstm_176_while_sequential_58_lstm_176_while_cond_3041698___redundant_placeholder0c
_sequential_58_lstm_176_while_sequential_58_lstm_176_while_cond_3041698___redundant_placeholder1c
_sequential_58_lstm_176_while_sequential_58_lstm_176_while_cond_3041698___redundant_placeholder2c
_sequential_58_lstm_176_while_sequential_58_lstm_176_while_cond_3041698___redundant_placeholder3)
%sequential_58_lstm_176_while_identity
?
!sequential_58/lstm_176/while/LessLess(sequential_58_lstm_176_while_placeholderHsequential_58_lstm_176_while_less_sequential_58_lstm_176_strided_slice_1*
T0*
_output_shapes
: y
%sequential_58/lstm_176/while/IdentityIdentity%sequential_58/lstm_176/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_58_lstm_176_while_identity.sequential_58/lstm_176/while/Identity:output:0*(
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3042830

inputs'
lstm_cell_503_3042748:2('
lstm_cell_503_3042750:
(#
lstm_cell_503_3042752:(
identity??%lstm_cell_503/StatefulPartitionedCall?while;
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
%lstm_cell_503/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_503_3042748lstm_cell_503_3042750lstm_cell_503_3042752*
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042702n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_503_3042748lstm_cell_503_3042750lstm_cell_503_3042752*
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
while_body_3042761*
condR
while_cond_3042760*K
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
NoOpNoOp&^lstm_cell_503/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_503/StatefulPartitionedCall%lstm_cell_503/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_174_while_body_3044162.
*lstm_174_while_lstm_174_while_loop_counter4
0lstm_174_while_lstm_174_while_maximum_iterations
lstm_174_while_placeholder 
lstm_174_while_placeholder_1 
lstm_174_while_placeholder_2 
lstm_174_while_placeholder_3-
)lstm_174_while_lstm_174_strided_slice_1_0i
elstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0:	?R
?lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?M
>lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
lstm_174_while_identity
lstm_174_while_identity_1
lstm_174_while_identity_2
lstm_174_while_identity_3
lstm_174_while_identity_4
lstm_174_while_identity_5+
'lstm_174_while_lstm_174_strided_slice_1g
clstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensorN
;lstm_174_while_lstm_cell_501_matmul_readvariableop_resource:	?P
=lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource:	d?K
<lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource:	???3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp?2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp?4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp?
@lstm_174/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_174/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensor_0lstm_174_while_placeholderIlstm_174/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp=lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_174/while/lstm_cell_501/MatMulMatMul9lstm_174/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp?lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_174/while/lstm_cell_501/MatMul_1MatMullstm_174_while_placeholder_2<lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_174/while/lstm_cell_501/addAddV2-lstm_174/while/lstm_cell_501/MatMul:product:0/lstm_174/while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp>lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_174/while/lstm_cell_501/BiasAddBiasAdd$lstm_174/while/lstm_cell_501/add:z:0;lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_174/while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_174/while/lstm_cell_501/splitSplit5lstm_174/while/lstm_cell_501/split/split_dim:output:0-lstm_174/while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_174/while/lstm_cell_501/SigmoidSigmoid+lstm_174/while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_174/while/lstm_cell_501/Sigmoid_1Sigmoid+lstm_174/while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_174/while/lstm_cell_501/mulMul*lstm_174/while/lstm_cell_501/Sigmoid_1:y:0lstm_174_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_174/while/lstm_cell_501/ReluRelu+lstm_174/while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_174/while/lstm_cell_501/mul_1Mul(lstm_174/while/lstm_cell_501/Sigmoid:y:0/lstm_174/while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_174/while/lstm_cell_501/add_1AddV2$lstm_174/while/lstm_cell_501/mul:z:0&lstm_174/while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_174/while/lstm_cell_501/Sigmoid_2Sigmoid+lstm_174/while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_174/while/lstm_cell_501/Relu_1Relu&lstm_174/while/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_174/while/lstm_cell_501/mul_2Mul*lstm_174/while/lstm_cell_501/Sigmoid_2:y:01lstm_174/while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_174/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_174_while_placeholder_1lstm_174_while_placeholder&lstm_174/while/lstm_cell_501/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_174/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_174/while/addAddV2lstm_174_while_placeholderlstm_174/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_174/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_174/while/add_1AddV2*lstm_174_while_lstm_174_while_loop_counterlstm_174/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_174/while/IdentityIdentitylstm_174/while/add_1:z:0^lstm_174/while/NoOp*
T0*
_output_shapes
: ?
lstm_174/while/Identity_1Identity0lstm_174_while_lstm_174_while_maximum_iterations^lstm_174/while/NoOp*
T0*
_output_shapes
: t
lstm_174/while/Identity_2Identitylstm_174/while/add:z:0^lstm_174/while/NoOp*
T0*
_output_shapes
: ?
lstm_174/while/Identity_3IdentityClstm_174/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_174/while/NoOp*
T0*
_output_shapes
: ?
lstm_174/while/Identity_4Identity&lstm_174/while/lstm_cell_501/mul_2:z:0^lstm_174/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_174/while/Identity_5Identity&lstm_174/while/lstm_cell_501/add_1:z:0^lstm_174/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_174/while/NoOpNoOp4^lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp3^lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp5^lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_174_while_identity lstm_174/while/Identity:output:0"?
lstm_174_while_identity_1"lstm_174/while/Identity_1:output:0"?
lstm_174_while_identity_2"lstm_174/while/Identity_2:output:0"?
lstm_174_while_identity_3"lstm_174/while/Identity_3:output:0"?
lstm_174_while_identity_4"lstm_174/while/Identity_4:output:0"?
lstm_174_while_identity_5"lstm_174/while/Identity_5:output:0"T
'lstm_174_while_lstm_174_strided_slice_1)lstm_174_while_lstm_174_strided_slice_1_0"~
<lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource>lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0"?
=lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource?lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0"|
;lstm_174_while_lstm_cell_501_matmul_readvariableop_resource=lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0"?
clstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensorelstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp2h
2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp2l
4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3043749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3043749___redundant_placeholder05
1while_while_cond_3043749___redundant_placeholder15
1while_while_cond_3043749___redundant_placeholder25
1while_while_cond_3043749___redundant_placeholder3
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
while_body_3043750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_501_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_501_matmul_readvariableop_resource:	?G
4while_lstm_cell_501_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_501_biasadd_readvariableop_resource:	???*while/lstm_cell_501/BiasAdd/ReadVariableOp?)while/lstm_cell_501/MatMul/ReadVariableOp?+while/lstm_cell_501/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_501/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_501/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_501/addAddV2$while/lstm_cell_501/MatMul:product:0&while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_501/BiasAddBiasAddwhile/lstm_cell_501/add:z:02while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_501/splitSplit,while/lstm_cell_501/split/split_dim:output:0$while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_501/SigmoidSigmoid"while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_1Sigmoid"while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mulMul!while/lstm_cell_501/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_501/ReluRelu"while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_1Mulwhile/lstm_cell_501/Sigmoid:y:0&while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/add_1AddV2while/lstm_cell_501/mul:z:0while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_501/Sigmoid_2Sigmoid"while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_501/Relu_1Reluwhile/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_501/mul_2Mul!while/lstm_cell_501/Sigmoid_2:y:0(while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_501/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_501/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_501/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_501/BiasAdd/ReadVariableOp*^while/lstm_cell_501/MatMul/ReadVariableOp,^while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_501_biasadd_readvariableop_resource5while_lstm_cell_501_biasadd_readvariableop_resource_0"n
4while_lstm_cell_501_matmul_1_readvariableop_resource6while_lstm_cell_501_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_501_matmul_readvariableop_resource4while_lstm_cell_501_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_501/BiasAdd/ReadVariableOp*while/lstm_cell_501/BiasAdd/ReadVariableOp2V
)while/lstm_cell_501/MatMul/ReadVariableOp)while/lstm_cell_501/MatMul/ReadVariableOp2Z
+while/lstm_cell_501/MatMul_1/ReadVariableOp+while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042702

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
?#
?
while_body_3042061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_501_3042085_0:	?0
while_lstm_cell_501_3042087_0:	d?,
while_lstm_cell_501_3042089_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_501_3042085:	?.
while_lstm_cell_501_3042087:	d?*
while_lstm_cell_501_3042089:	???+while/lstm_cell_501/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_501/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_501_3042085_0while_lstm_cell_501_3042087_0while_lstm_cell_501_3042089_0*
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3042002?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_501/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_501/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_501/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_501/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_501_3042085while_lstm_cell_501_3042085_0"<
while_lstm_cell_501_3042087while_lstm_cell_501_3042087_0"<
while_lstm_cell_501_3042089while_lstm_cell_501_3042089_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_501/StatefulPartitionedCall+while/lstm_cell_501/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3042002

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
while_body_3045676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_502_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_502_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_502_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_502_matmul_readvariableop_resource:	d?G
4while_lstm_cell_502_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_502_biasadd_readvariableop_resource:	???*while/lstm_cell_502/BiasAdd/ReadVariableOp?)while/lstm_cell_502/MatMul/ReadVariableOp?+while/lstm_cell_502/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_502_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_502/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_502_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_502/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_502/addAddV2$while/lstm_cell_502/MatMul:product:0&while/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_502_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_502/BiasAddBiasAddwhile/lstm_cell_502/add:z:02while/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_502/splitSplit,while/lstm_cell_502/split/split_dim:output:0$while/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_502/SigmoidSigmoid"while/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_1Sigmoid"while/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mulMul!while/lstm_cell_502/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_502/ReluRelu"while/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_1Mulwhile/lstm_cell_502/Sigmoid:y:0&while/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/add_1AddV2while/lstm_cell_502/mul:z:0while/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_502/Sigmoid_2Sigmoid"while/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_502/Relu_1Reluwhile/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_502/mul_2Mul!while/lstm_cell_502/Sigmoid_2:y:0(while/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_502/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_502/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_502/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_502/BiasAdd/ReadVariableOp*^while/lstm_cell_502/MatMul/ReadVariableOp,^while/lstm_cell_502/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_502_biasadd_readvariableop_resource5while_lstm_cell_502_biasadd_readvariableop_resource_0"n
4while_lstm_cell_502_matmul_1_readvariableop_resource6while_lstm_cell_502_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_502_matmul_readvariableop_resource4while_lstm_cell_502_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_502/BiasAdd/ReadVariableOp*while/lstm_cell_502/BiasAdd/ReadVariableOp2V
)while/lstm_cell_502/MatMul/ReadVariableOp)while/lstm_cell_502/MatMul/ReadVariableOp2Z
+while/lstm_cell_502/MatMul_1/ReadVariableOp+while/lstm_cell_502/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_176_while_body_3044440.
*lstm_176_while_lstm_176_while_loop_counter4
0lstm_176_while_lstm_176_while_maximum_iterations
lstm_176_while_placeholder 
lstm_176_while_placeholder_1 
lstm_176_while_placeholder_2 
lstm_176_while_placeholder_3-
)lstm_176_while_lstm_176_strided_slice_1_0i
elstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0:2(Q
?lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(L
>lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0:(
lstm_176_while_identity
lstm_176_while_identity_1
lstm_176_while_identity_2
lstm_176_while_identity_3
lstm_176_while_identity_4
lstm_176_while_identity_5+
'lstm_176_while_lstm_176_strided_slice_1g
clstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensorM
;lstm_176_while_lstm_cell_503_matmul_readvariableop_resource:2(O
=lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource:
(J
<lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource:(??3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp?2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp?4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp?
@lstm_176/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_176/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensor_0lstm_176_while_placeholderIlstm_176/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp=lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_176/while/lstm_cell_503/MatMulMatMul9lstm_176/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp?lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_176/while/lstm_cell_503/MatMul_1MatMullstm_176_while_placeholder_2<lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_176/while/lstm_cell_503/addAddV2-lstm_176/while/lstm_cell_503/MatMul:product:0/lstm_176/while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp>lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_176/while/lstm_cell_503/BiasAddBiasAdd$lstm_176/while/lstm_cell_503/add:z:0;lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_176/while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_176/while/lstm_cell_503/splitSplit5lstm_176/while/lstm_cell_503/split/split_dim:output:0-lstm_176/while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_176/while/lstm_cell_503/SigmoidSigmoid+lstm_176/while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_176/while/lstm_cell_503/Sigmoid_1Sigmoid+lstm_176/while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_176/while/lstm_cell_503/mulMul*lstm_176/while/lstm_cell_503/Sigmoid_1:y:0lstm_176_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_176/while/lstm_cell_503/ReluRelu+lstm_176/while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_176/while/lstm_cell_503/mul_1Mul(lstm_176/while/lstm_cell_503/Sigmoid:y:0/lstm_176/while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_176/while/lstm_cell_503/add_1AddV2$lstm_176/while/lstm_cell_503/mul:z:0&lstm_176/while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_176/while/lstm_cell_503/Sigmoid_2Sigmoid+lstm_176/while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_176/while/lstm_cell_503/Relu_1Relu&lstm_176/while/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_176/while/lstm_cell_503/mul_2Mul*lstm_176/while/lstm_cell_503/Sigmoid_2:y:01lstm_176/while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_176/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_176_while_placeholder_1lstm_176_while_placeholder&lstm_176/while/lstm_cell_503/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_176/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_176/while/addAddV2lstm_176_while_placeholderlstm_176/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_176/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_176/while/add_1AddV2*lstm_176_while_lstm_176_while_loop_counterlstm_176/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_176/while/IdentityIdentitylstm_176/while/add_1:z:0^lstm_176/while/NoOp*
T0*
_output_shapes
: ?
lstm_176/while/Identity_1Identity0lstm_176_while_lstm_176_while_maximum_iterations^lstm_176/while/NoOp*
T0*
_output_shapes
: t
lstm_176/while/Identity_2Identitylstm_176/while/add:z:0^lstm_176/while/NoOp*
T0*
_output_shapes
: ?
lstm_176/while/Identity_3IdentityClstm_176/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_176/while/NoOp*
T0*
_output_shapes
: ?
lstm_176/while/Identity_4Identity&lstm_176/while/lstm_cell_503/mul_2:z:0^lstm_176/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_176/while/Identity_5Identity&lstm_176/while/lstm_cell_503/add_1:z:0^lstm_176/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_176/while/NoOpNoOp4^lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp3^lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp5^lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_176_while_identity lstm_176/while/Identity:output:0"?
lstm_176_while_identity_1"lstm_176/while/Identity_1:output:0"?
lstm_176_while_identity_2"lstm_176/while/Identity_2:output:0"?
lstm_176_while_identity_3"lstm_176/while/Identity_3:output:0"?
lstm_176_while_identity_4"lstm_176/while/Identity_4:output:0"?
lstm_176_while_identity_5"lstm_176/while/Identity_5:output:0"T
'lstm_176_while_lstm_176_strided_slice_1)lstm_176_while_lstm_176_strided_slice_1_0"~
<lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource>lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0"?
=lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource?lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0"|
;lstm_176_while_lstm_cell_503_matmul_readvariableop_resource=lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0"?
clstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensorelstm_176_while_tensorarrayv2read_tensorlistgetitem_lstm_176_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp3lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp2h
2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp2lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp2l
4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp4lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_175_layer_call_fn_3045617

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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043669s
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
??
?
"__inference__wrapped_model_3041789
lstm_174_inputV
Csequential_58_lstm_174_lstm_cell_501_matmul_readvariableop_resource:	?X
Esequential_58_lstm_174_lstm_cell_501_matmul_1_readvariableop_resource:	d?S
Dsequential_58_lstm_174_lstm_cell_501_biasadd_readvariableop_resource:	?V
Csequential_58_lstm_175_lstm_cell_502_matmul_readvariableop_resource:	d?X
Esequential_58_lstm_175_lstm_cell_502_matmul_1_readvariableop_resource:	2?S
Dsequential_58_lstm_175_lstm_cell_502_biasadd_readvariableop_resource:	?U
Csequential_58_lstm_176_lstm_cell_503_matmul_readvariableop_resource:2(W
Esequential_58_lstm_176_lstm_cell_503_matmul_1_readvariableop_resource:
(R
Dsequential_58_lstm_176_lstm_cell_503_biasadd_readvariableop_resource:(G
5sequential_58_dense_58_matmul_readvariableop_resource:
D
6sequential_58_dense_58_biasadd_readvariableop_resource:
identity??-sequential_58/dense_58/BiasAdd/ReadVariableOp?,sequential_58/dense_58/MatMul/ReadVariableOp?;sequential_58/lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp?:sequential_58/lstm_174/lstm_cell_501/MatMul/ReadVariableOp?<sequential_58/lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp?sequential_58/lstm_174/while?;sequential_58/lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp?:sequential_58/lstm_175/lstm_cell_502/MatMul/ReadVariableOp?<sequential_58/lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp?sequential_58/lstm_175/while?;sequential_58/lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp?:sequential_58/lstm_176/lstm_cell_503/MatMul/ReadVariableOp?<sequential_58/lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp?sequential_58/lstm_176/whileZ
sequential_58/lstm_174/ShapeShapelstm_174_input*
T0*
_output_shapes
:t
*sequential_58/lstm_174/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_58/lstm_174/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_58/lstm_174/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_58/lstm_174/strided_sliceStridedSlice%sequential_58/lstm_174/Shape:output:03sequential_58/lstm_174/strided_slice/stack:output:05sequential_58/lstm_174/strided_slice/stack_1:output:05sequential_58/lstm_174/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_58/lstm_174/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_58/lstm_174/zeros/packedPack-sequential_58/lstm_174/strided_slice:output:0.sequential_58/lstm_174/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_58/lstm_174/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_58/lstm_174/zerosFill,sequential_58/lstm_174/zeros/packed:output:0+sequential_58/lstm_174/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_58/lstm_174/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_58/lstm_174/zeros_1/packedPack-sequential_58/lstm_174/strided_slice:output:00sequential_58/lstm_174/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_58/lstm_174/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_58/lstm_174/zeros_1Fill.sequential_58/lstm_174/zeros_1/packed:output:0-sequential_58/lstm_174/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_58/lstm_174/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_58/lstm_174/transpose	Transposelstm_174_input.sequential_58/lstm_174/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_58/lstm_174/Shape_1Shape$sequential_58/lstm_174/transpose:y:0*
T0*
_output_shapes
:v
,sequential_58/lstm_174/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_174/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_58/lstm_174/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_174/strided_slice_1StridedSlice'sequential_58/lstm_174/Shape_1:output:05sequential_58/lstm_174/strided_slice_1/stack:output:07sequential_58/lstm_174/strided_slice_1/stack_1:output:07sequential_58/lstm_174/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_58/lstm_174/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_58/lstm_174/TensorArrayV2TensorListReserve;sequential_58/lstm_174/TensorArrayV2/element_shape:output:0/sequential_58/lstm_174/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_58/lstm_174/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_58/lstm_174/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_58/lstm_174/transpose:y:0Usequential_58/lstm_174/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_58/lstm_174/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_174/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_58/lstm_174/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_174/strided_slice_2StridedSlice$sequential_58/lstm_174/transpose:y:05sequential_58/lstm_174/strided_slice_2/stack:output:07sequential_58/lstm_174/strided_slice_2/stack_1:output:07sequential_58/lstm_174/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_58/lstm_174/lstm_cell_501/MatMul/ReadVariableOpReadVariableOpCsequential_58_lstm_174_lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_58/lstm_174/lstm_cell_501/MatMulMatMul/sequential_58/lstm_174/strided_slice_2:output:0Bsequential_58/lstm_174/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_58/lstm_174/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOpEsequential_58_lstm_174_lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_58/lstm_174/lstm_cell_501/MatMul_1MatMul%sequential_58/lstm_174/zeros:output:0Dsequential_58/lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_58/lstm_174/lstm_cell_501/addAddV25sequential_58/lstm_174/lstm_cell_501/MatMul:product:07sequential_58/lstm_174/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_58/lstm_174/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOpDsequential_58_lstm_174_lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_58/lstm_174/lstm_cell_501/BiasAddBiasAdd,sequential_58/lstm_174/lstm_cell_501/add:z:0Csequential_58/lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_58/lstm_174/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_58/lstm_174/lstm_cell_501/splitSplit=sequential_58/lstm_174/lstm_cell_501/split/split_dim:output:05sequential_58/lstm_174/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_58/lstm_174/lstm_cell_501/SigmoidSigmoid3sequential_58/lstm_174/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_58/lstm_174/lstm_cell_501/Sigmoid_1Sigmoid3sequential_58/lstm_174/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_58/lstm_174/lstm_cell_501/mulMul2sequential_58/lstm_174/lstm_cell_501/Sigmoid_1:y:0'sequential_58/lstm_174/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_58/lstm_174/lstm_cell_501/ReluRelu3sequential_58/lstm_174/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_58/lstm_174/lstm_cell_501/mul_1Mul0sequential_58/lstm_174/lstm_cell_501/Sigmoid:y:07sequential_58/lstm_174/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_58/lstm_174/lstm_cell_501/add_1AddV2,sequential_58/lstm_174/lstm_cell_501/mul:z:0.sequential_58/lstm_174/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_58/lstm_174/lstm_cell_501/Sigmoid_2Sigmoid3sequential_58/lstm_174/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_58/lstm_174/lstm_cell_501/Relu_1Relu.sequential_58/lstm_174/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_58/lstm_174/lstm_cell_501/mul_2Mul2sequential_58/lstm_174/lstm_cell_501/Sigmoid_2:y:09sequential_58/lstm_174/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_58/lstm_174/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_58/lstm_174/TensorArrayV2_1TensorListReserve=sequential_58/lstm_174/TensorArrayV2_1/element_shape:output:0/sequential_58/lstm_174/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_58/lstm_174/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_58/lstm_174/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_58/lstm_174/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_58/lstm_174/whileWhile2sequential_58/lstm_174/while/loop_counter:output:08sequential_58/lstm_174/while/maximum_iterations:output:0$sequential_58/lstm_174/time:output:0/sequential_58/lstm_174/TensorArrayV2_1:handle:0%sequential_58/lstm_174/zeros:output:0'sequential_58/lstm_174/zeros_1:output:0/sequential_58/lstm_174/strided_slice_1:output:0Nsequential_58/lstm_174/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_58_lstm_174_lstm_cell_501_matmul_readvariableop_resourceEsequential_58_lstm_174_lstm_cell_501_matmul_1_readvariableop_resourceDsequential_58_lstm_174_lstm_cell_501_biasadd_readvariableop_resource*
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
)sequential_58_lstm_174_while_body_3041421*5
cond-R+
)sequential_58_lstm_174_while_cond_3041420*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_58/lstm_174/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_58/lstm_174/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_58/lstm_174/while:output:3Psequential_58/lstm_174/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_58/lstm_174/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_58/lstm_174/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_174/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_174/strided_slice_3StridedSliceBsequential_58/lstm_174/TensorArrayV2Stack/TensorListStack:tensor:05sequential_58/lstm_174/strided_slice_3/stack:output:07sequential_58/lstm_174/strided_slice_3/stack_1:output:07sequential_58/lstm_174/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_58/lstm_174/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_58/lstm_174/transpose_1	TransposeBsequential_58/lstm_174/TensorArrayV2Stack/TensorListStack:tensor:00sequential_58/lstm_174/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_58/lstm_174/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_58/lstm_175/ShapeShape&sequential_58/lstm_174/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_58/lstm_175/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_58/lstm_175/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_58/lstm_175/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_58/lstm_175/strided_sliceStridedSlice%sequential_58/lstm_175/Shape:output:03sequential_58/lstm_175/strided_slice/stack:output:05sequential_58/lstm_175/strided_slice/stack_1:output:05sequential_58/lstm_175/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_58/lstm_175/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_58/lstm_175/zeros/packedPack-sequential_58/lstm_175/strided_slice:output:0.sequential_58/lstm_175/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_58/lstm_175/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_58/lstm_175/zerosFill,sequential_58/lstm_175/zeros/packed:output:0+sequential_58/lstm_175/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_58/lstm_175/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_58/lstm_175/zeros_1/packedPack-sequential_58/lstm_175/strided_slice:output:00sequential_58/lstm_175/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_58/lstm_175/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_58/lstm_175/zeros_1Fill.sequential_58/lstm_175/zeros_1/packed:output:0-sequential_58/lstm_175/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_58/lstm_175/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_58/lstm_175/transpose	Transpose&sequential_58/lstm_174/transpose_1:y:0.sequential_58/lstm_175/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_58/lstm_175/Shape_1Shape$sequential_58/lstm_175/transpose:y:0*
T0*
_output_shapes
:v
,sequential_58/lstm_175/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_175/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_58/lstm_175/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_175/strided_slice_1StridedSlice'sequential_58/lstm_175/Shape_1:output:05sequential_58/lstm_175/strided_slice_1/stack:output:07sequential_58/lstm_175/strided_slice_1/stack_1:output:07sequential_58/lstm_175/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_58/lstm_175/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_58/lstm_175/TensorArrayV2TensorListReserve;sequential_58/lstm_175/TensorArrayV2/element_shape:output:0/sequential_58/lstm_175/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_58/lstm_175/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_58/lstm_175/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_58/lstm_175/transpose:y:0Usequential_58/lstm_175/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_58/lstm_175/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_175/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_58/lstm_175/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_175/strided_slice_2StridedSlice$sequential_58/lstm_175/transpose:y:05sequential_58/lstm_175/strided_slice_2/stack:output:07sequential_58/lstm_175/strided_slice_2/stack_1:output:07sequential_58/lstm_175/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_58/lstm_175/lstm_cell_502/MatMul/ReadVariableOpReadVariableOpCsequential_58_lstm_175_lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_58/lstm_175/lstm_cell_502/MatMulMatMul/sequential_58/lstm_175/strided_slice_2:output:0Bsequential_58/lstm_175/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_58/lstm_175/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOpEsequential_58_lstm_175_lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_58/lstm_175/lstm_cell_502/MatMul_1MatMul%sequential_58/lstm_175/zeros:output:0Dsequential_58/lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_58/lstm_175/lstm_cell_502/addAddV25sequential_58/lstm_175/lstm_cell_502/MatMul:product:07sequential_58/lstm_175/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_58/lstm_175/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOpDsequential_58_lstm_175_lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_58/lstm_175/lstm_cell_502/BiasAddBiasAdd,sequential_58/lstm_175/lstm_cell_502/add:z:0Csequential_58/lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_58/lstm_175/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_58/lstm_175/lstm_cell_502/splitSplit=sequential_58/lstm_175/lstm_cell_502/split/split_dim:output:05sequential_58/lstm_175/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_58/lstm_175/lstm_cell_502/SigmoidSigmoid3sequential_58/lstm_175/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_58/lstm_175/lstm_cell_502/Sigmoid_1Sigmoid3sequential_58/lstm_175/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_58/lstm_175/lstm_cell_502/mulMul2sequential_58/lstm_175/lstm_cell_502/Sigmoid_1:y:0'sequential_58/lstm_175/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_58/lstm_175/lstm_cell_502/ReluRelu3sequential_58/lstm_175/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_58/lstm_175/lstm_cell_502/mul_1Mul0sequential_58/lstm_175/lstm_cell_502/Sigmoid:y:07sequential_58/lstm_175/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_58/lstm_175/lstm_cell_502/add_1AddV2,sequential_58/lstm_175/lstm_cell_502/mul:z:0.sequential_58/lstm_175/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_58/lstm_175/lstm_cell_502/Sigmoid_2Sigmoid3sequential_58/lstm_175/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_58/lstm_175/lstm_cell_502/Relu_1Relu.sequential_58/lstm_175/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_58/lstm_175/lstm_cell_502/mul_2Mul2sequential_58/lstm_175/lstm_cell_502/Sigmoid_2:y:09sequential_58/lstm_175/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_58/lstm_175/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_58/lstm_175/TensorArrayV2_1TensorListReserve=sequential_58/lstm_175/TensorArrayV2_1/element_shape:output:0/sequential_58/lstm_175/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_58/lstm_175/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_58/lstm_175/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_58/lstm_175/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_58/lstm_175/whileWhile2sequential_58/lstm_175/while/loop_counter:output:08sequential_58/lstm_175/while/maximum_iterations:output:0$sequential_58/lstm_175/time:output:0/sequential_58/lstm_175/TensorArrayV2_1:handle:0%sequential_58/lstm_175/zeros:output:0'sequential_58/lstm_175/zeros_1:output:0/sequential_58/lstm_175/strided_slice_1:output:0Nsequential_58/lstm_175/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_58_lstm_175_lstm_cell_502_matmul_readvariableop_resourceEsequential_58_lstm_175_lstm_cell_502_matmul_1_readvariableop_resourceDsequential_58_lstm_175_lstm_cell_502_biasadd_readvariableop_resource*
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
)sequential_58_lstm_175_while_body_3041560*5
cond-R+
)sequential_58_lstm_175_while_cond_3041559*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_58/lstm_175/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_58/lstm_175/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_58/lstm_175/while:output:3Psequential_58/lstm_175/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_58/lstm_175/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_58/lstm_175/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_175/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_175/strided_slice_3StridedSliceBsequential_58/lstm_175/TensorArrayV2Stack/TensorListStack:tensor:05sequential_58/lstm_175/strided_slice_3/stack:output:07sequential_58/lstm_175/strided_slice_3/stack_1:output:07sequential_58/lstm_175/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_58/lstm_175/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_58/lstm_175/transpose_1	TransposeBsequential_58/lstm_175/TensorArrayV2Stack/TensorListStack:tensor:00sequential_58/lstm_175/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_58/lstm_175/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_58/lstm_176/ShapeShape&sequential_58/lstm_175/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_58/lstm_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_58/lstm_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_58/lstm_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_58/lstm_176/strided_sliceStridedSlice%sequential_58/lstm_176/Shape:output:03sequential_58/lstm_176/strided_slice/stack:output:05sequential_58/lstm_176/strided_slice/stack_1:output:05sequential_58/lstm_176/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_58/lstm_176/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_58/lstm_176/zeros/packedPack-sequential_58/lstm_176/strided_slice:output:0.sequential_58/lstm_176/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_58/lstm_176/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_58/lstm_176/zerosFill,sequential_58/lstm_176/zeros/packed:output:0+sequential_58/lstm_176/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_58/lstm_176/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_58/lstm_176/zeros_1/packedPack-sequential_58/lstm_176/strided_slice:output:00sequential_58/lstm_176/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_58/lstm_176/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_58/lstm_176/zeros_1Fill.sequential_58/lstm_176/zeros_1/packed:output:0-sequential_58/lstm_176/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_58/lstm_176/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_58/lstm_176/transpose	Transpose&sequential_58/lstm_175/transpose_1:y:0.sequential_58/lstm_176/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_58/lstm_176/Shape_1Shape$sequential_58/lstm_176/transpose:y:0*
T0*
_output_shapes
:v
,sequential_58/lstm_176/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_176/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_58/lstm_176/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_176/strided_slice_1StridedSlice'sequential_58/lstm_176/Shape_1:output:05sequential_58/lstm_176/strided_slice_1/stack:output:07sequential_58/lstm_176/strided_slice_1/stack_1:output:07sequential_58/lstm_176/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_58/lstm_176/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_58/lstm_176/TensorArrayV2TensorListReserve;sequential_58/lstm_176/TensorArrayV2/element_shape:output:0/sequential_58/lstm_176/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_58/lstm_176/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_58/lstm_176/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_58/lstm_176/transpose:y:0Usequential_58/lstm_176/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_58/lstm_176/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_176/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_58/lstm_176/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_176/strided_slice_2StridedSlice$sequential_58/lstm_176/transpose:y:05sequential_58/lstm_176/strided_slice_2/stack:output:07sequential_58/lstm_176/strided_slice_2/stack_1:output:07sequential_58/lstm_176/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_58/lstm_176/lstm_cell_503/MatMul/ReadVariableOpReadVariableOpCsequential_58_lstm_176_lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_58/lstm_176/lstm_cell_503/MatMulMatMul/sequential_58/lstm_176/strided_slice_2:output:0Bsequential_58/lstm_176/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_58/lstm_176/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOpEsequential_58_lstm_176_lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_58/lstm_176/lstm_cell_503/MatMul_1MatMul%sequential_58/lstm_176/zeros:output:0Dsequential_58/lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_58/lstm_176/lstm_cell_503/addAddV25sequential_58/lstm_176/lstm_cell_503/MatMul:product:07sequential_58/lstm_176/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_58/lstm_176/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOpDsequential_58_lstm_176_lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_58/lstm_176/lstm_cell_503/BiasAddBiasAdd,sequential_58/lstm_176/lstm_cell_503/add:z:0Csequential_58/lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_58/lstm_176/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_58/lstm_176/lstm_cell_503/splitSplit=sequential_58/lstm_176/lstm_cell_503/split/split_dim:output:05sequential_58/lstm_176/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_58/lstm_176/lstm_cell_503/SigmoidSigmoid3sequential_58/lstm_176/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_58/lstm_176/lstm_cell_503/Sigmoid_1Sigmoid3sequential_58/lstm_176/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_58/lstm_176/lstm_cell_503/mulMul2sequential_58/lstm_176/lstm_cell_503/Sigmoid_1:y:0'sequential_58/lstm_176/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_58/lstm_176/lstm_cell_503/ReluRelu3sequential_58/lstm_176/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_58/lstm_176/lstm_cell_503/mul_1Mul0sequential_58/lstm_176/lstm_cell_503/Sigmoid:y:07sequential_58/lstm_176/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_58/lstm_176/lstm_cell_503/add_1AddV2,sequential_58/lstm_176/lstm_cell_503/mul:z:0.sequential_58/lstm_176/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_58/lstm_176/lstm_cell_503/Sigmoid_2Sigmoid3sequential_58/lstm_176/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_58/lstm_176/lstm_cell_503/Relu_1Relu.sequential_58/lstm_176/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_58/lstm_176/lstm_cell_503/mul_2Mul2sequential_58/lstm_176/lstm_cell_503/Sigmoid_2:y:09sequential_58/lstm_176/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_58/lstm_176/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_58/lstm_176/TensorArrayV2_1TensorListReserve=sequential_58/lstm_176/TensorArrayV2_1/element_shape:output:0/sequential_58/lstm_176/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_58/lstm_176/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_58/lstm_176/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_58/lstm_176/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_58/lstm_176/whileWhile2sequential_58/lstm_176/while/loop_counter:output:08sequential_58/lstm_176/while/maximum_iterations:output:0$sequential_58/lstm_176/time:output:0/sequential_58/lstm_176/TensorArrayV2_1:handle:0%sequential_58/lstm_176/zeros:output:0'sequential_58/lstm_176/zeros_1:output:0/sequential_58/lstm_176/strided_slice_1:output:0Nsequential_58/lstm_176/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_58_lstm_176_lstm_cell_503_matmul_readvariableop_resourceEsequential_58_lstm_176_lstm_cell_503_matmul_1_readvariableop_resourceDsequential_58_lstm_176_lstm_cell_503_biasadd_readvariableop_resource*
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
)sequential_58_lstm_176_while_body_3041699*5
cond-R+
)sequential_58_lstm_176_while_cond_3041698*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_58/lstm_176/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_58/lstm_176/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_58/lstm_176/while:output:3Psequential_58/lstm_176/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_58/lstm_176/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_58/lstm_176/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_58/lstm_176/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_58/lstm_176/strided_slice_3StridedSliceBsequential_58/lstm_176/TensorArrayV2Stack/TensorListStack:tensor:05sequential_58/lstm_176/strided_slice_3/stack:output:07sequential_58/lstm_176/strided_slice_3/stack_1:output:07sequential_58/lstm_176/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_58/lstm_176/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_58/lstm_176/transpose_1	TransposeBsequential_58/lstm_176/TensorArrayV2Stack/TensorListStack:tensor:00sequential_58/lstm_176/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_58/lstm_176/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_58/dense_58/MatMul/ReadVariableOpReadVariableOp5sequential_58_dense_58_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_58/dense_58/MatMulMatMul/sequential_58/lstm_176/strided_slice_3:output:04sequential_58/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_58/dense_58/BiasAdd/ReadVariableOpReadVariableOp6sequential_58_dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_58/dense_58/BiasAddBiasAdd'sequential_58/dense_58/MatMul:product:05sequential_58/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_58/dense_58/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_58/dense_58/BiasAdd/ReadVariableOp-^sequential_58/dense_58/MatMul/ReadVariableOp<^sequential_58/lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp;^sequential_58/lstm_174/lstm_cell_501/MatMul/ReadVariableOp=^sequential_58/lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp^sequential_58/lstm_174/while<^sequential_58/lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp;^sequential_58/lstm_175/lstm_cell_502/MatMul/ReadVariableOp=^sequential_58/lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp^sequential_58/lstm_175/while<^sequential_58/lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp;^sequential_58/lstm_176/lstm_cell_503/MatMul/ReadVariableOp=^sequential_58/lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp^sequential_58/lstm_176/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_58/dense_58/BiasAdd/ReadVariableOp-sequential_58/dense_58/BiasAdd/ReadVariableOp2\
,sequential_58/dense_58/MatMul/ReadVariableOp,sequential_58/dense_58/MatMul/ReadVariableOp2z
;sequential_58/lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp;sequential_58/lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp2x
:sequential_58/lstm_174/lstm_cell_501/MatMul/ReadVariableOp:sequential_58/lstm_174/lstm_cell_501/MatMul/ReadVariableOp2|
<sequential_58/lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp<sequential_58/lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp2<
sequential_58/lstm_174/whilesequential_58/lstm_174/while2z
;sequential_58/lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp;sequential_58/lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp2x
:sequential_58/lstm_175/lstm_cell_502/MatMul/ReadVariableOp:sequential_58/lstm_175/lstm_cell_502/MatMul/ReadVariableOp2|
<sequential_58/lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp<sequential_58/lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp2<
sequential_58/lstm_175/whilesequential_58/lstm_175/while2z
;sequential_58/lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp;sequential_58/lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp2x
:sequential_58/lstm_176/lstm_cell_503/MatMul/ReadVariableOp:sequential_58/lstm_176/lstm_cell_503/MatMul/ReadVariableOp2|
<sequential_58/lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp<sequential_58/lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp2<
sequential_58/lstm_176/whilesequential_58/lstm_176/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_174_input
?
?
while_cond_3045961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3045961___redundant_placeholder05
1while_while_cond_3045961___redundant_placeholder15
1while_while_cond_3045961___redundant_placeholder25
1while_while_cond_3045961___redundant_placeholder3
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
while_cond_3046577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3046577___redundant_placeholder05
1while_while_cond_3046577___redundant_placeholder15
1while_while_cond_3046577___redundant_placeholder25
1while_while_cond_3046577___redundant_placeholder3
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
while_body_3043204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_503_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_503_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_503_matmul_readvariableop_resource:2(F
4while_lstm_cell_503_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_503_biasadd_readvariableop_resource:(??*while/lstm_cell_503/BiasAdd/ReadVariableOp?)while/lstm_cell_503/MatMul/ReadVariableOp?+while/lstm_cell_503/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_503/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_503/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_503/addAddV2$while/lstm_cell_503/MatMul:product:0&while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_503/BiasAddBiasAddwhile/lstm_cell_503/add:z:02while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_503/splitSplit,while/lstm_cell_503/split/split_dim:output:0$while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_503/SigmoidSigmoid"while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_1Sigmoid"while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mulMul!while/lstm_cell_503/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_503/ReluRelu"while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_1Mulwhile/lstm_cell_503/Sigmoid:y:0&while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/add_1AddV2while/lstm_cell_503/mul:z:0while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_503/Sigmoid_2Sigmoid"while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_503/Relu_1Reluwhile/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_503/mul_2Mul!while/lstm_cell_503/Sigmoid_2:y:0(while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_503/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_503/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_503/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_503/BiasAdd/ReadVariableOp*^while/lstm_cell_503/MatMul/ReadVariableOp,^while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_503_biasadd_readvariableop_resource5while_lstm_cell_503_biasadd_readvariableop_resource_0"n
4while_lstm_cell_503_matmul_1_readvariableop_resource6while_lstm_cell_503_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_503_matmul_readvariableop_resource4while_lstm_cell_503_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_503/BiasAdd/ReadVariableOp*while/lstm_cell_503/BiasAdd/ReadVariableOp2V
)while/lstm_cell_503/MatMul/ReadVariableOp)while/lstm_cell_503/MatMul/ReadVariableOp2Z
+while/lstm_cell_503/MatMul_1/ReadVariableOp+while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3043584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3043584___redundant_placeholder05
1while_while_cond_3043584___redundant_placeholder15
1while_while_cond_3043584___redundant_placeholder25
1while_while_cond_3043584___redundant_placeholder3
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
while_body_3042570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_503_3042594_0:2(/
while_lstm_cell_503_3042596_0:
(+
while_lstm_cell_503_3042598_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_503_3042594:2(-
while_lstm_cell_503_3042596:
()
while_lstm_cell_503_3042598:(??+while/lstm_cell_503/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_503/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_503_3042594_0while_lstm_cell_503_3042596_0while_lstm_cell_503_3042598_0*
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3042556?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_503/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_503/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_503/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_503/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_503_3042594while_lstm_cell_503_3042594_0"<
while_lstm_cell_503_3042596while_lstm_cell_503_3042596_0"<
while_lstm_cell_503_3042598while_lstm_cell_503_3042598_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_503/StatefulPartitionedCall+while/lstm_cell_503/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043984
lstm_174_input#
lstm_174_3043957:	?#
lstm_174_3043959:	d?
lstm_174_3043961:	?#
lstm_175_3043964:	d?#
lstm_175_3043966:	2?
lstm_175_3043968:	?"
lstm_176_3043971:2("
lstm_176_3043973:
(
lstm_176_3043975:("
dense_58_3043978:

dense_58_3043980:
identity?? dense_58/StatefulPartitionedCall? lstm_174/StatefulPartitionedCall? lstm_175/StatefulPartitionedCall? lstm_176/StatefulPartitionedCall?
 lstm_174/StatefulPartitionedCallStatefulPartitionedCalllstm_174_inputlstm_174_3043957lstm_174_3043959lstm_174_3043961*
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3042988?
 lstm_175/StatefulPartitionedCallStatefulPartitionedCall)lstm_174/StatefulPartitionedCall:output:0lstm_175_3043964lstm_175_3043966lstm_175_3043968*
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3043138?
 lstm_176/StatefulPartitionedCallStatefulPartitionedCall)lstm_175/StatefulPartitionedCall:output:0lstm_176_3043971lstm_176_3043973lstm_176_3043975*
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043288?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)lstm_176/StatefulPartitionedCall:output:0dense_58_3043978dense_58_3043980*
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3043306x
IdentityIdentity)dense_58/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_58/StatefulPartitionedCall!^lstm_174/StatefulPartitionedCall!^lstm_175/StatefulPartitionedCall!^lstm_176/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 lstm_174/StatefulPartitionedCall lstm_174/StatefulPartitionedCall2D
 lstm_175/StatefulPartitionedCall lstm_175/StatefulPartitionedCall2D
 lstm_176/StatefulPartitionedCall lstm_176/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_174_input
?

?
%__inference_signature_wrapper_3044049
lstm_174_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_174_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3041789o
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
_user_specified_namelstm_174_input
??
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044530

inputsH
5lstm_174_lstm_cell_501_matmul_readvariableop_resource:	?J
7lstm_174_lstm_cell_501_matmul_1_readvariableop_resource:	d?E
6lstm_174_lstm_cell_501_biasadd_readvariableop_resource:	?H
5lstm_175_lstm_cell_502_matmul_readvariableop_resource:	d?J
7lstm_175_lstm_cell_502_matmul_1_readvariableop_resource:	2?E
6lstm_175_lstm_cell_502_biasadd_readvariableop_resource:	?G
5lstm_176_lstm_cell_503_matmul_readvariableop_resource:2(I
7lstm_176_lstm_cell_503_matmul_1_readvariableop_resource:
(D
6lstm_176_lstm_cell_503_biasadd_readvariableop_resource:(9
'dense_58_matmul_readvariableop_resource:
6
(dense_58_biasadd_readvariableop_resource:
identity??dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp?,lstm_174/lstm_cell_501/MatMul/ReadVariableOp?.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp?lstm_174/while?-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp?,lstm_175/lstm_cell_502/MatMul/ReadVariableOp?.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp?lstm_175/while?-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp?,lstm_176/lstm_cell_503/MatMul/ReadVariableOp?.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp?lstm_176/whileD
lstm_174/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_174/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_174/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_174/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_sliceStridedSlicelstm_174/Shape:output:0%lstm_174/strided_slice/stack:output:0'lstm_174/strided_slice/stack_1:output:0'lstm_174/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_174/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_174/zeros/packedPacklstm_174/strided_slice:output:0 lstm_174/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_174/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_174/zerosFilllstm_174/zeros/packed:output:0lstm_174/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_174/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_174/zeros_1/packedPacklstm_174/strided_slice:output:0"lstm_174/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_174/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_174/zeros_1Fill lstm_174/zeros_1/packed:output:0lstm_174/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_174/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_174/transpose	Transposeinputs lstm_174/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_174/Shape_1Shapelstm_174/transpose:y:0*
T0*
_output_shapes
:h
lstm_174/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_174/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_174/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_slice_1StridedSlicelstm_174/Shape_1:output:0'lstm_174/strided_slice_1/stack:output:0)lstm_174/strided_slice_1/stack_1:output:0)lstm_174/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_174/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_174/TensorArrayV2TensorListReserve-lstm_174/TensorArrayV2/element_shape:output:0!lstm_174/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_174/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_174/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_174/transpose:y:0Glstm_174/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_174/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_174/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_174/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_slice_2StridedSlicelstm_174/transpose:y:0'lstm_174/strided_slice_2/stack:output:0)lstm_174/strided_slice_2/stack_1:output:0)lstm_174/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_174/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp5lstm_174_lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_174/lstm_cell_501/MatMulMatMul!lstm_174/strided_slice_2:output:04lstm_174/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp7lstm_174_lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_174/lstm_cell_501/MatMul_1MatMullstm_174/zeros:output:06lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_174/lstm_cell_501/addAddV2'lstm_174/lstm_cell_501/MatMul:product:0)lstm_174/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp6lstm_174_lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_174/lstm_cell_501/BiasAddBiasAddlstm_174/lstm_cell_501/add:z:05lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_174/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_174/lstm_cell_501/splitSplit/lstm_174/lstm_cell_501/split/split_dim:output:0'lstm_174/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_174/lstm_cell_501/SigmoidSigmoid%lstm_174/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_174/lstm_cell_501/Sigmoid_1Sigmoid%lstm_174/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/mulMul$lstm_174/lstm_cell_501/Sigmoid_1:y:0lstm_174/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_174/lstm_cell_501/ReluRelu%lstm_174/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/mul_1Mul"lstm_174/lstm_cell_501/Sigmoid:y:0)lstm_174/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/add_1AddV2lstm_174/lstm_cell_501/mul:z:0 lstm_174/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_174/lstm_cell_501/Sigmoid_2Sigmoid%lstm_174/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_174/lstm_cell_501/Relu_1Relu lstm_174/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_174/lstm_cell_501/mul_2Mul$lstm_174/lstm_cell_501/Sigmoid_2:y:0+lstm_174/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_174/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_174/TensorArrayV2_1TensorListReserve/lstm_174/TensorArrayV2_1/element_shape:output:0!lstm_174/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_174/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_174/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_174/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_174/whileWhile$lstm_174/while/loop_counter:output:0*lstm_174/while/maximum_iterations:output:0lstm_174/time:output:0!lstm_174/TensorArrayV2_1:handle:0lstm_174/zeros:output:0lstm_174/zeros_1:output:0!lstm_174/strided_slice_1:output:0@lstm_174/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_174_lstm_cell_501_matmul_readvariableop_resource7lstm_174_lstm_cell_501_matmul_1_readvariableop_resource6lstm_174_lstm_cell_501_biasadd_readvariableop_resource*
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
lstm_174_while_body_3044162*'
condR
lstm_174_while_cond_3044161*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_174/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_174/TensorArrayV2Stack/TensorListStackTensorListStacklstm_174/while:output:3Blstm_174/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_174/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_174/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_174/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_174/strided_slice_3StridedSlice4lstm_174/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_174/strided_slice_3/stack:output:0)lstm_174/strided_slice_3/stack_1:output:0)lstm_174/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_174/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_174/transpose_1	Transpose4lstm_174/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_174/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_174/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_175/ShapeShapelstm_174/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_175/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_175/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_175/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_sliceStridedSlicelstm_175/Shape:output:0%lstm_175/strided_slice/stack:output:0'lstm_175/strided_slice/stack_1:output:0'lstm_175/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_175/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_175/zeros/packedPacklstm_175/strided_slice:output:0 lstm_175/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_175/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_175/zerosFilllstm_175/zeros/packed:output:0lstm_175/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_175/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_175/zeros_1/packedPacklstm_175/strided_slice:output:0"lstm_175/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_175/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_175/zeros_1Fill lstm_175/zeros_1/packed:output:0lstm_175/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_175/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_175/transpose	Transposelstm_174/transpose_1:y:0 lstm_175/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_175/Shape_1Shapelstm_175/transpose:y:0*
T0*
_output_shapes
:h
lstm_175/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_175/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_175/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_slice_1StridedSlicelstm_175/Shape_1:output:0'lstm_175/strided_slice_1/stack:output:0)lstm_175/strided_slice_1/stack_1:output:0)lstm_175/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_175/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_175/TensorArrayV2TensorListReserve-lstm_175/TensorArrayV2/element_shape:output:0!lstm_175/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_175/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_175/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_175/transpose:y:0Glstm_175/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_175/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_175/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_175/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_slice_2StridedSlicelstm_175/transpose:y:0'lstm_175/strided_slice_2/stack:output:0)lstm_175/strided_slice_2/stack_1:output:0)lstm_175/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_175/lstm_cell_502/MatMul/ReadVariableOpReadVariableOp5lstm_175_lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_175/lstm_cell_502/MatMulMatMul!lstm_175/strided_slice_2:output:04lstm_175/lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp7lstm_175_lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_175/lstm_cell_502/MatMul_1MatMullstm_175/zeros:output:06lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_175/lstm_cell_502/addAddV2'lstm_175/lstm_cell_502/MatMul:product:0)lstm_175/lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp6lstm_175_lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_175/lstm_cell_502/BiasAddBiasAddlstm_175/lstm_cell_502/add:z:05lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_175/lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_175/lstm_cell_502/splitSplit/lstm_175/lstm_cell_502/split/split_dim:output:0'lstm_175/lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_175/lstm_cell_502/SigmoidSigmoid%lstm_175/lstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_175/lstm_cell_502/Sigmoid_1Sigmoid%lstm_175/lstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/mulMul$lstm_175/lstm_cell_502/Sigmoid_1:y:0lstm_175/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_175/lstm_cell_502/ReluRelu%lstm_175/lstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/mul_1Mul"lstm_175/lstm_cell_502/Sigmoid:y:0)lstm_175/lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/add_1AddV2lstm_175/lstm_cell_502/mul:z:0 lstm_175/lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_175/lstm_cell_502/Sigmoid_2Sigmoid%lstm_175/lstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_175/lstm_cell_502/Relu_1Relu lstm_175/lstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_175/lstm_cell_502/mul_2Mul$lstm_175/lstm_cell_502/Sigmoid_2:y:0+lstm_175/lstm_cell_502/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_175/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_175/TensorArrayV2_1TensorListReserve/lstm_175/TensorArrayV2_1/element_shape:output:0!lstm_175/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_175/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_175/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_175/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_175/whileWhile$lstm_175/while/loop_counter:output:0*lstm_175/while/maximum_iterations:output:0lstm_175/time:output:0!lstm_175/TensorArrayV2_1:handle:0lstm_175/zeros:output:0lstm_175/zeros_1:output:0!lstm_175/strided_slice_1:output:0@lstm_175/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_175_lstm_cell_502_matmul_readvariableop_resource7lstm_175_lstm_cell_502_matmul_1_readvariableop_resource6lstm_175_lstm_cell_502_biasadd_readvariableop_resource*
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
lstm_175_while_body_3044301*'
condR
lstm_175_while_cond_3044300*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_175/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_175/TensorArrayV2Stack/TensorListStackTensorListStacklstm_175/while:output:3Blstm_175/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_175/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_175/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_175/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_175/strided_slice_3StridedSlice4lstm_175/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_175/strided_slice_3/stack:output:0)lstm_175/strided_slice_3/stack_1:output:0)lstm_175/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_175/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_175/transpose_1	Transpose4lstm_175/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_175/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_175/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_176/ShapeShapelstm_175/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_176/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_176/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_176/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_sliceStridedSlicelstm_176/Shape:output:0%lstm_176/strided_slice/stack:output:0'lstm_176/strided_slice/stack_1:output:0'lstm_176/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_176/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_176/zeros/packedPacklstm_176/strided_slice:output:0 lstm_176/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_176/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_176/zerosFilllstm_176/zeros/packed:output:0lstm_176/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_176/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_176/zeros_1/packedPacklstm_176/strided_slice:output:0"lstm_176/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_176/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_176/zeros_1Fill lstm_176/zeros_1/packed:output:0lstm_176/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_176/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_176/transpose	Transposelstm_175/transpose_1:y:0 lstm_176/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_176/Shape_1Shapelstm_176/transpose:y:0*
T0*
_output_shapes
:h
lstm_176/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_176/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_176/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_slice_1StridedSlicelstm_176/Shape_1:output:0'lstm_176/strided_slice_1/stack:output:0)lstm_176/strided_slice_1/stack_1:output:0)lstm_176/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_176/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_176/TensorArrayV2TensorListReserve-lstm_176/TensorArrayV2/element_shape:output:0!lstm_176/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_176/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_176/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_176/transpose:y:0Glstm_176/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_176/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_176/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_176/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_slice_2StridedSlicelstm_176/transpose:y:0'lstm_176/strided_slice_2/stack:output:0)lstm_176/strided_slice_2/stack_1:output:0)lstm_176/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_176/lstm_cell_503/MatMul/ReadVariableOpReadVariableOp5lstm_176_lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_176/lstm_cell_503/MatMulMatMul!lstm_176/strided_slice_2:output:04lstm_176/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp7lstm_176_lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_176/lstm_cell_503/MatMul_1MatMullstm_176/zeros:output:06lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_176/lstm_cell_503/addAddV2'lstm_176/lstm_cell_503/MatMul:product:0)lstm_176/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp6lstm_176_lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_176/lstm_cell_503/BiasAddBiasAddlstm_176/lstm_cell_503/add:z:05lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_176/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_176/lstm_cell_503/splitSplit/lstm_176/lstm_cell_503/split/split_dim:output:0'lstm_176/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_176/lstm_cell_503/SigmoidSigmoid%lstm_176/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_176/lstm_cell_503/Sigmoid_1Sigmoid%lstm_176/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/mulMul$lstm_176/lstm_cell_503/Sigmoid_1:y:0lstm_176/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_176/lstm_cell_503/ReluRelu%lstm_176/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/mul_1Mul"lstm_176/lstm_cell_503/Sigmoid:y:0)lstm_176/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/add_1AddV2lstm_176/lstm_cell_503/mul:z:0 lstm_176/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_176/lstm_cell_503/Sigmoid_2Sigmoid%lstm_176/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_176/lstm_cell_503/Relu_1Relu lstm_176/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_176/lstm_cell_503/mul_2Mul$lstm_176/lstm_cell_503/Sigmoid_2:y:0+lstm_176/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_176/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_176/TensorArrayV2_1TensorListReserve/lstm_176/TensorArrayV2_1/element_shape:output:0!lstm_176/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_176/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_176/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_176/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_176/whileWhile$lstm_176/while/loop_counter:output:0*lstm_176/while/maximum_iterations:output:0lstm_176/time:output:0!lstm_176/TensorArrayV2_1:handle:0lstm_176/zeros:output:0lstm_176/zeros_1:output:0!lstm_176/strided_slice_1:output:0@lstm_176/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_176_lstm_cell_503_matmul_readvariableop_resource7lstm_176_lstm_cell_503_matmul_1_readvariableop_resource6lstm_176_lstm_cell_503_biasadd_readvariableop_resource*
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
lstm_176_while_body_3044440*'
condR
lstm_176_while_cond_3044439*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_176/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_176/TensorArrayV2Stack/TensorListStackTensorListStacklstm_176/while:output:3Blstm_176/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_176/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_176/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_176/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_176/strided_slice_3StridedSlice4lstm_176/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_176/strided_slice_3/stack:output:0)lstm_176/strided_slice_3/stack_1:output:0)lstm_176/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_176/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_176/transpose_1	Transpose4lstm_176/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_176/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_176/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_58/MatMulMatMul!lstm_176/strided_slice_3:output:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_58/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp.^lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp-^lstm_174/lstm_cell_501/MatMul/ReadVariableOp/^lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp^lstm_174/while.^lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp-^lstm_175/lstm_cell_502/MatMul/ReadVariableOp/^lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp^lstm_175/while.^lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp-^lstm_176/lstm_cell_503/MatMul/ReadVariableOp/^lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp^lstm_176/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2^
-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp-lstm_174/lstm_cell_501/BiasAdd/ReadVariableOp2\
,lstm_174/lstm_cell_501/MatMul/ReadVariableOp,lstm_174/lstm_cell_501/MatMul/ReadVariableOp2`
.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp.lstm_174/lstm_cell_501/MatMul_1/ReadVariableOp2 
lstm_174/whilelstm_174/while2^
-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp-lstm_175/lstm_cell_502/BiasAdd/ReadVariableOp2\
,lstm_175/lstm_cell_502/MatMul/ReadVariableOp,lstm_175/lstm_cell_502/MatMul/ReadVariableOp2`
.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp.lstm_175/lstm_cell_502/MatMul_1/ReadVariableOp2 
lstm_175/whilelstm_175/while2^
-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp-lstm_176/lstm_cell_503/BiasAdd/ReadVariableOp2\
,lstm_176/lstm_cell_503/MatMul/ReadVariableOp,lstm_176/lstm_cell_503/MatMul/ReadVariableOp2`
.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp.lstm_176/lstm_cell_503/MatMul_1/ReadVariableOp2 
lstm_176/whilelstm_176/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045144
inputs_0?
,lstm_cell_501_matmul_readvariableop_resource:	?A
.lstm_cell_501_matmul_1_readvariableop_resource:	d?<
-lstm_cell_501_biasadd_readvariableop_resource:	?
identity??$lstm_cell_501/BiasAdd/ReadVariableOp?#lstm_cell_501/MatMul/ReadVariableOp?%lstm_cell_501/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_501/MatMul/ReadVariableOpReadVariableOp,lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_501/MatMulMatMulstrided_slice_2:output:0+lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_501/MatMul_1MatMulzeros:output:0-lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_501/addAddV2lstm_cell_501/MatMul:product:0 lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_501/BiasAddBiasAddlstm_cell_501/add:z:0,lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_501/splitSplit&lstm_cell_501/split/split_dim:output:0lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_501/SigmoidSigmoidlstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_1Sigmoidlstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_501/mulMullstm_cell_501/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_501/ReluRelulstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_1Mullstm_cell_501/Sigmoid:y:0 lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_501/add_1AddV2lstm_cell_501/mul:z:0lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_2Sigmoidlstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_501/Relu_1Relulstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_2Mullstm_cell_501/Sigmoid_2:y:0"lstm_cell_501/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_501_matmul_readvariableop_resource.lstm_cell_501_matmul_1_readvariableop_resource-lstm_cell_501_biasadd_readvariableop_resource*
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
while_body_3045060*
condR
while_cond_3045059*K
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
NoOpNoOp%^lstm_cell_501/BiasAdd/ReadVariableOp$^lstm_cell_501/MatMul/ReadVariableOp&^lstm_cell_501/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_501/BiasAdd/ReadVariableOp$lstm_cell_501/BiasAdd/ReadVariableOp2J
#lstm_cell_501/MatMul/ReadVariableOp#lstm_cell_501/MatMul/ReadVariableOp2N
%lstm_cell_501/MatMul_1/ReadVariableOp%lstm_cell_501/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3046434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3046434___redundant_placeholder05
1while_while_cond_3046434___redundant_placeholder15
1while_while_cond_3046434___redundant_placeholder25
1while_while_cond_3046434___redundant_placeholder3
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3042988

inputs?
,lstm_cell_501_matmul_readvariableop_resource:	?A
.lstm_cell_501_matmul_1_readvariableop_resource:	d?<
-lstm_cell_501_biasadd_readvariableop_resource:	?
identity??$lstm_cell_501/BiasAdd/ReadVariableOp?#lstm_cell_501/MatMul/ReadVariableOp?%lstm_cell_501/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_501/MatMul/ReadVariableOpReadVariableOp,lstm_cell_501_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_501/MatMulMatMulstrided_slice_2:output:0+lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_501_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_501/MatMul_1MatMulzeros:output:0-lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_501/addAddV2lstm_cell_501/MatMul:product:0 lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_501_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_501/BiasAddBiasAddlstm_cell_501/add:z:0,lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_501/splitSplit&lstm_cell_501/split/split_dim:output:0lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_501/SigmoidSigmoidlstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_1Sigmoidlstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_501/mulMullstm_cell_501/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_501/ReluRelulstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_1Mullstm_cell_501/Sigmoid:y:0 lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_501/add_1AddV2lstm_cell_501/mul:z:0lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_501/Sigmoid_2Sigmoidlstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_501/Relu_1Relulstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_501/mul_2Mullstm_cell_501/Sigmoid_2:y:0"lstm_cell_501/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_501_matmul_readvariableop_resource.lstm_cell_501_matmul_1_readvariableop_resource-lstm_cell_501_biasadd_readvariableop_resource*
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
while_body_3042904*
condR
while_cond_3042903*K
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
NoOpNoOp%^lstm_cell_501/BiasAdd/ReadVariableOp$^lstm_cell_501/MatMul/ReadVariableOp&^lstm_cell_501/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_501/BiasAdd/ReadVariableOp$lstm_cell_501/BiasAdd/ReadVariableOp2J
#lstm_cell_501/MatMul/ReadVariableOp#lstm_cell_501/MatMul/ReadVariableOp2N
%lstm_cell_501/MatMul_1/ReadVariableOp%lstm_cell_501/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_176_layer_call_and_return_conditional_losses_3043288

inputs>
,lstm_cell_503_matmul_readvariableop_resource:2(@
.lstm_cell_503_matmul_1_readvariableop_resource:
(;
-lstm_cell_503_biasadd_readvariableop_resource:(
identity??$lstm_cell_503/BiasAdd/ReadVariableOp?#lstm_cell_503/MatMul/ReadVariableOp?%lstm_cell_503/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_503/MatMul/ReadVariableOpReadVariableOp,lstm_cell_503_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_503/MatMulMatMulstrided_slice_2:output:0+lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_503_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_503/MatMul_1MatMulzeros:output:0-lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_503/addAddV2lstm_cell_503/MatMul:product:0 lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_503_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_503/BiasAddBiasAddlstm_cell_503/add:z:0,lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_503/splitSplit&lstm_cell_503/split/split_dim:output:0lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_503/SigmoidSigmoidlstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_1Sigmoidlstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_503/mulMullstm_cell_503/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_503/ReluRelulstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_1Mullstm_cell_503/Sigmoid:y:0 lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_503/add_1AddV2lstm_cell_503/mul:z:0lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_503/Sigmoid_2Sigmoidlstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_503/Relu_1Relulstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_503/mul_2Mullstm_cell_503/Sigmoid_2:y:0"lstm_cell_503/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_503_matmul_readvariableop_resource.lstm_cell_503_matmul_1_readvariableop_resource-lstm_cell_503_biasadd_readvariableop_resource*
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
while_body_3043204*
condR
while_cond_3043203*K
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
NoOpNoOp%^lstm_cell_503/BiasAdd/ReadVariableOp$^lstm_cell_503/MatMul/ReadVariableOp&^lstm_cell_503/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_503/BiasAdd/ReadVariableOp$lstm_cell_503/BiasAdd/ReadVariableOp2J
#lstm_cell_503/MatMul/ReadVariableOp#lstm_cell_503/MatMul/ReadVariableOp2N
%lstm_cell_503/MatMul_1/ReadVariableOp%lstm_cell_503/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3047118

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
?#
?
while_body_3042220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_502_3042244_0:	d?0
while_lstm_cell_502_3042246_0:	2?,
while_lstm_cell_502_3042248_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_502_3042244:	d?.
while_lstm_cell_502_3042246:	2?*
while_lstm_cell_502_3042248:	???+while/lstm_cell_502/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_502/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_502_3042244_0while_lstm_cell_502_3042246_0while_lstm_cell_502_3042248_0*
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3042206?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_502/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_502/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_502/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_502/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_502_3042244while_lstm_cell_502_3042244_0"<
while_lstm_cell_502_3042246while_lstm_cell_502_3042246_0"<
while_lstm_cell_502_3042248while_lstm_cell_502_3042248_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_502/StatefulPartitionedCall+while/lstm_cell_502/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_176_while_cond_3044866.
*lstm_176_while_lstm_176_while_loop_counter4
0lstm_176_while_lstm_176_while_maximum_iterations
lstm_176_while_placeholder 
lstm_176_while_placeholder_1 
lstm_176_while_placeholder_2 
lstm_176_while_placeholder_30
,lstm_176_while_less_lstm_176_strided_slice_1G
Clstm_176_while_lstm_176_while_cond_3044866___redundant_placeholder0G
Clstm_176_while_lstm_176_while_cond_3044866___redundant_placeholder1G
Clstm_176_while_lstm_176_while_cond_3044866___redundant_placeholder2G
Clstm_176_while_lstm_176_while_cond_3044866___redundant_placeholder3
lstm_176_while_identity
?
lstm_176/while/LessLesslstm_176_while_placeholder,lstm_176_while_less_lstm_176_strided_slice_1*
T0*
_output_shapes
: ]
lstm_176/while/IdentityIdentitylstm_176/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_176_while_identity lstm_176/while/Identity:output:0*(
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3046189

inputs?
,lstm_cell_502_matmul_readvariableop_resource:	d?A
.lstm_cell_502_matmul_1_readvariableop_resource:	2?<
-lstm_cell_502_biasadd_readvariableop_resource:	?
identity??$lstm_cell_502/BiasAdd/ReadVariableOp?#lstm_cell_502/MatMul/ReadVariableOp?%lstm_cell_502/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_502/MatMul/ReadVariableOpReadVariableOp,lstm_cell_502_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_502/MatMulMatMulstrided_slice_2:output:0+lstm_cell_502/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_502/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_502_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_502/MatMul_1MatMulzeros:output:0-lstm_cell_502/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_502/addAddV2lstm_cell_502/MatMul:product:0 lstm_cell_502/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_502/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_502_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_502/BiasAddBiasAddlstm_cell_502/add:z:0,lstm_cell_502/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_502/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_502/splitSplit&lstm_cell_502/split/split_dim:output:0lstm_cell_502/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_502/SigmoidSigmoidlstm_cell_502/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_1Sigmoidlstm_cell_502/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_502/mulMullstm_cell_502/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_502/ReluRelulstm_cell_502/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_1Mullstm_cell_502/Sigmoid:y:0 lstm_cell_502/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_502/add_1AddV2lstm_cell_502/mul:z:0lstm_cell_502/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_502/Sigmoid_2Sigmoidlstm_cell_502/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_502/Relu_1Relulstm_cell_502/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_502/mul_2Mullstm_cell_502/Sigmoid_2:y:0"lstm_cell_502/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_502_matmul_readvariableop_resource.lstm_cell_502_matmul_1_readvariableop_resource-lstm_cell_502_biasadd_readvariableop_resource*
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
while_body_3046105*
condR
while_cond_3046104*K
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
NoOpNoOp%^lstm_cell_502/BiasAdd/ReadVariableOp$^lstm_cell_502/MatMul/ReadVariableOp&^lstm_cell_502/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_502/BiasAdd/ReadVariableOp$lstm_cell_502/BiasAdd/ReadVariableOp2J
#lstm_cell_502/MatMul/ReadVariableOp#lstm_cell_502/MatMul/ReadVariableOp2N
%lstm_cell_502/MatMul_1/ReadVariableOp%lstm_cell_502/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_176_layer_call_fn_3046200
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3042639o
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
while_cond_3045818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3045818___redundant_placeholder05
1while_while_cond_3045818___redundant_placeholder15
1while_while_cond_3045818___redundant_placeholder25
1while_while_cond_3045818___redundant_placeholder3
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
?S
?
)sequential_58_lstm_176_while_body_3041699J
Fsequential_58_lstm_176_while_sequential_58_lstm_176_while_loop_counterP
Lsequential_58_lstm_176_while_sequential_58_lstm_176_while_maximum_iterations,
(sequential_58_lstm_176_while_placeholder.
*sequential_58_lstm_176_while_placeholder_1.
*sequential_58_lstm_176_while_placeholder_2.
*sequential_58_lstm_176_while_placeholder_3I
Esequential_58_lstm_176_while_sequential_58_lstm_176_strided_slice_1_0?
?sequential_58_lstm_176_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_176_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_58_lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0:2(_
Msequential_58_lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0:
(Z
Lsequential_58_lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0:()
%sequential_58_lstm_176_while_identity+
'sequential_58_lstm_176_while_identity_1+
'sequential_58_lstm_176_while_identity_2+
'sequential_58_lstm_176_while_identity_3+
'sequential_58_lstm_176_while_identity_4+
'sequential_58_lstm_176_while_identity_5G
Csequential_58_lstm_176_while_sequential_58_lstm_176_strided_slice_1?
sequential_58_lstm_176_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_176_tensorarrayunstack_tensorlistfromtensor[
Isequential_58_lstm_176_while_lstm_cell_503_matmul_readvariableop_resource:2(]
Ksequential_58_lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource:
(X
Jsequential_58_lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource:(??Asequential_58/lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp?@sequential_58/lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp?Bsequential_58/lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp?
Nsequential_58/lstm_176/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_58/lstm_176/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_58_lstm_176_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_176_tensorarrayunstack_tensorlistfromtensor_0(sequential_58_lstm_176_while_placeholderWsequential_58/lstm_176/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_58/lstm_176/while/lstm_cell_503/MatMul/ReadVariableOpReadVariableOpKsequential_58_lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_58/lstm_176/while/lstm_cell_503/MatMulMatMulGsequential_58/lstm_176/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_58/lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_58/lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOpReadVariableOpMsequential_58_lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_58/lstm_176/while/lstm_cell_503/MatMul_1MatMul*sequential_58_lstm_176_while_placeholder_2Jsequential_58/lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_58/lstm_176/while/lstm_cell_503/addAddV2;sequential_58/lstm_176/while/lstm_cell_503/MatMul:product:0=sequential_58/lstm_176/while/lstm_cell_503/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_58/lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOpReadVariableOpLsequential_58_lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_58/lstm_176/while/lstm_cell_503/BiasAddBiasAdd2sequential_58/lstm_176/while/lstm_cell_503/add:z:0Isequential_58/lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_58/lstm_176/while/lstm_cell_503/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_58/lstm_176/while/lstm_cell_503/splitSplitCsequential_58/lstm_176/while/lstm_cell_503/split/split_dim:output:0;sequential_58/lstm_176/while/lstm_cell_503/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_58/lstm_176/while/lstm_cell_503/SigmoidSigmoid9sequential_58/lstm_176/while/lstm_cell_503/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_58/lstm_176/while/lstm_cell_503/Sigmoid_1Sigmoid9sequential_58/lstm_176/while/lstm_cell_503/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_58/lstm_176/while/lstm_cell_503/mulMul8sequential_58/lstm_176/while/lstm_cell_503/Sigmoid_1:y:0*sequential_58_lstm_176_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_58/lstm_176/while/lstm_cell_503/ReluRelu9sequential_58/lstm_176/while/lstm_cell_503/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_58/lstm_176/while/lstm_cell_503/mul_1Mul6sequential_58/lstm_176/while/lstm_cell_503/Sigmoid:y:0=sequential_58/lstm_176/while/lstm_cell_503/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_58/lstm_176/while/lstm_cell_503/add_1AddV22sequential_58/lstm_176/while/lstm_cell_503/mul:z:04sequential_58/lstm_176/while/lstm_cell_503/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_58/lstm_176/while/lstm_cell_503/Sigmoid_2Sigmoid9sequential_58/lstm_176/while/lstm_cell_503/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_58/lstm_176/while/lstm_cell_503/Relu_1Relu4sequential_58/lstm_176/while/lstm_cell_503/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_58/lstm_176/while/lstm_cell_503/mul_2Mul8sequential_58/lstm_176/while/lstm_cell_503/Sigmoid_2:y:0?sequential_58/lstm_176/while/lstm_cell_503/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_58/lstm_176/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_58_lstm_176_while_placeholder_1(sequential_58_lstm_176_while_placeholder4sequential_58/lstm_176/while/lstm_cell_503/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_58/lstm_176/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_58/lstm_176/while/addAddV2(sequential_58_lstm_176_while_placeholder+sequential_58/lstm_176/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_58/lstm_176/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_58/lstm_176/while/add_1AddV2Fsequential_58_lstm_176_while_sequential_58_lstm_176_while_loop_counter-sequential_58/lstm_176/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_58/lstm_176/while/IdentityIdentity&sequential_58/lstm_176/while/add_1:z:0"^sequential_58/lstm_176/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_176/while/Identity_1IdentityLsequential_58_lstm_176_while_sequential_58_lstm_176_while_maximum_iterations"^sequential_58/lstm_176/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_176/while/Identity_2Identity$sequential_58/lstm_176/while/add:z:0"^sequential_58/lstm_176/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_176/while/Identity_3IdentityQsequential_58/lstm_176/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_58/lstm_176/while/NoOp*
T0*
_output_shapes
: ?
'sequential_58/lstm_176/while/Identity_4Identity4sequential_58/lstm_176/while/lstm_cell_503/mul_2:z:0"^sequential_58/lstm_176/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_58/lstm_176/while/Identity_5Identity4sequential_58/lstm_176/while/lstm_cell_503/add_1:z:0"^sequential_58/lstm_176/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_58/lstm_176/while/NoOpNoOpB^sequential_58/lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOpA^sequential_58/lstm_176/while/lstm_cell_503/MatMul/ReadVariableOpC^sequential_58/lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_58_lstm_176_while_identity.sequential_58/lstm_176/while/Identity:output:0"[
'sequential_58_lstm_176_while_identity_10sequential_58/lstm_176/while/Identity_1:output:0"[
'sequential_58_lstm_176_while_identity_20sequential_58/lstm_176/while/Identity_2:output:0"[
'sequential_58_lstm_176_while_identity_30sequential_58/lstm_176/while/Identity_3:output:0"[
'sequential_58_lstm_176_while_identity_40sequential_58/lstm_176/while/Identity_4:output:0"[
'sequential_58_lstm_176_while_identity_50sequential_58/lstm_176/while/Identity_5:output:0"?
Jsequential_58_lstm_176_while_lstm_cell_503_biasadd_readvariableop_resourceLsequential_58_lstm_176_while_lstm_cell_503_biasadd_readvariableop_resource_0"?
Ksequential_58_lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resourceMsequential_58_lstm_176_while_lstm_cell_503_matmul_1_readvariableop_resource_0"?
Isequential_58_lstm_176_while_lstm_cell_503_matmul_readvariableop_resourceKsequential_58_lstm_176_while_lstm_cell_503_matmul_readvariableop_resource_0"?
Csequential_58_lstm_176_while_sequential_58_lstm_176_strided_slice_1Esequential_58_lstm_176_while_sequential_58_lstm_176_strided_slice_1_0"?
sequential_58_lstm_176_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_176_tensorarrayunstack_tensorlistfromtensor?sequential_58_lstm_176_while_tensorarrayv2read_tensorlistgetitem_sequential_58_lstm_176_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_58/lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOpAsequential_58/lstm_176/while/lstm_cell_503/BiasAdd/ReadVariableOp2?
@sequential_58/lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp@sequential_58/lstm_176/while/lstm_cell_503/MatMul/ReadVariableOp2?
Bsequential_58/lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOpBsequential_58/lstm_176/while/lstm_cell_503/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_176_while_cond_3044439.
*lstm_176_while_lstm_176_while_loop_counter4
0lstm_176_while_lstm_176_while_maximum_iterations
lstm_176_while_placeholder 
lstm_176_while_placeholder_1 
lstm_176_while_placeholder_2 
lstm_176_while_placeholder_30
,lstm_176_while_less_lstm_176_strided_slice_1G
Clstm_176_while_lstm_176_while_cond_3044439___redundant_placeholder0G
Clstm_176_while_lstm_176_while_cond_3044439___redundant_placeholder1G
Clstm_176_while_lstm_176_while_cond_3044439___redundant_placeholder2G
Clstm_176_while_lstm_176_while_cond_3044439___redundant_placeholder3
lstm_176_while_identity
?
lstm_176/while/LessLesslstm_176_while_placeholder,lstm_176_while_less_lstm_176_strided_slice_1*
T0*
_output_shapes
: ]
lstm_176/while/IdentityIdentitylstm_176/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_176_while_identity lstm_176/while/Identity:output:0*(
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
*__inference_lstm_174_layer_call_fn_3044968
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3041939|
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3043306

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
?C
?

lstm_174_while_body_3044589.
*lstm_174_while_lstm_174_while_loop_counter4
0lstm_174_while_lstm_174_while_maximum_iterations
lstm_174_while_placeholder 
lstm_174_while_placeholder_1 
lstm_174_while_placeholder_2 
lstm_174_while_placeholder_3-
)lstm_174_while_lstm_174_strided_slice_1_0i
elstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0:	?R
?lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0:	d?M
>lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0:	?
lstm_174_while_identity
lstm_174_while_identity_1
lstm_174_while_identity_2
lstm_174_while_identity_3
lstm_174_while_identity_4
lstm_174_while_identity_5+
'lstm_174_while_lstm_174_strided_slice_1g
clstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensorN
;lstm_174_while_lstm_cell_501_matmul_readvariableop_resource:	?P
=lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource:	d?K
<lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource:	???3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp?2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp?4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp?
@lstm_174/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_174/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensor_0lstm_174_while_placeholderIlstm_174/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOpReadVariableOp=lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_174/while/lstm_cell_501/MatMulMatMul9lstm_174/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOpReadVariableOp?lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_174/while/lstm_cell_501/MatMul_1MatMullstm_174_while_placeholder_2<lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_174/while/lstm_cell_501/addAddV2-lstm_174/while/lstm_cell_501/MatMul:product:0/lstm_174/while/lstm_cell_501/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOpReadVariableOp>lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_174/while/lstm_cell_501/BiasAddBiasAdd$lstm_174/while/lstm_cell_501/add:z:0;lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_174/while/lstm_cell_501/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_174/while/lstm_cell_501/splitSplit5lstm_174/while/lstm_cell_501/split/split_dim:output:0-lstm_174/while/lstm_cell_501/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_174/while/lstm_cell_501/SigmoidSigmoid+lstm_174/while/lstm_cell_501/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_174/while/lstm_cell_501/Sigmoid_1Sigmoid+lstm_174/while/lstm_cell_501/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_174/while/lstm_cell_501/mulMul*lstm_174/while/lstm_cell_501/Sigmoid_1:y:0lstm_174_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_174/while/lstm_cell_501/ReluRelu+lstm_174/while/lstm_cell_501/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_174/while/lstm_cell_501/mul_1Mul(lstm_174/while/lstm_cell_501/Sigmoid:y:0/lstm_174/while/lstm_cell_501/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_174/while/lstm_cell_501/add_1AddV2$lstm_174/while/lstm_cell_501/mul:z:0&lstm_174/while/lstm_cell_501/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_174/while/lstm_cell_501/Sigmoid_2Sigmoid+lstm_174/while/lstm_cell_501/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_174/while/lstm_cell_501/Relu_1Relu&lstm_174/while/lstm_cell_501/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_174/while/lstm_cell_501/mul_2Mul*lstm_174/while/lstm_cell_501/Sigmoid_2:y:01lstm_174/while/lstm_cell_501/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_174/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_174_while_placeholder_1lstm_174_while_placeholder&lstm_174/while/lstm_cell_501/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_174/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_174/while/addAddV2lstm_174_while_placeholderlstm_174/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_174/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_174/while/add_1AddV2*lstm_174_while_lstm_174_while_loop_counterlstm_174/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_174/while/IdentityIdentitylstm_174/while/add_1:z:0^lstm_174/while/NoOp*
T0*
_output_shapes
: ?
lstm_174/while/Identity_1Identity0lstm_174_while_lstm_174_while_maximum_iterations^lstm_174/while/NoOp*
T0*
_output_shapes
: t
lstm_174/while/Identity_2Identitylstm_174/while/add:z:0^lstm_174/while/NoOp*
T0*
_output_shapes
: ?
lstm_174/while/Identity_3IdentityClstm_174/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_174/while/NoOp*
T0*
_output_shapes
: ?
lstm_174/while/Identity_4Identity&lstm_174/while/lstm_cell_501/mul_2:z:0^lstm_174/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_174/while/Identity_5Identity&lstm_174/while/lstm_cell_501/add_1:z:0^lstm_174/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_174/while/NoOpNoOp4^lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp3^lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp5^lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_174_while_identity lstm_174/while/Identity:output:0"?
lstm_174_while_identity_1"lstm_174/while/Identity_1:output:0"?
lstm_174_while_identity_2"lstm_174/while/Identity_2:output:0"?
lstm_174_while_identity_3"lstm_174/while/Identity_3:output:0"?
lstm_174_while_identity_4"lstm_174/while/Identity_4:output:0"?
lstm_174_while_identity_5"lstm_174/while/Identity_5:output:0"T
'lstm_174_while_lstm_174_strided_slice_1)lstm_174_while_lstm_174_strided_slice_1_0"~
<lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource>lstm_174_while_lstm_cell_501_biasadd_readvariableop_resource_0"?
=lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource?lstm_174_while_lstm_cell_501_matmul_1_readvariableop_resource_0"|
;lstm_174_while_lstm_cell_501_matmul_readvariableop_resource=lstm_174_while_lstm_cell_501_matmul_readvariableop_resource_0"?
clstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensorelstm_174_while_tensorarrayv2read_tensorlistgetitem_lstm_174_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp3lstm_174/while/lstm_cell_501/BiasAdd/ReadVariableOp2h
2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp2lstm_174/while/lstm_cell_501/MatMul/ReadVariableOp2l
4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp4lstm_174/while/lstm_cell_501/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_174_input;
 serving_default_lstm_174_input:0?????????<
dense_580
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
2dense_58/kernel
:2dense_58/bias
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
0:.	?2lstm_174/lstm_cell_174/kernel
::8	d?2'lstm_174/lstm_cell_174/recurrent_kernel
*:(?2lstm_174/lstm_cell_174/bias
0:.	d?2lstm_175/lstm_cell_175/kernel
::8	2?2'lstm_175/lstm_cell_175/recurrent_kernel
*:(?2lstm_175/lstm_cell_175/bias
/:-2(2lstm_176/lstm_cell_176/kernel
9:7
(2'lstm_176/lstm_cell_176/recurrent_kernel
):'(2lstm_176/lstm_cell_176/bias
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
2Adam/dense_58/kernel/m
 :2Adam/dense_58/bias/m
5:3	?2$Adam/lstm_174/lstm_cell_174/kernel/m
?:=	d?2.Adam/lstm_174/lstm_cell_174/recurrent_kernel/m
/:-?2"Adam/lstm_174/lstm_cell_174/bias/m
5:3	d?2$Adam/lstm_175/lstm_cell_175/kernel/m
?:=	2?2.Adam/lstm_175/lstm_cell_175/recurrent_kernel/m
/:-?2"Adam/lstm_175/lstm_cell_175/bias/m
4:22(2$Adam/lstm_176/lstm_cell_176/kernel/m
>:<
(2.Adam/lstm_176/lstm_cell_176/recurrent_kernel/m
.:,(2"Adam/lstm_176/lstm_cell_176/bias/m
&:$
2Adam/dense_58/kernel/v
 :2Adam/dense_58/bias/v
5:3	?2$Adam/lstm_174/lstm_cell_174/kernel/v
?:=	d?2.Adam/lstm_174/lstm_cell_174/recurrent_kernel/v
/:-?2"Adam/lstm_174/lstm_cell_174/bias/v
5:3	d?2$Adam/lstm_175/lstm_cell_175/kernel/v
?:=	2?2.Adam/lstm_175/lstm_cell_175/recurrent_kernel/v
/:-?2"Adam/lstm_175/lstm_cell_175/bias/v
4:22(2$Adam/lstm_176/lstm_cell_176/kernel/v
>:<
(2.Adam/lstm_176/lstm_cell_176/recurrent_kernel/v
.:,(2"Adam/lstm_176/lstm_cell_176/bias/v
?2?
/__inference_sequential_58_layer_call_fn_3043338
/__inference_sequential_58_layer_call_fn_3044076
/__inference_sequential_58_layer_call_fn_3044103
/__inference_sequential_58_layer_call_fn_3043954?
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044530
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044957
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043984
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044014?
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
"__inference__wrapped_model_3041789lstm_174_input"?
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
*__inference_lstm_174_layer_call_fn_3044968
*__inference_lstm_174_layer_call_fn_3044979
*__inference_lstm_174_layer_call_fn_3044990
*__inference_lstm_174_layer_call_fn_3045001?
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045144
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045287
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045430
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045573?
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
*__inference_lstm_175_layer_call_fn_3045584
*__inference_lstm_175_layer_call_fn_3045595
*__inference_lstm_175_layer_call_fn_3045606
*__inference_lstm_175_layer_call_fn_3045617?
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3045760
E__inference_lstm_175_layer_call_and_return_conditional_losses_3045903
E__inference_lstm_175_layer_call_and_return_conditional_losses_3046046
E__inference_lstm_175_layer_call_and_return_conditional_losses_3046189?
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
*__inference_lstm_176_layer_call_fn_3046200
*__inference_lstm_176_layer_call_fn_3046211
*__inference_lstm_176_layer_call_fn_3046222
*__inference_lstm_176_layer_call_fn_3046233?
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046376
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046519
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046662
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046805?
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
*__inference_dense_58_layer_call_fn_3046814?
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3046824?
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
%__inference_signature_wrapper_3044049lstm_174_input"?
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
/__inference_lstm_cell_501_layer_call_fn_3046841
/__inference_lstm_cell_501_layer_call_fn_3046858?
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3046890
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3046922?
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
/__inference_lstm_cell_502_layer_call_fn_3046939
/__inference_lstm_cell_502_layer_call_fn_3046956?
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3046988
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3047020?
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
/__inference_lstm_cell_503_layer_call_fn_3047037
/__inference_lstm_cell_503_layer_call_fn_3047054?
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3047086
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3047118?
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
"__inference__wrapped_model_3041789-./012345!";?8
1?.
,?)
lstm_174_input?????????
? "3?0
.
dense_58"?
dense_58??????????
E__inference_dense_58_layer_call_and_return_conditional_losses_3046824\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_58_layer_call_fn_3046814O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045144?-./O?L
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045287?-./O?L
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045430q-./??<
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
E__inference_lstm_174_layer_call_and_return_conditional_losses_3045573q-./??<
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
*__inference_lstm_174_layer_call_fn_3044968}-./O?L
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
*__inference_lstm_174_layer_call_fn_3044979}-./O?L
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
*__inference_lstm_174_layer_call_fn_3044990d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_174_layer_call_fn_3045001d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_175_layer_call_and_return_conditional_losses_3045760?012O?L
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3045903?012O?L
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3046046q012??<
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
E__inference_lstm_175_layer_call_and_return_conditional_losses_3046189q012??<
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
*__inference_lstm_175_layer_call_fn_3045584}012O?L
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
*__inference_lstm_175_layer_call_fn_3045595}012O?L
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
*__inference_lstm_175_layer_call_fn_3045606d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_175_layer_call_fn_3045617d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046376}345O?L
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046519}345O?L
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046662m345??<
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
E__inference_lstm_176_layer_call_and_return_conditional_losses_3046805m345??<
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
*__inference_lstm_176_layer_call_fn_3046200p345O?L
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
*__inference_lstm_176_layer_call_fn_3046211p345O?L
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
*__inference_lstm_176_layer_call_fn_3046222`345??<
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
*__inference_lstm_176_layer_call_fn_3046233`345??<
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3046890?-./??}
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
J__inference_lstm_cell_501_layer_call_and_return_conditional_losses_3046922?-./??}
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
/__inference_lstm_cell_501_layer_call_fn_3046841?-./??}
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
/__inference_lstm_cell_501_layer_call_fn_3046858?-./??}
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3046988?012??}
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
J__inference_lstm_cell_502_layer_call_and_return_conditional_losses_3047020?012??}
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
/__inference_lstm_cell_502_layer_call_fn_3046939?012??}
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
/__inference_lstm_cell_502_layer_call_fn_3046956?012??}
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3047086?345??}
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
J__inference_lstm_cell_503_layer_call_and_return_conditional_losses_3047118?345??}
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
/__inference_lstm_cell_503_layer_call_fn_3047037?345??}
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
/__inference_lstm_cell_503_layer_call_fn_3047054?345??}
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3043984y-./012345!"C?@
9?6
,?)
lstm_174_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044014y-./012345!"C?@
9?6
,?)
lstm_174_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044530q-./012345!";?8
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
J__inference_sequential_58_layer_call_and_return_conditional_losses_3044957q-./012345!";?8
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
/__inference_sequential_58_layer_call_fn_3043338l-./012345!"C?@
9?6
,?)
lstm_174_input?????????
p 

 
? "???????????
/__inference_sequential_58_layer_call_fn_3043954l-./012345!"C?@
9?6
,?)
lstm_174_input?????????
p

 
? "???????????
/__inference_sequential_58_layer_call_fn_3044076d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_58_layer_call_fn_3044103d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3044049?-./012345!"M?J
? 
C?@
>
lstm_174_input,?)
lstm_174_input?????????"3?0
.
dense_58"?
dense_58?????????