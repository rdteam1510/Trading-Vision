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
dense_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_77/kernel
s
#dense_77/kernel/Read/ReadVariableOpReadVariableOpdense_77/kernel*
_output_shapes

:
*
dtype0
r
dense_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_77/bias
k
!dense_77/bias/Read/ReadVariableOpReadVariableOpdense_77/bias*
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
lstm_231/lstm_cell_231/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_231/lstm_cell_231/kernel
?
1lstm_231/lstm_cell_231/kernel/Read/ReadVariableOpReadVariableOplstm_231/lstm_cell_231/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_231/lstm_cell_231/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_231/lstm_cell_231/recurrent_kernel
?
;lstm_231/lstm_cell_231/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_231/lstm_cell_231/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_231/lstm_cell_231/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_231/lstm_cell_231/bias
?
/lstm_231/lstm_cell_231/bias/Read/ReadVariableOpReadVariableOplstm_231/lstm_cell_231/bias*
_output_shapes	
:?*
dtype0
?
lstm_232/lstm_cell_232/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_232/lstm_cell_232/kernel
?
1lstm_232/lstm_cell_232/kernel/Read/ReadVariableOpReadVariableOplstm_232/lstm_cell_232/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_232/lstm_cell_232/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_232/lstm_cell_232/recurrent_kernel
?
;lstm_232/lstm_cell_232/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_232/lstm_cell_232/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_232/lstm_cell_232/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_232/lstm_cell_232/bias
?
/lstm_232/lstm_cell_232/bias/Read/ReadVariableOpReadVariableOplstm_232/lstm_cell_232/bias*
_output_shapes	
:?*
dtype0
?
lstm_233/lstm_cell_233/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_233/lstm_cell_233/kernel
?
1lstm_233/lstm_cell_233/kernel/Read/ReadVariableOpReadVariableOplstm_233/lstm_cell_233/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_233/lstm_cell_233/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_233/lstm_cell_233/recurrent_kernel
?
;lstm_233/lstm_cell_233/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_233/lstm_cell_233/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_233/lstm_cell_233/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_233/lstm_cell_233/bias
?
/lstm_233/lstm_cell_233/bias/Read/ReadVariableOpReadVariableOplstm_233/lstm_cell_233/bias*
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
Adam/dense_77/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_77/kernel/m
?
*Adam/dense_77/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_77/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/m
y
(Adam/dense_77/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_231/lstm_cell_231/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_231/lstm_cell_231/kernel/m
?
8Adam/lstm_231/lstm_cell_231/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_231/lstm_cell_231/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_231/lstm_cell_231/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_231/lstm_cell_231/recurrent_kernel/m
?
BAdam/lstm_231/lstm_cell_231/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_231/lstm_cell_231/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_231/lstm_cell_231/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_231/lstm_cell_231/bias/m
?
6Adam/lstm_231/lstm_cell_231/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_231/lstm_cell_231/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_232/lstm_cell_232/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_232/lstm_cell_232/kernel/m
?
8Adam/lstm_232/lstm_cell_232/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_232/lstm_cell_232/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_232/lstm_cell_232/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_232/lstm_cell_232/recurrent_kernel/m
?
BAdam/lstm_232/lstm_cell_232/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_232/lstm_cell_232/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_232/lstm_cell_232/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_232/lstm_cell_232/bias/m
?
6Adam/lstm_232/lstm_cell_232/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_232/lstm_cell_232/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_233/lstm_cell_233/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_233/lstm_cell_233/kernel/m
?
8Adam/lstm_233/lstm_cell_233/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_233/lstm_cell_233/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_233/lstm_cell_233/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_233/lstm_cell_233/recurrent_kernel/m
?
BAdam/lstm_233/lstm_cell_233/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_233/lstm_cell_233/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_233/lstm_cell_233/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_233/lstm_cell_233/bias/m
?
6Adam/lstm_233/lstm_cell_233/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_233/lstm_cell_233/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_77/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_77/kernel/v
?
*Adam/dense_77/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_77/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/v
y
(Adam/dense_77/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_231/lstm_cell_231/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_231/lstm_cell_231/kernel/v
?
8Adam/lstm_231/lstm_cell_231/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_231/lstm_cell_231/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_231/lstm_cell_231/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_231/lstm_cell_231/recurrent_kernel/v
?
BAdam/lstm_231/lstm_cell_231/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_231/lstm_cell_231/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_231/lstm_cell_231/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_231/lstm_cell_231/bias/v
?
6Adam/lstm_231/lstm_cell_231/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_231/lstm_cell_231/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_232/lstm_cell_232/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_232/lstm_cell_232/kernel/v
?
8Adam/lstm_232/lstm_cell_232/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_232/lstm_cell_232/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_232/lstm_cell_232/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_232/lstm_cell_232/recurrent_kernel/v
?
BAdam/lstm_232/lstm_cell_232/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_232/lstm_cell_232/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_232/lstm_cell_232/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_232/lstm_cell_232/bias/v
?
6Adam/lstm_232/lstm_cell_232/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_232/lstm_cell_232/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_233/lstm_cell_233/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_233/lstm_cell_233/kernel/v
?
8Adam/lstm_233/lstm_cell_233/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_233/lstm_cell_233/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_233/lstm_cell_233/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_233/lstm_cell_233/recurrent_kernel/v
?
BAdam/lstm_233/lstm_cell_233/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_233/lstm_cell_233/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_233/lstm_cell_233/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_233/lstm_cell_233/bias/v
?
6Adam/lstm_233/lstm_cell_233/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_233/lstm_cell_233/bias/v*
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
VARIABLE_VALUEdense_77/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_77/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_231/lstm_cell_231/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_231/lstm_cell_231/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_231/lstm_cell_231/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_232/lstm_cell_232/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_232/lstm_cell_232/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_232/lstm_cell_232/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_233/lstm_cell_233/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_233/lstm_cell_233/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_233/lstm_cell_233/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_77/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_77/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_231/lstm_cell_231/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_231/lstm_cell_231/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_231/lstm_cell_231/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_232/lstm_cell_232/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_232/lstm_cell_232/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_232/lstm_cell_232/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_233/lstm_cell_233/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_233/lstm_cell_233/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_233/lstm_cell_233/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_77/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_77/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_231/lstm_cell_231/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_231/lstm_cell_231/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_231/lstm_cell_231/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_232/lstm_cell_232/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_232/lstm_cell_232/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_232/lstm_cell_232/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_233/lstm_cell_233/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_233/lstm_cell_233/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_233/lstm_cell_233/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_231_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_231_inputlstm_231/lstm_cell_231/kernel'lstm_231/lstm_cell_231/recurrent_kernellstm_231/lstm_cell_231/biaslstm_232/lstm_cell_232/kernel'lstm_232/lstm_cell_232/recurrent_kernellstm_232/lstm_cell_232/biaslstm_233/lstm_cell_233/kernel'lstm_233/lstm_cell_233/recurrent_kernellstm_233/lstm_cell_233/biasdense_77/kerneldense_77/bias*
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
%__inference_signature_wrapper_2246969
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_77/kernel/Read/ReadVariableOp!dense_77/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_231/lstm_cell_231/kernel/Read/ReadVariableOp;lstm_231/lstm_cell_231/recurrent_kernel/Read/ReadVariableOp/lstm_231/lstm_cell_231/bias/Read/ReadVariableOp1lstm_232/lstm_cell_232/kernel/Read/ReadVariableOp;lstm_232/lstm_cell_232/recurrent_kernel/Read/ReadVariableOp/lstm_232/lstm_cell_232/bias/Read/ReadVariableOp1lstm_233/lstm_cell_233/kernel/Read/ReadVariableOp;lstm_233/lstm_cell_233/recurrent_kernel/Read/ReadVariableOp/lstm_233/lstm_cell_233/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_77/kernel/m/Read/ReadVariableOp(Adam/dense_77/bias/m/Read/ReadVariableOp8Adam/lstm_231/lstm_cell_231/kernel/m/Read/ReadVariableOpBAdam/lstm_231/lstm_cell_231/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_231/lstm_cell_231/bias/m/Read/ReadVariableOp8Adam/lstm_232/lstm_cell_232/kernel/m/Read/ReadVariableOpBAdam/lstm_232/lstm_cell_232/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_232/lstm_cell_232/bias/m/Read/ReadVariableOp8Adam/lstm_233/lstm_cell_233/kernel/m/Read/ReadVariableOpBAdam/lstm_233/lstm_cell_233/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_233/lstm_cell_233/bias/m/Read/ReadVariableOp*Adam/dense_77/kernel/v/Read/ReadVariableOp(Adam/dense_77/bias/v/Read/ReadVariableOp8Adam/lstm_231/lstm_cell_231/kernel/v/Read/ReadVariableOpBAdam/lstm_231/lstm_cell_231/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_231/lstm_cell_231/bias/v/Read/ReadVariableOp8Adam/lstm_232/lstm_cell_232/kernel/v/Read/ReadVariableOpBAdam/lstm_232/lstm_cell_232/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_232/lstm_cell_232/bias/v/Read/ReadVariableOp8Adam/lstm_233/lstm_cell_233/kernel/v/Read/ReadVariableOpBAdam/lstm_233/lstm_cell_233/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_233/lstm_cell_233/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2250181
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_77/kerneldense_77/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_231/lstm_cell_231/kernel'lstm_231/lstm_cell_231/recurrent_kernellstm_231/lstm_cell_231/biaslstm_232/lstm_cell_232/kernel'lstm_232/lstm_cell_232/recurrent_kernellstm_232/lstm_cell_232/biaslstm_233/lstm_cell_233/kernel'lstm_233/lstm_cell_233/recurrent_kernellstm_233/lstm_cell_233/biastotalcountAdam/dense_77/kernel/mAdam/dense_77/bias/m$Adam/lstm_231/lstm_cell_231/kernel/m.Adam/lstm_231/lstm_cell_231/recurrent_kernel/m"Adam/lstm_231/lstm_cell_231/bias/m$Adam/lstm_232/lstm_cell_232/kernel/m.Adam/lstm_232/lstm_cell_232/recurrent_kernel/m"Adam/lstm_232/lstm_cell_232/bias/m$Adam/lstm_233/lstm_cell_233/kernel/m.Adam/lstm_233/lstm_cell_233/recurrent_kernel/m"Adam/lstm_233/lstm_cell_233/bias/mAdam/dense_77/kernel/vAdam/dense_77/bias/v$Adam/lstm_231/lstm_cell_231/kernel/v.Adam/lstm_231/lstm_cell_231/recurrent_kernel/v"Adam/lstm_231/lstm_cell_231/bias/v$Adam/lstm_232/lstm_cell_232/kernel/v.Adam/lstm_232/lstm_cell_232/recurrent_kernel/v"Adam/lstm_232/lstm_cell_232/bias/v$Adam/lstm_233/lstm_cell_233/kernel/v.Adam/lstm_233/lstm_cell_233/recurrent_kernel/v"Adam/lstm_233/lstm_cell_233/bias/v*4
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
#__inference__traced_restore_2250311??+
?C
?

lstm_233_while_body_2247787.
*lstm_233_while_lstm_233_while_loop_counter4
0lstm_233_while_lstm_233_while_maximum_iterations
lstm_233_while_placeholder 
lstm_233_while_placeholder_1 
lstm_233_while_placeholder_2 
lstm_233_while_placeholder_3-
)lstm_233_while_lstm_233_strided_slice_1_0i
elstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0:2(Q
?lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(L
>lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0:(
lstm_233_while_identity
lstm_233_while_identity_1
lstm_233_while_identity_2
lstm_233_while_identity_3
lstm_233_while_identity_4
lstm_233_while_identity_5+
'lstm_233_while_lstm_233_strided_slice_1g
clstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensorM
;lstm_233_while_lstm_cell_371_matmul_readvariableop_resource:2(O
=lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource:
(J
<lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource:(??3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp?2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp?4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp?
@lstm_233/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_233/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensor_0lstm_233_while_placeholderIlstm_233/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp=lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_233/while/lstm_cell_371/MatMulMatMul9lstm_233/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp?lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_233/while/lstm_cell_371/MatMul_1MatMullstm_233_while_placeholder_2<lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_233/while/lstm_cell_371/addAddV2-lstm_233/while/lstm_cell_371/MatMul:product:0/lstm_233/while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp>lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_233/while/lstm_cell_371/BiasAddBiasAdd$lstm_233/while/lstm_cell_371/add:z:0;lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_233/while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_233/while/lstm_cell_371/splitSplit5lstm_233/while/lstm_cell_371/split/split_dim:output:0-lstm_233/while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_233/while/lstm_cell_371/SigmoidSigmoid+lstm_233/while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_233/while/lstm_cell_371/Sigmoid_1Sigmoid+lstm_233/while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_233/while/lstm_cell_371/mulMul*lstm_233/while/lstm_cell_371/Sigmoid_1:y:0lstm_233_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_233/while/lstm_cell_371/ReluRelu+lstm_233/while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_233/while/lstm_cell_371/mul_1Mul(lstm_233/while/lstm_cell_371/Sigmoid:y:0/lstm_233/while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_233/while/lstm_cell_371/add_1AddV2$lstm_233/while/lstm_cell_371/mul:z:0&lstm_233/while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_233/while/lstm_cell_371/Sigmoid_2Sigmoid+lstm_233/while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_233/while/lstm_cell_371/Relu_1Relu&lstm_233/while/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_233/while/lstm_cell_371/mul_2Mul*lstm_233/while/lstm_cell_371/Sigmoid_2:y:01lstm_233/while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_233/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_233_while_placeholder_1lstm_233_while_placeholder&lstm_233/while/lstm_cell_371/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_233/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_233/while/addAddV2lstm_233_while_placeholderlstm_233/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_233/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_233/while/add_1AddV2*lstm_233_while_lstm_233_while_loop_counterlstm_233/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_233/while/IdentityIdentitylstm_233/while/add_1:z:0^lstm_233/while/NoOp*
T0*
_output_shapes
: ?
lstm_233/while/Identity_1Identity0lstm_233_while_lstm_233_while_maximum_iterations^lstm_233/while/NoOp*
T0*
_output_shapes
: t
lstm_233/while/Identity_2Identitylstm_233/while/add:z:0^lstm_233/while/NoOp*
T0*
_output_shapes
: ?
lstm_233/while/Identity_3IdentityClstm_233/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_233/while/NoOp*
T0*
_output_shapes
: ?
lstm_233/while/Identity_4Identity&lstm_233/while/lstm_cell_371/mul_2:z:0^lstm_233/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_233/while/Identity_5Identity&lstm_233/while/lstm_cell_371/add_1:z:0^lstm_233/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_233/while/NoOpNoOp4^lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp3^lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp5^lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_233_while_identity lstm_233/while/Identity:output:0"?
lstm_233_while_identity_1"lstm_233/while/Identity_1:output:0"?
lstm_233_while_identity_2"lstm_233/while/Identity_2:output:0"?
lstm_233_while_identity_3"lstm_233/while/Identity_3:output:0"?
lstm_233_while_identity_4"lstm_233/while/Identity_4:output:0"?
lstm_233_while_identity_5"lstm_233/while/Identity_5:output:0"T
'lstm_233_while_lstm_233_strided_slice_1)lstm_233_while_lstm_233_strided_slice_1_0"~
<lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource>lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0"?
=lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource?lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0"|
;lstm_233_while_lstm_cell_371_matmul_readvariableop_resource=lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0"?
clstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensorelstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp2h
2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp2l
4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2248596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_370_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_370_matmul_readvariableop_resource:	d?G
4while_lstm_cell_370_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_370_biasadd_readvariableop_resource:	???*while/lstm_cell_370/BiasAdd/ReadVariableOp?)while/lstm_cell_370/MatMul/ReadVariableOp?+while/lstm_cell_370/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_370/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_370/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_370/addAddV2$while/lstm_cell_370/MatMul:product:0&while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_370/BiasAddBiasAddwhile/lstm_cell_370/add:z:02while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_370/splitSplit,while/lstm_cell_370/split/split_dim:output:0$while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_370/SigmoidSigmoid"while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_1Sigmoid"while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mulMul!while/lstm_cell_370/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_370/ReluRelu"while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_1Mulwhile/lstm_cell_370/Sigmoid:y:0&while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/add_1AddV2while/lstm_cell_370/mul:z:0while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_2Sigmoid"while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_370/Relu_1Reluwhile/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_2Mul!while/lstm_cell_370/Sigmoid_2:y:0(while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_370/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_370/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_370/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_370/BiasAdd/ReadVariableOp*^while/lstm_cell_370/MatMul/ReadVariableOp,^while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_370_biasadd_readvariableop_resource5while_lstm_cell_370_biasadd_readvariableop_resource_0"n
4while_lstm_cell_370_matmul_1_readvariableop_resource6while_lstm_cell_370_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_370_matmul_readvariableop_resource4while_lstm_cell_370_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_370/BiasAdd/ReadVariableOp*while/lstm_cell_370/BiasAdd/ReadVariableOp2V
)while/lstm_cell_370/MatMul/ReadVariableOp)while/lstm_cell_370/MatMul/ReadVariableOp2Z
+while/lstm_cell_370/MatMul_1/ReadVariableOp+while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2248739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_370_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_370_matmul_readvariableop_resource:	d?G
4while_lstm_cell_370_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_370_biasadd_readvariableop_resource:	???*while/lstm_cell_370/BiasAdd/ReadVariableOp?)while/lstm_cell_370/MatMul/ReadVariableOp?+while/lstm_cell_370/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_370/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_370/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_370/addAddV2$while/lstm_cell_370/MatMul:product:0&while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_370/BiasAddBiasAddwhile/lstm_cell_370/add:z:02while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_370/splitSplit,while/lstm_cell_370/split/split_dim:output:0$while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_370/SigmoidSigmoid"while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_1Sigmoid"while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mulMul!while/lstm_cell_370/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_370/ReluRelu"while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_1Mulwhile/lstm_cell_370/Sigmoid:y:0&while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/add_1AddV2while/lstm_cell_370/mul:z:0while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_2Sigmoid"while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_370/Relu_1Reluwhile/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_2Mul!while/lstm_cell_370/Sigmoid_2:y:0(while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_370/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_370/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_370/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_370/BiasAdd/ReadVariableOp*^while/lstm_cell_370/MatMul/ReadVariableOp,^while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_370_biasadd_readvariableop_resource5while_lstm_cell_370_biasadd_readvariableop_resource_0"n
4while_lstm_cell_370_matmul_1_readvariableop_resource6while_lstm_cell_370_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_370_matmul_readvariableop_resource4while_lstm_cell_370_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_370/BiasAdd/ReadVariableOp*while/lstm_cell_370/BiasAdd/ReadVariableOp2V
)while/lstm_cell_370/MatMul/ReadVariableOp)while/lstm_cell_370/MatMul/ReadVariableOp2Z
+while/lstm_cell_370/MatMul_1/ReadVariableOp+while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246058

inputs?
,lstm_cell_370_matmul_readvariableop_resource:	d?A
.lstm_cell_370_matmul_1_readvariableop_resource:	2?<
-lstm_cell_370_biasadd_readvariableop_resource:	?
identity??$lstm_cell_370/BiasAdd/ReadVariableOp?#lstm_cell_370/MatMul/ReadVariableOp?%lstm_cell_370/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_370/MatMul/ReadVariableOpReadVariableOp,lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_370/MatMulMatMulstrided_slice_2:output:0+lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_370/MatMul_1MatMulzeros:output:0-lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_370/addAddV2lstm_cell_370/MatMul:product:0 lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_370/BiasAddBiasAddlstm_cell_370/add:z:0,lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_370/splitSplit&lstm_cell_370/split/split_dim:output:0lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_370/SigmoidSigmoidlstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_1Sigmoidlstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_370/mulMullstm_cell_370/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_370/ReluRelulstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_1Mullstm_cell_370/Sigmoid:y:0 lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_370/add_1AddV2lstm_cell_370/mul:z:0lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_2Sigmoidlstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_370/Relu_1Relulstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_2Mullstm_cell_370/Sigmoid_2:y:0"lstm_cell_370/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_370_matmul_readvariableop_resource.lstm_cell_370_matmul_1_readvariableop_resource-lstm_cell_370_biasadd_readvariableop_resource*
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
while_body_2245974*
condR
while_cond_2245973*K
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
NoOpNoOp%^lstm_cell_370/BiasAdd/ReadVariableOp$^lstm_cell_370/MatMul/ReadVariableOp&^lstm_cell_370/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_370/BiasAdd/ReadVariableOp$lstm_cell_370/BiasAdd/ReadVariableOp2J
#lstm_cell_370/MatMul/ReadVariableOp#lstm_cell_370/MatMul/ReadVariableOp2N
%lstm_cell_370/MatMul_1/ReadVariableOp%lstm_cell_370/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_232_layer_call_fn_2248537

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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246589s
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
?
?
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246233

inputs#
lstm_231_2245909:	?#
lstm_231_2245911:	d?
lstm_231_2245913:	?#
lstm_232_2246059:	d?#
lstm_232_2246061:	2?
lstm_232_2246063:	?"
lstm_233_2246209:2("
lstm_233_2246211:
(
lstm_233_2246213:("
dense_77_2246227:

dense_77_2246229:
identity?? dense_77/StatefulPartitionedCall? lstm_231/StatefulPartitionedCall? lstm_232/StatefulPartitionedCall? lstm_233/StatefulPartitionedCall?
 lstm_231/StatefulPartitionedCallStatefulPartitionedCallinputslstm_231_2245909lstm_231_2245911lstm_231_2245913*
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2245908?
 lstm_232/StatefulPartitionedCallStatefulPartitionedCall)lstm_231/StatefulPartitionedCall:output:0lstm_232_2246059lstm_232_2246061lstm_232_2246063*
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246058?
 lstm_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_232/StatefulPartitionedCall:output:0lstm_233_2246209lstm_233_2246211lstm_233_2246213*
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246208?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)lstm_233/StatefulPartitionedCall:output:0dense_77_2246227dense_77_2246229*
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
E__inference_dense_77_layer_call_and_return_conditional_losses_2246226x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_77/StatefulPartitionedCall!^lstm_231/StatefulPartitionedCall!^lstm_232/StatefulPartitionedCall!^lstm_233/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 lstm_231/StatefulPartitionedCall lstm_231/StatefulPartitionedCall2D
 lstm_232/StatefulPartitionedCall lstm_232/StatefulPartitionedCall2D
 lstm_233/StatefulPartitionedCall lstm_233/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_77_layer_call_fn_2246258
lstm_231_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_231_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246233o
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
_user_specified_namelstm_231_input
?
?
*__inference_lstm_231_layer_call_fn_2247888
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2244859|
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
*__inference_lstm_233_layer_call_fn_2249120
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2245559o
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

?
%__inference_signature_wrapper_2246969
lstm_231_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_231_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2244709o
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
_user_specified_namelstm_231_input
?
?
while_cond_2249640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2249640___redundant_placeholder05
1while_while_cond_2249640___redundant_placeholder15
1while_while_cond_2249640___redundant_placeholder25
1while_while_cond_2249640___redundant_placeholder3
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
/__inference_sequential_77_layer_call_fn_2246874
lstm_231_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_231_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246822o
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
_user_specified_namelstm_231_input
?
?
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245272

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
while_body_2249355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_371_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_371_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_371_matmul_readvariableop_resource:2(F
4while_lstm_cell_371_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_371_biasadd_readvariableop_resource:(??*while/lstm_cell_371/BiasAdd/ReadVariableOp?)while/lstm_cell_371/MatMul/ReadVariableOp?+while/lstm_cell_371/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_371/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_371/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_371/addAddV2$while/lstm_cell_371/MatMul:product:0&while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_371/BiasAddBiasAddwhile/lstm_cell_371/add:z:02while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_371/splitSplit,while/lstm_cell_371/split/split_dim:output:0$while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_371/SigmoidSigmoid"while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_1Sigmoid"while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mulMul!while/lstm_cell_371/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_371/ReluRelu"while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_1Mulwhile/lstm_cell_371/Sigmoid:y:0&while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/add_1AddV2while/lstm_cell_371/mul:z:0while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_2Sigmoid"while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_371/Relu_1Reluwhile/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_2Mul!while/lstm_cell_371/Sigmoid_2:y:0(while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_371/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_371/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_371/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_371/BiasAdd/ReadVariableOp*^while/lstm_cell_371/MatMul/ReadVariableOp,^while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_371_biasadd_readvariableop_resource5while_lstm_cell_371_biasadd_readvariableop_resource_0"n
4while_lstm_cell_371_matmul_1_readvariableop_resource6while_lstm_cell_371_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_371_matmul_readvariableop_resource4while_lstm_cell_371_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_371/BiasAdd/ReadVariableOp*while/lstm_cell_371/BiasAdd/ReadVariableOp2V
)while/lstm_cell_371/MatMul/ReadVariableOp)while/lstm_cell_371/MatMul/ReadVariableOp2Z
+while/lstm_cell_371/MatMul_1/ReadVariableOp+while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246822

inputs#
lstm_231_2246795:	?#
lstm_231_2246797:	d?
lstm_231_2246799:	?#
lstm_232_2246802:	d?#
lstm_232_2246804:	2?
lstm_232_2246806:	?"
lstm_233_2246809:2("
lstm_233_2246811:
(
lstm_233_2246813:("
dense_77_2246816:

dense_77_2246818:
identity?? dense_77/StatefulPartitionedCall? lstm_231/StatefulPartitionedCall? lstm_232/StatefulPartitionedCall? lstm_233/StatefulPartitionedCall?
 lstm_231/StatefulPartitionedCallStatefulPartitionedCallinputslstm_231_2246795lstm_231_2246797lstm_231_2246799*
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2246754?
 lstm_232/StatefulPartitionedCallStatefulPartitionedCall)lstm_231/StatefulPartitionedCall:output:0lstm_232_2246802lstm_232_2246804lstm_232_2246806*
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246589?
 lstm_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_232/StatefulPartitionedCall:output:0lstm_233_2246809lstm_233_2246811lstm_233_2246813*
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246424?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)lstm_233/StatefulPartitionedCall:output:0dense_77_2246816dense_77_2246818*
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
E__inference_dense_77_layer_call_and_return_conditional_losses_2246226x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_77/StatefulPartitionedCall!^lstm_231/StatefulPartitionedCall!^lstm_232/StatefulPartitionedCall!^lstm_233/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 lstm_231/StatefulPartitionedCall lstm_231/StatefulPartitionedCall2D
 lstm_232/StatefulPartitionedCall lstm_232/StatefulPartitionedCall2D
 lstm_233/StatefulPartitionedCall lstm_233/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249582

inputs>
,lstm_cell_371_matmul_readvariableop_resource:2(@
.lstm_cell_371_matmul_1_readvariableop_resource:
(;
-lstm_cell_371_biasadd_readvariableop_resource:(
identity??$lstm_cell_371/BiasAdd/ReadVariableOp?#lstm_cell_371/MatMul/ReadVariableOp?%lstm_cell_371/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_371/MatMul/ReadVariableOpReadVariableOp,lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_371/MatMulMatMulstrided_slice_2:output:0+lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_371/MatMul_1MatMulzeros:output:0-lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_371/addAddV2lstm_cell_371/MatMul:product:0 lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_371/BiasAddBiasAddlstm_cell_371/add:z:0,lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_371/splitSplit&lstm_cell_371/split/split_dim:output:0lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_371/SigmoidSigmoidlstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_1Sigmoidlstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_371/mulMullstm_cell_371/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_371/ReluRelulstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_1Mullstm_cell_371/Sigmoid:y:0 lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_371/add_1AddV2lstm_cell_371/mul:z:0lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_2Sigmoidlstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_371/Relu_1Relulstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_2Mullstm_cell_371/Sigmoid_2:y:0"lstm_cell_371/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_371_matmul_readvariableop_resource.lstm_cell_371_matmul_1_readvariableop_resource-lstm_cell_371_biasadd_readvariableop_resource*
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
while_body_2249498*
condR
while_cond_2249497*K
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
NoOpNoOp%^lstm_cell_371/BiasAdd/ReadVariableOp$^lstm_cell_371/MatMul/ReadVariableOp&^lstm_cell_371/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_371/BiasAdd/ReadVariableOp$lstm_cell_371/BiasAdd/ReadVariableOp2J
#lstm_cell_371/MatMul/ReadVariableOp#lstm_cell_371/MatMul/ReadVariableOp2N
%lstm_cell_371/MatMul_1/ReadVariableOp%lstm_cell_371/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248207
inputs_0?
,lstm_cell_369_matmul_readvariableop_resource:	?A
.lstm_cell_369_matmul_1_readvariableop_resource:	d?<
-lstm_cell_369_biasadd_readvariableop_resource:	?
identity??$lstm_cell_369/BiasAdd/ReadVariableOp?#lstm_cell_369/MatMul/ReadVariableOp?%lstm_cell_369/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_369/MatMul/ReadVariableOpReadVariableOp,lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_369/MatMulMatMulstrided_slice_2:output:0+lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_369/MatMul_1MatMulzeros:output:0-lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_369/addAddV2lstm_cell_369/MatMul:product:0 lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_369/BiasAddBiasAddlstm_cell_369/add:z:0,lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_369/splitSplit&lstm_cell_369/split/split_dim:output:0lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_369/SigmoidSigmoidlstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_1Sigmoidlstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_369/mulMullstm_cell_369/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_369/ReluRelulstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_1Mullstm_cell_369/Sigmoid:y:0 lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_369/add_1AddV2lstm_cell_369/mul:z:0lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_2Sigmoidlstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_369/Relu_1Relulstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_2Mullstm_cell_369/Sigmoid_2:y:0"lstm_cell_369/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_369_matmul_readvariableop_resource.lstm_cell_369_matmul_1_readvariableop_resource-lstm_cell_369_biasadd_readvariableop_resource*
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
while_body_2248123*
condR
while_cond_2248122*K
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
NoOpNoOp%^lstm_cell_369/BiasAdd/ReadVariableOp$^lstm_cell_369/MatMul/ReadVariableOp&^lstm_cell_369/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_369/BiasAdd/ReadVariableOp$lstm_cell_369/BiasAdd/ReadVariableOp2J
#lstm_cell_369/MatMul/ReadVariableOp#lstm_cell_369/MatMul/ReadVariableOp2N
%lstm_cell_369/MatMul_1/ReadVariableOp%lstm_cell_369/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2249810

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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2245209

inputs(
lstm_cell_370_2245127:	d?(
lstm_cell_370_2245129:	2?$
lstm_cell_370_2245131:	?
identity??%lstm_cell_370/StatefulPartitionedCall?while;
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
%lstm_cell_370/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_370_2245127lstm_cell_370_2245129lstm_cell_370_2245131*
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245126n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_370_2245127lstm_cell_370_2245129lstm_cell_370_2245131*
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
while_body_2245140*
condR
while_cond_2245139*K
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
NoOpNoOp&^lstm_cell_370/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_370/StatefulPartitionedCall%lstm_cell_370/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_2246505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_370_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_370_matmul_readvariableop_resource:	d?G
4while_lstm_cell_370_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_370_biasadd_readvariableop_resource:	???*while/lstm_cell_370/BiasAdd/ReadVariableOp?)while/lstm_cell_370/MatMul/ReadVariableOp?+while/lstm_cell_370/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_370/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_370/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_370/addAddV2$while/lstm_cell_370/MatMul:product:0&while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_370/BiasAddBiasAddwhile/lstm_cell_370/add:z:02while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_370/splitSplit,while/lstm_cell_370/split/split_dim:output:0$while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_370/SigmoidSigmoid"while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_1Sigmoid"while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mulMul!while/lstm_cell_370/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_370/ReluRelu"while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_1Mulwhile/lstm_cell_370/Sigmoid:y:0&while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/add_1AddV2while/lstm_cell_370/mul:z:0while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_2Sigmoid"while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_370/Relu_1Reluwhile/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_2Mul!while/lstm_cell_370/Sigmoid_2:y:0(while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_370/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_370/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_370/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_370/BiasAdd/ReadVariableOp*^while/lstm_cell_370/MatMul/ReadVariableOp,^while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_370_biasadd_readvariableop_resource5while_lstm_cell_370_biasadd_readvariableop_resource_0"n
4while_lstm_cell_370_matmul_1_readvariableop_resource6while_lstm_cell_370_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_370_matmul_readvariableop_resource4while_lstm_cell_370_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_370/BiasAdd/ReadVariableOp*while/lstm_cell_370/BiasAdd/ReadVariableOp2V
)while/lstm_cell_370/MatMul/ReadVariableOp)while/lstm_cell_370/MatMul/ReadVariableOp2Z
+while/lstm_cell_370/MatMul_1/ReadVariableOp+while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_370_layer_call_fn_2249859

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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245126o
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
?
/__inference_lstm_cell_369_layer_call_fn_2249761

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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244776o
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
while_cond_2246123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2246123___redundant_placeholder05
1while_while_cond_2246123___redundant_placeholder15
1while_while_cond_2246123___redundant_placeholder25
1while_while_cond_2246123___redundant_placeholder3
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
while_body_2249641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_371_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_371_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_371_matmul_readvariableop_resource:2(F
4while_lstm_cell_371_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_371_biasadd_readvariableop_resource:(??*while/lstm_cell_371/BiasAdd/ReadVariableOp?)while/lstm_cell_371/MatMul/ReadVariableOp?+while/lstm_cell_371/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_371/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_371/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_371/addAddV2$while/lstm_cell_371/MatMul:product:0&while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_371/BiasAddBiasAddwhile/lstm_cell_371/add:z:02while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_371/splitSplit,while/lstm_cell_371/split/split_dim:output:0$while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_371/SigmoidSigmoid"while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_1Sigmoid"while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mulMul!while/lstm_cell_371/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_371/ReluRelu"while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_1Mulwhile/lstm_cell_371/Sigmoid:y:0&while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/add_1AddV2while/lstm_cell_371/mul:z:0while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_2Sigmoid"while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_371/Relu_1Reluwhile/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_2Mul!while/lstm_cell_371/Sigmoid_2:y:0(while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_371/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_371/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_371/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_371/BiasAdd/ReadVariableOp*^while/lstm_cell_371/MatMul/ReadVariableOp,^while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_371_biasadd_readvariableop_resource5while_lstm_cell_371_biasadd_readvariableop_resource_0"n
4while_lstm_cell_371_matmul_1_readvariableop_resource6while_lstm_cell_371_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_371_matmul_readvariableop_resource4while_lstm_cell_371_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_371/BiasAdd/ReadVariableOp*while/lstm_cell_371/BiasAdd/ReadVariableOp2V
)while/lstm_cell_371/MatMul/ReadVariableOp)while/lstm_cell_371/MatMul/ReadVariableOp2Z
+while/lstm_cell_371/MatMul_1/ReadVariableOp+while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_2244709
lstm_231_inputV
Csequential_77_lstm_231_lstm_cell_369_matmul_readvariableop_resource:	?X
Esequential_77_lstm_231_lstm_cell_369_matmul_1_readvariableop_resource:	d?S
Dsequential_77_lstm_231_lstm_cell_369_biasadd_readvariableop_resource:	?V
Csequential_77_lstm_232_lstm_cell_370_matmul_readvariableop_resource:	d?X
Esequential_77_lstm_232_lstm_cell_370_matmul_1_readvariableop_resource:	2?S
Dsequential_77_lstm_232_lstm_cell_370_biasadd_readvariableop_resource:	?U
Csequential_77_lstm_233_lstm_cell_371_matmul_readvariableop_resource:2(W
Esequential_77_lstm_233_lstm_cell_371_matmul_1_readvariableop_resource:
(R
Dsequential_77_lstm_233_lstm_cell_371_biasadd_readvariableop_resource:(G
5sequential_77_dense_77_matmul_readvariableop_resource:
D
6sequential_77_dense_77_biasadd_readvariableop_resource:
identity??-sequential_77/dense_77/BiasAdd/ReadVariableOp?,sequential_77/dense_77/MatMul/ReadVariableOp?;sequential_77/lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp?:sequential_77/lstm_231/lstm_cell_369/MatMul/ReadVariableOp?<sequential_77/lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp?sequential_77/lstm_231/while?;sequential_77/lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp?:sequential_77/lstm_232/lstm_cell_370/MatMul/ReadVariableOp?<sequential_77/lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp?sequential_77/lstm_232/while?;sequential_77/lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp?:sequential_77/lstm_233/lstm_cell_371/MatMul/ReadVariableOp?<sequential_77/lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp?sequential_77/lstm_233/whileZ
sequential_77/lstm_231/ShapeShapelstm_231_input*
T0*
_output_shapes
:t
*sequential_77/lstm_231/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_77/lstm_231/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_77/lstm_231/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_77/lstm_231/strided_sliceStridedSlice%sequential_77/lstm_231/Shape:output:03sequential_77/lstm_231/strided_slice/stack:output:05sequential_77/lstm_231/strided_slice/stack_1:output:05sequential_77/lstm_231/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_77/lstm_231/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_77/lstm_231/zeros/packedPack-sequential_77/lstm_231/strided_slice:output:0.sequential_77/lstm_231/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_77/lstm_231/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_77/lstm_231/zerosFill,sequential_77/lstm_231/zeros/packed:output:0+sequential_77/lstm_231/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_77/lstm_231/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_77/lstm_231/zeros_1/packedPack-sequential_77/lstm_231/strided_slice:output:00sequential_77/lstm_231/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_77/lstm_231/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_77/lstm_231/zeros_1Fill.sequential_77/lstm_231/zeros_1/packed:output:0-sequential_77/lstm_231/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_77/lstm_231/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_77/lstm_231/transpose	Transposelstm_231_input.sequential_77/lstm_231/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_77/lstm_231/Shape_1Shape$sequential_77/lstm_231/transpose:y:0*
T0*
_output_shapes
:v
,sequential_77/lstm_231/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_231/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_77/lstm_231/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_231/strided_slice_1StridedSlice'sequential_77/lstm_231/Shape_1:output:05sequential_77/lstm_231/strided_slice_1/stack:output:07sequential_77/lstm_231/strided_slice_1/stack_1:output:07sequential_77/lstm_231/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_77/lstm_231/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_77/lstm_231/TensorArrayV2TensorListReserve;sequential_77/lstm_231/TensorArrayV2/element_shape:output:0/sequential_77/lstm_231/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_77/lstm_231/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_77/lstm_231/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_77/lstm_231/transpose:y:0Usequential_77/lstm_231/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_77/lstm_231/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_231/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_77/lstm_231/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_231/strided_slice_2StridedSlice$sequential_77/lstm_231/transpose:y:05sequential_77/lstm_231/strided_slice_2/stack:output:07sequential_77/lstm_231/strided_slice_2/stack_1:output:07sequential_77/lstm_231/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_77/lstm_231/lstm_cell_369/MatMul/ReadVariableOpReadVariableOpCsequential_77_lstm_231_lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_77/lstm_231/lstm_cell_369/MatMulMatMul/sequential_77/lstm_231/strided_slice_2:output:0Bsequential_77/lstm_231/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_77/lstm_231/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOpEsequential_77_lstm_231_lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_77/lstm_231/lstm_cell_369/MatMul_1MatMul%sequential_77/lstm_231/zeros:output:0Dsequential_77/lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_77/lstm_231/lstm_cell_369/addAddV25sequential_77/lstm_231/lstm_cell_369/MatMul:product:07sequential_77/lstm_231/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_77/lstm_231/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOpDsequential_77_lstm_231_lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_77/lstm_231/lstm_cell_369/BiasAddBiasAdd,sequential_77/lstm_231/lstm_cell_369/add:z:0Csequential_77/lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_77/lstm_231/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_77/lstm_231/lstm_cell_369/splitSplit=sequential_77/lstm_231/lstm_cell_369/split/split_dim:output:05sequential_77/lstm_231/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_77/lstm_231/lstm_cell_369/SigmoidSigmoid3sequential_77/lstm_231/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_77/lstm_231/lstm_cell_369/Sigmoid_1Sigmoid3sequential_77/lstm_231/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_77/lstm_231/lstm_cell_369/mulMul2sequential_77/lstm_231/lstm_cell_369/Sigmoid_1:y:0'sequential_77/lstm_231/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_77/lstm_231/lstm_cell_369/ReluRelu3sequential_77/lstm_231/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_77/lstm_231/lstm_cell_369/mul_1Mul0sequential_77/lstm_231/lstm_cell_369/Sigmoid:y:07sequential_77/lstm_231/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_77/lstm_231/lstm_cell_369/add_1AddV2,sequential_77/lstm_231/lstm_cell_369/mul:z:0.sequential_77/lstm_231/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_77/lstm_231/lstm_cell_369/Sigmoid_2Sigmoid3sequential_77/lstm_231/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_77/lstm_231/lstm_cell_369/Relu_1Relu.sequential_77/lstm_231/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_77/lstm_231/lstm_cell_369/mul_2Mul2sequential_77/lstm_231/lstm_cell_369/Sigmoid_2:y:09sequential_77/lstm_231/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_77/lstm_231/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_77/lstm_231/TensorArrayV2_1TensorListReserve=sequential_77/lstm_231/TensorArrayV2_1/element_shape:output:0/sequential_77/lstm_231/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_77/lstm_231/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_77/lstm_231/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_77/lstm_231/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_77/lstm_231/whileWhile2sequential_77/lstm_231/while/loop_counter:output:08sequential_77/lstm_231/while/maximum_iterations:output:0$sequential_77/lstm_231/time:output:0/sequential_77/lstm_231/TensorArrayV2_1:handle:0%sequential_77/lstm_231/zeros:output:0'sequential_77/lstm_231/zeros_1:output:0/sequential_77/lstm_231/strided_slice_1:output:0Nsequential_77/lstm_231/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_77_lstm_231_lstm_cell_369_matmul_readvariableop_resourceEsequential_77_lstm_231_lstm_cell_369_matmul_1_readvariableop_resourceDsequential_77_lstm_231_lstm_cell_369_biasadd_readvariableop_resource*
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
)sequential_77_lstm_231_while_body_2244341*5
cond-R+
)sequential_77_lstm_231_while_cond_2244340*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_77/lstm_231/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_77/lstm_231/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_77/lstm_231/while:output:3Psequential_77/lstm_231/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_77/lstm_231/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_77/lstm_231/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_231/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_231/strided_slice_3StridedSliceBsequential_77/lstm_231/TensorArrayV2Stack/TensorListStack:tensor:05sequential_77/lstm_231/strided_slice_3/stack:output:07sequential_77/lstm_231/strided_slice_3/stack_1:output:07sequential_77/lstm_231/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_77/lstm_231/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_77/lstm_231/transpose_1	TransposeBsequential_77/lstm_231/TensorArrayV2Stack/TensorListStack:tensor:00sequential_77/lstm_231/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_77/lstm_231/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_77/lstm_232/ShapeShape&sequential_77/lstm_231/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_77/lstm_232/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_77/lstm_232/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_77/lstm_232/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_77/lstm_232/strided_sliceStridedSlice%sequential_77/lstm_232/Shape:output:03sequential_77/lstm_232/strided_slice/stack:output:05sequential_77/lstm_232/strided_slice/stack_1:output:05sequential_77/lstm_232/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_77/lstm_232/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_77/lstm_232/zeros/packedPack-sequential_77/lstm_232/strided_slice:output:0.sequential_77/lstm_232/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_77/lstm_232/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_77/lstm_232/zerosFill,sequential_77/lstm_232/zeros/packed:output:0+sequential_77/lstm_232/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_77/lstm_232/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_77/lstm_232/zeros_1/packedPack-sequential_77/lstm_232/strided_slice:output:00sequential_77/lstm_232/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_77/lstm_232/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_77/lstm_232/zeros_1Fill.sequential_77/lstm_232/zeros_1/packed:output:0-sequential_77/lstm_232/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_77/lstm_232/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_77/lstm_232/transpose	Transpose&sequential_77/lstm_231/transpose_1:y:0.sequential_77/lstm_232/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_77/lstm_232/Shape_1Shape$sequential_77/lstm_232/transpose:y:0*
T0*
_output_shapes
:v
,sequential_77/lstm_232/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_232/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_77/lstm_232/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_232/strided_slice_1StridedSlice'sequential_77/lstm_232/Shape_1:output:05sequential_77/lstm_232/strided_slice_1/stack:output:07sequential_77/lstm_232/strided_slice_1/stack_1:output:07sequential_77/lstm_232/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_77/lstm_232/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_77/lstm_232/TensorArrayV2TensorListReserve;sequential_77/lstm_232/TensorArrayV2/element_shape:output:0/sequential_77/lstm_232/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_77/lstm_232/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_77/lstm_232/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_77/lstm_232/transpose:y:0Usequential_77/lstm_232/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_77/lstm_232/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_232/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_77/lstm_232/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_232/strided_slice_2StridedSlice$sequential_77/lstm_232/transpose:y:05sequential_77/lstm_232/strided_slice_2/stack:output:07sequential_77/lstm_232/strided_slice_2/stack_1:output:07sequential_77/lstm_232/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_77/lstm_232/lstm_cell_370/MatMul/ReadVariableOpReadVariableOpCsequential_77_lstm_232_lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_77/lstm_232/lstm_cell_370/MatMulMatMul/sequential_77/lstm_232/strided_slice_2:output:0Bsequential_77/lstm_232/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_77/lstm_232/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOpEsequential_77_lstm_232_lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_77/lstm_232/lstm_cell_370/MatMul_1MatMul%sequential_77/lstm_232/zeros:output:0Dsequential_77/lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_77/lstm_232/lstm_cell_370/addAddV25sequential_77/lstm_232/lstm_cell_370/MatMul:product:07sequential_77/lstm_232/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_77/lstm_232/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOpDsequential_77_lstm_232_lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_77/lstm_232/lstm_cell_370/BiasAddBiasAdd,sequential_77/lstm_232/lstm_cell_370/add:z:0Csequential_77/lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_77/lstm_232/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_77/lstm_232/lstm_cell_370/splitSplit=sequential_77/lstm_232/lstm_cell_370/split/split_dim:output:05sequential_77/lstm_232/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_77/lstm_232/lstm_cell_370/SigmoidSigmoid3sequential_77/lstm_232/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_77/lstm_232/lstm_cell_370/Sigmoid_1Sigmoid3sequential_77/lstm_232/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_77/lstm_232/lstm_cell_370/mulMul2sequential_77/lstm_232/lstm_cell_370/Sigmoid_1:y:0'sequential_77/lstm_232/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_77/lstm_232/lstm_cell_370/ReluRelu3sequential_77/lstm_232/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_77/lstm_232/lstm_cell_370/mul_1Mul0sequential_77/lstm_232/lstm_cell_370/Sigmoid:y:07sequential_77/lstm_232/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_77/lstm_232/lstm_cell_370/add_1AddV2,sequential_77/lstm_232/lstm_cell_370/mul:z:0.sequential_77/lstm_232/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_77/lstm_232/lstm_cell_370/Sigmoid_2Sigmoid3sequential_77/lstm_232/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_77/lstm_232/lstm_cell_370/Relu_1Relu.sequential_77/lstm_232/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_77/lstm_232/lstm_cell_370/mul_2Mul2sequential_77/lstm_232/lstm_cell_370/Sigmoid_2:y:09sequential_77/lstm_232/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_77/lstm_232/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_77/lstm_232/TensorArrayV2_1TensorListReserve=sequential_77/lstm_232/TensorArrayV2_1/element_shape:output:0/sequential_77/lstm_232/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_77/lstm_232/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_77/lstm_232/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_77/lstm_232/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_77/lstm_232/whileWhile2sequential_77/lstm_232/while/loop_counter:output:08sequential_77/lstm_232/while/maximum_iterations:output:0$sequential_77/lstm_232/time:output:0/sequential_77/lstm_232/TensorArrayV2_1:handle:0%sequential_77/lstm_232/zeros:output:0'sequential_77/lstm_232/zeros_1:output:0/sequential_77/lstm_232/strided_slice_1:output:0Nsequential_77/lstm_232/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_77_lstm_232_lstm_cell_370_matmul_readvariableop_resourceEsequential_77_lstm_232_lstm_cell_370_matmul_1_readvariableop_resourceDsequential_77_lstm_232_lstm_cell_370_biasadd_readvariableop_resource*
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
)sequential_77_lstm_232_while_body_2244480*5
cond-R+
)sequential_77_lstm_232_while_cond_2244479*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_77/lstm_232/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_77/lstm_232/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_77/lstm_232/while:output:3Psequential_77/lstm_232/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_77/lstm_232/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_77/lstm_232/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_232/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_232/strided_slice_3StridedSliceBsequential_77/lstm_232/TensorArrayV2Stack/TensorListStack:tensor:05sequential_77/lstm_232/strided_slice_3/stack:output:07sequential_77/lstm_232/strided_slice_3/stack_1:output:07sequential_77/lstm_232/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_77/lstm_232/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_77/lstm_232/transpose_1	TransposeBsequential_77/lstm_232/TensorArrayV2Stack/TensorListStack:tensor:00sequential_77/lstm_232/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_77/lstm_232/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_77/lstm_233/ShapeShape&sequential_77/lstm_232/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_77/lstm_233/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_77/lstm_233/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_77/lstm_233/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_77/lstm_233/strided_sliceStridedSlice%sequential_77/lstm_233/Shape:output:03sequential_77/lstm_233/strided_slice/stack:output:05sequential_77/lstm_233/strided_slice/stack_1:output:05sequential_77/lstm_233/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_77/lstm_233/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_77/lstm_233/zeros/packedPack-sequential_77/lstm_233/strided_slice:output:0.sequential_77/lstm_233/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_77/lstm_233/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_77/lstm_233/zerosFill,sequential_77/lstm_233/zeros/packed:output:0+sequential_77/lstm_233/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_77/lstm_233/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_77/lstm_233/zeros_1/packedPack-sequential_77/lstm_233/strided_slice:output:00sequential_77/lstm_233/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_77/lstm_233/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_77/lstm_233/zeros_1Fill.sequential_77/lstm_233/zeros_1/packed:output:0-sequential_77/lstm_233/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_77/lstm_233/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_77/lstm_233/transpose	Transpose&sequential_77/lstm_232/transpose_1:y:0.sequential_77/lstm_233/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_77/lstm_233/Shape_1Shape$sequential_77/lstm_233/transpose:y:0*
T0*
_output_shapes
:v
,sequential_77/lstm_233/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_233/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_77/lstm_233/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_233/strided_slice_1StridedSlice'sequential_77/lstm_233/Shape_1:output:05sequential_77/lstm_233/strided_slice_1/stack:output:07sequential_77/lstm_233/strided_slice_1/stack_1:output:07sequential_77/lstm_233/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_77/lstm_233/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_77/lstm_233/TensorArrayV2TensorListReserve;sequential_77/lstm_233/TensorArrayV2/element_shape:output:0/sequential_77/lstm_233/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_77/lstm_233/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_77/lstm_233/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_77/lstm_233/transpose:y:0Usequential_77/lstm_233/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_77/lstm_233/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_233/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_77/lstm_233/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_233/strided_slice_2StridedSlice$sequential_77/lstm_233/transpose:y:05sequential_77/lstm_233/strided_slice_2/stack:output:07sequential_77/lstm_233/strided_slice_2/stack_1:output:07sequential_77/lstm_233/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_77/lstm_233/lstm_cell_371/MatMul/ReadVariableOpReadVariableOpCsequential_77_lstm_233_lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_77/lstm_233/lstm_cell_371/MatMulMatMul/sequential_77/lstm_233/strided_slice_2:output:0Bsequential_77/lstm_233/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_77/lstm_233/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOpEsequential_77_lstm_233_lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_77/lstm_233/lstm_cell_371/MatMul_1MatMul%sequential_77/lstm_233/zeros:output:0Dsequential_77/lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_77/lstm_233/lstm_cell_371/addAddV25sequential_77/lstm_233/lstm_cell_371/MatMul:product:07sequential_77/lstm_233/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_77/lstm_233/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOpDsequential_77_lstm_233_lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_77/lstm_233/lstm_cell_371/BiasAddBiasAdd,sequential_77/lstm_233/lstm_cell_371/add:z:0Csequential_77/lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_77/lstm_233/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_77/lstm_233/lstm_cell_371/splitSplit=sequential_77/lstm_233/lstm_cell_371/split/split_dim:output:05sequential_77/lstm_233/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_77/lstm_233/lstm_cell_371/SigmoidSigmoid3sequential_77/lstm_233/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_77/lstm_233/lstm_cell_371/Sigmoid_1Sigmoid3sequential_77/lstm_233/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_77/lstm_233/lstm_cell_371/mulMul2sequential_77/lstm_233/lstm_cell_371/Sigmoid_1:y:0'sequential_77/lstm_233/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_77/lstm_233/lstm_cell_371/ReluRelu3sequential_77/lstm_233/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_77/lstm_233/lstm_cell_371/mul_1Mul0sequential_77/lstm_233/lstm_cell_371/Sigmoid:y:07sequential_77/lstm_233/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_77/lstm_233/lstm_cell_371/add_1AddV2,sequential_77/lstm_233/lstm_cell_371/mul:z:0.sequential_77/lstm_233/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_77/lstm_233/lstm_cell_371/Sigmoid_2Sigmoid3sequential_77/lstm_233/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_77/lstm_233/lstm_cell_371/Relu_1Relu.sequential_77/lstm_233/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_77/lstm_233/lstm_cell_371/mul_2Mul2sequential_77/lstm_233/lstm_cell_371/Sigmoid_2:y:09sequential_77/lstm_233/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_77/lstm_233/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_77/lstm_233/TensorArrayV2_1TensorListReserve=sequential_77/lstm_233/TensorArrayV2_1/element_shape:output:0/sequential_77/lstm_233/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_77/lstm_233/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_77/lstm_233/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_77/lstm_233/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_77/lstm_233/whileWhile2sequential_77/lstm_233/while/loop_counter:output:08sequential_77/lstm_233/while/maximum_iterations:output:0$sequential_77/lstm_233/time:output:0/sequential_77/lstm_233/TensorArrayV2_1:handle:0%sequential_77/lstm_233/zeros:output:0'sequential_77/lstm_233/zeros_1:output:0/sequential_77/lstm_233/strided_slice_1:output:0Nsequential_77/lstm_233/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_77_lstm_233_lstm_cell_371_matmul_readvariableop_resourceEsequential_77_lstm_233_lstm_cell_371_matmul_1_readvariableop_resourceDsequential_77_lstm_233_lstm_cell_371_biasadd_readvariableop_resource*
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
)sequential_77_lstm_233_while_body_2244619*5
cond-R+
)sequential_77_lstm_233_while_cond_2244618*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_77/lstm_233/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_77/lstm_233/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_77/lstm_233/while:output:3Psequential_77/lstm_233/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_77/lstm_233/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_77/lstm_233/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_77/lstm_233/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_77/lstm_233/strided_slice_3StridedSliceBsequential_77/lstm_233/TensorArrayV2Stack/TensorListStack:tensor:05sequential_77/lstm_233/strided_slice_3/stack:output:07sequential_77/lstm_233/strided_slice_3/stack_1:output:07sequential_77/lstm_233/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_77/lstm_233/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_77/lstm_233/transpose_1	TransposeBsequential_77/lstm_233/TensorArrayV2Stack/TensorListStack:tensor:00sequential_77/lstm_233/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_77/lstm_233/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_77/dense_77/MatMul/ReadVariableOpReadVariableOp5sequential_77_dense_77_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_77/dense_77/MatMulMatMul/sequential_77/lstm_233/strided_slice_3:output:04sequential_77/dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_77/dense_77/BiasAdd/ReadVariableOpReadVariableOp6sequential_77_dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_77/dense_77/BiasAddBiasAdd'sequential_77/dense_77/MatMul:product:05sequential_77/dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_77/dense_77/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_77/dense_77/BiasAdd/ReadVariableOp-^sequential_77/dense_77/MatMul/ReadVariableOp<^sequential_77/lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp;^sequential_77/lstm_231/lstm_cell_369/MatMul/ReadVariableOp=^sequential_77/lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp^sequential_77/lstm_231/while<^sequential_77/lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp;^sequential_77/lstm_232/lstm_cell_370/MatMul/ReadVariableOp=^sequential_77/lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp^sequential_77/lstm_232/while<^sequential_77/lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp;^sequential_77/lstm_233/lstm_cell_371/MatMul/ReadVariableOp=^sequential_77/lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp^sequential_77/lstm_233/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_77/dense_77/BiasAdd/ReadVariableOp-sequential_77/dense_77/BiasAdd/ReadVariableOp2\
,sequential_77/dense_77/MatMul/ReadVariableOp,sequential_77/dense_77/MatMul/ReadVariableOp2z
;sequential_77/lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp;sequential_77/lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp2x
:sequential_77/lstm_231/lstm_cell_369/MatMul/ReadVariableOp:sequential_77/lstm_231/lstm_cell_369/MatMul/ReadVariableOp2|
<sequential_77/lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp<sequential_77/lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp2<
sequential_77/lstm_231/whilesequential_77/lstm_231/while2z
;sequential_77/lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp;sequential_77/lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp2x
:sequential_77/lstm_232/lstm_cell_370/MatMul/ReadVariableOp:sequential_77/lstm_232/lstm_cell_370/MatMul/ReadVariableOp2|
<sequential_77/lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp<sequential_77/lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp2<
sequential_77/lstm_232/whilesequential_77/lstm_232/while2z
;sequential_77/lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp;sequential_77/lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp2x
:sequential_77/lstm_233/lstm_cell_371/MatMul/ReadVariableOp:sequential_77/lstm_233/lstm_cell_371/MatMul/ReadVariableOp2|
<sequential_77/lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp<sequential_77/lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp2<
sequential_77/lstm_233/whilesequential_77/lstm_233/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_231_input
?C
?

lstm_233_while_body_2247360.
*lstm_233_while_lstm_233_while_loop_counter4
0lstm_233_while_lstm_233_while_maximum_iterations
lstm_233_while_placeholder 
lstm_233_while_placeholder_1 
lstm_233_while_placeholder_2 
lstm_233_while_placeholder_3-
)lstm_233_while_lstm_233_strided_slice_1_0i
elstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0:2(Q
?lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(L
>lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0:(
lstm_233_while_identity
lstm_233_while_identity_1
lstm_233_while_identity_2
lstm_233_while_identity_3
lstm_233_while_identity_4
lstm_233_while_identity_5+
'lstm_233_while_lstm_233_strided_slice_1g
clstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensorM
;lstm_233_while_lstm_cell_371_matmul_readvariableop_resource:2(O
=lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource:
(J
<lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource:(??3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp?2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp?4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp?
@lstm_233/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_233/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensor_0lstm_233_while_placeholderIlstm_233/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp=lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_233/while/lstm_cell_371/MatMulMatMul9lstm_233/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp?lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_233/while/lstm_cell_371/MatMul_1MatMullstm_233_while_placeholder_2<lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_233/while/lstm_cell_371/addAddV2-lstm_233/while/lstm_cell_371/MatMul:product:0/lstm_233/while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp>lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_233/while/lstm_cell_371/BiasAddBiasAdd$lstm_233/while/lstm_cell_371/add:z:0;lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_233/while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_233/while/lstm_cell_371/splitSplit5lstm_233/while/lstm_cell_371/split/split_dim:output:0-lstm_233/while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_233/while/lstm_cell_371/SigmoidSigmoid+lstm_233/while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_233/while/lstm_cell_371/Sigmoid_1Sigmoid+lstm_233/while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_233/while/lstm_cell_371/mulMul*lstm_233/while/lstm_cell_371/Sigmoid_1:y:0lstm_233_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_233/while/lstm_cell_371/ReluRelu+lstm_233/while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_233/while/lstm_cell_371/mul_1Mul(lstm_233/while/lstm_cell_371/Sigmoid:y:0/lstm_233/while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_233/while/lstm_cell_371/add_1AddV2$lstm_233/while/lstm_cell_371/mul:z:0&lstm_233/while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_233/while/lstm_cell_371/Sigmoid_2Sigmoid+lstm_233/while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_233/while/lstm_cell_371/Relu_1Relu&lstm_233/while/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_233/while/lstm_cell_371/mul_2Mul*lstm_233/while/lstm_cell_371/Sigmoid_2:y:01lstm_233/while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_233/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_233_while_placeholder_1lstm_233_while_placeholder&lstm_233/while/lstm_cell_371/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_233/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_233/while/addAddV2lstm_233_while_placeholderlstm_233/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_233/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_233/while/add_1AddV2*lstm_233_while_lstm_233_while_loop_counterlstm_233/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_233/while/IdentityIdentitylstm_233/while/add_1:z:0^lstm_233/while/NoOp*
T0*
_output_shapes
: ?
lstm_233/while/Identity_1Identity0lstm_233_while_lstm_233_while_maximum_iterations^lstm_233/while/NoOp*
T0*
_output_shapes
: t
lstm_233/while/Identity_2Identitylstm_233/while/add:z:0^lstm_233/while/NoOp*
T0*
_output_shapes
: ?
lstm_233/while/Identity_3IdentityClstm_233/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_233/while/NoOp*
T0*
_output_shapes
: ?
lstm_233/while/Identity_4Identity&lstm_233/while/lstm_cell_371/mul_2:z:0^lstm_233/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_233/while/Identity_5Identity&lstm_233/while/lstm_cell_371/add_1:z:0^lstm_233/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_233/while/NoOpNoOp4^lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp3^lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp5^lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_233_while_identity lstm_233/while/Identity:output:0"?
lstm_233_while_identity_1"lstm_233/while/Identity_1:output:0"?
lstm_233_while_identity_2"lstm_233/while/Identity_2:output:0"?
lstm_233_while_identity_3"lstm_233/while/Identity_3:output:0"?
lstm_233_while_identity_4"lstm_233/while/Identity_4:output:0"?
lstm_233_while_identity_5"lstm_233/while/Identity_5:output:0"T
'lstm_233_while_lstm_233_strided_slice_1)lstm_233_while_lstm_233_strided_slice_1_0"~
<lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource>lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0"?
=lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource?lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0"|
;lstm_233_while_lstm_cell_371_matmul_readvariableop_resource=lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0"?
clstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensorelstm_233_while_tensorarrayv2read_tensorlistgetitem_lstm_233_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp3lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp2h
2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp2lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp2l
4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp4lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2244981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_369_2245005_0:	?0
while_lstm_cell_369_2245007_0:	d?,
while_lstm_cell_369_2245009_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_369_2245005:	?.
while_lstm_cell_369_2245007:	d?*
while_lstm_cell_369_2245009:	???+while/lstm_cell_369/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_369/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_369_2245005_0while_lstm_cell_369_2245007_0while_lstm_cell_369_2245009_0*
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244922?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_369/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_369/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_369/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_369/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_369_2245005while_lstm_cell_369_2245005_0"<
while_lstm_cell_369_2245007while_lstm_cell_369_2245007_0"<
while_lstm_cell_369_2245009while_lstm_cell_369_2245009_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_369/StatefulPartitionedCall+while/lstm_cell_369/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2246339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2246339___redundant_placeholder05
1while_while_cond_2246339___redundant_placeholder15
1while_while_cond_2246339___redundant_placeholder25
1while_while_cond_2246339___redundant_placeholder3
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245126

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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2249842

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
?#
?
while_body_2245331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_370_2245355_0:	d?0
while_lstm_cell_370_2245357_0:	2?,
while_lstm_cell_370_2245359_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_370_2245355:	d?.
while_lstm_cell_370_2245357:	2?*
while_lstm_cell_370_2245359:	???+while/lstm_cell_370/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_370/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_370_2245355_0while_lstm_cell_370_2245357_0while_lstm_cell_370_2245359_0*
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245272?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_370/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_370/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_370/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_370/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_370_2245355while_lstm_cell_370_2245355_0"<
while_lstm_cell_370_2245357while_lstm_cell_370_2245357_0"<
while_lstm_cell_370_2245359while_lstm_cell_370_2245359_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_370/StatefulPartitionedCall+while/lstm_cell_370/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2248882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_370_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_370_matmul_readvariableop_resource:	d?G
4while_lstm_cell_370_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_370_biasadd_readvariableop_resource:	???*while/lstm_cell_370/BiasAdd/ReadVariableOp?)while/lstm_cell_370/MatMul/ReadVariableOp?+while/lstm_cell_370/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_370/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_370/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_370/addAddV2$while/lstm_cell_370/MatMul:product:0&while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_370/BiasAddBiasAddwhile/lstm_cell_370/add:z:02while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_370/splitSplit,while/lstm_cell_370/split/split_dim:output:0$while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_370/SigmoidSigmoid"while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_1Sigmoid"while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mulMul!while/lstm_cell_370/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_370/ReluRelu"while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_1Mulwhile/lstm_cell_370/Sigmoid:y:0&while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/add_1AddV2while/lstm_cell_370/mul:z:0while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_2Sigmoid"while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_370/Relu_1Reluwhile/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_2Mul!while/lstm_cell_370/Sigmoid_2:y:0(while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_370/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_370/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_370/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_370/BiasAdd/ReadVariableOp*^while/lstm_cell_370/MatMul/ReadVariableOp,^while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_370_biasadd_readvariableop_resource5while_lstm_cell_370_biasadd_readvariableop_resource_0"n
4while_lstm_cell_370_matmul_1_readvariableop_resource6while_lstm_cell_370_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_370_matmul_readvariableop_resource4while_lstm_cell_370_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_370/BiasAdd/ReadVariableOp*while/lstm_cell_370/BiasAdd/ReadVariableOp2V
)while/lstm_cell_370/MatMul/ReadVariableOp)while/lstm_cell_370/MatMul/ReadVariableOp2Z
+while/lstm_cell_370/MatMul_1/ReadVariableOp+while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_371_layer_call_fn_2249974

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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245622o
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
)sequential_77_lstm_232_while_body_2244480J
Fsequential_77_lstm_232_while_sequential_77_lstm_232_while_loop_counterP
Lsequential_77_lstm_232_while_sequential_77_lstm_232_while_maximum_iterations,
(sequential_77_lstm_232_while_placeholder.
*sequential_77_lstm_232_while_placeholder_1.
*sequential_77_lstm_232_while_placeholder_2.
*sequential_77_lstm_232_while_placeholder_3I
Esequential_77_lstm_232_while_sequential_77_lstm_232_strided_slice_1_0?
?sequential_77_lstm_232_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_232_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_77_lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0:	d?`
Msequential_77_lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?[
Lsequential_77_lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0:	?)
%sequential_77_lstm_232_while_identity+
'sequential_77_lstm_232_while_identity_1+
'sequential_77_lstm_232_while_identity_2+
'sequential_77_lstm_232_while_identity_3+
'sequential_77_lstm_232_while_identity_4+
'sequential_77_lstm_232_while_identity_5G
Csequential_77_lstm_232_while_sequential_77_lstm_232_strided_slice_1?
sequential_77_lstm_232_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_232_tensorarrayunstack_tensorlistfromtensor\
Isequential_77_lstm_232_while_lstm_cell_370_matmul_readvariableop_resource:	d?^
Ksequential_77_lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource:	2?Y
Jsequential_77_lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource:	???Asequential_77/lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp?@sequential_77/lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp?Bsequential_77/lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp?
Nsequential_77/lstm_232/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_77/lstm_232/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_77_lstm_232_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_232_tensorarrayunstack_tensorlistfromtensor_0(sequential_77_lstm_232_while_placeholderWsequential_77/lstm_232/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_77/lstm_232/while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOpKsequential_77_lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_77/lstm_232/while/lstm_cell_370/MatMulMatMulGsequential_77/lstm_232/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_77/lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_77/lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOpMsequential_77_lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_77/lstm_232/while/lstm_cell_370/MatMul_1MatMul*sequential_77_lstm_232_while_placeholder_2Jsequential_77/lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_77/lstm_232/while/lstm_cell_370/addAddV2;sequential_77/lstm_232/while/lstm_cell_370/MatMul:product:0=sequential_77/lstm_232/while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_77/lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOpLsequential_77_lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_77/lstm_232/while/lstm_cell_370/BiasAddBiasAdd2sequential_77/lstm_232/while/lstm_cell_370/add:z:0Isequential_77/lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_77/lstm_232/while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_77/lstm_232/while/lstm_cell_370/splitSplitCsequential_77/lstm_232/while/lstm_cell_370/split/split_dim:output:0;sequential_77/lstm_232/while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_77/lstm_232/while/lstm_cell_370/SigmoidSigmoid9sequential_77/lstm_232/while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_77/lstm_232/while/lstm_cell_370/Sigmoid_1Sigmoid9sequential_77/lstm_232/while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_77/lstm_232/while/lstm_cell_370/mulMul8sequential_77/lstm_232/while/lstm_cell_370/Sigmoid_1:y:0*sequential_77_lstm_232_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_77/lstm_232/while/lstm_cell_370/ReluRelu9sequential_77/lstm_232/while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_77/lstm_232/while/lstm_cell_370/mul_1Mul6sequential_77/lstm_232/while/lstm_cell_370/Sigmoid:y:0=sequential_77/lstm_232/while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_77/lstm_232/while/lstm_cell_370/add_1AddV22sequential_77/lstm_232/while/lstm_cell_370/mul:z:04sequential_77/lstm_232/while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_77/lstm_232/while/lstm_cell_370/Sigmoid_2Sigmoid9sequential_77/lstm_232/while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_77/lstm_232/while/lstm_cell_370/Relu_1Relu4sequential_77/lstm_232/while/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_77/lstm_232/while/lstm_cell_370/mul_2Mul8sequential_77/lstm_232/while/lstm_cell_370/Sigmoid_2:y:0?sequential_77/lstm_232/while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_77/lstm_232/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_77_lstm_232_while_placeholder_1(sequential_77_lstm_232_while_placeholder4sequential_77/lstm_232/while/lstm_cell_370/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_77/lstm_232/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_77/lstm_232/while/addAddV2(sequential_77_lstm_232_while_placeholder+sequential_77/lstm_232/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_77/lstm_232/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_77/lstm_232/while/add_1AddV2Fsequential_77_lstm_232_while_sequential_77_lstm_232_while_loop_counter-sequential_77/lstm_232/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_77/lstm_232/while/IdentityIdentity&sequential_77/lstm_232/while/add_1:z:0"^sequential_77/lstm_232/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_232/while/Identity_1IdentityLsequential_77_lstm_232_while_sequential_77_lstm_232_while_maximum_iterations"^sequential_77/lstm_232/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_232/while/Identity_2Identity$sequential_77/lstm_232/while/add:z:0"^sequential_77/lstm_232/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_232/while/Identity_3IdentityQsequential_77/lstm_232/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_77/lstm_232/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_232/while/Identity_4Identity4sequential_77/lstm_232/while/lstm_cell_370/mul_2:z:0"^sequential_77/lstm_232/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_77/lstm_232/while/Identity_5Identity4sequential_77/lstm_232/while/lstm_cell_370/add_1:z:0"^sequential_77/lstm_232/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_77/lstm_232/while/NoOpNoOpB^sequential_77/lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOpA^sequential_77/lstm_232/while/lstm_cell_370/MatMul/ReadVariableOpC^sequential_77/lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_77_lstm_232_while_identity.sequential_77/lstm_232/while/Identity:output:0"[
'sequential_77_lstm_232_while_identity_10sequential_77/lstm_232/while/Identity_1:output:0"[
'sequential_77_lstm_232_while_identity_20sequential_77/lstm_232/while/Identity_2:output:0"[
'sequential_77_lstm_232_while_identity_30sequential_77/lstm_232/while/Identity_3:output:0"[
'sequential_77_lstm_232_while_identity_40sequential_77/lstm_232/while/Identity_4:output:0"[
'sequential_77_lstm_232_while_identity_50sequential_77/lstm_232/while/Identity_5:output:0"?
Jsequential_77_lstm_232_while_lstm_cell_370_biasadd_readvariableop_resourceLsequential_77_lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0"?
Ksequential_77_lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resourceMsequential_77_lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0"?
Isequential_77_lstm_232_while_lstm_cell_370_matmul_readvariableop_resourceKsequential_77_lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0"?
Csequential_77_lstm_232_while_sequential_77_lstm_232_strided_slice_1Esequential_77_lstm_232_while_sequential_77_lstm_232_strided_slice_1_0"?
sequential_77_lstm_232_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_232_tensorarrayunstack_tensorlistfromtensor?sequential_77_lstm_232_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_232_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_77/lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOpAsequential_77/lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp2?
@sequential_77/lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp@sequential_77/lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp2?
Bsequential_77/lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOpBsequential_77/lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2249211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2249211___redundant_placeholder05
1while_while_cond_2249211___redundant_placeholder15
1while_while_cond_2249211___redundant_placeholder25
1while_while_cond_2249211___redundant_placeholder3
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248823
inputs_0?
,lstm_cell_370_matmul_readvariableop_resource:	d?A
.lstm_cell_370_matmul_1_readvariableop_resource:	2?<
-lstm_cell_370_biasadd_readvariableop_resource:	?
identity??$lstm_cell_370/BiasAdd/ReadVariableOp?#lstm_cell_370/MatMul/ReadVariableOp?%lstm_cell_370/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_370/MatMul/ReadVariableOpReadVariableOp,lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_370/MatMulMatMulstrided_slice_2:output:0+lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_370/MatMul_1MatMulzeros:output:0-lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_370/addAddV2lstm_cell_370/MatMul:product:0 lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_370/BiasAddBiasAddlstm_cell_370/add:z:0,lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_370/splitSplit&lstm_cell_370/split/split_dim:output:0lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_370/SigmoidSigmoidlstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_1Sigmoidlstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_370/mulMullstm_cell_370/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_370/ReluRelulstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_1Mullstm_cell_370/Sigmoid:y:0 lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_370/add_1AddV2lstm_cell_370/mul:z:0lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_2Sigmoidlstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_370/Relu_1Relulstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_2Mullstm_cell_370/Sigmoid_2:y:0"lstm_cell_370/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_370_matmul_readvariableop_resource.lstm_cell_370_matmul_1_readvariableop_resource-lstm_cell_370_biasadd_readvariableop_resource*
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
while_body_2248739*
condR
while_cond_2248738*K
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
NoOpNoOp%^lstm_cell_370/BiasAdd/ReadVariableOp$^lstm_cell_370/MatMul/ReadVariableOp&^lstm_cell_370/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_370/BiasAdd/ReadVariableOp$lstm_cell_370/BiasAdd/ReadVariableOp2J
#lstm_cell_370/MatMul/ReadVariableOp#lstm_cell_370/MatMul/ReadVariableOp2N
%lstm_cell_370/MatMul_1/ReadVariableOp%lstm_cell_370/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2245823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2245823___redundant_placeholder05
1while_while_cond_2245823___redundant_placeholder15
1while_while_cond_2245823___redundant_placeholder25
1while_while_cond_2245823___redundant_placeholder3
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2245908

inputs?
,lstm_cell_369_matmul_readvariableop_resource:	?A
.lstm_cell_369_matmul_1_readvariableop_resource:	d?<
-lstm_cell_369_biasadd_readvariableop_resource:	?
identity??$lstm_cell_369/BiasAdd/ReadVariableOp?#lstm_cell_369/MatMul/ReadVariableOp?%lstm_cell_369/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_369/MatMul/ReadVariableOpReadVariableOp,lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_369/MatMulMatMulstrided_slice_2:output:0+lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_369/MatMul_1MatMulzeros:output:0-lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_369/addAddV2lstm_cell_369/MatMul:product:0 lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_369/BiasAddBiasAddlstm_cell_369/add:z:0,lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_369/splitSplit&lstm_cell_369/split/split_dim:output:0lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_369/SigmoidSigmoidlstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_1Sigmoidlstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_369/mulMullstm_cell_369/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_369/ReluRelulstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_1Mullstm_cell_369/Sigmoid:y:0 lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_369/add_1AddV2lstm_cell_369/mul:z:0lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_2Sigmoidlstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_369/Relu_1Relulstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_2Mullstm_cell_369/Sigmoid_2:y:0"lstm_cell_369/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_369_matmul_readvariableop_resource.lstm_cell_369_matmul_1_readvariableop_resource-lstm_cell_369_biasadd_readvariableop_resource*
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
while_body_2245824*
condR
while_cond_2245823*K
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
NoOpNoOp%^lstm_cell_369/BiasAdd/ReadVariableOp$^lstm_cell_369/MatMul/ReadVariableOp&^lstm_cell_369/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_369/BiasAdd/ReadVariableOp$lstm_cell_369/BiasAdd/ReadVariableOp2J
#lstm_cell_369/MatMul/ReadVariableOp#lstm_cell_369/MatMul/ReadVariableOp2N
%lstm_cell_369/MatMul_1/ReadVariableOp%lstm_cell_369/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_232_layer_call_and_return_conditional_losses_2245400

inputs(
lstm_cell_370_2245318:	d?(
lstm_cell_370_2245320:	2?$
lstm_cell_370_2245322:	?
identity??%lstm_cell_370/StatefulPartitionedCall?while;
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
%lstm_cell_370/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_370_2245318lstm_cell_370_2245320lstm_cell_370_2245322*
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245272n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_370_2245318lstm_cell_370_2245320lstm_cell_370_2245322*
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
while_body_2245331*
condR
while_cond_2245330*K
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
NoOpNoOp&^lstm_cell_370/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_370/StatefulPartitionedCall%lstm_cell_370/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2249908

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
while_body_2246670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_369_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_369_matmul_readvariableop_resource:	?G
4while_lstm_cell_369_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_369_biasadd_readvariableop_resource:	???*while/lstm_cell_369/BiasAdd/ReadVariableOp?)while/lstm_cell_369/MatMul/ReadVariableOp?+while/lstm_cell_369/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_369/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_369/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_369/addAddV2$while/lstm_cell_369/MatMul:product:0&while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_369/BiasAddBiasAddwhile/lstm_cell_369/add:z:02while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_369/splitSplit,while/lstm_cell_369/split/split_dim:output:0$while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_369/SigmoidSigmoid"while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_1Sigmoid"while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mulMul!while/lstm_cell_369/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_369/ReluRelu"while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_1Mulwhile/lstm_cell_369/Sigmoid:y:0&while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/add_1AddV2while/lstm_cell_369/mul:z:0while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_2Sigmoid"while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_369/Relu_1Reluwhile/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_2Mul!while/lstm_cell_369/Sigmoid_2:y:0(while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_369/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_369/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_369/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_369/BiasAdd/ReadVariableOp*^while/lstm_cell_369/MatMul/ReadVariableOp,^while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_369_biasadd_readvariableop_resource5while_lstm_cell_369_biasadd_readvariableop_resource_0"n
4while_lstm_cell_369_matmul_1_readvariableop_resource6while_lstm_cell_369_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_369_matmul_readvariableop_resource4while_lstm_cell_369_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_369/BiasAdd/ReadVariableOp*while/lstm_cell_369/BiasAdd/ReadVariableOp2V
)while/lstm_cell_369/MatMul/ReadVariableOp)while/lstm_cell_369/MatMul/ReadVariableOp2Z
+while/lstm_cell_369/MatMul_1/ReadVariableOp+while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245622

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

?
lstm_232_while_cond_2247220.
*lstm_232_while_lstm_232_while_loop_counter4
0lstm_232_while_lstm_232_while_maximum_iterations
lstm_232_while_placeholder 
lstm_232_while_placeholder_1 
lstm_232_while_placeholder_2 
lstm_232_while_placeholder_30
,lstm_232_while_less_lstm_232_strided_slice_1G
Clstm_232_while_lstm_232_while_cond_2247220___redundant_placeholder0G
Clstm_232_while_lstm_232_while_cond_2247220___redundant_placeholder1G
Clstm_232_while_lstm_232_while_cond_2247220___redundant_placeholder2G
Clstm_232_while_lstm_232_while_cond_2247220___redundant_placeholder3
lstm_232_while_identity
?
lstm_232/while/LessLesslstm_232_while_placeholder,lstm_232_while_less_lstm_232_strided_slice_1*
T0*
_output_shapes
: ]
lstm_232/while/IdentityIdentitylstm_232/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_232_while_identity lstm_232/while/Identity:output:0*(
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
*__inference_lstm_232_layer_call_fn_2248504
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2245209|
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
while_cond_2245489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2245489___redundant_placeholder05
1while_while_cond_2245489___redundant_placeholder15
1while_while_cond_2245489___redundant_placeholder25
1while_while_cond_2245489___redundant_placeholder3
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
while_cond_2244980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2244980___redundant_placeholder05
1while_while_cond_2244980___redundant_placeholder15
1while_while_cond_2244980___redundant_placeholder25
1while_while_cond_2244980___redundant_placeholder3
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
/__inference_lstm_cell_370_layer_call_fn_2249876

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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245272o
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
?
E__inference_lstm_233_layer_call_and_return_conditional_losses_2245559

inputs'
lstm_cell_371_2245477:2('
lstm_cell_371_2245479:
(#
lstm_cell_371_2245481:(
identity??%lstm_cell_371/StatefulPartitionedCall?while;
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
%lstm_cell_371/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_371_2245477lstm_cell_371_2245479lstm_cell_371_2245481*
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245476n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_371_2245477lstm_cell_371_2245479lstm_cell_371_2245481*
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
while_body_2245490*
condR
while_cond_2245489*K
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
NoOpNoOp&^lstm_cell_371/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_371/StatefulPartitionedCall%lstm_cell_371/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248064
inputs_0?
,lstm_cell_369_matmul_readvariableop_resource:	?A
.lstm_cell_369_matmul_1_readvariableop_resource:	d?<
-lstm_cell_369_biasadd_readvariableop_resource:	?
identity??$lstm_cell_369/BiasAdd/ReadVariableOp?#lstm_cell_369/MatMul/ReadVariableOp?%lstm_cell_369/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_369/MatMul/ReadVariableOpReadVariableOp,lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_369/MatMulMatMulstrided_slice_2:output:0+lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_369/MatMul_1MatMulzeros:output:0-lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_369/addAddV2lstm_cell_369/MatMul:product:0 lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_369/BiasAddBiasAddlstm_cell_369/add:z:0,lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_369/splitSplit&lstm_cell_369/split/split_dim:output:0lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_369/SigmoidSigmoidlstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_1Sigmoidlstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_369/mulMullstm_cell_369/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_369/ReluRelulstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_1Mullstm_cell_369/Sigmoid:y:0 lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_369/add_1AddV2lstm_cell_369/mul:z:0lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_2Sigmoidlstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_369/Relu_1Relulstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_2Mullstm_cell_369/Sigmoid_2:y:0"lstm_cell_369/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_369_matmul_readvariableop_resource.lstm_cell_369_matmul_1_readvariableop_resource-lstm_cell_369_biasadd_readvariableop_resource*
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
while_body_2247980*
condR
while_cond_2247979*K
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
NoOpNoOp%^lstm_cell_369/BiasAdd/ReadVariableOp$^lstm_cell_369/MatMul/ReadVariableOp&^lstm_cell_369/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_369/BiasAdd/ReadVariableOp$lstm_cell_369/BiasAdd/ReadVariableOp2J
#lstm_cell_369/MatMul/ReadVariableOp#lstm_cell_369/MatMul/ReadVariableOp2N
%lstm_cell_369/MatMul_1/ReadVariableOp%lstm_cell_369/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2248881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2248881___redundant_placeholder05
1while_while_cond_2248881___redundant_placeholder15
1while_while_cond_2248881___redundant_placeholder25
1while_while_cond_2248881___redundant_placeholder3
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
)sequential_77_lstm_231_while_body_2244341J
Fsequential_77_lstm_231_while_sequential_77_lstm_231_while_loop_counterP
Lsequential_77_lstm_231_while_sequential_77_lstm_231_while_maximum_iterations,
(sequential_77_lstm_231_while_placeholder.
*sequential_77_lstm_231_while_placeholder_1.
*sequential_77_lstm_231_while_placeholder_2.
*sequential_77_lstm_231_while_placeholder_3I
Esequential_77_lstm_231_while_sequential_77_lstm_231_strided_slice_1_0?
?sequential_77_lstm_231_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_231_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_77_lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0:	?`
Msequential_77_lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?[
Lsequential_77_lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0:	?)
%sequential_77_lstm_231_while_identity+
'sequential_77_lstm_231_while_identity_1+
'sequential_77_lstm_231_while_identity_2+
'sequential_77_lstm_231_while_identity_3+
'sequential_77_lstm_231_while_identity_4+
'sequential_77_lstm_231_while_identity_5G
Csequential_77_lstm_231_while_sequential_77_lstm_231_strided_slice_1?
sequential_77_lstm_231_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_231_tensorarrayunstack_tensorlistfromtensor\
Isequential_77_lstm_231_while_lstm_cell_369_matmul_readvariableop_resource:	?^
Ksequential_77_lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource:	d?Y
Jsequential_77_lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource:	???Asequential_77/lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp?@sequential_77/lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp?Bsequential_77/lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp?
Nsequential_77/lstm_231/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_77/lstm_231/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_77_lstm_231_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_231_tensorarrayunstack_tensorlistfromtensor_0(sequential_77_lstm_231_while_placeholderWsequential_77/lstm_231/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_77/lstm_231/while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOpKsequential_77_lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_77/lstm_231/while/lstm_cell_369/MatMulMatMulGsequential_77/lstm_231/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_77/lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_77/lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOpMsequential_77_lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_77/lstm_231/while/lstm_cell_369/MatMul_1MatMul*sequential_77_lstm_231_while_placeholder_2Jsequential_77/lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_77/lstm_231/while/lstm_cell_369/addAddV2;sequential_77/lstm_231/while/lstm_cell_369/MatMul:product:0=sequential_77/lstm_231/while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_77/lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOpLsequential_77_lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_77/lstm_231/while/lstm_cell_369/BiasAddBiasAdd2sequential_77/lstm_231/while/lstm_cell_369/add:z:0Isequential_77/lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_77/lstm_231/while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_77/lstm_231/while/lstm_cell_369/splitSplitCsequential_77/lstm_231/while/lstm_cell_369/split/split_dim:output:0;sequential_77/lstm_231/while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_77/lstm_231/while/lstm_cell_369/SigmoidSigmoid9sequential_77/lstm_231/while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_77/lstm_231/while/lstm_cell_369/Sigmoid_1Sigmoid9sequential_77/lstm_231/while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_77/lstm_231/while/lstm_cell_369/mulMul8sequential_77/lstm_231/while/lstm_cell_369/Sigmoid_1:y:0*sequential_77_lstm_231_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_77/lstm_231/while/lstm_cell_369/ReluRelu9sequential_77/lstm_231/while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_77/lstm_231/while/lstm_cell_369/mul_1Mul6sequential_77/lstm_231/while/lstm_cell_369/Sigmoid:y:0=sequential_77/lstm_231/while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_77/lstm_231/while/lstm_cell_369/add_1AddV22sequential_77/lstm_231/while/lstm_cell_369/mul:z:04sequential_77/lstm_231/while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_77/lstm_231/while/lstm_cell_369/Sigmoid_2Sigmoid9sequential_77/lstm_231/while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_77/lstm_231/while/lstm_cell_369/Relu_1Relu4sequential_77/lstm_231/while/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_77/lstm_231/while/lstm_cell_369/mul_2Mul8sequential_77/lstm_231/while/lstm_cell_369/Sigmoid_2:y:0?sequential_77/lstm_231/while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_77/lstm_231/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_77_lstm_231_while_placeholder_1(sequential_77_lstm_231_while_placeholder4sequential_77/lstm_231/while/lstm_cell_369/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_77/lstm_231/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_77/lstm_231/while/addAddV2(sequential_77_lstm_231_while_placeholder+sequential_77/lstm_231/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_77/lstm_231/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_77/lstm_231/while/add_1AddV2Fsequential_77_lstm_231_while_sequential_77_lstm_231_while_loop_counter-sequential_77/lstm_231/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_77/lstm_231/while/IdentityIdentity&sequential_77/lstm_231/while/add_1:z:0"^sequential_77/lstm_231/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_231/while/Identity_1IdentityLsequential_77_lstm_231_while_sequential_77_lstm_231_while_maximum_iterations"^sequential_77/lstm_231/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_231/while/Identity_2Identity$sequential_77/lstm_231/while/add:z:0"^sequential_77/lstm_231/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_231/while/Identity_3IdentityQsequential_77/lstm_231/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_77/lstm_231/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_231/while/Identity_4Identity4sequential_77/lstm_231/while/lstm_cell_369/mul_2:z:0"^sequential_77/lstm_231/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_77/lstm_231/while/Identity_5Identity4sequential_77/lstm_231/while/lstm_cell_369/add_1:z:0"^sequential_77/lstm_231/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_77/lstm_231/while/NoOpNoOpB^sequential_77/lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOpA^sequential_77/lstm_231/while/lstm_cell_369/MatMul/ReadVariableOpC^sequential_77/lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_77_lstm_231_while_identity.sequential_77/lstm_231/while/Identity:output:0"[
'sequential_77_lstm_231_while_identity_10sequential_77/lstm_231/while/Identity_1:output:0"[
'sequential_77_lstm_231_while_identity_20sequential_77/lstm_231/while/Identity_2:output:0"[
'sequential_77_lstm_231_while_identity_30sequential_77/lstm_231/while/Identity_3:output:0"[
'sequential_77_lstm_231_while_identity_40sequential_77/lstm_231/while/Identity_4:output:0"[
'sequential_77_lstm_231_while_identity_50sequential_77/lstm_231/while/Identity_5:output:0"?
Jsequential_77_lstm_231_while_lstm_cell_369_biasadd_readvariableop_resourceLsequential_77_lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0"?
Ksequential_77_lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resourceMsequential_77_lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0"?
Isequential_77_lstm_231_while_lstm_cell_369_matmul_readvariableop_resourceKsequential_77_lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0"?
Csequential_77_lstm_231_while_sequential_77_lstm_231_strided_slice_1Esequential_77_lstm_231_while_sequential_77_lstm_231_strided_slice_1_0"?
sequential_77_lstm_231_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_231_tensorarrayunstack_tensorlistfromtensor?sequential_77_lstm_231_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_231_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_77/lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOpAsequential_77/lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp2?
@sequential_77/lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp@sequential_77/lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp2?
Bsequential_77/lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOpBsequential_77/lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2246124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_371_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_371_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_371_matmul_readvariableop_resource:2(F
4while_lstm_cell_371_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_371_biasadd_readvariableop_resource:(??*while/lstm_cell_371/BiasAdd/ReadVariableOp?)while/lstm_cell_371/MatMul/ReadVariableOp?+while/lstm_cell_371/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_371/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_371/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_371/addAddV2$while/lstm_cell_371/MatMul:product:0&while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_371/BiasAddBiasAddwhile/lstm_cell_371/add:z:02while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_371/splitSplit,while/lstm_cell_371/split/split_dim:output:0$while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_371/SigmoidSigmoid"while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_1Sigmoid"while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mulMul!while/lstm_cell_371/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_371/ReluRelu"while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_1Mulwhile/lstm_cell_371/Sigmoid:y:0&while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/add_1AddV2while/lstm_cell_371/mul:z:0while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_2Sigmoid"while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_371/Relu_1Reluwhile/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_2Mul!while/lstm_cell_371/Sigmoid_2:y:0(while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_371/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_371/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_371/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_371/BiasAdd/ReadVariableOp*^while/lstm_cell_371/MatMul/ReadVariableOp,^while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_371_biasadd_readvariableop_resource5while_lstm_cell_371_biasadd_readvariableop_resource_0"n
4while_lstm_cell_371_matmul_1_readvariableop_resource6while_lstm_cell_371_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_371_matmul_readvariableop_resource4while_lstm_cell_371_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_371/BiasAdd/ReadVariableOp*while/lstm_cell_371/BiasAdd/ReadVariableOp2V
)while/lstm_cell_371/MatMul/ReadVariableOp)while/lstm_cell_371/MatMul/ReadVariableOp2Z
+while/lstm_cell_371/MatMul_1/ReadVariableOp+while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2246754

inputs?
,lstm_cell_369_matmul_readvariableop_resource:	?A
.lstm_cell_369_matmul_1_readvariableop_resource:	d?<
-lstm_cell_369_biasadd_readvariableop_resource:	?
identity??$lstm_cell_369/BiasAdd/ReadVariableOp?#lstm_cell_369/MatMul/ReadVariableOp?%lstm_cell_369/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_369/MatMul/ReadVariableOpReadVariableOp,lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_369/MatMulMatMulstrided_slice_2:output:0+lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_369/MatMul_1MatMulzeros:output:0-lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_369/addAddV2lstm_cell_369/MatMul:product:0 lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_369/BiasAddBiasAddlstm_cell_369/add:z:0,lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_369/splitSplit&lstm_cell_369/split/split_dim:output:0lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_369/SigmoidSigmoidlstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_1Sigmoidlstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_369/mulMullstm_cell_369/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_369/ReluRelulstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_1Mullstm_cell_369/Sigmoid:y:0 lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_369/add_1AddV2lstm_cell_369/mul:z:0lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_2Sigmoidlstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_369/Relu_1Relulstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_2Mullstm_cell_369/Sigmoid_2:y:0"lstm_cell_369/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_369_matmul_readvariableop_resource.lstm_cell_369_matmul_1_readvariableop_resource-lstm_cell_369_biasadd_readvariableop_resource*
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
while_body_2246670*
condR
while_cond_2246669*K
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
NoOpNoOp%^lstm_cell_369/BiasAdd/ReadVariableOp$^lstm_cell_369/MatMul/ReadVariableOp&^lstm_cell_369/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_369/BiasAdd/ReadVariableOp$lstm_cell_369/BiasAdd/ReadVariableOp2J
#lstm_cell_369/MatMul/ReadVariableOp#lstm_cell_369/MatMul/ReadVariableOp2N
%lstm_cell_369/MatMul_1/ReadVariableOp%lstm_cell_369/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_232_while_cond_2247647.
*lstm_232_while_lstm_232_while_loop_counter4
0lstm_232_while_lstm_232_while_maximum_iterations
lstm_232_while_placeholder 
lstm_232_while_placeholder_1 
lstm_232_while_placeholder_2 
lstm_232_while_placeholder_30
,lstm_232_while_less_lstm_232_strided_slice_1G
Clstm_232_while_lstm_232_while_cond_2247647___redundant_placeholder0G
Clstm_232_while_lstm_232_while_cond_2247647___redundant_placeholder1G
Clstm_232_while_lstm_232_while_cond_2247647___redundant_placeholder2G
Clstm_232_while_lstm_232_while_cond_2247647___redundant_placeholder3
lstm_232_while_identity
?
lstm_232/while/LessLesslstm_232_while_placeholder,lstm_232_while_less_lstm_232_strided_slice_1*
T0*
_output_shapes
: ]
lstm_232/while/IdentityIdentitylstm_232/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_232_while_identity lstm_232/while/Identity:output:0*(
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
while_body_2249212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_371_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_371_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_371_matmul_readvariableop_resource:2(F
4while_lstm_cell_371_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_371_biasadd_readvariableop_resource:(??*while/lstm_cell_371/BiasAdd/ReadVariableOp?)while/lstm_cell_371/MatMul/ReadVariableOp?+while/lstm_cell_371/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_371/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_371/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_371/addAddV2$while/lstm_cell_371/MatMul:product:0&while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_371/BiasAddBiasAddwhile/lstm_cell_371/add:z:02while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_371/splitSplit,while/lstm_cell_371/split/split_dim:output:0$while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_371/SigmoidSigmoid"while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_1Sigmoid"while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mulMul!while/lstm_cell_371/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_371/ReluRelu"while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_1Mulwhile/lstm_cell_371/Sigmoid:y:0&while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/add_1AddV2while/lstm_cell_371/mul:z:0while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_2Sigmoid"while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_371/Relu_1Reluwhile/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_2Mul!while/lstm_cell_371/Sigmoid_2:y:0(while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_371/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_371/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_371/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_371/BiasAdd/ReadVariableOp*^while/lstm_cell_371/MatMul/ReadVariableOp,^while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_371_biasadd_readvariableop_resource5while_lstm_cell_371_biasadd_readvariableop_resource_0"n
4while_lstm_cell_371_matmul_1_readvariableop_resource6while_lstm_cell_371_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_371_matmul_readvariableop_resource4while_lstm_cell_371_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_371/BiasAdd/ReadVariableOp*while/lstm_cell_371/BiasAdd/ReadVariableOp2V
)while/lstm_cell_371/MatMul/ReadVariableOp)while/lstm_cell_371/MatMul/ReadVariableOp2Z
+while/lstm_cell_371/MatMul_1/ReadVariableOp+while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2249940

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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249725

inputs>
,lstm_cell_371_matmul_readvariableop_resource:2(@
.lstm_cell_371_matmul_1_readvariableop_resource:
(;
-lstm_cell_371_biasadd_readvariableop_resource:(
identity??$lstm_cell_371/BiasAdd/ReadVariableOp?#lstm_cell_371/MatMul/ReadVariableOp?%lstm_cell_371/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_371/MatMul/ReadVariableOpReadVariableOp,lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_371/MatMulMatMulstrided_slice_2:output:0+lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_371/MatMul_1MatMulzeros:output:0-lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_371/addAddV2lstm_cell_371/MatMul:product:0 lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_371/BiasAddBiasAddlstm_cell_371/add:z:0,lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_371/splitSplit&lstm_cell_371/split/split_dim:output:0lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_371/SigmoidSigmoidlstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_1Sigmoidlstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_371/mulMullstm_cell_371/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_371/ReluRelulstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_1Mullstm_cell_371/Sigmoid:y:0 lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_371/add_1AddV2lstm_cell_371/mul:z:0lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_2Sigmoidlstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_371/Relu_1Relulstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_2Mullstm_cell_371/Sigmoid_2:y:0"lstm_cell_371/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_371_matmul_readvariableop_resource.lstm_cell_371_matmul_1_readvariableop_resource-lstm_cell_371_biasadd_readvariableop_resource*
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
while_body_2249641*
condR
while_cond_2249640*K
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
NoOpNoOp%^lstm_cell_371/BiasAdd/ReadVariableOp$^lstm_cell_371/MatMul/ReadVariableOp&^lstm_cell_371/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_371/BiasAdd/ReadVariableOp$lstm_cell_371/BiasAdd/ReadVariableOp2J
#lstm_cell_371/MatMul/ReadVariableOp#lstm_cell_371/MatMul/ReadVariableOp2N
%lstm_cell_371/MatMul_1/ReadVariableOp%lstm_cell_371/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_2244790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_369_2244814_0:	?0
while_lstm_cell_369_2244816_0:	d?,
while_lstm_cell_369_2244818_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_369_2244814:	?.
while_lstm_cell_369_2244816:	d?*
while_lstm_cell_369_2244818:	???+while/lstm_cell_369/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_369/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_369_2244814_0while_lstm_cell_369_2244816_0while_lstm_cell_369_2244818_0*
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244776?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_369/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_369/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_369/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_369/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_369_2244814while_lstm_cell_369_2244814_0"<
while_lstm_cell_369_2244816while_lstm_cell_369_2244816_0"<
while_lstm_cell_369_2244818while_lstm_cell_369_2244818_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_369/StatefulPartitionedCall+while/lstm_cell_369/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_233_layer_call_fn_2249142

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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246208o
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
?
?
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246934
lstm_231_input#
lstm_231_2246907:	?#
lstm_231_2246909:	d?
lstm_231_2246911:	?#
lstm_232_2246914:	d?#
lstm_232_2246916:	2?
lstm_232_2246918:	?"
lstm_233_2246921:2("
lstm_233_2246923:
(
lstm_233_2246925:("
dense_77_2246928:

dense_77_2246930:
identity?? dense_77/StatefulPartitionedCall? lstm_231/StatefulPartitionedCall? lstm_232/StatefulPartitionedCall? lstm_233/StatefulPartitionedCall?
 lstm_231/StatefulPartitionedCallStatefulPartitionedCalllstm_231_inputlstm_231_2246907lstm_231_2246909lstm_231_2246911*
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2246754?
 lstm_232/StatefulPartitionedCallStatefulPartitionedCall)lstm_231/StatefulPartitionedCall:output:0lstm_232_2246914lstm_232_2246916lstm_232_2246918*
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246589?
 lstm_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_232/StatefulPartitionedCall:output:0lstm_233_2246921lstm_233_2246923lstm_233_2246925*
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246424?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)lstm_233/StatefulPartitionedCall:output:0dense_77_2246928dense_77_2246930*
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
E__inference_dense_77_layer_call_and_return_conditional_losses_2246226x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_77/StatefulPartitionedCall!^lstm_231/StatefulPartitionedCall!^lstm_232/StatefulPartitionedCall!^lstm_233/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 lstm_231/StatefulPartitionedCall lstm_231/StatefulPartitionedCall2D
 lstm_232/StatefulPartitionedCall lstm_232/StatefulPartitionedCall2D
 lstm_233/StatefulPartitionedCall lstm_233/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_231_input
?J
?
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248350

inputs?
,lstm_cell_369_matmul_readvariableop_resource:	?A
.lstm_cell_369_matmul_1_readvariableop_resource:	d?<
-lstm_cell_369_biasadd_readvariableop_resource:	?
identity??$lstm_cell_369/BiasAdd/ReadVariableOp?#lstm_cell_369/MatMul/ReadVariableOp?%lstm_cell_369/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_369/MatMul/ReadVariableOpReadVariableOp,lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_369/MatMulMatMulstrided_slice_2:output:0+lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_369/MatMul_1MatMulzeros:output:0-lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_369/addAddV2lstm_cell_369/MatMul:product:0 lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_369/BiasAddBiasAddlstm_cell_369/add:z:0,lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_369/splitSplit&lstm_cell_369/split/split_dim:output:0lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_369/SigmoidSigmoidlstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_1Sigmoidlstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_369/mulMullstm_cell_369/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_369/ReluRelulstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_1Mullstm_cell_369/Sigmoid:y:0 lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_369/add_1AddV2lstm_cell_369/mul:z:0lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_2Sigmoidlstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_369/Relu_1Relulstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_2Mullstm_cell_369/Sigmoid_2:y:0"lstm_cell_369/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_369_matmul_readvariableop_resource.lstm_cell_369_matmul_1_readvariableop_resource-lstm_cell_369_biasadd_readvariableop_resource*
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
while_body_2248266*
condR
while_cond_2248265*K
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
NoOpNoOp%^lstm_cell_369/BiasAdd/ReadVariableOp$^lstm_cell_369/MatMul/ReadVariableOp&^lstm_cell_369/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_369/BiasAdd/ReadVariableOp$lstm_cell_369/BiasAdd/ReadVariableOp2J
#lstm_cell_369/MatMul/ReadVariableOp#lstm_cell_369/MatMul/ReadVariableOp2N
%lstm_cell_369/MatMul_1/ReadVariableOp%lstm_cell_369/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2250006

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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249439
inputs_0>
,lstm_cell_371_matmul_readvariableop_resource:2(@
.lstm_cell_371_matmul_1_readvariableop_resource:
(;
-lstm_cell_371_biasadd_readvariableop_resource:(
identity??$lstm_cell_371/BiasAdd/ReadVariableOp?#lstm_cell_371/MatMul/ReadVariableOp?%lstm_cell_371/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_371/MatMul/ReadVariableOpReadVariableOp,lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_371/MatMulMatMulstrided_slice_2:output:0+lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_371/MatMul_1MatMulzeros:output:0-lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_371/addAddV2lstm_cell_371/MatMul:product:0 lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_371/BiasAddBiasAddlstm_cell_371/add:z:0,lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_371/splitSplit&lstm_cell_371/split/split_dim:output:0lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_371/SigmoidSigmoidlstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_1Sigmoidlstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_371/mulMullstm_cell_371/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_371/ReluRelulstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_1Mullstm_cell_371/Sigmoid:y:0 lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_371/add_1AddV2lstm_cell_371/mul:z:0lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_2Sigmoidlstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_371/Relu_1Relulstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_2Mullstm_cell_371/Sigmoid_2:y:0"lstm_cell_371/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_371_matmul_readvariableop_resource.lstm_cell_371_matmul_1_readvariableop_resource-lstm_cell_371_biasadd_readvariableop_resource*
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
while_body_2249355*
condR
while_cond_2249354*K
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
NoOpNoOp%^lstm_cell_371/BiasAdd/ReadVariableOp$^lstm_cell_371/MatMul/ReadVariableOp&^lstm_cell_371/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_371/BiasAdd/ReadVariableOp$lstm_cell_371/BiasAdd/ReadVariableOp2J
#lstm_cell_371/MatMul/ReadVariableOp#lstm_cell_371/MatMul/ReadVariableOp2N
%lstm_cell_371/MatMul_1/ReadVariableOp%lstm_cell_371/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244776

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
while_body_2245681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_371_2245705_0:2(/
while_lstm_cell_371_2245707_0:
(+
while_lstm_cell_371_2245709_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_371_2245705:2(-
while_lstm_cell_371_2245707:
()
while_lstm_cell_371_2245709:(??+while/lstm_cell_371/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_371/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_371_2245705_0while_lstm_cell_371_2245707_0while_lstm_cell_371_2245709_0*
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245622?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_371/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_371/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_371/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_371/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_371_2245705while_lstm_cell_371_2245705_0"<
while_lstm_cell_371_2245707while_lstm_cell_371_2245707_0"<
while_lstm_cell_371_2245709while_lstm_cell_371_2245709_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_371/StatefulPartitionedCall+while/lstm_cell_371/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
)sequential_77_lstm_232_while_cond_2244479J
Fsequential_77_lstm_232_while_sequential_77_lstm_232_while_loop_counterP
Lsequential_77_lstm_232_while_sequential_77_lstm_232_while_maximum_iterations,
(sequential_77_lstm_232_while_placeholder.
*sequential_77_lstm_232_while_placeholder_1.
*sequential_77_lstm_232_while_placeholder_2.
*sequential_77_lstm_232_while_placeholder_3L
Hsequential_77_lstm_232_while_less_sequential_77_lstm_232_strided_slice_1c
_sequential_77_lstm_232_while_sequential_77_lstm_232_while_cond_2244479___redundant_placeholder0c
_sequential_77_lstm_232_while_sequential_77_lstm_232_while_cond_2244479___redundant_placeholder1c
_sequential_77_lstm_232_while_sequential_77_lstm_232_while_cond_2244479___redundant_placeholder2c
_sequential_77_lstm_232_while_sequential_77_lstm_232_while_cond_2244479___redundant_placeholder3)
%sequential_77_lstm_232_while_identity
?
!sequential_77/lstm_232/while/LessLess(sequential_77_lstm_232_while_placeholderHsequential_77_lstm_232_while_less_sequential_77_lstm_232_strided_slice_1*
T0*
_output_shapes
: y
%sequential_77/lstm_232/while/IdentityIdentity%sequential_77/lstm_232/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_77_lstm_232_while_identity.sequential_77/lstm_232/while/Identity:output:0*(
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
while_cond_2248408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2248408___redundant_placeholder05
1while_while_cond_2248408___redundant_placeholder15
1while_while_cond_2248408___redundant_placeholder25
1while_while_cond_2248408___redundant_placeholder3
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246208

inputs>
,lstm_cell_371_matmul_readvariableop_resource:2(@
.lstm_cell_371_matmul_1_readvariableop_resource:
(;
-lstm_cell_371_biasadd_readvariableop_resource:(
identity??$lstm_cell_371/BiasAdd/ReadVariableOp?#lstm_cell_371/MatMul/ReadVariableOp?%lstm_cell_371/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_371/MatMul/ReadVariableOpReadVariableOp,lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_371/MatMulMatMulstrided_slice_2:output:0+lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_371/MatMul_1MatMulzeros:output:0-lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_371/addAddV2lstm_cell_371/MatMul:product:0 lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_371/BiasAddBiasAddlstm_cell_371/add:z:0,lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_371/splitSplit&lstm_cell_371/split/split_dim:output:0lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_371/SigmoidSigmoidlstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_1Sigmoidlstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_371/mulMullstm_cell_371/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_371/ReluRelulstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_1Mullstm_cell_371/Sigmoid:y:0 lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_371/add_1AddV2lstm_cell_371/mul:z:0lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_2Sigmoidlstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_371/Relu_1Relulstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_2Mullstm_cell_371/Sigmoid_2:y:0"lstm_cell_371/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_371_matmul_readvariableop_resource.lstm_cell_371_matmul_1_readvariableop_resource-lstm_cell_371_biasadd_readvariableop_resource*
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
while_body_2246124*
condR
while_cond_2246123*K
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
NoOpNoOp%^lstm_cell_371/BiasAdd/ReadVariableOp$^lstm_cell_371/MatMul/ReadVariableOp&^lstm_cell_371/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_371/BiasAdd/ReadVariableOp$lstm_cell_371/BiasAdd/ReadVariableOp2J
#lstm_cell_371/MatMul/ReadVariableOp#lstm_cell_371/MatMul/ReadVariableOp2N
%lstm_cell_371/MatMul_1/ReadVariableOp%lstm_cell_371/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_371_layer_call_fn_2249957

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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245476o
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2247877

inputsH
5lstm_231_lstm_cell_369_matmul_readvariableop_resource:	?J
7lstm_231_lstm_cell_369_matmul_1_readvariableop_resource:	d?E
6lstm_231_lstm_cell_369_biasadd_readvariableop_resource:	?H
5lstm_232_lstm_cell_370_matmul_readvariableop_resource:	d?J
7lstm_232_lstm_cell_370_matmul_1_readvariableop_resource:	2?E
6lstm_232_lstm_cell_370_biasadd_readvariableop_resource:	?G
5lstm_233_lstm_cell_371_matmul_readvariableop_resource:2(I
7lstm_233_lstm_cell_371_matmul_1_readvariableop_resource:
(D
6lstm_233_lstm_cell_371_biasadd_readvariableop_resource:(9
'dense_77_matmul_readvariableop_resource:
6
(dense_77_biasadd_readvariableop_resource:
identity??dense_77/BiasAdd/ReadVariableOp?dense_77/MatMul/ReadVariableOp?-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp?,lstm_231/lstm_cell_369/MatMul/ReadVariableOp?.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp?lstm_231/while?-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp?,lstm_232/lstm_cell_370/MatMul/ReadVariableOp?.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp?lstm_232/while?-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp?,lstm_233/lstm_cell_371/MatMul/ReadVariableOp?.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp?lstm_233/whileD
lstm_231/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_231/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_231/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_231/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_sliceStridedSlicelstm_231/Shape:output:0%lstm_231/strided_slice/stack:output:0'lstm_231/strided_slice/stack_1:output:0'lstm_231/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_231/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_231/zeros/packedPacklstm_231/strided_slice:output:0 lstm_231/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_231/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_231/zerosFilllstm_231/zeros/packed:output:0lstm_231/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_231/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_231/zeros_1/packedPacklstm_231/strided_slice:output:0"lstm_231/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_231/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_231/zeros_1Fill lstm_231/zeros_1/packed:output:0lstm_231/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_231/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_231/transpose	Transposeinputs lstm_231/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_231/Shape_1Shapelstm_231/transpose:y:0*
T0*
_output_shapes
:h
lstm_231/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_231/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_231/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_slice_1StridedSlicelstm_231/Shape_1:output:0'lstm_231/strided_slice_1/stack:output:0)lstm_231/strided_slice_1/stack_1:output:0)lstm_231/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_231/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_231/TensorArrayV2TensorListReserve-lstm_231/TensorArrayV2/element_shape:output:0!lstm_231/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_231/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_231/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_231/transpose:y:0Glstm_231/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_231/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_231/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_231/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_slice_2StridedSlicelstm_231/transpose:y:0'lstm_231/strided_slice_2/stack:output:0)lstm_231/strided_slice_2/stack_1:output:0)lstm_231/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_231/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp5lstm_231_lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_231/lstm_cell_369/MatMulMatMul!lstm_231/strided_slice_2:output:04lstm_231/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp7lstm_231_lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_231/lstm_cell_369/MatMul_1MatMullstm_231/zeros:output:06lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_231/lstm_cell_369/addAddV2'lstm_231/lstm_cell_369/MatMul:product:0)lstm_231/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp6lstm_231_lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_231/lstm_cell_369/BiasAddBiasAddlstm_231/lstm_cell_369/add:z:05lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_231/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_231/lstm_cell_369/splitSplit/lstm_231/lstm_cell_369/split/split_dim:output:0'lstm_231/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_231/lstm_cell_369/SigmoidSigmoid%lstm_231/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_231/lstm_cell_369/Sigmoid_1Sigmoid%lstm_231/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/mulMul$lstm_231/lstm_cell_369/Sigmoid_1:y:0lstm_231/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_231/lstm_cell_369/ReluRelu%lstm_231/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/mul_1Mul"lstm_231/lstm_cell_369/Sigmoid:y:0)lstm_231/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/add_1AddV2lstm_231/lstm_cell_369/mul:z:0 lstm_231/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_231/lstm_cell_369/Sigmoid_2Sigmoid%lstm_231/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_231/lstm_cell_369/Relu_1Relu lstm_231/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/mul_2Mul$lstm_231/lstm_cell_369/Sigmoid_2:y:0+lstm_231/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_231/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_231/TensorArrayV2_1TensorListReserve/lstm_231/TensorArrayV2_1/element_shape:output:0!lstm_231/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_231/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_231/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_231/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_231/whileWhile$lstm_231/while/loop_counter:output:0*lstm_231/while/maximum_iterations:output:0lstm_231/time:output:0!lstm_231/TensorArrayV2_1:handle:0lstm_231/zeros:output:0lstm_231/zeros_1:output:0!lstm_231/strided_slice_1:output:0@lstm_231/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_231_lstm_cell_369_matmul_readvariableop_resource7lstm_231_lstm_cell_369_matmul_1_readvariableop_resource6lstm_231_lstm_cell_369_biasadd_readvariableop_resource*
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
lstm_231_while_body_2247509*'
condR
lstm_231_while_cond_2247508*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_231/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_231/TensorArrayV2Stack/TensorListStackTensorListStacklstm_231/while:output:3Blstm_231/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_231/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_231/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_231/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_slice_3StridedSlice4lstm_231/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_231/strided_slice_3/stack:output:0)lstm_231/strided_slice_3/stack_1:output:0)lstm_231/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_231/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_231/transpose_1	Transpose4lstm_231/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_231/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_231/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_232/ShapeShapelstm_231/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_232/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_232/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_232/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_sliceStridedSlicelstm_232/Shape:output:0%lstm_232/strided_slice/stack:output:0'lstm_232/strided_slice/stack_1:output:0'lstm_232/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_232/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_232/zeros/packedPacklstm_232/strided_slice:output:0 lstm_232/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_232/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_232/zerosFilllstm_232/zeros/packed:output:0lstm_232/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_232/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_232/zeros_1/packedPacklstm_232/strided_slice:output:0"lstm_232/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_232/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_232/zeros_1Fill lstm_232/zeros_1/packed:output:0lstm_232/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_232/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_232/transpose	Transposelstm_231/transpose_1:y:0 lstm_232/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_232/Shape_1Shapelstm_232/transpose:y:0*
T0*
_output_shapes
:h
lstm_232/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_232/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_232/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_slice_1StridedSlicelstm_232/Shape_1:output:0'lstm_232/strided_slice_1/stack:output:0)lstm_232/strided_slice_1/stack_1:output:0)lstm_232/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_232/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_232/TensorArrayV2TensorListReserve-lstm_232/TensorArrayV2/element_shape:output:0!lstm_232/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_232/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_232/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_232/transpose:y:0Glstm_232/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_232/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_232/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_232/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_slice_2StridedSlicelstm_232/transpose:y:0'lstm_232/strided_slice_2/stack:output:0)lstm_232/strided_slice_2/stack_1:output:0)lstm_232/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_232/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp5lstm_232_lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_232/lstm_cell_370/MatMulMatMul!lstm_232/strided_slice_2:output:04lstm_232/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp7lstm_232_lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_232/lstm_cell_370/MatMul_1MatMullstm_232/zeros:output:06lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_232/lstm_cell_370/addAddV2'lstm_232/lstm_cell_370/MatMul:product:0)lstm_232/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp6lstm_232_lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_232/lstm_cell_370/BiasAddBiasAddlstm_232/lstm_cell_370/add:z:05lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_232/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_232/lstm_cell_370/splitSplit/lstm_232/lstm_cell_370/split/split_dim:output:0'lstm_232/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_232/lstm_cell_370/SigmoidSigmoid%lstm_232/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_232/lstm_cell_370/Sigmoid_1Sigmoid%lstm_232/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/mulMul$lstm_232/lstm_cell_370/Sigmoid_1:y:0lstm_232/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_232/lstm_cell_370/ReluRelu%lstm_232/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/mul_1Mul"lstm_232/lstm_cell_370/Sigmoid:y:0)lstm_232/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/add_1AddV2lstm_232/lstm_cell_370/mul:z:0 lstm_232/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_232/lstm_cell_370/Sigmoid_2Sigmoid%lstm_232/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_232/lstm_cell_370/Relu_1Relu lstm_232/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/mul_2Mul$lstm_232/lstm_cell_370/Sigmoid_2:y:0+lstm_232/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_232/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_232/TensorArrayV2_1TensorListReserve/lstm_232/TensorArrayV2_1/element_shape:output:0!lstm_232/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_232/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_232/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_232/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_232/whileWhile$lstm_232/while/loop_counter:output:0*lstm_232/while/maximum_iterations:output:0lstm_232/time:output:0!lstm_232/TensorArrayV2_1:handle:0lstm_232/zeros:output:0lstm_232/zeros_1:output:0!lstm_232/strided_slice_1:output:0@lstm_232/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_232_lstm_cell_370_matmul_readvariableop_resource7lstm_232_lstm_cell_370_matmul_1_readvariableop_resource6lstm_232_lstm_cell_370_biasadd_readvariableop_resource*
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
lstm_232_while_body_2247648*'
condR
lstm_232_while_cond_2247647*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_232/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_232/TensorArrayV2Stack/TensorListStackTensorListStacklstm_232/while:output:3Blstm_232/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_232/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_232/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_232/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_slice_3StridedSlice4lstm_232/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_232/strided_slice_3/stack:output:0)lstm_232/strided_slice_3/stack_1:output:0)lstm_232/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_232/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_232/transpose_1	Transpose4lstm_232/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_232/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_232/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_233/ShapeShapelstm_232/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_233/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_233/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_233/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_sliceStridedSlicelstm_233/Shape:output:0%lstm_233/strided_slice/stack:output:0'lstm_233/strided_slice/stack_1:output:0'lstm_233/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_233/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_233/zeros/packedPacklstm_233/strided_slice:output:0 lstm_233/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_233/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_233/zerosFilllstm_233/zeros/packed:output:0lstm_233/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_233/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_233/zeros_1/packedPacklstm_233/strided_slice:output:0"lstm_233/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_233/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_233/zeros_1Fill lstm_233/zeros_1/packed:output:0lstm_233/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_233/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_233/transpose	Transposelstm_232/transpose_1:y:0 lstm_233/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_233/Shape_1Shapelstm_233/transpose:y:0*
T0*
_output_shapes
:h
lstm_233/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_233/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_233/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_slice_1StridedSlicelstm_233/Shape_1:output:0'lstm_233/strided_slice_1/stack:output:0)lstm_233/strided_slice_1/stack_1:output:0)lstm_233/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_233/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_233/TensorArrayV2TensorListReserve-lstm_233/TensorArrayV2/element_shape:output:0!lstm_233/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_233/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_233/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_233/transpose:y:0Glstm_233/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_233/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_233/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_233/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_slice_2StridedSlicelstm_233/transpose:y:0'lstm_233/strided_slice_2/stack:output:0)lstm_233/strided_slice_2/stack_1:output:0)lstm_233/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_233/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp5lstm_233_lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_233/lstm_cell_371/MatMulMatMul!lstm_233/strided_slice_2:output:04lstm_233/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp7lstm_233_lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_233/lstm_cell_371/MatMul_1MatMullstm_233/zeros:output:06lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_233/lstm_cell_371/addAddV2'lstm_233/lstm_cell_371/MatMul:product:0)lstm_233/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp6lstm_233_lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_233/lstm_cell_371/BiasAddBiasAddlstm_233/lstm_cell_371/add:z:05lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_233/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_233/lstm_cell_371/splitSplit/lstm_233/lstm_cell_371/split/split_dim:output:0'lstm_233/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_233/lstm_cell_371/SigmoidSigmoid%lstm_233/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_233/lstm_cell_371/Sigmoid_1Sigmoid%lstm_233/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/mulMul$lstm_233/lstm_cell_371/Sigmoid_1:y:0lstm_233/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_233/lstm_cell_371/ReluRelu%lstm_233/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/mul_1Mul"lstm_233/lstm_cell_371/Sigmoid:y:0)lstm_233/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/add_1AddV2lstm_233/lstm_cell_371/mul:z:0 lstm_233/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_233/lstm_cell_371/Sigmoid_2Sigmoid%lstm_233/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_233/lstm_cell_371/Relu_1Relu lstm_233/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/mul_2Mul$lstm_233/lstm_cell_371/Sigmoid_2:y:0+lstm_233/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_233/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_233/TensorArrayV2_1TensorListReserve/lstm_233/TensorArrayV2_1/element_shape:output:0!lstm_233/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_233/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_233/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_233/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_233/whileWhile$lstm_233/while/loop_counter:output:0*lstm_233/while/maximum_iterations:output:0lstm_233/time:output:0!lstm_233/TensorArrayV2_1:handle:0lstm_233/zeros:output:0lstm_233/zeros_1:output:0!lstm_233/strided_slice_1:output:0@lstm_233/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_233_lstm_cell_371_matmul_readvariableop_resource7lstm_233_lstm_cell_371_matmul_1_readvariableop_resource6lstm_233_lstm_cell_371_biasadd_readvariableop_resource*
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
lstm_233_while_body_2247787*'
condR
lstm_233_while_cond_2247786*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_233/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_233/TensorArrayV2Stack/TensorListStackTensorListStacklstm_233/while:output:3Blstm_233/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_233/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_233/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_233/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_slice_3StridedSlice4lstm_233/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_233/strided_slice_3/stack:output:0)lstm_233/strided_slice_3/stack_1:output:0)lstm_233/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_233/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_233/transpose_1	Transpose4lstm_233/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_233/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_233/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_77/MatMulMatMul!lstm_233/strided_slice_3:output:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_77/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp.^lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp-^lstm_231/lstm_cell_369/MatMul/ReadVariableOp/^lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp^lstm_231/while.^lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp-^lstm_232/lstm_cell_370/MatMul/ReadVariableOp/^lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp^lstm_232/while.^lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp-^lstm_233/lstm_cell_371/MatMul/ReadVariableOp/^lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp^lstm_233/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2^
-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp2\
,lstm_231/lstm_cell_369/MatMul/ReadVariableOp,lstm_231/lstm_cell_369/MatMul/ReadVariableOp2`
.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp2 
lstm_231/whilelstm_231/while2^
-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp2\
,lstm_232/lstm_cell_370/MatMul/ReadVariableOp,lstm_232/lstm_cell_370/MatMul/ReadVariableOp2`
.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp2 
lstm_232/whilelstm_232/while2^
-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp2\
,lstm_233/lstm_cell_371/MatMul/ReadVariableOp,lstm_233/lstm_cell_371/MatMul/ReadVariableOp2`
.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp2 
lstm_233/whilelstm_233/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)sequential_77_lstm_233_while_cond_2244618J
Fsequential_77_lstm_233_while_sequential_77_lstm_233_while_loop_counterP
Lsequential_77_lstm_233_while_sequential_77_lstm_233_while_maximum_iterations,
(sequential_77_lstm_233_while_placeholder.
*sequential_77_lstm_233_while_placeholder_1.
*sequential_77_lstm_233_while_placeholder_2.
*sequential_77_lstm_233_while_placeholder_3L
Hsequential_77_lstm_233_while_less_sequential_77_lstm_233_strided_slice_1c
_sequential_77_lstm_233_while_sequential_77_lstm_233_while_cond_2244618___redundant_placeholder0c
_sequential_77_lstm_233_while_sequential_77_lstm_233_while_cond_2244618___redundant_placeholder1c
_sequential_77_lstm_233_while_sequential_77_lstm_233_while_cond_2244618___redundant_placeholder2c
_sequential_77_lstm_233_while_sequential_77_lstm_233_while_cond_2244618___redundant_placeholder3)
%sequential_77_lstm_233_while_identity
?
!sequential_77/lstm_233/while/LessLess(sequential_77_lstm_233_while_placeholderHsequential_77_lstm_233_while_less_sequential_77_lstm_233_strided_slice_1*
T0*
_output_shapes
: y
%sequential_77/lstm_233/while/IdentityIdentity%sequential_77/lstm_233/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_77_lstm_233_while_identity.sequential_77/lstm_233/while/Identity:output:0*(
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
??
?
#__inference__traced_restore_2250311
file_prefix2
 assignvariableop_dense_77_kernel:
.
 assignvariableop_1_dense_77_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_231_lstm_cell_231_kernel:	?M
:assignvariableop_8_lstm_231_lstm_cell_231_recurrent_kernel:	d?=
.assignvariableop_9_lstm_231_lstm_cell_231_bias:	?D
1assignvariableop_10_lstm_232_lstm_cell_232_kernel:	d?N
;assignvariableop_11_lstm_232_lstm_cell_232_recurrent_kernel:	2?>
/assignvariableop_12_lstm_232_lstm_cell_232_bias:	?C
1assignvariableop_13_lstm_233_lstm_cell_233_kernel:2(M
;assignvariableop_14_lstm_233_lstm_cell_233_recurrent_kernel:
(=
/assignvariableop_15_lstm_233_lstm_cell_233_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_77_kernel_m:
6
(assignvariableop_19_adam_dense_77_bias_m:K
8assignvariableop_20_adam_lstm_231_lstm_cell_231_kernel_m:	?U
Bassignvariableop_21_adam_lstm_231_lstm_cell_231_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_231_lstm_cell_231_bias_m:	?K
8assignvariableop_23_adam_lstm_232_lstm_cell_232_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_232_lstm_cell_232_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_232_lstm_cell_232_bias_m:	?J
8assignvariableop_26_adam_lstm_233_lstm_cell_233_kernel_m:2(T
Bassignvariableop_27_adam_lstm_233_lstm_cell_233_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_233_lstm_cell_233_bias_m:(<
*assignvariableop_29_adam_dense_77_kernel_v:
6
(assignvariableop_30_adam_dense_77_bias_v:K
8assignvariableop_31_adam_lstm_231_lstm_cell_231_kernel_v:	?U
Bassignvariableop_32_adam_lstm_231_lstm_cell_231_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_231_lstm_cell_231_bias_v:	?K
8assignvariableop_34_adam_lstm_232_lstm_cell_232_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_232_lstm_cell_232_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_232_lstm_cell_232_bias_v:	?J
8assignvariableop_37_adam_lstm_233_lstm_cell_233_kernel_v:2(T
Bassignvariableop_38_adam_lstm_233_lstm_cell_233_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_233_lstm_cell_233_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_77_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_77_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_231_lstm_cell_231_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_231_lstm_cell_231_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_231_lstm_cell_231_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_232_lstm_cell_232_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_232_lstm_cell_232_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_232_lstm_cell_232_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_233_lstm_cell_233_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_233_lstm_cell_233_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_233_lstm_cell_233_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_77_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_77_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_231_lstm_cell_231_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_231_lstm_cell_231_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_231_lstm_cell_231_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_232_lstm_cell_232_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_232_lstm_cell_232_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_232_lstm_cell_232_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_233_lstm_cell_233_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_233_lstm_cell_233_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_233_lstm_cell_233_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_77_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_77_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_231_lstm_cell_231_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_231_lstm_cell_231_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_231_lstm_cell_231_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_232_lstm_cell_232_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_232_lstm_cell_232_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_232_lstm_cell_232_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_233_lstm_cell_233_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_233_lstm_cell_233_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_233_lstm_cell_233_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2246669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2246669___redundant_placeholder05
1while_while_cond_2246669___redundant_placeholder15
1while_while_cond_2246669___redundant_placeholder25
1while_while_cond_2246669___redundant_placeholder3
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
lstm_231_while_cond_2247081.
*lstm_231_while_lstm_231_while_loop_counter4
0lstm_231_while_lstm_231_while_maximum_iterations
lstm_231_while_placeholder 
lstm_231_while_placeholder_1 
lstm_231_while_placeholder_2 
lstm_231_while_placeholder_30
,lstm_231_while_less_lstm_231_strided_slice_1G
Clstm_231_while_lstm_231_while_cond_2247081___redundant_placeholder0G
Clstm_231_while_lstm_231_while_cond_2247081___redundant_placeholder1G
Clstm_231_while_lstm_231_while_cond_2247081___redundant_placeholder2G
Clstm_231_while_lstm_231_while_cond_2247081___redundant_placeholder3
lstm_231_while_identity
?
lstm_231/while/LessLesslstm_231_while_placeholder,lstm_231_while_less_lstm_231_strided_slice_1*
T0*
_output_shapes
: ]
lstm_231/while/IdentityIdentitylstm_231/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_231_while_identity lstm_231/while/Identity:output:0*(
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
*__inference_lstm_233_layer_call_fn_2249131
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2245750o
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
while_body_2247980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_369_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_369_matmul_readvariableop_resource:	?G
4while_lstm_cell_369_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_369_biasadd_readvariableop_resource:	???*while/lstm_cell_369/BiasAdd/ReadVariableOp?)while/lstm_cell_369/MatMul/ReadVariableOp?+while/lstm_cell_369/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_369/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_369/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_369/addAddV2$while/lstm_cell_369/MatMul:product:0&while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_369/BiasAddBiasAddwhile/lstm_cell_369/add:z:02while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_369/splitSplit,while/lstm_cell_369/split/split_dim:output:0$while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_369/SigmoidSigmoid"while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_1Sigmoid"while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mulMul!while/lstm_cell_369/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_369/ReluRelu"while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_1Mulwhile/lstm_cell_369/Sigmoid:y:0&while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/add_1AddV2while/lstm_cell_369/mul:z:0while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_2Sigmoid"while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_369/Relu_1Reluwhile/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_2Mul!while/lstm_cell_369/Sigmoid_2:y:0(while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_369/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_369/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_369/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_369/BiasAdd/ReadVariableOp*^while/lstm_cell_369/MatMul/ReadVariableOp,^while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_369_biasadd_readvariableop_resource5while_lstm_cell_369_biasadd_readvariableop_resource_0"n
4while_lstm_cell_369_matmul_1_readvariableop_resource6while_lstm_cell_369_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_369_matmul_readvariableop_resource4while_lstm_cell_369_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_369/BiasAdd/ReadVariableOp*while/lstm_cell_369/BiasAdd/ReadVariableOp2V
)while/lstm_cell_369/MatMul/ReadVariableOp)while/lstm_cell_369/MatMul/ReadVariableOp2Z
+while/lstm_cell_369/MatMul_1/ReadVariableOp+while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2245050

inputs(
lstm_cell_369_2244968:	?(
lstm_cell_369_2244970:	d?$
lstm_cell_369_2244972:	?
identity??%lstm_cell_369/StatefulPartitionedCall?while;
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
%lstm_cell_369/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_369_2244968lstm_cell_369_2244970lstm_cell_369_2244972*
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244922n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_369_2244968lstm_cell_369_2244970lstm_cell_369_2244972*
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
while_body_2244981*
condR
while_cond_2244980*K
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
NoOpNoOp&^lstm_cell_369/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_369/StatefulPartitionedCall%lstm_cell_369/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_2245140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_370_2245164_0:	d?0
while_lstm_cell_370_2245166_0:	2?,
while_lstm_cell_370_2245168_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_370_2245164:	d?.
while_lstm_cell_370_2245166:	2?*
while_lstm_cell_370_2245168:	???+while/lstm_cell_370/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_370/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_370_2245164_0while_lstm_cell_370_2245166_0while_lstm_cell_370_2245168_0*
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2245126?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_370/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_370/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_370/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_370/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_370_2245164while_lstm_cell_370_2245164_0"<
while_lstm_cell_370_2245166while_lstm_cell_370_2245166_0"<
while_lstm_cell_370_2245168while_lstm_cell_370_2245168_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_370/StatefulPartitionedCall+while/lstm_cell_370/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248493

inputs?
,lstm_cell_369_matmul_readvariableop_resource:	?A
.lstm_cell_369_matmul_1_readvariableop_resource:	d?<
-lstm_cell_369_biasadd_readvariableop_resource:	?
identity??$lstm_cell_369/BiasAdd/ReadVariableOp?#lstm_cell_369/MatMul/ReadVariableOp?%lstm_cell_369/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_369/MatMul/ReadVariableOpReadVariableOp,lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_369/MatMulMatMulstrided_slice_2:output:0+lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_369/MatMul_1MatMulzeros:output:0-lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_369/addAddV2lstm_cell_369/MatMul:product:0 lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_369/BiasAddBiasAddlstm_cell_369/add:z:0,lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_369/splitSplit&lstm_cell_369/split/split_dim:output:0lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_369/SigmoidSigmoidlstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_1Sigmoidlstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_369/mulMullstm_cell_369/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_369/ReluRelulstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_1Mullstm_cell_369/Sigmoid:y:0 lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_369/add_1AddV2lstm_cell_369/mul:z:0lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_369/Sigmoid_2Sigmoidlstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_369/Relu_1Relulstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_369/mul_2Mullstm_cell_369/Sigmoid_2:y:0"lstm_cell_369/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_369_matmul_readvariableop_resource.lstm_cell_369_matmul_1_readvariableop_resource-lstm_cell_369_biasadd_readvariableop_resource*
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
while_body_2248409*
condR
while_cond_2248408*K
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
NoOpNoOp%^lstm_cell_369/BiasAdd/ReadVariableOp$^lstm_cell_369/MatMul/ReadVariableOp&^lstm_cell_369/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_369/BiasAdd/ReadVariableOp$lstm_cell_369/BiasAdd/ReadVariableOp2J
#lstm_cell_369/MatMul/ReadVariableOp#lstm_cell_369/MatMul/ReadVariableOp2N
%lstm_cell_369/MatMul_1/ReadVariableOp%lstm_cell_369/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2248409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_369_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_369_matmul_readvariableop_resource:	?G
4while_lstm_cell_369_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_369_biasadd_readvariableop_resource:	???*while/lstm_cell_369/BiasAdd/ReadVariableOp?)while/lstm_cell_369/MatMul/ReadVariableOp?+while/lstm_cell_369/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_369/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_369/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_369/addAddV2$while/lstm_cell_369/MatMul:product:0&while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_369/BiasAddBiasAddwhile/lstm_cell_369/add:z:02while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_369/splitSplit,while/lstm_cell_369/split/split_dim:output:0$while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_369/SigmoidSigmoid"while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_1Sigmoid"while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mulMul!while/lstm_cell_369/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_369/ReluRelu"while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_1Mulwhile/lstm_cell_369/Sigmoid:y:0&while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/add_1AddV2while/lstm_cell_369/mul:z:0while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_2Sigmoid"while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_369/Relu_1Reluwhile/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_2Mul!while/lstm_cell_369/Sigmoid_2:y:0(while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_369/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_369/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_369/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_369/BiasAdd/ReadVariableOp*^while/lstm_cell_369/MatMul/ReadVariableOp,^while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_369_biasadd_readvariableop_resource5while_lstm_cell_369_biasadd_readvariableop_resource_0"n
4while_lstm_cell_369_matmul_1_readvariableop_resource6while_lstm_cell_369_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_369_matmul_readvariableop_resource4while_lstm_cell_369_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_369/BiasAdd/ReadVariableOp*while/lstm_cell_369/BiasAdd/ReadVariableOp2V
)while/lstm_cell_369/MatMul/ReadVariableOp)while/lstm_cell_369/MatMul/ReadVariableOp2Z
+while/lstm_cell_369/MatMul_1/ReadVariableOp+while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248680
inputs_0?
,lstm_cell_370_matmul_readvariableop_resource:	d?A
.lstm_cell_370_matmul_1_readvariableop_resource:	2?<
-lstm_cell_370_biasadd_readvariableop_resource:	?
identity??$lstm_cell_370/BiasAdd/ReadVariableOp?#lstm_cell_370/MatMul/ReadVariableOp?%lstm_cell_370/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_370/MatMul/ReadVariableOpReadVariableOp,lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_370/MatMulMatMulstrided_slice_2:output:0+lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_370/MatMul_1MatMulzeros:output:0-lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_370/addAddV2lstm_cell_370/MatMul:product:0 lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_370/BiasAddBiasAddlstm_cell_370/add:z:0,lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_370/splitSplit&lstm_cell_370/split/split_dim:output:0lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_370/SigmoidSigmoidlstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_1Sigmoidlstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_370/mulMullstm_cell_370/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_370/ReluRelulstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_1Mullstm_cell_370/Sigmoid:y:0 lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_370/add_1AddV2lstm_cell_370/mul:z:0lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_2Sigmoidlstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_370/Relu_1Relulstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_2Mullstm_cell_370/Sigmoid_2:y:0"lstm_cell_370/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_370_matmul_readvariableop_resource.lstm_cell_370_matmul_1_readvariableop_resource-lstm_cell_370_biasadd_readvariableop_resource*
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
while_body_2248596*
condR
while_cond_2248595*K
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
NoOpNoOp%^lstm_cell_370/BiasAdd/ReadVariableOp$^lstm_cell_370/MatMul/ReadVariableOp&^lstm_cell_370/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_370/BiasAdd/ReadVariableOp$lstm_cell_370/BiasAdd/ReadVariableOp2J
#lstm_cell_370/MatMul/ReadVariableOp#lstm_cell_370/MatMul/ReadVariableOp2N
%lstm_cell_370/MatMul_1/ReadVariableOp%lstm_cell_370/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_369_layer_call_fn_2249778

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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244922o
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246589

inputs?
,lstm_cell_370_matmul_readvariableop_resource:	d?A
.lstm_cell_370_matmul_1_readvariableop_resource:	2?<
-lstm_cell_370_biasadd_readvariableop_resource:	?
identity??$lstm_cell_370/BiasAdd/ReadVariableOp?#lstm_cell_370/MatMul/ReadVariableOp?%lstm_cell_370/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_370/MatMul/ReadVariableOpReadVariableOp,lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_370/MatMulMatMulstrided_slice_2:output:0+lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_370/MatMul_1MatMulzeros:output:0-lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_370/addAddV2lstm_cell_370/MatMul:product:0 lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_370/BiasAddBiasAddlstm_cell_370/add:z:0,lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_370/splitSplit&lstm_cell_370/split/split_dim:output:0lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_370/SigmoidSigmoidlstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_1Sigmoidlstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_370/mulMullstm_cell_370/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_370/ReluRelulstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_1Mullstm_cell_370/Sigmoid:y:0 lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_370/add_1AddV2lstm_cell_370/mul:z:0lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_2Sigmoidlstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_370/Relu_1Relulstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_2Mullstm_cell_370/Sigmoid_2:y:0"lstm_cell_370/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_370_matmul_readvariableop_resource.lstm_cell_370_matmul_1_readvariableop_resource-lstm_cell_370_biasadd_readvariableop_resource*
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
while_body_2246505*
condR
while_cond_2246504*K
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
NoOpNoOp%^lstm_cell_370/BiasAdd/ReadVariableOp$^lstm_cell_370/MatMul/ReadVariableOp&^lstm_cell_370/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_370/BiasAdd/ReadVariableOp$lstm_cell_370/BiasAdd/ReadVariableOp2J
#lstm_cell_370/MatMul/ReadVariableOp#lstm_cell_370/MatMul/ReadVariableOp2N
%lstm_cell_370/MatMul_1/ReadVariableOp%lstm_cell_370/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2249025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_370_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_370_matmul_readvariableop_resource:	d?G
4while_lstm_cell_370_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_370_biasadd_readvariableop_resource:	???*while/lstm_cell_370/BiasAdd/ReadVariableOp?)while/lstm_cell_370/MatMul/ReadVariableOp?+while/lstm_cell_370/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_370/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_370/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_370/addAddV2$while/lstm_cell_370/MatMul:product:0&while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_370/BiasAddBiasAddwhile/lstm_cell_370/add:z:02while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_370/splitSplit,while/lstm_cell_370/split/split_dim:output:0$while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_370/SigmoidSigmoid"while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_1Sigmoid"while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mulMul!while/lstm_cell_370/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_370/ReluRelu"while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_1Mulwhile/lstm_cell_370/Sigmoid:y:0&while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/add_1AddV2while/lstm_cell_370/mul:z:0while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_2Sigmoid"while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_370/Relu_1Reluwhile/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_2Mul!while/lstm_cell_370/Sigmoid_2:y:0(while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_370/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_370/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_370/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_370/BiasAdd/ReadVariableOp*^while/lstm_cell_370/MatMul/ReadVariableOp,^while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_370_biasadd_readvariableop_resource5while_lstm_cell_370_biasadd_readvariableop_resource_0"n
4while_lstm_cell_370_matmul_1_readvariableop_resource6while_lstm_cell_370_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_370_matmul_readvariableop_resource4while_lstm_cell_370_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_370/BiasAdd/ReadVariableOp*while/lstm_cell_370/BiasAdd/ReadVariableOp2V
)while/lstm_cell_370/MatMul/ReadVariableOp)while/lstm_cell_370/MatMul/ReadVariableOp2Z
+while/lstm_cell_370/MatMul_1/ReadVariableOp+while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_77_layer_call_fn_2247023

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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246822o
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
?W
?
 __inference__traced_save_2250181
file_prefix.
*savev2_dense_77_kernel_read_readvariableop,
(savev2_dense_77_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_231_lstm_cell_231_kernel_read_readvariableopF
Bsavev2_lstm_231_lstm_cell_231_recurrent_kernel_read_readvariableop:
6savev2_lstm_231_lstm_cell_231_bias_read_readvariableop<
8savev2_lstm_232_lstm_cell_232_kernel_read_readvariableopF
Bsavev2_lstm_232_lstm_cell_232_recurrent_kernel_read_readvariableop:
6savev2_lstm_232_lstm_cell_232_bias_read_readvariableop<
8savev2_lstm_233_lstm_cell_233_kernel_read_readvariableopF
Bsavev2_lstm_233_lstm_cell_233_recurrent_kernel_read_readvariableop:
6savev2_lstm_233_lstm_cell_233_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_77_kernel_m_read_readvariableop3
/savev2_adam_dense_77_bias_m_read_readvariableopC
?savev2_adam_lstm_231_lstm_cell_231_kernel_m_read_readvariableopM
Isavev2_adam_lstm_231_lstm_cell_231_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_231_lstm_cell_231_bias_m_read_readvariableopC
?savev2_adam_lstm_232_lstm_cell_232_kernel_m_read_readvariableopM
Isavev2_adam_lstm_232_lstm_cell_232_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_232_lstm_cell_232_bias_m_read_readvariableopC
?savev2_adam_lstm_233_lstm_cell_233_kernel_m_read_readvariableopM
Isavev2_adam_lstm_233_lstm_cell_233_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_233_lstm_cell_233_bias_m_read_readvariableop5
1savev2_adam_dense_77_kernel_v_read_readvariableop3
/savev2_adam_dense_77_bias_v_read_readvariableopC
?savev2_adam_lstm_231_lstm_cell_231_kernel_v_read_readvariableopM
Isavev2_adam_lstm_231_lstm_cell_231_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_231_lstm_cell_231_bias_v_read_readvariableopC
?savev2_adam_lstm_232_lstm_cell_232_kernel_v_read_readvariableopM
Isavev2_adam_lstm_232_lstm_cell_232_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_232_lstm_cell_232_bias_v_read_readvariableopC
?savev2_adam_lstm_233_lstm_cell_233_kernel_v_read_readvariableopM
Isavev2_adam_lstm_233_lstm_cell_233_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_233_lstm_cell_233_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_77_kernel_read_readvariableop(savev2_dense_77_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_231_lstm_cell_231_kernel_read_readvariableopBsavev2_lstm_231_lstm_cell_231_recurrent_kernel_read_readvariableop6savev2_lstm_231_lstm_cell_231_bias_read_readvariableop8savev2_lstm_232_lstm_cell_232_kernel_read_readvariableopBsavev2_lstm_232_lstm_cell_232_recurrent_kernel_read_readvariableop6savev2_lstm_232_lstm_cell_232_bias_read_readvariableop8savev2_lstm_233_lstm_cell_233_kernel_read_readvariableopBsavev2_lstm_233_lstm_cell_233_recurrent_kernel_read_readvariableop6savev2_lstm_233_lstm_cell_233_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_77_kernel_m_read_readvariableop/savev2_adam_dense_77_bias_m_read_readvariableop?savev2_adam_lstm_231_lstm_cell_231_kernel_m_read_readvariableopIsavev2_adam_lstm_231_lstm_cell_231_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_231_lstm_cell_231_bias_m_read_readvariableop?savev2_adam_lstm_232_lstm_cell_232_kernel_m_read_readvariableopIsavev2_adam_lstm_232_lstm_cell_232_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_232_lstm_cell_232_bias_m_read_readvariableop?savev2_adam_lstm_233_lstm_cell_233_kernel_m_read_readvariableopIsavev2_adam_lstm_233_lstm_cell_233_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_233_lstm_cell_233_bias_m_read_readvariableop1savev2_adam_dense_77_kernel_v_read_readvariableop/savev2_adam_dense_77_bias_v_read_readvariableop?savev2_adam_lstm_231_lstm_cell_231_kernel_v_read_readvariableopIsavev2_adam_lstm_231_lstm_cell_231_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_231_lstm_cell_231_bias_v_read_readvariableop?savev2_adam_lstm_232_lstm_cell_232_kernel_v_read_readvariableopIsavev2_adam_lstm_232_lstm_cell_232_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_232_lstm_cell_232_bias_v_read_readvariableop?savev2_adam_lstm_233_lstm_cell_233_kernel_v_read_readvariableopIsavev2_adam_lstm_233_lstm_cell_233_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_233_lstm_cell_233_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
/__inference_sequential_77_layer_call_fn_2246996

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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246233o
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
while_cond_2247979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2247979___redundant_placeholder05
1while_while_cond_2247979___redundant_placeholder15
1while_while_cond_2247979___redundant_placeholder25
1while_while_cond_2247979___redundant_placeholder3
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

lstm_231_while_body_2247082.
*lstm_231_while_lstm_231_while_loop_counter4
0lstm_231_while_lstm_231_while_maximum_iterations
lstm_231_while_placeholder 
lstm_231_while_placeholder_1 
lstm_231_while_placeholder_2 
lstm_231_while_placeholder_3-
)lstm_231_while_lstm_231_strided_slice_1_0i
elstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0:	?R
?lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?M
>lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
lstm_231_while_identity
lstm_231_while_identity_1
lstm_231_while_identity_2
lstm_231_while_identity_3
lstm_231_while_identity_4
lstm_231_while_identity_5+
'lstm_231_while_lstm_231_strided_slice_1g
clstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensorN
;lstm_231_while_lstm_cell_369_matmul_readvariableop_resource:	?P
=lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource:	d?K
<lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource:	???3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp?2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp?4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp?
@lstm_231/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_231/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensor_0lstm_231_while_placeholderIlstm_231/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp=lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_231/while/lstm_cell_369/MatMulMatMul9lstm_231/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp?lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_231/while/lstm_cell_369/MatMul_1MatMullstm_231_while_placeholder_2<lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_231/while/lstm_cell_369/addAddV2-lstm_231/while/lstm_cell_369/MatMul:product:0/lstm_231/while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp>lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_231/while/lstm_cell_369/BiasAddBiasAdd$lstm_231/while/lstm_cell_369/add:z:0;lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_231/while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_231/while/lstm_cell_369/splitSplit5lstm_231/while/lstm_cell_369/split/split_dim:output:0-lstm_231/while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_231/while/lstm_cell_369/SigmoidSigmoid+lstm_231/while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_231/while/lstm_cell_369/Sigmoid_1Sigmoid+lstm_231/while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_231/while/lstm_cell_369/mulMul*lstm_231/while/lstm_cell_369/Sigmoid_1:y:0lstm_231_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_231/while/lstm_cell_369/ReluRelu+lstm_231/while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_231/while/lstm_cell_369/mul_1Mul(lstm_231/while/lstm_cell_369/Sigmoid:y:0/lstm_231/while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_231/while/lstm_cell_369/add_1AddV2$lstm_231/while/lstm_cell_369/mul:z:0&lstm_231/while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_231/while/lstm_cell_369/Sigmoid_2Sigmoid+lstm_231/while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_231/while/lstm_cell_369/Relu_1Relu&lstm_231/while/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_231/while/lstm_cell_369/mul_2Mul*lstm_231/while/lstm_cell_369/Sigmoid_2:y:01lstm_231/while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_231/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_231_while_placeholder_1lstm_231_while_placeholder&lstm_231/while/lstm_cell_369/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_231/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_231/while/addAddV2lstm_231_while_placeholderlstm_231/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_231/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_231/while/add_1AddV2*lstm_231_while_lstm_231_while_loop_counterlstm_231/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_231/while/IdentityIdentitylstm_231/while/add_1:z:0^lstm_231/while/NoOp*
T0*
_output_shapes
: ?
lstm_231/while/Identity_1Identity0lstm_231_while_lstm_231_while_maximum_iterations^lstm_231/while/NoOp*
T0*
_output_shapes
: t
lstm_231/while/Identity_2Identitylstm_231/while/add:z:0^lstm_231/while/NoOp*
T0*
_output_shapes
: ?
lstm_231/while/Identity_3IdentityClstm_231/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_231/while/NoOp*
T0*
_output_shapes
: ?
lstm_231/while/Identity_4Identity&lstm_231/while/lstm_cell_369/mul_2:z:0^lstm_231/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_231/while/Identity_5Identity&lstm_231/while/lstm_cell_369/add_1:z:0^lstm_231/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_231/while/NoOpNoOp4^lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp3^lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp5^lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_231_while_identity lstm_231/while/Identity:output:0"?
lstm_231_while_identity_1"lstm_231/while/Identity_1:output:0"?
lstm_231_while_identity_2"lstm_231/while/Identity_2:output:0"?
lstm_231_while_identity_3"lstm_231/while/Identity_3:output:0"?
lstm_231_while_identity_4"lstm_231/while/Identity_4:output:0"?
lstm_231_while_identity_5"lstm_231/while/Identity_5:output:0"T
'lstm_231_while_lstm_231_strided_slice_1)lstm_231_while_lstm_231_strided_slice_1_0"~
<lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource>lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0"?
=lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource?lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0"|
;lstm_231_while_lstm_cell_369_matmul_readvariableop_resource=lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0"?
clstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensorelstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp2h
2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp2l
4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_231_layer_call_fn_2247899
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2245050|
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
while_cond_2246504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2246504___redundant_placeholder05
1while_while_cond_2246504___redundant_placeholder15
1while_while_cond_2246504___redundant_placeholder25
1while_while_cond_2246504___redundant_placeholder3
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
while_cond_2245139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2245139___redundant_placeholder05
1while_while_cond_2245139___redundant_placeholder15
1while_while_cond_2245139___redundant_placeholder25
1while_while_cond_2245139___redundant_placeholder3
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
while_body_2249498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_371_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_371_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_371_matmul_readvariableop_resource:2(F
4while_lstm_cell_371_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_371_biasadd_readvariableop_resource:(??*while/lstm_cell_371/BiasAdd/ReadVariableOp?)while/lstm_cell_371/MatMul/ReadVariableOp?+while/lstm_cell_371/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_371/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_371/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_371/addAddV2$while/lstm_cell_371/MatMul:product:0&while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_371/BiasAddBiasAddwhile/lstm_cell_371/add:z:02while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_371/splitSplit,while/lstm_cell_371/split/split_dim:output:0$while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_371/SigmoidSigmoid"while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_1Sigmoid"while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mulMul!while/lstm_cell_371/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_371/ReluRelu"while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_1Mulwhile/lstm_cell_371/Sigmoid:y:0&while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/add_1AddV2while/lstm_cell_371/mul:z:0while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_2Sigmoid"while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_371/Relu_1Reluwhile/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_2Mul!while/lstm_cell_371/Sigmoid_2:y:0(while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_371/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_371/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_371/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_371/BiasAdd/ReadVariableOp*^while/lstm_cell_371/MatMul/ReadVariableOp,^while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_371_biasadd_readvariableop_resource5while_lstm_cell_371_biasadd_readvariableop_resource_0"n
4while_lstm_cell_371_matmul_1_readvariableop_resource6while_lstm_cell_371_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_371_matmul_readvariableop_resource4while_lstm_cell_371_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_371/BiasAdd/ReadVariableOp*while/lstm_cell_371/BiasAdd/ReadVariableOp2V
)while/lstm_cell_371/MatMul/ReadVariableOp)while/lstm_cell_371/MatMul/ReadVariableOp2Z
+while/lstm_cell_371/MatMul_1/ReadVariableOp+while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
)sequential_77_lstm_231_while_cond_2244340J
Fsequential_77_lstm_231_while_sequential_77_lstm_231_while_loop_counterP
Lsequential_77_lstm_231_while_sequential_77_lstm_231_while_maximum_iterations,
(sequential_77_lstm_231_while_placeholder.
*sequential_77_lstm_231_while_placeholder_1.
*sequential_77_lstm_231_while_placeholder_2.
*sequential_77_lstm_231_while_placeholder_3L
Hsequential_77_lstm_231_while_less_sequential_77_lstm_231_strided_slice_1c
_sequential_77_lstm_231_while_sequential_77_lstm_231_while_cond_2244340___redundant_placeholder0c
_sequential_77_lstm_231_while_sequential_77_lstm_231_while_cond_2244340___redundant_placeholder1c
_sequential_77_lstm_231_while_sequential_77_lstm_231_while_cond_2244340___redundant_placeholder2c
_sequential_77_lstm_231_while_sequential_77_lstm_231_while_cond_2244340___redundant_placeholder3)
%sequential_77_lstm_231_while_identity
?
!sequential_77/lstm_231/while/LessLess(sequential_77_lstm_231_while_placeholderHsequential_77_lstm_231_while_less_sequential_77_lstm_231_strided_slice_1*
T0*
_output_shapes
: y
%sequential_77/lstm_231/while/IdentityIdentity%sequential_77/lstm_231/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_77_lstm_231_while_identity.sequential_77/lstm_231/while/Identity:output:0*(
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
lstm_231_while_cond_2247508.
*lstm_231_while_lstm_231_while_loop_counter4
0lstm_231_while_lstm_231_while_maximum_iterations
lstm_231_while_placeholder 
lstm_231_while_placeholder_1 
lstm_231_while_placeholder_2 
lstm_231_while_placeholder_30
,lstm_231_while_less_lstm_231_strided_slice_1G
Clstm_231_while_lstm_231_while_cond_2247508___redundant_placeholder0G
Clstm_231_while_lstm_231_while_cond_2247508___redundant_placeholder1G
Clstm_231_while_lstm_231_while_cond_2247508___redundant_placeholder2G
Clstm_231_while_lstm_231_while_cond_2247508___redundant_placeholder3
lstm_231_while_identity
?
lstm_231/while/LessLesslstm_231_while_placeholder,lstm_231_while_less_lstm_231_strided_slice_1*
T0*
_output_shapes
: ]
lstm_231/while/IdentityIdentitylstm_231/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_231_while_identity lstm_231/while/Identity:output:0*(
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
while_cond_2245973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2245973___redundant_placeholder05
1while_while_cond_2245973___redundant_placeholder15
1while_while_cond_2245973___redundant_placeholder25
1while_while_cond_2245973___redundant_placeholder3
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
while_body_2245974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_370_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_370_matmul_readvariableop_resource:	d?G
4while_lstm_cell_370_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_370_biasadd_readvariableop_resource:	???*while/lstm_cell_370/BiasAdd/ReadVariableOp?)while/lstm_cell_370/MatMul/ReadVariableOp?+while/lstm_cell_370/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_370/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_370/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_370/addAddV2$while/lstm_cell_370/MatMul:product:0&while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_370/BiasAddBiasAddwhile/lstm_cell_370/add:z:02while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_370/splitSplit,while/lstm_cell_370/split/split_dim:output:0$while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_370/SigmoidSigmoid"while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_1Sigmoid"while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mulMul!while/lstm_cell_370/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_370/ReluRelu"while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_1Mulwhile/lstm_cell_370/Sigmoid:y:0&while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/add_1AddV2while/lstm_cell_370/mul:z:0while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_370/Sigmoid_2Sigmoid"while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_370/Relu_1Reluwhile/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_370/mul_2Mul!while/lstm_cell_370/Sigmoid_2:y:0(while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_370/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_370/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_370/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_370/BiasAdd/ReadVariableOp*^while/lstm_cell_370/MatMul/ReadVariableOp,^while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_370_biasadd_readvariableop_resource5while_lstm_cell_370_biasadd_readvariableop_resource_0"n
4while_lstm_cell_370_matmul_1_readvariableop_resource6while_lstm_cell_370_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_370_matmul_readvariableop_resource4while_lstm_cell_370_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_370/BiasAdd/ReadVariableOp*while/lstm_cell_370/BiasAdd/ReadVariableOp2V
)while/lstm_cell_370/MatMul/ReadVariableOp)while/lstm_cell_370/MatMul/ReadVariableOp2Z
+while/lstm_cell_370/MatMul_1/ReadVariableOp+while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249296
inputs_0>
,lstm_cell_371_matmul_readvariableop_resource:2(@
.lstm_cell_371_matmul_1_readvariableop_resource:
(;
-lstm_cell_371_biasadd_readvariableop_resource:(
identity??$lstm_cell_371/BiasAdd/ReadVariableOp?#lstm_cell_371/MatMul/ReadVariableOp?%lstm_cell_371/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_371/MatMul/ReadVariableOpReadVariableOp,lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_371/MatMulMatMulstrided_slice_2:output:0+lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_371/MatMul_1MatMulzeros:output:0-lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_371/addAddV2lstm_cell_371/MatMul:product:0 lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_371/BiasAddBiasAddlstm_cell_371/add:z:0,lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_371/splitSplit&lstm_cell_371/split/split_dim:output:0lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_371/SigmoidSigmoidlstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_1Sigmoidlstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_371/mulMullstm_cell_371/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_371/ReluRelulstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_1Mullstm_cell_371/Sigmoid:y:0 lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_371/add_1AddV2lstm_cell_371/mul:z:0lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_2Sigmoidlstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_371/Relu_1Relulstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_2Mullstm_cell_371/Sigmoid_2:y:0"lstm_cell_371/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_371_matmul_readvariableop_resource.lstm_cell_371_matmul_1_readvariableop_resource-lstm_cell_371_biasadd_readvariableop_resource*
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
while_body_2249212*
condR
while_cond_2249211*K
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
NoOpNoOp%^lstm_cell_371/BiasAdd/ReadVariableOp$^lstm_cell_371/MatMul/ReadVariableOp&^lstm_cell_371/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_371/BiasAdd/ReadVariableOp$lstm_cell_371/BiasAdd/ReadVariableOp2J
#lstm_cell_371/MatMul/ReadVariableOp#lstm_cell_371/MatMul/ReadVariableOp2N
%lstm_cell_371/MatMul_1/ReadVariableOp%lstm_cell_371/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_2248266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_369_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_369_matmul_readvariableop_resource:	?G
4while_lstm_cell_369_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_369_biasadd_readvariableop_resource:	???*while/lstm_cell_369/BiasAdd/ReadVariableOp?)while/lstm_cell_369/MatMul/ReadVariableOp?+while/lstm_cell_369/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_369/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_369/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_369/addAddV2$while/lstm_cell_369/MatMul:product:0&while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_369/BiasAddBiasAddwhile/lstm_cell_369/add:z:02while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_369/splitSplit,while/lstm_cell_369/split/split_dim:output:0$while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_369/SigmoidSigmoid"while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_1Sigmoid"while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mulMul!while/lstm_cell_369/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_369/ReluRelu"while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_1Mulwhile/lstm_cell_369/Sigmoid:y:0&while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/add_1AddV2while/lstm_cell_369/mul:z:0while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_2Sigmoid"while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_369/Relu_1Reluwhile/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_2Mul!while/lstm_cell_369/Sigmoid_2:y:0(while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_369/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_369/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_369/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_369/BiasAdd/ReadVariableOp*^while/lstm_cell_369/MatMul/ReadVariableOp,^while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_369_biasadd_readvariableop_resource5while_lstm_cell_369_biasadd_readvariableop_resource_0"n
4while_lstm_cell_369_matmul_1_readvariableop_resource6while_lstm_cell_369_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_369_matmul_readvariableop_resource4while_lstm_cell_369_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_369/BiasAdd/ReadVariableOp*while/lstm_cell_369/BiasAdd/ReadVariableOp2V
)while/lstm_cell_369/MatMul/ReadVariableOp)while/lstm_cell_369/MatMul/ReadVariableOp2Z
+while/lstm_cell_369/MatMul_1/ReadVariableOp+while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2244859

inputs(
lstm_cell_369_2244777:	?(
lstm_cell_369_2244779:	d?$
lstm_cell_369_2244781:	?
identity??%lstm_cell_369/StatefulPartitionedCall?while;
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
%lstm_cell_369/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_369_2244777lstm_cell_369_2244779lstm_cell_369_2244781*
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244776n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_369_2244777lstm_cell_369_2244779lstm_cell_369_2244781*
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
while_body_2244790*
condR
while_cond_2244789*K
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
NoOpNoOp&^lstm_cell_369/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_369/StatefulPartitionedCall%lstm_cell_369/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_231_layer_call_fn_2247910

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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2245908s
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246904
lstm_231_input#
lstm_231_2246877:	?#
lstm_231_2246879:	d?
lstm_231_2246881:	?#
lstm_232_2246884:	d?#
lstm_232_2246886:	2?
lstm_232_2246888:	?"
lstm_233_2246891:2("
lstm_233_2246893:
(
lstm_233_2246895:("
dense_77_2246898:

dense_77_2246900:
identity?? dense_77/StatefulPartitionedCall? lstm_231/StatefulPartitionedCall? lstm_232/StatefulPartitionedCall? lstm_233/StatefulPartitionedCall?
 lstm_231/StatefulPartitionedCallStatefulPartitionedCalllstm_231_inputlstm_231_2246877lstm_231_2246879lstm_231_2246881*
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2245908?
 lstm_232/StatefulPartitionedCallStatefulPartitionedCall)lstm_231/StatefulPartitionedCall:output:0lstm_232_2246884lstm_232_2246886lstm_232_2246888*
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246058?
 lstm_233/StatefulPartitionedCallStatefulPartitionedCall)lstm_232/StatefulPartitionedCall:output:0lstm_233_2246891lstm_233_2246893lstm_233_2246895*
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246208?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)lstm_233/StatefulPartitionedCall:output:0dense_77_2246898dense_77_2246900*
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
E__inference_dense_77_layer_call_and_return_conditional_losses_2246226x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_77/StatefulPartitionedCall!^lstm_231/StatefulPartitionedCall!^lstm_232/StatefulPartitionedCall!^lstm_233/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 lstm_231/StatefulPartitionedCall lstm_231/StatefulPartitionedCall2D
 lstm_232/StatefulPartitionedCall lstm_232/StatefulPartitionedCall2D
 lstm_233/StatefulPartitionedCall lstm_233/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_231_input
?	
?
E__inference_dense_77_layer_call_and_return_conditional_losses_2249744

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
while_body_2248123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_369_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_369_matmul_readvariableop_resource:	?G
4while_lstm_cell_369_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_369_biasadd_readvariableop_resource:	???*while/lstm_cell_369/BiasAdd/ReadVariableOp?)while/lstm_cell_369/MatMul/ReadVariableOp?+while/lstm_cell_369/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_369/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_369/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_369/addAddV2$while/lstm_cell_369/MatMul:product:0&while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_369/BiasAddBiasAddwhile/lstm_cell_369/add:z:02while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_369/splitSplit,while/lstm_cell_369/split/split_dim:output:0$while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_369/SigmoidSigmoid"while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_1Sigmoid"while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mulMul!while/lstm_cell_369/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_369/ReluRelu"while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_1Mulwhile/lstm_cell_369/Sigmoid:y:0&while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/add_1AddV2while/lstm_cell_369/mul:z:0while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_2Sigmoid"while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_369/Relu_1Reluwhile/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_2Mul!while/lstm_cell_369/Sigmoid_2:y:0(while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_369/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_369/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_369/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_369/BiasAdd/ReadVariableOp*^while/lstm_cell_369/MatMul/ReadVariableOp,^while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_369_biasadd_readvariableop_resource5while_lstm_cell_369_biasadd_readvariableop_resource_0"n
4while_lstm_cell_369_matmul_1_readvariableop_resource6while_lstm_cell_369_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_369_matmul_readvariableop_resource4while_lstm_cell_369_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_369/BiasAdd/ReadVariableOp*while/lstm_cell_369/BiasAdd/ReadVariableOp2V
)while/lstm_cell_369/MatMul/ReadVariableOp)while/lstm_cell_369/MatMul/ReadVariableOp2Z
+while/lstm_cell_369/MatMul_1/ReadVariableOp+while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2245750

inputs'
lstm_cell_371_2245668:2('
lstm_cell_371_2245670:
(#
lstm_cell_371_2245672:(
identity??%lstm_cell_371/StatefulPartitionedCall?while;
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
%lstm_cell_371/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_371_2245668lstm_cell_371_2245670lstm_cell_371_2245672*
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245622n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_371_2245668lstm_cell_371_2245670lstm_cell_371_2245672*
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
while_body_2245681*
condR
while_cond_2245680*K
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
NoOpNoOp&^lstm_cell_371/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_371/StatefulPartitionedCall%lstm_cell_371/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248966

inputs?
,lstm_cell_370_matmul_readvariableop_resource:	d?A
.lstm_cell_370_matmul_1_readvariableop_resource:	2?<
-lstm_cell_370_biasadd_readvariableop_resource:	?
identity??$lstm_cell_370/BiasAdd/ReadVariableOp?#lstm_cell_370/MatMul/ReadVariableOp?%lstm_cell_370/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_370/MatMul/ReadVariableOpReadVariableOp,lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_370/MatMulMatMulstrided_slice_2:output:0+lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_370/MatMul_1MatMulzeros:output:0-lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_370/addAddV2lstm_cell_370/MatMul:product:0 lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_370/BiasAddBiasAddlstm_cell_370/add:z:0,lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_370/splitSplit&lstm_cell_370/split/split_dim:output:0lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_370/SigmoidSigmoidlstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_1Sigmoidlstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_370/mulMullstm_cell_370/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_370/ReluRelulstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_1Mullstm_cell_370/Sigmoid:y:0 lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_370/add_1AddV2lstm_cell_370/mul:z:0lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_2Sigmoidlstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_370/Relu_1Relulstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_2Mullstm_cell_370/Sigmoid_2:y:0"lstm_cell_370/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_370_matmul_readvariableop_resource.lstm_cell_370_matmul_1_readvariableop_resource-lstm_cell_370_biasadd_readvariableop_resource*
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
while_body_2248882*
condR
while_cond_2248881*K
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
NoOpNoOp%^lstm_cell_370/BiasAdd/ReadVariableOp$^lstm_cell_370/MatMul/ReadVariableOp&^lstm_cell_370/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_370/BiasAdd/ReadVariableOp$lstm_cell_370/BiasAdd/ReadVariableOp2J
#lstm_cell_370/MatMul/ReadVariableOp#lstm_cell_370/MatMul/ReadVariableOp2N
%lstm_cell_370/MatMul_1/ReadVariableOp%lstm_cell_370/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_233_while_cond_2247359.
*lstm_233_while_lstm_233_while_loop_counter4
0lstm_233_while_lstm_233_while_maximum_iterations
lstm_233_while_placeholder 
lstm_233_while_placeholder_1 
lstm_233_while_placeholder_2 
lstm_233_while_placeholder_30
,lstm_233_while_less_lstm_233_strided_slice_1G
Clstm_233_while_lstm_233_while_cond_2247359___redundant_placeholder0G
Clstm_233_while_lstm_233_while_cond_2247359___redundant_placeholder1G
Clstm_233_while_lstm_233_while_cond_2247359___redundant_placeholder2G
Clstm_233_while_lstm_233_while_cond_2247359___redundant_placeholder3
lstm_233_while_identity
?
lstm_233/while/LessLesslstm_233_while_placeholder,lstm_233_while_less_lstm_233_strided_slice_1*
T0*
_output_shapes
: ]
lstm_233/while/IdentityIdentitylstm_233/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_233_while_identity lstm_233/while/Identity:output:0*(
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
while_cond_2248738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2248738___redundant_placeholder05
1while_while_cond_2248738___redundant_placeholder15
1while_while_cond_2248738___redundant_placeholder25
1while_while_cond_2248738___redundant_placeholder3
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

lstm_231_while_body_2247509.
*lstm_231_while_lstm_231_while_loop_counter4
0lstm_231_while_lstm_231_while_maximum_iterations
lstm_231_while_placeholder 
lstm_231_while_placeholder_1 
lstm_231_while_placeholder_2 
lstm_231_while_placeholder_3-
)lstm_231_while_lstm_231_strided_slice_1_0i
elstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0:	?R
?lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?M
>lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
lstm_231_while_identity
lstm_231_while_identity_1
lstm_231_while_identity_2
lstm_231_while_identity_3
lstm_231_while_identity_4
lstm_231_while_identity_5+
'lstm_231_while_lstm_231_strided_slice_1g
clstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensorN
;lstm_231_while_lstm_cell_369_matmul_readvariableop_resource:	?P
=lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource:	d?K
<lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource:	???3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp?2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp?4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp?
@lstm_231/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_231/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensor_0lstm_231_while_placeholderIlstm_231/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp=lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_231/while/lstm_cell_369/MatMulMatMul9lstm_231/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp?lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_231/while/lstm_cell_369/MatMul_1MatMullstm_231_while_placeholder_2<lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_231/while/lstm_cell_369/addAddV2-lstm_231/while/lstm_cell_369/MatMul:product:0/lstm_231/while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp>lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_231/while/lstm_cell_369/BiasAddBiasAdd$lstm_231/while/lstm_cell_369/add:z:0;lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_231/while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_231/while/lstm_cell_369/splitSplit5lstm_231/while/lstm_cell_369/split/split_dim:output:0-lstm_231/while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_231/while/lstm_cell_369/SigmoidSigmoid+lstm_231/while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_231/while/lstm_cell_369/Sigmoid_1Sigmoid+lstm_231/while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_231/while/lstm_cell_369/mulMul*lstm_231/while/lstm_cell_369/Sigmoid_1:y:0lstm_231_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_231/while/lstm_cell_369/ReluRelu+lstm_231/while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_231/while/lstm_cell_369/mul_1Mul(lstm_231/while/lstm_cell_369/Sigmoid:y:0/lstm_231/while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_231/while/lstm_cell_369/add_1AddV2$lstm_231/while/lstm_cell_369/mul:z:0&lstm_231/while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_231/while/lstm_cell_369/Sigmoid_2Sigmoid+lstm_231/while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_231/while/lstm_cell_369/Relu_1Relu&lstm_231/while/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_231/while/lstm_cell_369/mul_2Mul*lstm_231/while/lstm_cell_369/Sigmoid_2:y:01lstm_231/while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_231/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_231_while_placeholder_1lstm_231_while_placeholder&lstm_231/while/lstm_cell_369/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_231/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_231/while/addAddV2lstm_231_while_placeholderlstm_231/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_231/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_231/while/add_1AddV2*lstm_231_while_lstm_231_while_loop_counterlstm_231/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_231/while/IdentityIdentitylstm_231/while/add_1:z:0^lstm_231/while/NoOp*
T0*
_output_shapes
: ?
lstm_231/while/Identity_1Identity0lstm_231_while_lstm_231_while_maximum_iterations^lstm_231/while/NoOp*
T0*
_output_shapes
: t
lstm_231/while/Identity_2Identitylstm_231/while/add:z:0^lstm_231/while/NoOp*
T0*
_output_shapes
: ?
lstm_231/while/Identity_3IdentityClstm_231/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_231/while/NoOp*
T0*
_output_shapes
: ?
lstm_231/while/Identity_4Identity&lstm_231/while/lstm_cell_369/mul_2:z:0^lstm_231/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_231/while/Identity_5Identity&lstm_231/while/lstm_cell_369/add_1:z:0^lstm_231/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_231/while/NoOpNoOp4^lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp3^lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp5^lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_231_while_identity lstm_231/while/Identity:output:0"?
lstm_231_while_identity_1"lstm_231/while/Identity_1:output:0"?
lstm_231_while_identity_2"lstm_231/while/Identity_2:output:0"?
lstm_231_while_identity_3"lstm_231/while/Identity_3:output:0"?
lstm_231_while_identity_4"lstm_231/while/Identity_4:output:0"?
lstm_231_while_identity_5"lstm_231/while/Identity_5:output:0"T
'lstm_231_while_lstm_231_strided_slice_1)lstm_231_while_lstm_231_strided_slice_1_0"~
<lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource>lstm_231_while_lstm_cell_369_biasadd_readvariableop_resource_0"?
=lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource?lstm_231_while_lstm_cell_369_matmul_1_readvariableop_resource_0"|
;lstm_231_while_lstm_cell_369_matmul_readvariableop_resource=lstm_231_while_lstm_cell_369_matmul_readvariableop_resource_0"?
clstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensorelstm_231_while_tensorarrayv2read_tensorlistgetitem_lstm_231_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp3lstm_231/while/lstm_cell_369/BiasAdd/ReadVariableOp2h
2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp2lstm_231/while/lstm_cell_369/MatMul/ReadVariableOp2l
4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp4lstm_231/while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245476

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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246424

inputs>
,lstm_cell_371_matmul_readvariableop_resource:2(@
.lstm_cell_371_matmul_1_readvariableop_resource:
(;
-lstm_cell_371_biasadd_readvariableop_resource:(
identity??$lstm_cell_371/BiasAdd/ReadVariableOp?#lstm_cell_371/MatMul/ReadVariableOp?%lstm_cell_371/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_371/MatMul/ReadVariableOpReadVariableOp,lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_371/MatMulMatMulstrided_slice_2:output:0+lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_371/MatMul_1MatMulzeros:output:0-lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_371/addAddV2lstm_cell_371/MatMul:product:0 lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_371/BiasAddBiasAddlstm_cell_371/add:z:0,lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_371/splitSplit&lstm_cell_371/split/split_dim:output:0lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_371/SigmoidSigmoidlstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_1Sigmoidlstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_371/mulMullstm_cell_371/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_371/ReluRelulstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_1Mullstm_cell_371/Sigmoid:y:0 lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_371/add_1AddV2lstm_cell_371/mul:z:0lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_371/Sigmoid_2Sigmoidlstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_371/Relu_1Relulstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_371/mul_2Mullstm_cell_371/Sigmoid_2:y:0"lstm_cell_371/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_371_matmul_readvariableop_resource.lstm_cell_371_matmul_1_readvariableop_resource-lstm_cell_371_biasadd_readvariableop_resource*
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
while_body_2246340*
condR
while_cond_2246339*K
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
NoOpNoOp%^lstm_cell_371/BiasAdd/ReadVariableOp$^lstm_cell_371/MatMul/ReadVariableOp&^lstm_cell_371/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_371/BiasAdd/ReadVariableOp$lstm_cell_371/BiasAdd/ReadVariableOp2J
#lstm_cell_371/MatMul/ReadVariableOp#lstm_cell_371/MatMul/ReadVariableOp2N
%lstm_cell_371/MatMul_1/ReadVariableOp%lstm_cell_371/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_232_layer_call_fn_2248526

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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2246058s
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
)sequential_77_lstm_233_while_body_2244619J
Fsequential_77_lstm_233_while_sequential_77_lstm_233_while_loop_counterP
Lsequential_77_lstm_233_while_sequential_77_lstm_233_while_maximum_iterations,
(sequential_77_lstm_233_while_placeholder.
*sequential_77_lstm_233_while_placeholder_1.
*sequential_77_lstm_233_while_placeholder_2.
*sequential_77_lstm_233_while_placeholder_3I
Esequential_77_lstm_233_while_sequential_77_lstm_233_strided_slice_1_0?
?sequential_77_lstm_233_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_233_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_77_lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0:2(_
Msequential_77_lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(Z
Lsequential_77_lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0:()
%sequential_77_lstm_233_while_identity+
'sequential_77_lstm_233_while_identity_1+
'sequential_77_lstm_233_while_identity_2+
'sequential_77_lstm_233_while_identity_3+
'sequential_77_lstm_233_while_identity_4+
'sequential_77_lstm_233_while_identity_5G
Csequential_77_lstm_233_while_sequential_77_lstm_233_strided_slice_1?
sequential_77_lstm_233_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_233_tensorarrayunstack_tensorlistfromtensor[
Isequential_77_lstm_233_while_lstm_cell_371_matmul_readvariableop_resource:2(]
Ksequential_77_lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource:
(X
Jsequential_77_lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource:(??Asequential_77/lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp?@sequential_77/lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp?Bsequential_77/lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp?
Nsequential_77/lstm_233/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_77/lstm_233/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_77_lstm_233_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_233_tensorarrayunstack_tensorlistfromtensor_0(sequential_77_lstm_233_while_placeholderWsequential_77/lstm_233/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_77/lstm_233/while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOpKsequential_77_lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_77/lstm_233/while/lstm_cell_371/MatMulMatMulGsequential_77/lstm_233/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_77/lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_77/lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOpMsequential_77_lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_77/lstm_233/while/lstm_cell_371/MatMul_1MatMul*sequential_77_lstm_233_while_placeholder_2Jsequential_77/lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_77/lstm_233/while/lstm_cell_371/addAddV2;sequential_77/lstm_233/while/lstm_cell_371/MatMul:product:0=sequential_77/lstm_233/while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_77/lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOpLsequential_77_lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_77/lstm_233/while/lstm_cell_371/BiasAddBiasAdd2sequential_77/lstm_233/while/lstm_cell_371/add:z:0Isequential_77/lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_77/lstm_233/while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_77/lstm_233/while/lstm_cell_371/splitSplitCsequential_77/lstm_233/while/lstm_cell_371/split/split_dim:output:0;sequential_77/lstm_233/while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_77/lstm_233/while/lstm_cell_371/SigmoidSigmoid9sequential_77/lstm_233/while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_77/lstm_233/while/lstm_cell_371/Sigmoid_1Sigmoid9sequential_77/lstm_233/while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_77/lstm_233/while/lstm_cell_371/mulMul8sequential_77/lstm_233/while/lstm_cell_371/Sigmoid_1:y:0*sequential_77_lstm_233_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_77/lstm_233/while/lstm_cell_371/ReluRelu9sequential_77/lstm_233/while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_77/lstm_233/while/lstm_cell_371/mul_1Mul6sequential_77/lstm_233/while/lstm_cell_371/Sigmoid:y:0=sequential_77/lstm_233/while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_77/lstm_233/while/lstm_cell_371/add_1AddV22sequential_77/lstm_233/while/lstm_cell_371/mul:z:04sequential_77/lstm_233/while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_77/lstm_233/while/lstm_cell_371/Sigmoid_2Sigmoid9sequential_77/lstm_233/while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_77/lstm_233/while/lstm_cell_371/Relu_1Relu4sequential_77/lstm_233/while/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_77/lstm_233/while/lstm_cell_371/mul_2Mul8sequential_77/lstm_233/while/lstm_cell_371/Sigmoid_2:y:0?sequential_77/lstm_233/while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_77/lstm_233/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_77_lstm_233_while_placeholder_1(sequential_77_lstm_233_while_placeholder4sequential_77/lstm_233/while/lstm_cell_371/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_77/lstm_233/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_77/lstm_233/while/addAddV2(sequential_77_lstm_233_while_placeholder+sequential_77/lstm_233/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_77/lstm_233/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_77/lstm_233/while/add_1AddV2Fsequential_77_lstm_233_while_sequential_77_lstm_233_while_loop_counter-sequential_77/lstm_233/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_77/lstm_233/while/IdentityIdentity&sequential_77/lstm_233/while/add_1:z:0"^sequential_77/lstm_233/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_233/while/Identity_1IdentityLsequential_77_lstm_233_while_sequential_77_lstm_233_while_maximum_iterations"^sequential_77/lstm_233/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_233/while/Identity_2Identity$sequential_77/lstm_233/while/add:z:0"^sequential_77/lstm_233/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_233/while/Identity_3IdentityQsequential_77/lstm_233/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_77/lstm_233/while/NoOp*
T0*
_output_shapes
: ?
'sequential_77/lstm_233/while/Identity_4Identity4sequential_77/lstm_233/while/lstm_cell_371/mul_2:z:0"^sequential_77/lstm_233/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_77/lstm_233/while/Identity_5Identity4sequential_77/lstm_233/while/lstm_cell_371/add_1:z:0"^sequential_77/lstm_233/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_77/lstm_233/while/NoOpNoOpB^sequential_77/lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOpA^sequential_77/lstm_233/while/lstm_cell_371/MatMul/ReadVariableOpC^sequential_77/lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_77_lstm_233_while_identity.sequential_77/lstm_233/while/Identity:output:0"[
'sequential_77_lstm_233_while_identity_10sequential_77/lstm_233/while/Identity_1:output:0"[
'sequential_77_lstm_233_while_identity_20sequential_77/lstm_233/while/Identity_2:output:0"[
'sequential_77_lstm_233_while_identity_30sequential_77/lstm_233/while/Identity_3:output:0"[
'sequential_77_lstm_233_while_identity_40sequential_77/lstm_233/while/Identity_4:output:0"[
'sequential_77_lstm_233_while_identity_50sequential_77/lstm_233/while/Identity_5:output:0"?
Jsequential_77_lstm_233_while_lstm_cell_371_biasadd_readvariableop_resourceLsequential_77_lstm_233_while_lstm_cell_371_biasadd_readvariableop_resource_0"?
Ksequential_77_lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resourceMsequential_77_lstm_233_while_lstm_cell_371_matmul_1_readvariableop_resource_0"?
Isequential_77_lstm_233_while_lstm_cell_371_matmul_readvariableop_resourceKsequential_77_lstm_233_while_lstm_cell_371_matmul_readvariableop_resource_0"?
Csequential_77_lstm_233_while_sequential_77_lstm_233_strided_slice_1Esequential_77_lstm_233_while_sequential_77_lstm_233_strided_slice_1_0"?
sequential_77_lstm_233_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_233_tensorarrayunstack_tensorlistfromtensor?sequential_77_lstm_233_while_tensorarrayv2read_tensorlistgetitem_sequential_77_lstm_233_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_77/lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOpAsequential_77/lstm_233/while/lstm_cell_371/BiasAdd/ReadVariableOp2?
@sequential_77/lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp@sequential_77/lstm_233/while/lstm_cell_371/MatMul/ReadVariableOp2?
Bsequential_77/lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOpBsequential_77/lstm_233/while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2249109

inputs?
,lstm_cell_370_matmul_readvariableop_resource:	d?A
.lstm_cell_370_matmul_1_readvariableop_resource:	2?<
-lstm_cell_370_biasadd_readvariableop_resource:	?
identity??$lstm_cell_370/BiasAdd/ReadVariableOp?#lstm_cell_370/MatMul/ReadVariableOp?%lstm_cell_370/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_370/MatMul/ReadVariableOpReadVariableOp,lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_370/MatMulMatMulstrided_slice_2:output:0+lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_370/MatMul_1MatMulzeros:output:0-lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_370/addAddV2lstm_cell_370/MatMul:product:0 lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_370/BiasAddBiasAddlstm_cell_370/add:z:0,lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_370/splitSplit&lstm_cell_370/split/split_dim:output:0lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_370/SigmoidSigmoidlstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_1Sigmoidlstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_370/mulMullstm_cell_370/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_370/ReluRelulstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_1Mullstm_cell_370/Sigmoid:y:0 lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_370/add_1AddV2lstm_cell_370/mul:z:0lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_370/Sigmoid_2Sigmoidlstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_370/Relu_1Relulstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_370/mul_2Mullstm_cell_370/Sigmoid_2:y:0"lstm_cell_370/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_370_matmul_readvariableop_resource.lstm_cell_370_matmul_1_readvariableop_resource-lstm_cell_370_biasadd_readvariableop_resource*
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
while_body_2249025*
condR
while_cond_2249024*K
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
NoOpNoOp%^lstm_cell_370/BiasAdd/ReadVariableOp$^lstm_cell_370/MatMul/ReadVariableOp&^lstm_cell_370/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_370/BiasAdd/ReadVariableOp$lstm_cell_370/BiasAdd/ReadVariableOp2J
#lstm_cell_370/MatMul/ReadVariableOp#lstm_cell_370/MatMul/ReadVariableOp2N
%lstm_cell_370/MatMul_1/ReadVariableOp%lstm_cell_370/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2245680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2245680___redundant_placeholder05
1while_while_cond_2245680___redundant_placeholder15
1while_while_cond_2245680___redundant_placeholder25
1while_while_cond_2245680___redundant_placeholder3
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
while_body_2245824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_369_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_369_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_369_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_369_matmul_readvariableop_resource:	?G
4while_lstm_cell_369_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_369_biasadd_readvariableop_resource:	???*while/lstm_cell_369/BiasAdd/ReadVariableOp?)while/lstm_cell_369/MatMul/ReadVariableOp?+while/lstm_cell_369/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_369_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_369/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_369_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_369/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_369/addAddV2$while/lstm_cell_369/MatMul:product:0&while/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_369_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_369/BiasAddBiasAddwhile/lstm_cell_369/add:z:02while/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_369/splitSplit,while/lstm_cell_369/split/split_dim:output:0$while/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_369/SigmoidSigmoid"while/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_1Sigmoid"while/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mulMul!while/lstm_cell_369/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_369/ReluRelu"while/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_1Mulwhile/lstm_cell_369/Sigmoid:y:0&while/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/add_1AddV2while/lstm_cell_369/mul:z:0while/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_369/Sigmoid_2Sigmoid"while/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_369/Relu_1Reluwhile/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_369/mul_2Mul!while/lstm_cell_369/Sigmoid_2:y:0(while/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_369/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_369/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_369/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_369/BiasAdd/ReadVariableOp*^while/lstm_cell_369/MatMul/ReadVariableOp,^while/lstm_cell_369/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_369_biasadd_readvariableop_resource5while_lstm_cell_369_biasadd_readvariableop_resource_0"n
4while_lstm_cell_369_matmul_1_readvariableop_resource6while_lstm_cell_369_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_369_matmul_readvariableop_resource4while_lstm_cell_369_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_369/BiasAdd/ReadVariableOp*while/lstm_cell_369/BiasAdd/ReadVariableOp2V
)while/lstm_cell_369/MatMul/ReadVariableOp)while/lstm_cell_369/MatMul/ReadVariableOp2Z
+while/lstm_cell_369/MatMul_1/ReadVariableOp+while/lstm_cell_369/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_77_layer_call_and_return_conditional_losses_2246226

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
while_cond_2249497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2249497___redundant_placeholder05
1while_while_cond_2249497___redundant_placeholder15
1while_while_cond_2249497___redundant_placeholder25
1while_while_cond_2249497___redundant_placeholder3
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
lstm_233_while_cond_2247786.
*lstm_233_while_lstm_233_while_loop_counter4
0lstm_233_while_lstm_233_while_maximum_iterations
lstm_233_while_placeholder 
lstm_233_while_placeholder_1 
lstm_233_while_placeholder_2 
lstm_233_while_placeholder_30
,lstm_233_while_less_lstm_233_strided_slice_1G
Clstm_233_while_lstm_233_while_cond_2247786___redundant_placeholder0G
Clstm_233_while_lstm_233_while_cond_2247786___redundant_placeholder1G
Clstm_233_while_lstm_233_while_cond_2247786___redundant_placeholder2G
Clstm_233_while_lstm_233_while_cond_2247786___redundant_placeholder3
lstm_233_while_identity
?
lstm_233/while/LessLesslstm_233_while_placeholder,lstm_233_while_less_lstm_233_strided_slice_1*
T0*
_output_shapes
: ]
lstm_233/while/IdentityIdentitylstm_233/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_233_while_identity lstm_233/while/Identity:output:0*(
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
*__inference_lstm_233_layer_call_fn_2249153

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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2246424o
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
while_cond_2249024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2249024___redundant_placeholder05
1while_while_cond_2249024___redundant_placeholder15
1while_while_cond_2249024___redundant_placeholder25
1while_while_cond_2249024___redundant_placeholder3
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

lstm_232_while_body_2247648.
*lstm_232_while_lstm_232_while_loop_counter4
0lstm_232_while_lstm_232_while_maximum_iterations
lstm_232_while_placeholder 
lstm_232_while_placeholder_1 
lstm_232_while_placeholder_2 
lstm_232_while_placeholder_3-
)lstm_232_while_lstm_232_strided_slice_1_0i
elstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0:	d?R
?lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?M
>lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
lstm_232_while_identity
lstm_232_while_identity_1
lstm_232_while_identity_2
lstm_232_while_identity_3
lstm_232_while_identity_4
lstm_232_while_identity_5+
'lstm_232_while_lstm_232_strided_slice_1g
clstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensorN
;lstm_232_while_lstm_cell_370_matmul_readvariableop_resource:	d?P
=lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource:	2?K
<lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource:	???3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp?2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp?4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp?
@lstm_232/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_232/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensor_0lstm_232_while_placeholderIlstm_232/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp=lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_232/while/lstm_cell_370/MatMulMatMul9lstm_232/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp?lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_232/while/lstm_cell_370/MatMul_1MatMullstm_232_while_placeholder_2<lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_232/while/lstm_cell_370/addAddV2-lstm_232/while/lstm_cell_370/MatMul:product:0/lstm_232/while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp>lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_232/while/lstm_cell_370/BiasAddBiasAdd$lstm_232/while/lstm_cell_370/add:z:0;lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_232/while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_232/while/lstm_cell_370/splitSplit5lstm_232/while/lstm_cell_370/split/split_dim:output:0-lstm_232/while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_232/while/lstm_cell_370/SigmoidSigmoid+lstm_232/while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_232/while/lstm_cell_370/Sigmoid_1Sigmoid+lstm_232/while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_232/while/lstm_cell_370/mulMul*lstm_232/while/lstm_cell_370/Sigmoid_1:y:0lstm_232_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_232/while/lstm_cell_370/ReluRelu+lstm_232/while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_232/while/lstm_cell_370/mul_1Mul(lstm_232/while/lstm_cell_370/Sigmoid:y:0/lstm_232/while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_232/while/lstm_cell_370/add_1AddV2$lstm_232/while/lstm_cell_370/mul:z:0&lstm_232/while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_232/while/lstm_cell_370/Sigmoid_2Sigmoid+lstm_232/while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_232/while/lstm_cell_370/Relu_1Relu&lstm_232/while/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_232/while/lstm_cell_370/mul_2Mul*lstm_232/while/lstm_cell_370/Sigmoid_2:y:01lstm_232/while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_232/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_232_while_placeholder_1lstm_232_while_placeholder&lstm_232/while/lstm_cell_370/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_232/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_232/while/addAddV2lstm_232_while_placeholderlstm_232/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_232/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_232/while/add_1AddV2*lstm_232_while_lstm_232_while_loop_counterlstm_232/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_232/while/IdentityIdentitylstm_232/while/add_1:z:0^lstm_232/while/NoOp*
T0*
_output_shapes
: ?
lstm_232/while/Identity_1Identity0lstm_232_while_lstm_232_while_maximum_iterations^lstm_232/while/NoOp*
T0*
_output_shapes
: t
lstm_232/while/Identity_2Identitylstm_232/while/add:z:0^lstm_232/while/NoOp*
T0*
_output_shapes
: ?
lstm_232/while/Identity_3IdentityClstm_232/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_232/while/NoOp*
T0*
_output_shapes
: ?
lstm_232/while/Identity_4Identity&lstm_232/while/lstm_cell_370/mul_2:z:0^lstm_232/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_232/while/Identity_5Identity&lstm_232/while/lstm_cell_370/add_1:z:0^lstm_232/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_232/while/NoOpNoOp4^lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp3^lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp5^lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_232_while_identity lstm_232/while/Identity:output:0"?
lstm_232_while_identity_1"lstm_232/while/Identity_1:output:0"?
lstm_232_while_identity_2"lstm_232/while/Identity_2:output:0"?
lstm_232_while_identity_3"lstm_232/while/Identity_3:output:0"?
lstm_232_while_identity_4"lstm_232/while/Identity_4:output:0"?
lstm_232_while_identity_5"lstm_232/while/Identity_5:output:0"T
'lstm_232_while_lstm_232_strided_slice_1)lstm_232_while_lstm_232_strided_slice_1_0"~
<lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource>lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0"?
=lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource?lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0"|
;lstm_232_while_lstm_cell_370_matmul_readvariableop_resource=lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0"?
clstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensorelstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp2h
2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp2l
4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2248595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2248595___redundant_placeholder05
1while_while_cond_2248595___redundant_placeholder15
1while_while_cond_2248595___redundant_placeholder25
1while_while_cond_2248595___redundant_placeholder3
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
while_body_2245490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_371_2245514_0:2(/
while_lstm_cell_371_2245516_0:
(+
while_lstm_cell_371_2245518_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_371_2245514:2(-
while_lstm_cell_371_2245516:
()
while_lstm_cell_371_2245518:(??+while/lstm_cell_371/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_371/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_371_2245514_0while_lstm_cell_371_2245516_0while_lstm_cell_371_2245518_0*
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2245476?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_371/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_371/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_371/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_371/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_371_2245514while_lstm_cell_371_2245514_0"<
while_lstm_cell_371_2245516while_lstm_cell_371_2245516_0"<
while_lstm_cell_371_2245518while_lstm_cell_371_2245518_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_371/StatefulPartitionedCall+while/lstm_cell_371/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_232_while_body_2247221.
*lstm_232_while_lstm_232_while_loop_counter4
0lstm_232_while_lstm_232_while_maximum_iterations
lstm_232_while_placeholder 
lstm_232_while_placeholder_1 
lstm_232_while_placeholder_2 
lstm_232_while_placeholder_3-
)lstm_232_while_lstm_232_strided_slice_1_0i
elstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0:	d?R
?lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0:	2?M
>lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0:	?
lstm_232_while_identity
lstm_232_while_identity_1
lstm_232_while_identity_2
lstm_232_while_identity_3
lstm_232_while_identity_4
lstm_232_while_identity_5+
'lstm_232_while_lstm_232_strided_slice_1g
clstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensorN
;lstm_232_while_lstm_cell_370_matmul_readvariableop_resource:	d?P
=lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource:	2?K
<lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource:	???3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp?2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp?4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp?
@lstm_232/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_232/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensor_0lstm_232_while_placeholderIlstm_232/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp=lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_232/while/lstm_cell_370/MatMulMatMul9lstm_232/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp?lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_232/while/lstm_cell_370/MatMul_1MatMullstm_232_while_placeholder_2<lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_232/while/lstm_cell_370/addAddV2-lstm_232/while/lstm_cell_370/MatMul:product:0/lstm_232/while/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp>lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_232/while/lstm_cell_370/BiasAddBiasAdd$lstm_232/while/lstm_cell_370/add:z:0;lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_232/while/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_232/while/lstm_cell_370/splitSplit5lstm_232/while/lstm_cell_370/split/split_dim:output:0-lstm_232/while/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_232/while/lstm_cell_370/SigmoidSigmoid+lstm_232/while/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_232/while/lstm_cell_370/Sigmoid_1Sigmoid+lstm_232/while/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_232/while/lstm_cell_370/mulMul*lstm_232/while/lstm_cell_370/Sigmoid_1:y:0lstm_232_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_232/while/lstm_cell_370/ReluRelu+lstm_232/while/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_232/while/lstm_cell_370/mul_1Mul(lstm_232/while/lstm_cell_370/Sigmoid:y:0/lstm_232/while/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_232/while/lstm_cell_370/add_1AddV2$lstm_232/while/lstm_cell_370/mul:z:0&lstm_232/while/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_232/while/lstm_cell_370/Sigmoid_2Sigmoid+lstm_232/while/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_232/while/lstm_cell_370/Relu_1Relu&lstm_232/while/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_232/while/lstm_cell_370/mul_2Mul*lstm_232/while/lstm_cell_370/Sigmoid_2:y:01lstm_232/while/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_232/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_232_while_placeholder_1lstm_232_while_placeholder&lstm_232/while/lstm_cell_370/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_232/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_232/while/addAddV2lstm_232_while_placeholderlstm_232/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_232/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_232/while/add_1AddV2*lstm_232_while_lstm_232_while_loop_counterlstm_232/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_232/while/IdentityIdentitylstm_232/while/add_1:z:0^lstm_232/while/NoOp*
T0*
_output_shapes
: ?
lstm_232/while/Identity_1Identity0lstm_232_while_lstm_232_while_maximum_iterations^lstm_232/while/NoOp*
T0*
_output_shapes
: t
lstm_232/while/Identity_2Identitylstm_232/while/add:z:0^lstm_232/while/NoOp*
T0*
_output_shapes
: ?
lstm_232/while/Identity_3IdentityClstm_232/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_232/while/NoOp*
T0*
_output_shapes
: ?
lstm_232/while/Identity_4Identity&lstm_232/while/lstm_cell_370/mul_2:z:0^lstm_232/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_232/while/Identity_5Identity&lstm_232/while/lstm_cell_370/add_1:z:0^lstm_232/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_232/while/NoOpNoOp4^lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp3^lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp5^lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_232_while_identity lstm_232/while/Identity:output:0"?
lstm_232_while_identity_1"lstm_232/while/Identity_1:output:0"?
lstm_232_while_identity_2"lstm_232/while/Identity_2:output:0"?
lstm_232_while_identity_3"lstm_232/while/Identity_3:output:0"?
lstm_232_while_identity_4"lstm_232/while/Identity_4:output:0"?
lstm_232_while_identity_5"lstm_232/while/Identity_5:output:0"T
'lstm_232_while_lstm_232_strided_slice_1)lstm_232_while_lstm_232_strided_slice_1_0"~
<lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource>lstm_232_while_lstm_cell_370_biasadd_readvariableop_resource_0"?
=lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource?lstm_232_while_lstm_cell_370_matmul_1_readvariableop_resource_0"|
;lstm_232_while_lstm_cell_370_matmul_readvariableop_resource=lstm_232_while_lstm_cell_370_matmul_readvariableop_resource_0"?
clstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensorelstm_232_while_tensorarrayv2read_tensorlistgetitem_lstm_232_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp3lstm_232/while/lstm_cell_370/BiasAdd/ReadVariableOp2h
2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp2lstm_232/while/lstm_cell_370/MatMul/ReadVariableOp2l
4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp4lstm_232/while/lstm_cell_370/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_231_layer_call_fn_2247921

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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2246754s
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
??
?
J__inference_sequential_77_layer_call_and_return_conditional_losses_2247450

inputsH
5lstm_231_lstm_cell_369_matmul_readvariableop_resource:	?J
7lstm_231_lstm_cell_369_matmul_1_readvariableop_resource:	d?E
6lstm_231_lstm_cell_369_biasadd_readvariableop_resource:	?H
5lstm_232_lstm_cell_370_matmul_readvariableop_resource:	d?J
7lstm_232_lstm_cell_370_matmul_1_readvariableop_resource:	2?E
6lstm_232_lstm_cell_370_biasadd_readvariableop_resource:	?G
5lstm_233_lstm_cell_371_matmul_readvariableop_resource:2(I
7lstm_233_lstm_cell_371_matmul_1_readvariableop_resource:
(D
6lstm_233_lstm_cell_371_biasadd_readvariableop_resource:(9
'dense_77_matmul_readvariableop_resource:
6
(dense_77_biasadd_readvariableop_resource:
identity??dense_77/BiasAdd/ReadVariableOp?dense_77/MatMul/ReadVariableOp?-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp?,lstm_231/lstm_cell_369/MatMul/ReadVariableOp?.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp?lstm_231/while?-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp?,lstm_232/lstm_cell_370/MatMul/ReadVariableOp?.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp?lstm_232/while?-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp?,lstm_233/lstm_cell_371/MatMul/ReadVariableOp?.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp?lstm_233/whileD
lstm_231/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_231/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_231/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_231/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_sliceStridedSlicelstm_231/Shape:output:0%lstm_231/strided_slice/stack:output:0'lstm_231/strided_slice/stack_1:output:0'lstm_231/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_231/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_231/zeros/packedPacklstm_231/strided_slice:output:0 lstm_231/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_231/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_231/zerosFilllstm_231/zeros/packed:output:0lstm_231/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_231/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_231/zeros_1/packedPacklstm_231/strided_slice:output:0"lstm_231/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_231/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_231/zeros_1Fill lstm_231/zeros_1/packed:output:0lstm_231/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_231/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_231/transpose	Transposeinputs lstm_231/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_231/Shape_1Shapelstm_231/transpose:y:0*
T0*
_output_shapes
:h
lstm_231/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_231/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_231/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_slice_1StridedSlicelstm_231/Shape_1:output:0'lstm_231/strided_slice_1/stack:output:0)lstm_231/strided_slice_1/stack_1:output:0)lstm_231/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_231/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_231/TensorArrayV2TensorListReserve-lstm_231/TensorArrayV2/element_shape:output:0!lstm_231/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_231/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_231/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_231/transpose:y:0Glstm_231/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_231/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_231/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_231/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_slice_2StridedSlicelstm_231/transpose:y:0'lstm_231/strided_slice_2/stack:output:0)lstm_231/strided_slice_2/stack_1:output:0)lstm_231/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_231/lstm_cell_369/MatMul/ReadVariableOpReadVariableOp5lstm_231_lstm_cell_369_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_231/lstm_cell_369/MatMulMatMul!lstm_231/strided_slice_2:output:04lstm_231/lstm_cell_369/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOpReadVariableOp7lstm_231_lstm_cell_369_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_231/lstm_cell_369/MatMul_1MatMullstm_231/zeros:output:06lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_231/lstm_cell_369/addAddV2'lstm_231/lstm_cell_369/MatMul:product:0)lstm_231/lstm_cell_369/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOpReadVariableOp6lstm_231_lstm_cell_369_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_231/lstm_cell_369/BiasAddBiasAddlstm_231/lstm_cell_369/add:z:05lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_231/lstm_cell_369/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_231/lstm_cell_369/splitSplit/lstm_231/lstm_cell_369/split/split_dim:output:0'lstm_231/lstm_cell_369/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_231/lstm_cell_369/SigmoidSigmoid%lstm_231/lstm_cell_369/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_231/lstm_cell_369/Sigmoid_1Sigmoid%lstm_231/lstm_cell_369/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/mulMul$lstm_231/lstm_cell_369/Sigmoid_1:y:0lstm_231/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_231/lstm_cell_369/ReluRelu%lstm_231/lstm_cell_369/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/mul_1Mul"lstm_231/lstm_cell_369/Sigmoid:y:0)lstm_231/lstm_cell_369/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/add_1AddV2lstm_231/lstm_cell_369/mul:z:0 lstm_231/lstm_cell_369/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_231/lstm_cell_369/Sigmoid_2Sigmoid%lstm_231/lstm_cell_369/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_231/lstm_cell_369/Relu_1Relu lstm_231/lstm_cell_369/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_231/lstm_cell_369/mul_2Mul$lstm_231/lstm_cell_369/Sigmoid_2:y:0+lstm_231/lstm_cell_369/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_231/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_231/TensorArrayV2_1TensorListReserve/lstm_231/TensorArrayV2_1/element_shape:output:0!lstm_231/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_231/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_231/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_231/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_231/whileWhile$lstm_231/while/loop_counter:output:0*lstm_231/while/maximum_iterations:output:0lstm_231/time:output:0!lstm_231/TensorArrayV2_1:handle:0lstm_231/zeros:output:0lstm_231/zeros_1:output:0!lstm_231/strided_slice_1:output:0@lstm_231/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_231_lstm_cell_369_matmul_readvariableop_resource7lstm_231_lstm_cell_369_matmul_1_readvariableop_resource6lstm_231_lstm_cell_369_biasadd_readvariableop_resource*
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
lstm_231_while_body_2247082*'
condR
lstm_231_while_cond_2247081*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_231/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_231/TensorArrayV2Stack/TensorListStackTensorListStacklstm_231/while:output:3Blstm_231/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_231/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_231/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_231/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_231/strided_slice_3StridedSlice4lstm_231/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_231/strided_slice_3/stack:output:0)lstm_231/strided_slice_3/stack_1:output:0)lstm_231/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_231/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_231/transpose_1	Transpose4lstm_231/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_231/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_231/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_232/ShapeShapelstm_231/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_232/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_232/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_232/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_sliceStridedSlicelstm_232/Shape:output:0%lstm_232/strided_slice/stack:output:0'lstm_232/strided_slice/stack_1:output:0'lstm_232/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_232/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_232/zeros/packedPacklstm_232/strided_slice:output:0 lstm_232/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_232/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_232/zerosFilllstm_232/zeros/packed:output:0lstm_232/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_232/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_232/zeros_1/packedPacklstm_232/strided_slice:output:0"lstm_232/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_232/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_232/zeros_1Fill lstm_232/zeros_1/packed:output:0lstm_232/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_232/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_232/transpose	Transposelstm_231/transpose_1:y:0 lstm_232/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_232/Shape_1Shapelstm_232/transpose:y:0*
T0*
_output_shapes
:h
lstm_232/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_232/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_232/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_slice_1StridedSlicelstm_232/Shape_1:output:0'lstm_232/strided_slice_1/stack:output:0)lstm_232/strided_slice_1/stack_1:output:0)lstm_232/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_232/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_232/TensorArrayV2TensorListReserve-lstm_232/TensorArrayV2/element_shape:output:0!lstm_232/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_232/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_232/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_232/transpose:y:0Glstm_232/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_232/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_232/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_232/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_slice_2StridedSlicelstm_232/transpose:y:0'lstm_232/strided_slice_2/stack:output:0)lstm_232/strided_slice_2/stack_1:output:0)lstm_232/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_232/lstm_cell_370/MatMul/ReadVariableOpReadVariableOp5lstm_232_lstm_cell_370_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_232/lstm_cell_370/MatMulMatMul!lstm_232/strided_slice_2:output:04lstm_232/lstm_cell_370/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOpReadVariableOp7lstm_232_lstm_cell_370_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_232/lstm_cell_370/MatMul_1MatMullstm_232/zeros:output:06lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_232/lstm_cell_370/addAddV2'lstm_232/lstm_cell_370/MatMul:product:0)lstm_232/lstm_cell_370/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOpReadVariableOp6lstm_232_lstm_cell_370_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_232/lstm_cell_370/BiasAddBiasAddlstm_232/lstm_cell_370/add:z:05lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_232/lstm_cell_370/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_232/lstm_cell_370/splitSplit/lstm_232/lstm_cell_370/split/split_dim:output:0'lstm_232/lstm_cell_370/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_232/lstm_cell_370/SigmoidSigmoid%lstm_232/lstm_cell_370/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_232/lstm_cell_370/Sigmoid_1Sigmoid%lstm_232/lstm_cell_370/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/mulMul$lstm_232/lstm_cell_370/Sigmoid_1:y:0lstm_232/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_232/lstm_cell_370/ReluRelu%lstm_232/lstm_cell_370/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/mul_1Mul"lstm_232/lstm_cell_370/Sigmoid:y:0)lstm_232/lstm_cell_370/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/add_1AddV2lstm_232/lstm_cell_370/mul:z:0 lstm_232/lstm_cell_370/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_232/lstm_cell_370/Sigmoid_2Sigmoid%lstm_232/lstm_cell_370/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_232/lstm_cell_370/Relu_1Relu lstm_232/lstm_cell_370/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_232/lstm_cell_370/mul_2Mul$lstm_232/lstm_cell_370/Sigmoid_2:y:0+lstm_232/lstm_cell_370/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_232/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_232/TensorArrayV2_1TensorListReserve/lstm_232/TensorArrayV2_1/element_shape:output:0!lstm_232/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_232/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_232/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_232/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_232/whileWhile$lstm_232/while/loop_counter:output:0*lstm_232/while/maximum_iterations:output:0lstm_232/time:output:0!lstm_232/TensorArrayV2_1:handle:0lstm_232/zeros:output:0lstm_232/zeros_1:output:0!lstm_232/strided_slice_1:output:0@lstm_232/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_232_lstm_cell_370_matmul_readvariableop_resource7lstm_232_lstm_cell_370_matmul_1_readvariableop_resource6lstm_232_lstm_cell_370_biasadd_readvariableop_resource*
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
lstm_232_while_body_2247221*'
condR
lstm_232_while_cond_2247220*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_232/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_232/TensorArrayV2Stack/TensorListStackTensorListStacklstm_232/while:output:3Blstm_232/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_232/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_232/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_232/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_232/strided_slice_3StridedSlice4lstm_232/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_232/strided_slice_3/stack:output:0)lstm_232/strided_slice_3/stack_1:output:0)lstm_232/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_232/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_232/transpose_1	Transpose4lstm_232/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_232/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_232/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_233/ShapeShapelstm_232/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_233/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_233/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_233/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_sliceStridedSlicelstm_233/Shape:output:0%lstm_233/strided_slice/stack:output:0'lstm_233/strided_slice/stack_1:output:0'lstm_233/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_233/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_233/zeros/packedPacklstm_233/strided_slice:output:0 lstm_233/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_233/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_233/zerosFilllstm_233/zeros/packed:output:0lstm_233/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_233/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_233/zeros_1/packedPacklstm_233/strided_slice:output:0"lstm_233/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_233/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_233/zeros_1Fill lstm_233/zeros_1/packed:output:0lstm_233/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_233/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_233/transpose	Transposelstm_232/transpose_1:y:0 lstm_233/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_233/Shape_1Shapelstm_233/transpose:y:0*
T0*
_output_shapes
:h
lstm_233/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_233/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_233/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_slice_1StridedSlicelstm_233/Shape_1:output:0'lstm_233/strided_slice_1/stack:output:0)lstm_233/strided_slice_1/stack_1:output:0)lstm_233/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_233/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_233/TensorArrayV2TensorListReserve-lstm_233/TensorArrayV2/element_shape:output:0!lstm_233/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_233/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_233/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_233/transpose:y:0Glstm_233/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_233/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_233/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_233/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_slice_2StridedSlicelstm_233/transpose:y:0'lstm_233/strided_slice_2/stack:output:0)lstm_233/strided_slice_2/stack_1:output:0)lstm_233/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_233/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp5lstm_233_lstm_cell_371_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_233/lstm_cell_371/MatMulMatMul!lstm_233/strided_slice_2:output:04lstm_233/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp7lstm_233_lstm_cell_371_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_233/lstm_cell_371/MatMul_1MatMullstm_233/zeros:output:06lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_233/lstm_cell_371/addAddV2'lstm_233/lstm_cell_371/MatMul:product:0)lstm_233/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp6lstm_233_lstm_cell_371_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_233/lstm_cell_371/BiasAddBiasAddlstm_233/lstm_cell_371/add:z:05lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_233/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_233/lstm_cell_371/splitSplit/lstm_233/lstm_cell_371/split/split_dim:output:0'lstm_233/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_233/lstm_cell_371/SigmoidSigmoid%lstm_233/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_233/lstm_cell_371/Sigmoid_1Sigmoid%lstm_233/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/mulMul$lstm_233/lstm_cell_371/Sigmoid_1:y:0lstm_233/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_233/lstm_cell_371/ReluRelu%lstm_233/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/mul_1Mul"lstm_233/lstm_cell_371/Sigmoid:y:0)lstm_233/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/add_1AddV2lstm_233/lstm_cell_371/mul:z:0 lstm_233/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_233/lstm_cell_371/Sigmoid_2Sigmoid%lstm_233/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_233/lstm_cell_371/Relu_1Relu lstm_233/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_233/lstm_cell_371/mul_2Mul$lstm_233/lstm_cell_371/Sigmoid_2:y:0+lstm_233/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_233/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_233/TensorArrayV2_1TensorListReserve/lstm_233/TensorArrayV2_1/element_shape:output:0!lstm_233/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_233/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_233/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_233/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_233/whileWhile$lstm_233/while/loop_counter:output:0*lstm_233/while/maximum_iterations:output:0lstm_233/time:output:0!lstm_233/TensorArrayV2_1:handle:0lstm_233/zeros:output:0lstm_233/zeros_1:output:0!lstm_233/strided_slice_1:output:0@lstm_233/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_233_lstm_cell_371_matmul_readvariableop_resource7lstm_233_lstm_cell_371_matmul_1_readvariableop_resource6lstm_233_lstm_cell_371_biasadd_readvariableop_resource*
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
lstm_233_while_body_2247360*'
condR
lstm_233_while_cond_2247359*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_233/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_233/TensorArrayV2Stack/TensorListStackTensorListStacklstm_233/while:output:3Blstm_233/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_233/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_233/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_233/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_233/strided_slice_3StridedSlice4lstm_233/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_233/strided_slice_3/stack:output:0)lstm_233/strided_slice_3/stack_1:output:0)lstm_233/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_233/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_233/transpose_1	Transpose4lstm_233/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_233/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_233/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_77/MatMulMatMul!lstm_233/strided_slice_3:output:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_77/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp.^lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp-^lstm_231/lstm_cell_369/MatMul/ReadVariableOp/^lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp^lstm_231/while.^lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp-^lstm_232/lstm_cell_370/MatMul/ReadVariableOp/^lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp^lstm_232/while.^lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp-^lstm_233/lstm_cell_371/MatMul/ReadVariableOp/^lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp^lstm_233/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2^
-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp-lstm_231/lstm_cell_369/BiasAdd/ReadVariableOp2\
,lstm_231/lstm_cell_369/MatMul/ReadVariableOp,lstm_231/lstm_cell_369/MatMul/ReadVariableOp2`
.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp.lstm_231/lstm_cell_369/MatMul_1/ReadVariableOp2 
lstm_231/whilelstm_231/while2^
-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp-lstm_232/lstm_cell_370/BiasAdd/ReadVariableOp2\
,lstm_232/lstm_cell_370/MatMul/ReadVariableOp,lstm_232/lstm_cell_370/MatMul/ReadVariableOp2`
.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp.lstm_232/lstm_cell_370/MatMul_1/ReadVariableOp2 
lstm_232/whilelstm_232/while2^
-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp-lstm_233/lstm_cell_371/BiasAdd/ReadVariableOp2\
,lstm_233/lstm_cell_371/MatMul/ReadVariableOp,lstm_233/lstm_cell_371/MatMul/ReadVariableOp2`
.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp.lstm_233/lstm_cell_371/MatMul_1/ReadVariableOp2 
lstm_233/whilelstm_233/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_77_layer_call_fn_2249734

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
E__inference_dense_77_layer_call_and_return_conditional_losses_2246226o
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2250038

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
while_cond_2244789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2244789___redundant_placeholder05
1while_while_cond_2244789___redundant_placeholder15
1while_while_cond_2244789___redundant_placeholder25
1while_while_cond_2244789___redundant_placeholder3
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
while_cond_2248122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2248122___redundant_placeholder05
1while_while_cond_2248122___redundant_placeholder15
1while_while_cond_2248122___redundant_placeholder25
1while_while_cond_2248122___redundant_placeholder3
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
while_body_2246340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_371_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_371_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_371_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_371_matmul_readvariableop_resource:2(F
4while_lstm_cell_371_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_371_biasadd_readvariableop_resource:(??*while/lstm_cell_371/BiasAdd/ReadVariableOp?)while/lstm_cell_371/MatMul/ReadVariableOp?+while/lstm_cell_371/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_371/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_371_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_371/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_371/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_371/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_371_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_371/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_371/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_371/addAddV2$while/lstm_cell_371/MatMul:product:0&while/lstm_cell_371/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_371/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_371_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_371/BiasAddBiasAddwhile/lstm_cell_371/add:z:02while/lstm_cell_371/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_371/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_371/splitSplit,while/lstm_cell_371/split/split_dim:output:0$while/lstm_cell_371/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_371/SigmoidSigmoid"while/lstm_cell_371/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_1Sigmoid"while/lstm_cell_371/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mulMul!while/lstm_cell_371/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_371/ReluRelu"while/lstm_cell_371/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_1Mulwhile/lstm_cell_371/Sigmoid:y:0&while/lstm_cell_371/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/add_1AddV2while/lstm_cell_371/mul:z:0while/lstm_cell_371/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_371/Sigmoid_2Sigmoid"while/lstm_cell_371/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_371/Relu_1Reluwhile/lstm_cell_371/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_371/mul_2Mul!while/lstm_cell_371/Sigmoid_2:y:0(while/lstm_cell_371/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_371/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_371/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_371/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_371/BiasAdd/ReadVariableOp*^while/lstm_cell_371/MatMul/ReadVariableOp,^while/lstm_cell_371/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_371_biasadd_readvariableop_resource5while_lstm_cell_371_biasadd_readvariableop_resource_0"n
4while_lstm_cell_371_matmul_1_readvariableop_resource6while_lstm_cell_371_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_371_matmul_readvariableop_resource4while_lstm_cell_371_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_371/BiasAdd/ReadVariableOp*while/lstm_cell_371/BiasAdd/ReadVariableOp2V
)while/lstm_cell_371/MatMul/ReadVariableOp)while/lstm_cell_371/MatMul/ReadVariableOp2Z
+while/lstm_cell_371/MatMul_1/ReadVariableOp+while/lstm_cell_371/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_232_layer_call_fn_2248515
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2245400|
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
while_cond_2245330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2245330___redundant_placeholder05
1while_while_cond_2245330___redundant_placeholder15
1while_while_cond_2245330___redundant_placeholder25
1while_while_cond_2245330___redundant_placeholder3
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2244922

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
while_cond_2249354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2249354___redundant_placeholder05
1while_while_cond_2249354___redundant_placeholder15
1while_while_cond_2249354___redundant_placeholder25
1while_while_cond_2249354___redundant_placeholder3
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
while_cond_2248265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2248265___redundant_placeholder05
1while_while_cond_2248265___redundant_placeholder15
1while_while_cond_2248265___redundant_placeholder25
1while_while_cond_2248265___redundant_placeholder3
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
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_231_input;
 serving_default_lstm_231_input:0?????????<
dense_770
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
2dense_77/kernel
:2dense_77/bias
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
0:.	?2lstm_231/lstm_cell_231/kernel
::8	d?2'lstm_231/lstm_cell_231/recurrent_kernel
*:(?2lstm_231/lstm_cell_231/bias
0:.	d?2lstm_232/lstm_cell_232/kernel
::8	2?2'lstm_232/lstm_cell_232/recurrent_kernel
*:(?2lstm_232/lstm_cell_232/bias
/:-2(2lstm_233/lstm_cell_233/kernel
9:7
(2'lstm_233/lstm_cell_233/recurrent_kernel
):'(2lstm_233/lstm_cell_233/bias
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
2Adam/dense_77/kernel/m
 :2Adam/dense_77/bias/m
5:3	?2$Adam/lstm_231/lstm_cell_231/kernel/m
?:=	d?2.Adam/lstm_231/lstm_cell_231/recurrent_kernel/m
/:-?2"Adam/lstm_231/lstm_cell_231/bias/m
5:3	d?2$Adam/lstm_232/lstm_cell_232/kernel/m
?:=	2?2.Adam/lstm_232/lstm_cell_232/recurrent_kernel/m
/:-?2"Adam/lstm_232/lstm_cell_232/bias/m
4:22(2$Adam/lstm_233/lstm_cell_233/kernel/m
>:<
(2.Adam/lstm_233/lstm_cell_233/recurrent_kernel/m
.:,(2"Adam/lstm_233/lstm_cell_233/bias/m
&:$
2Adam/dense_77/kernel/v
 :2Adam/dense_77/bias/v
5:3	?2$Adam/lstm_231/lstm_cell_231/kernel/v
?:=	d?2.Adam/lstm_231/lstm_cell_231/recurrent_kernel/v
/:-?2"Adam/lstm_231/lstm_cell_231/bias/v
5:3	d?2$Adam/lstm_232/lstm_cell_232/kernel/v
?:=	2?2.Adam/lstm_232/lstm_cell_232/recurrent_kernel/v
/:-?2"Adam/lstm_232/lstm_cell_232/bias/v
4:22(2$Adam/lstm_233/lstm_cell_233/kernel/v
>:<
(2.Adam/lstm_233/lstm_cell_233/recurrent_kernel/v
.:,(2"Adam/lstm_233/lstm_cell_233/bias/v
?2?
/__inference_sequential_77_layer_call_fn_2246258
/__inference_sequential_77_layer_call_fn_2246996
/__inference_sequential_77_layer_call_fn_2247023
/__inference_sequential_77_layer_call_fn_2246874?
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2247450
J__inference_sequential_77_layer_call_and_return_conditional_losses_2247877
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246904
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246934?
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
"__inference__wrapped_model_2244709lstm_231_input"?
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
*__inference_lstm_231_layer_call_fn_2247888
*__inference_lstm_231_layer_call_fn_2247899
*__inference_lstm_231_layer_call_fn_2247910
*__inference_lstm_231_layer_call_fn_2247921?
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248064
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248207
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248350
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248493?
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
*__inference_lstm_232_layer_call_fn_2248504
*__inference_lstm_232_layer_call_fn_2248515
*__inference_lstm_232_layer_call_fn_2248526
*__inference_lstm_232_layer_call_fn_2248537?
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248680
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248823
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248966
E__inference_lstm_232_layer_call_and_return_conditional_losses_2249109?
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
*__inference_lstm_233_layer_call_fn_2249120
*__inference_lstm_233_layer_call_fn_2249131
*__inference_lstm_233_layer_call_fn_2249142
*__inference_lstm_233_layer_call_fn_2249153?
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249296
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249439
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249582
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249725?
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
*__inference_dense_77_layer_call_fn_2249734?
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
E__inference_dense_77_layer_call_and_return_conditional_losses_2249744?
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
%__inference_signature_wrapper_2246969lstm_231_input"?
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
/__inference_lstm_cell_369_layer_call_fn_2249761
/__inference_lstm_cell_369_layer_call_fn_2249778?
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2249810
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2249842?
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
/__inference_lstm_cell_370_layer_call_fn_2249859
/__inference_lstm_cell_370_layer_call_fn_2249876?
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2249908
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2249940?
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
/__inference_lstm_cell_371_layer_call_fn_2249957
/__inference_lstm_cell_371_layer_call_fn_2249974?
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2250006
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2250038?
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
"__inference__wrapped_model_2244709-./012345!";?8
1?.
,?)
lstm_231_input?????????
? "3?0
.
dense_77"?
dense_77??????????
E__inference_dense_77_layer_call_and_return_conditional_losses_2249744\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_77_layer_call_fn_2249734O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248064?-./O?L
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248207?-./O?L
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248350q-./??<
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
E__inference_lstm_231_layer_call_and_return_conditional_losses_2248493q-./??<
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
*__inference_lstm_231_layer_call_fn_2247888}-./O?L
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
*__inference_lstm_231_layer_call_fn_2247899}-./O?L
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
*__inference_lstm_231_layer_call_fn_2247910d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_231_layer_call_fn_2247921d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248680?012O?L
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248823?012O?L
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2248966q012??<
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
E__inference_lstm_232_layer_call_and_return_conditional_losses_2249109q012??<
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
*__inference_lstm_232_layer_call_fn_2248504}012O?L
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
*__inference_lstm_232_layer_call_fn_2248515}012O?L
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
*__inference_lstm_232_layer_call_fn_2248526d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_232_layer_call_fn_2248537d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249296}345O?L
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249439}345O?L
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249582m345??<
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
E__inference_lstm_233_layer_call_and_return_conditional_losses_2249725m345??<
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
*__inference_lstm_233_layer_call_fn_2249120p345O?L
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
*__inference_lstm_233_layer_call_fn_2249131p345O?L
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
*__inference_lstm_233_layer_call_fn_2249142`345??<
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
*__inference_lstm_233_layer_call_fn_2249153`345??<
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2249810?-./??}
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
J__inference_lstm_cell_369_layer_call_and_return_conditional_losses_2249842?-./??}
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
/__inference_lstm_cell_369_layer_call_fn_2249761?-./??}
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
/__inference_lstm_cell_369_layer_call_fn_2249778?-./??}
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2249908?012??}
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
J__inference_lstm_cell_370_layer_call_and_return_conditional_losses_2249940?012??}
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
/__inference_lstm_cell_370_layer_call_fn_2249859?012??}
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
/__inference_lstm_cell_370_layer_call_fn_2249876?012??}
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2250006?345??}
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
J__inference_lstm_cell_371_layer_call_and_return_conditional_losses_2250038?345??}
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
/__inference_lstm_cell_371_layer_call_fn_2249957?345??}
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
/__inference_lstm_cell_371_layer_call_fn_2249974?345??}
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246904y-./012345!"C?@
9?6
,?)
lstm_231_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_77_layer_call_and_return_conditional_losses_2246934y-./012345!"C?@
9?6
,?)
lstm_231_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_77_layer_call_and_return_conditional_losses_2247450q-./012345!";?8
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
J__inference_sequential_77_layer_call_and_return_conditional_losses_2247877q-./012345!";?8
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
/__inference_sequential_77_layer_call_fn_2246258l-./012345!"C?@
9?6
,?)
lstm_231_input?????????
p 

 
? "???????????
/__inference_sequential_77_layer_call_fn_2246874l-./012345!"C?@
9?6
,?)
lstm_231_input?????????
p

 
? "???????????
/__inference_sequential_77_layer_call_fn_2246996d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_77_layer_call_fn_2247023d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2246969?-./012345!"M?J
? 
C?@
>
lstm_231_input,?)
lstm_231_input?????????"3?0
.
dense_77"?
dense_77?????????