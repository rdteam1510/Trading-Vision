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
dense_88/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_88/kernel
s
#dense_88/kernel/Read/ReadVariableOpReadVariableOpdense_88/kernel*
_output_shapes

:
*
dtype0
r
dense_88/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_88/bias
k
!dense_88/bias/Read/ReadVariableOpReadVariableOpdense_88/bias*
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
lstm_264/lstm_cell_264/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_264/lstm_cell_264/kernel
?
1lstm_264/lstm_cell_264/kernel/Read/ReadVariableOpReadVariableOplstm_264/lstm_cell_264/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_264/lstm_cell_264/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_264/lstm_cell_264/recurrent_kernel
?
;lstm_264/lstm_cell_264/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_264/lstm_cell_264/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_264/lstm_cell_264/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_264/lstm_cell_264/bias
?
/lstm_264/lstm_cell_264/bias/Read/ReadVariableOpReadVariableOplstm_264/lstm_cell_264/bias*
_output_shapes	
:?*
dtype0
?
lstm_265/lstm_cell_265/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_265/lstm_cell_265/kernel
?
1lstm_265/lstm_cell_265/kernel/Read/ReadVariableOpReadVariableOplstm_265/lstm_cell_265/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_265/lstm_cell_265/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_265/lstm_cell_265/recurrent_kernel
?
;lstm_265/lstm_cell_265/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_265/lstm_cell_265/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_265/lstm_cell_265/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_265/lstm_cell_265/bias
?
/lstm_265/lstm_cell_265/bias/Read/ReadVariableOpReadVariableOplstm_265/lstm_cell_265/bias*
_output_shapes	
:?*
dtype0
?
lstm_266/lstm_cell_266/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_266/lstm_cell_266/kernel
?
1lstm_266/lstm_cell_266/kernel/Read/ReadVariableOpReadVariableOplstm_266/lstm_cell_266/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_266/lstm_cell_266/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_266/lstm_cell_266/recurrent_kernel
?
;lstm_266/lstm_cell_266/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_266/lstm_cell_266/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_266/lstm_cell_266/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_266/lstm_cell_266/bias
?
/lstm_266/lstm_cell_266/bias/Read/ReadVariableOpReadVariableOplstm_266/lstm_cell_266/bias*
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
Adam/dense_88/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_88/kernel/m
?
*Adam/dense_88/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_88/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_88/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_88/bias/m
y
(Adam/dense_88/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_88/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_264/lstm_cell_264/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_264/lstm_cell_264/kernel/m
?
8Adam/lstm_264/lstm_cell_264/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_264/lstm_cell_264/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_264/lstm_cell_264/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_264/lstm_cell_264/recurrent_kernel/m
?
BAdam/lstm_264/lstm_cell_264/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_264/lstm_cell_264/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_264/lstm_cell_264/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_264/lstm_cell_264/bias/m
?
6Adam/lstm_264/lstm_cell_264/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_264/lstm_cell_264/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_265/lstm_cell_265/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_265/lstm_cell_265/kernel/m
?
8Adam/lstm_265/lstm_cell_265/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_265/lstm_cell_265/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_265/lstm_cell_265/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_265/lstm_cell_265/recurrent_kernel/m
?
BAdam/lstm_265/lstm_cell_265/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_265/lstm_cell_265/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_265/lstm_cell_265/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_265/lstm_cell_265/bias/m
?
6Adam/lstm_265/lstm_cell_265/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_265/lstm_cell_265/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_266/lstm_cell_266/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_266/lstm_cell_266/kernel/m
?
8Adam/lstm_266/lstm_cell_266/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_266/lstm_cell_266/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_266/lstm_cell_266/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_266/lstm_cell_266/recurrent_kernel/m
?
BAdam/lstm_266/lstm_cell_266/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_266/lstm_cell_266/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_266/lstm_cell_266/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_266/lstm_cell_266/bias/m
?
6Adam/lstm_266/lstm_cell_266/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_266/lstm_cell_266/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_88/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_88/kernel/v
?
*Adam/dense_88/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_88/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_88/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_88/bias/v
y
(Adam/dense_88/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_88/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_264/lstm_cell_264/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_264/lstm_cell_264/kernel/v
?
8Adam/lstm_264/lstm_cell_264/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_264/lstm_cell_264/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_264/lstm_cell_264/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_264/lstm_cell_264/recurrent_kernel/v
?
BAdam/lstm_264/lstm_cell_264/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_264/lstm_cell_264/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_264/lstm_cell_264/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_264/lstm_cell_264/bias/v
?
6Adam/lstm_264/lstm_cell_264/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_264/lstm_cell_264/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_265/lstm_cell_265/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_265/lstm_cell_265/kernel/v
?
8Adam/lstm_265/lstm_cell_265/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_265/lstm_cell_265/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_265/lstm_cell_265/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_265/lstm_cell_265/recurrent_kernel/v
?
BAdam/lstm_265/lstm_cell_265/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_265/lstm_cell_265/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_265/lstm_cell_265/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_265/lstm_cell_265/bias/v
?
6Adam/lstm_265/lstm_cell_265/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_265/lstm_cell_265/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_266/lstm_cell_266/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_266/lstm_cell_266/kernel/v
?
8Adam/lstm_266/lstm_cell_266/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_266/lstm_cell_266/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_266/lstm_cell_266/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_266/lstm_cell_266/recurrent_kernel/v
?
BAdam/lstm_266/lstm_cell_266/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_266/lstm_cell_266/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_266/lstm_cell_266/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_266/lstm_cell_266/bias/v
?
6Adam/lstm_266/lstm_cell_266/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_266/lstm_cell_266/bias/v*
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
VARIABLE_VALUEdense_88/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_88/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_264/lstm_cell_264/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_264/lstm_cell_264/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_264/lstm_cell_264/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_265/lstm_cell_265/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_265/lstm_cell_265/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_265/lstm_cell_265/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_266/lstm_cell_266/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_266/lstm_cell_266/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_266/lstm_cell_266/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_88/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_88/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_264/lstm_cell_264/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_264/lstm_cell_264/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_264/lstm_cell_264/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_265/lstm_cell_265/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_265/lstm_cell_265/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_265/lstm_cell_265/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_266/lstm_cell_266/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_266/lstm_cell_266/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_266/lstm_cell_266/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_88/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_88/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_264/lstm_cell_264/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_264/lstm_cell_264/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_264/lstm_cell_264/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_265/lstm_cell_265/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_265/lstm_cell_265/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_265/lstm_cell_265/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_266/lstm_cell_266/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_266/lstm_cell_266/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_266/lstm_cell_266/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_264_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_264_inputlstm_264/lstm_cell_264/kernel'lstm_264/lstm_cell_264/recurrent_kernellstm_264/lstm_cell_264/biaslstm_265/lstm_cell_265/kernel'lstm_265/lstm_cell_265/recurrent_kernellstm_265/lstm_cell_265/biaslstm_266/lstm_cell_266/kernel'lstm_266/lstm_cell_266/recurrent_kernellstm_266/lstm_cell_266/biasdense_88/kerneldense_88/bias*
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
%__inference_signature_wrapper_2319332
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_88/kernel/Read/ReadVariableOp!dense_88/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_264/lstm_cell_264/kernel/Read/ReadVariableOp;lstm_264/lstm_cell_264/recurrent_kernel/Read/ReadVariableOp/lstm_264/lstm_cell_264/bias/Read/ReadVariableOp1lstm_265/lstm_cell_265/kernel/Read/ReadVariableOp;lstm_265/lstm_cell_265/recurrent_kernel/Read/ReadVariableOp/lstm_265/lstm_cell_265/bias/Read/ReadVariableOp1lstm_266/lstm_cell_266/kernel/Read/ReadVariableOp;lstm_266/lstm_cell_266/recurrent_kernel/Read/ReadVariableOp/lstm_266/lstm_cell_266/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_88/kernel/m/Read/ReadVariableOp(Adam/dense_88/bias/m/Read/ReadVariableOp8Adam/lstm_264/lstm_cell_264/kernel/m/Read/ReadVariableOpBAdam/lstm_264/lstm_cell_264/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_264/lstm_cell_264/bias/m/Read/ReadVariableOp8Adam/lstm_265/lstm_cell_265/kernel/m/Read/ReadVariableOpBAdam/lstm_265/lstm_cell_265/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_265/lstm_cell_265/bias/m/Read/ReadVariableOp8Adam/lstm_266/lstm_cell_266/kernel/m/Read/ReadVariableOpBAdam/lstm_266/lstm_cell_266/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_266/lstm_cell_266/bias/m/Read/ReadVariableOp*Adam/dense_88/kernel/v/Read/ReadVariableOp(Adam/dense_88/bias/v/Read/ReadVariableOp8Adam/lstm_264/lstm_cell_264/kernel/v/Read/ReadVariableOpBAdam/lstm_264/lstm_cell_264/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_264/lstm_cell_264/bias/v/Read/ReadVariableOp8Adam/lstm_265/lstm_cell_265/kernel/v/Read/ReadVariableOpBAdam/lstm_265/lstm_cell_265/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_265/lstm_cell_265/bias/v/Read/ReadVariableOp8Adam/lstm_266/lstm_cell_266/kernel/v/Read/ReadVariableOpBAdam/lstm_266/lstm_cell_266/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_266/lstm_cell_266/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2322544
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_88/kerneldense_88/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_264/lstm_cell_264/kernel'lstm_264/lstm_cell_264/recurrent_kernellstm_264/lstm_cell_264/biaslstm_265/lstm_cell_265/kernel'lstm_265/lstm_cell_265/recurrent_kernellstm_265/lstm_cell_265/biaslstm_266/lstm_cell_266/kernel'lstm_266/lstm_cell_266/recurrent_kernellstm_266/lstm_cell_266/biastotalcountAdam/dense_88/kernel/mAdam/dense_88/bias/m$Adam/lstm_264/lstm_cell_264/kernel/m.Adam/lstm_264/lstm_cell_264/recurrent_kernel/m"Adam/lstm_264/lstm_cell_264/bias/m$Adam/lstm_265/lstm_cell_265/kernel/m.Adam/lstm_265/lstm_cell_265/recurrent_kernel/m"Adam/lstm_265/lstm_cell_265/bias/m$Adam/lstm_266/lstm_cell_266/kernel/m.Adam/lstm_266/lstm_cell_266/recurrent_kernel/m"Adam/lstm_266/lstm_cell_266/bias/mAdam/dense_88/kernel/vAdam/dense_88/bias/v$Adam/lstm_264/lstm_cell_264/kernel/v.Adam/lstm_264/lstm_cell_264/recurrent_kernel/v"Adam/lstm_264/lstm_cell_264/bias/v$Adam/lstm_265/lstm_cell_265/kernel/v.Adam/lstm_265/lstm_cell_265/recurrent_kernel/v"Adam/lstm_265/lstm_cell_265/bias/v$Adam/lstm_266/lstm_cell_266/kernel/v.Adam/lstm_266/lstm_cell_266/recurrent_kernel/v"Adam/lstm_266/lstm_cell_266/bias/v*4
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
#__inference__traced_restore_2322674??+
?

?
lstm_264_while_cond_2319871.
*lstm_264_while_lstm_264_while_loop_counter4
0lstm_264_while_lstm_264_while_maximum_iterations
lstm_264_while_placeholder 
lstm_264_while_placeholder_1 
lstm_264_while_placeholder_2 
lstm_264_while_placeholder_30
,lstm_264_while_less_lstm_264_strided_slice_1G
Clstm_264_while_lstm_264_while_cond_2319871___redundant_placeholder0G
Clstm_264_while_lstm_264_while_cond_2319871___redundant_placeholder1G
Clstm_264_while_lstm_264_while_cond_2319871___redundant_placeholder2G
Clstm_264_while_lstm_264_while_cond_2319871___redundant_placeholder3
lstm_264_while_identity
?
lstm_264/while/LessLesslstm_264_while_placeholder,lstm_264_while_less_lstm_264_strided_slice_1*
T0*
_output_shapes
: ]
lstm_264/while/IdentityIdentitylstm_264/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_264_while_identity lstm_264/while/Identity:output:0*(
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
/__inference_lstm_cell_381_layer_call_fn_2322124

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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317139o
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317489

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
while_body_2321245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_382_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_382_matmul_readvariableop_resource:	d?G
4while_lstm_cell_382_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_382_biasadd_readvariableop_resource:	???*while/lstm_cell_382/BiasAdd/ReadVariableOp?)while/lstm_cell_382/MatMul/ReadVariableOp?+while/lstm_cell_382/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_382/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_382/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_382/addAddV2$while/lstm_cell_382/MatMul:product:0&while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_382/BiasAddBiasAddwhile/lstm_cell_382/add:z:02while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_382/splitSplit,while/lstm_cell_382/split/split_dim:output:0$while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_382/SigmoidSigmoid"while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_1Sigmoid"while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mulMul!while/lstm_cell_382/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_382/ReluRelu"while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_1Mulwhile/lstm_cell_382/Sigmoid:y:0&while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/add_1AddV2while/lstm_cell_382/mul:z:0while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_2Sigmoid"while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_382/Relu_1Reluwhile/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_2Mul!while/lstm_cell_382/Sigmoid_2:y:0(while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_382/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_382/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_382/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_382/BiasAdd/ReadVariableOp*^while/lstm_cell_382/MatMul/ReadVariableOp,^while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_382_biasadd_readvariableop_resource5while_lstm_cell_382_biasadd_readvariableop_resource_0"n
4while_lstm_cell_382_matmul_1_readvariableop_resource6while_lstm_cell_382_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_382_matmul_readvariableop_resource4while_lstm_cell_382_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_382/BiasAdd/ReadVariableOp*while/lstm_cell_382/BiasAdd/ReadVariableOp2V
)while/lstm_cell_382/MatMul/ReadVariableOp)while/lstm_cell_382/MatMul/ReadVariableOp2Z
+while/lstm_cell_382/MatMul_1/ReadVariableOp+while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318571

inputs>
,lstm_cell_383_matmul_readvariableop_resource:2(@
.lstm_cell_383_matmul_1_readvariableop_resource:
(;
-lstm_cell_383_biasadd_readvariableop_resource:(
identity??$lstm_cell_383/BiasAdd/ReadVariableOp?#lstm_cell_383/MatMul/ReadVariableOp?%lstm_cell_383/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_383/MatMul/ReadVariableOpReadVariableOp,lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_383/MatMulMatMulstrided_slice_2:output:0+lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_383/MatMul_1MatMulzeros:output:0-lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_383/addAddV2lstm_cell_383/MatMul:product:0 lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_383/BiasAddBiasAddlstm_cell_383/add:z:0,lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_383/splitSplit&lstm_cell_383/split/split_dim:output:0lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_383/SigmoidSigmoidlstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_1Sigmoidlstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_383/mulMullstm_cell_383/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_383/ReluRelulstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_1Mullstm_cell_383/Sigmoid:y:0 lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_383/add_1AddV2lstm_cell_383/mul:z:0lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_2Sigmoidlstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_383/Relu_1Relulstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_2Mullstm_cell_383/Sigmoid_2:y:0"lstm_cell_383/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_383_matmul_readvariableop_resource.lstm_cell_383_matmul_1_readvariableop_resource-lstm_cell_383_biasadd_readvariableop_resource*
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
while_body_2318487*
condR
while_cond_2318486*K
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
NoOpNoOp%^lstm_cell_383/BiasAdd/ReadVariableOp$^lstm_cell_383/MatMul/ReadVariableOp&^lstm_cell_383/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_383/BiasAdd/ReadVariableOp$lstm_cell_383/BiasAdd/ReadVariableOp2J
#lstm_cell_383/MatMul/ReadVariableOp#lstm_cell_383/MatMul/ReadVariableOp2N
%lstm_cell_383/MatMul_1/ReadVariableOp%lstm_cell_383/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2322003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2322003___redundant_placeholder05
1while_while_cond_2322003___redundant_placeholder15
1while_while_cond_2322003___redundant_placeholder25
1while_while_cond_2322003___redundant_placeholder3
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
while_body_2321388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_382_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_382_matmul_readvariableop_resource:	d?G
4while_lstm_cell_382_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_382_biasadd_readvariableop_resource:	???*while/lstm_cell_382/BiasAdd/ReadVariableOp?)while/lstm_cell_382/MatMul/ReadVariableOp?+while/lstm_cell_382/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_382/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_382/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_382/addAddV2$while/lstm_cell_382/MatMul:product:0&while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_382/BiasAddBiasAddwhile/lstm_cell_382/add:z:02while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_382/splitSplit,while/lstm_cell_382/split/split_dim:output:0$while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_382/SigmoidSigmoid"while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_1Sigmoid"while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mulMul!while/lstm_cell_382/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_382/ReluRelu"while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_1Mulwhile/lstm_cell_382/Sigmoid:y:0&while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/add_1AddV2while/lstm_cell_382/mul:z:0while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_2Sigmoid"while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_382/Relu_1Reluwhile/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_2Mul!while/lstm_cell_382/Sigmoid_2:y:0(while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_382/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_382/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_382/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_382/BiasAdd/ReadVariableOp*^while/lstm_cell_382/MatMul/ReadVariableOp,^while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_382_biasadd_readvariableop_resource5while_lstm_cell_382_biasadd_readvariableop_resource_0"n
4while_lstm_cell_382_matmul_1_readvariableop_resource6while_lstm_cell_382_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_382_matmul_readvariableop_resource4while_lstm_cell_382_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_382/BiasAdd/ReadVariableOp*while/lstm_cell_382/BiasAdd/ReadVariableOp2V
)while/lstm_cell_382/MatMul/ReadVariableOp)while/lstm_cell_382/MatMul/ReadVariableOp2Z
+while/lstm_cell_382/MatMul_1/ReadVariableOp+while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320427
inputs_0?
,lstm_cell_381_matmul_readvariableop_resource:	?A
.lstm_cell_381_matmul_1_readvariableop_resource:	d?<
-lstm_cell_381_biasadd_readvariableop_resource:	?
identity??$lstm_cell_381/BiasAdd/ReadVariableOp?#lstm_cell_381/MatMul/ReadVariableOp?%lstm_cell_381/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_381/MatMul/ReadVariableOpReadVariableOp,lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_381/MatMulMatMulstrided_slice_2:output:0+lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_381/MatMul_1MatMulzeros:output:0-lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_381/addAddV2lstm_cell_381/MatMul:product:0 lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_381/BiasAddBiasAddlstm_cell_381/add:z:0,lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_381/splitSplit&lstm_cell_381/split/split_dim:output:0lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_381/SigmoidSigmoidlstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_1Sigmoidlstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_381/mulMullstm_cell_381/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_381/ReluRelulstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_1Mullstm_cell_381/Sigmoid:y:0 lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_381/add_1AddV2lstm_cell_381/mul:z:0lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_2Sigmoidlstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_381/Relu_1Relulstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_2Mullstm_cell_381/Sigmoid_2:y:0"lstm_cell_381/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_381_matmul_readvariableop_resource.lstm_cell_381_matmul_1_readvariableop_resource-lstm_cell_381_biasadd_readvariableop_resource*
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
while_body_2320343*
condR
while_cond_2320342*K
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
NoOpNoOp%^lstm_cell_381/BiasAdd/ReadVariableOp$^lstm_cell_381/MatMul/ReadVariableOp&^lstm_cell_381/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_381/BiasAdd/ReadVariableOp$lstm_cell_381/BiasAdd/ReadVariableOp2J
#lstm_cell_381/MatMul/ReadVariableOp#lstm_cell_381/MatMul/ReadVariableOp2N
%lstm_cell_381/MatMul_1/ReadVariableOp%lstm_cell_381/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321945

inputs>
,lstm_cell_383_matmul_readvariableop_resource:2(@
.lstm_cell_383_matmul_1_readvariableop_resource:
(;
-lstm_cell_383_biasadd_readvariableop_resource:(
identity??$lstm_cell_383/BiasAdd/ReadVariableOp?#lstm_cell_383/MatMul/ReadVariableOp?%lstm_cell_383/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_383/MatMul/ReadVariableOpReadVariableOp,lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_383/MatMulMatMulstrided_slice_2:output:0+lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_383/MatMul_1MatMulzeros:output:0-lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_383/addAddV2lstm_cell_383/MatMul:product:0 lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_383/BiasAddBiasAddlstm_cell_383/add:z:0,lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_383/splitSplit&lstm_cell_383/split/split_dim:output:0lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_383/SigmoidSigmoidlstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_1Sigmoidlstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_383/mulMullstm_cell_383/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_383/ReluRelulstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_1Mullstm_cell_383/Sigmoid:y:0 lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_383/add_1AddV2lstm_cell_383/mul:z:0lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_2Sigmoidlstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_383/Relu_1Relulstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_2Mullstm_cell_383/Sigmoid_2:y:0"lstm_cell_383/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_383_matmul_readvariableop_resource.lstm_cell_383_matmul_1_readvariableop_resource-lstm_cell_383_biasadd_readvariableop_resource*
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
while_body_2321861*
condR
while_cond_2321860*K
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
NoOpNoOp%^lstm_cell_383/BiasAdd/ReadVariableOp$^lstm_cell_383/MatMul/ReadVariableOp&^lstm_cell_383/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_383/BiasAdd/ReadVariableOp$lstm_cell_383/BiasAdd/ReadVariableOp2J
#lstm_cell_383/MatMul/ReadVariableOp#lstm_cell_383/MatMul/ReadVariableOp2N
%lstm_cell_383/MatMul_1/ReadVariableOp%lstm_cell_383/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2320486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_381_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_381_matmul_readvariableop_resource:	?G
4while_lstm_cell_381_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_381_biasadd_readvariableop_resource:	???*while/lstm_cell_381/BiasAdd/ReadVariableOp?)while/lstm_cell_381/MatMul/ReadVariableOp?+while/lstm_cell_381/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_381/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_381/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_381/addAddV2$while/lstm_cell_381/MatMul:product:0&while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_381/BiasAddBiasAddwhile/lstm_cell_381/add:z:02while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_381/splitSplit,while/lstm_cell_381/split/split_dim:output:0$while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_381/SigmoidSigmoid"while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_1Sigmoid"while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mulMul!while/lstm_cell_381/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_381/ReluRelu"while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_1Mulwhile/lstm_cell_381/Sigmoid:y:0&while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/add_1AddV2while/lstm_cell_381/mul:z:0while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_2Sigmoid"while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_381/Relu_1Reluwhile/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_2Mul!while/lstm_cell_381/Sigmoid_2:y:0(while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_381/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_381/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_381/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_381/BiasAdd/ReadVariableOp*^while/lstm_cell_381/MatMul/ReadVariableOp,^while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_381_biasadd_readvariableop_resource5while_lstm_cell_381_biasadd_readvariableop_resource_0"n
4while_lstm_cell_381_matmul_1_readvariableop_resource6while_lstm_cell_381_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_381_matmul_readvariableop_resource4while_lstm_cell_381_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_381/BiasAdd/ReadVariableOp*while/lstm_cell_381/BiasAdd/ReadVariableOp2V
)while/lstm_cell_381/MatMul/ReadVariableOp)while/lstm_cell_381/MatMul/ReadVariableOp2Z
+while/lstm_cell_381/MatMul_1/ReadVariableOp+while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
)sequential_88_lstm_265_while_cond_2316842J
Fsequential_88_lstm_265_while_sequential_88_lstm_265_while_loop_counterP
Lsequential_88_lstm_265_while_sequential_88_lstm_265_while_maximum_iterations,
(sequential_88_lstm_265_while_placeholder.
*sequential_88_lstm_265_while_placeholder_1.
*sequential_88_lstm_265_while_placeholder_2.
*sequential_88_lstm_265_while_placeholder_3L
Hsequential_88_lstm_265_while_less_sequential_88_lstm_265_strided_slice_1c
_sequential_88_lstm_265_while_sequential_88_lstm_265_while_cond_2316842___redundant_placeholder0c
_sequential_88_lstm_265_while_sequential_88_lstm_265_while_cond_2316842___redundant_placeholder1c
_sequential_88_lstm_265_while_sequential_88_lstm_265_while_cond_2316842___redundant_placeholder2c
_sequential_88_lstm_265_while_sequential_88_lstm_265_while_cond_2316842___redundant_placeholder3)
%sequential_88_lstm_265_while_identity
?
!sequential_88/lstm_265/while/LessLess(sequential_88_lstm_265_while_placeholderHsequential_88_lstm_265_while_less_sequential_88_lstm_265_strided_slice_1*
T0*
_output_shapes
: y
%sequential_88/lstm_265/while/IdentityIdentity%sequential_88/lstm_265/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_88_lstm_265_while_identity.sequential_88/lstm_265/while/Identity:output:0*(
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317839

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
%__inference_signature_wrapper_2319332
lstm_264_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_264_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2317072o
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
_user_specified_namelstm_264_input
?
?
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319267
lstm_264_input#
lstm_264_2319240:	?#
lstm_264_2319242:	d?
lstm_264_2319244:	?#
lstm_265_2319247:	d?#
lstm_265_2319249:	2?
lstm_265_2319251:	?"
lstm_266_2319254:2("
lstm_266_2319256:
(
lstm_266_2319258:("
dense_88_2319261:

dense_88_2319263:
identity?? dense_88/StatefulPartitionedCall? lstm_264/StatefulPartitionedCall? lstm_265/StatefulPartitionedCall? lstm_266/StatefulPartitionedCall?
 lstm_264/StatefulPartitionedCallStatefulPartitionedCalllstm_264_inputlstm_264_2319240lstm_264_2319242lstm_264_2319244*
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2318271?
 lstm_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_264/StatefulPartitionedCall:output:0lstm_265_2319247lstm_265_2319249lstm_265_2319251*
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318421?
 lstm_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_265/StatefulPartitionedCall:output:0lstm_266_2319254lstm_266_2319256lstm_266_2319258*
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318571?
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)lstm_266/StatefulPartitionedCall:output:0dense_88_2319261dense_88_2319263*
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
E__inference_dense_88_layer_call_and_return_conditional_losses_2318589x
IdentityIdentity)dense_88/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_88/StatefulPartitionedCall!^lstm_264/StatefulPartitionedCall!^lstm_265/StatefulPartitionedCall!^lstm_266/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 lstm_264/StatefulPartitionedCall lstm_264/StatefulPartitionedCall2D
 lstm_265/StatefulPartitionedCall lstm_265/StatefulPartitionedCall2D
 lstm_266/StatefulPartitionedCall lstm_266/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_264_input
?
?
*__inference_lstm_266_layer_call_fn_2321483
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2317922o
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2322173

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
lstm_265_while_cond_2320010.
*lstm_265_while_lstm_265_while_loop_counter4
0lstm_265_while_lstm_265_while_maximum_iterations
lstm_265_while_placeholder 
lstm_265_while_placeholder_1 
lstm_265_while_placeholder_2 
lstm_265_while_placeholder_30
,lstm_265_while_less_lstm_265_strided_slice_1G
Clstm_265_while_lstm_265_while_cond_2320010___redundant_placeholder0G
Clstm_265_while_lstm_265_while_cond_2320010___redundant_placeholder1G
Clstm_265_while_lstm_265_while_cond_2320010___redundant_placeholder2G
Clstm_265_while_lstm_265_while_cond_2320010___redundant_placeholder3
lstm_265_while_identity
?
lstm_265/while/LessLesslstm_265_while_placeholder,lstm_265_while_less_lstm_265_strided_slice_1*
T0*
_output_shapes
: ]
lstm_265/while/IdentityIdentitylstm_265/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_265_while_identity lstm_265/while/Identity:output:0*(
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2317413

inputs(
lstm_cell_381_2317331:	?(
lstm_cell_381_2317333:	d?$
lstm_cell_381_2317335:	?
identity??%lstm_cell_381/StatefulPartitionedCall?while;
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
%lstm_cell_381/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_381_2317331lstm_cell_381_2317333lstm_cell_381_2317335*
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317285n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_381_2317331lstm_cell_381_2317333lstm_cell_381_2317335*
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
while_body_2317344*
condR
while_cond_2317343*K
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
NoOpNoOp&^lstm_cell_381/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_381/StatefulPartitionedCall%lstm_cell_381/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317285

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
while_cond_2320958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2320958___redundant_placeholder05
1while_while_cond_2320958___redundant_placeholder15
1while_while_cond_2320958___redundant_placeholder25
1while_while_cond_2320958___redundant_placeholder3
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2322271

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
E__inference_dense_88_layer_call_and_return_conditional_losses_2318589

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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318952

inputs?
,lstm_cell_382_matmul_readvariableop_resource:	d?A
.lstm_cell_382_matmul_1_readvariableop_resource:	2?<
-lstm_cell_382_biasadd_readvariableop_resource:	?
identity??$lstm_cell_382/BiasAdd/ReadVariableOp?#lstm_cell_382/MatMul/ReadVariableOp?%lstm_cell_382/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_382/MatMul/ReadVariableOpReadVariableOp,lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_382/MatMulMatMulstrided_slice_2:output:0+lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_382/MatMul_1MatMulzeros:output:0-lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_382/addAddV2lstm_cell_382/MatMul:product:0 lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_382/BiasAddBiasAddlstm_cell_382/add:z:0,lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_382/splitSplit&lstm_cell_382/split/split_dim:output:0lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_382/SigmoidSigmoidlstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_1Sigmoidlstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_382/mulMullstm_cell_382/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_382/ReluRelulstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_1Mullstm_cell_382/Sigmoid:y:0 lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_382/add_1AddV2lstm_cell_382/mul:z:0lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_2Sigmoidlstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_382/Relu_1Relulstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_2Mullstm_cell_382/Sigmoid_2:y:0"lstm_cell_382/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_382_matmul_readvariableop_resource.lstm_cell_382_matmul_1_readvariableop_resource-lstm_cell_382_biasadd_readvariableop_resource*
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
while_body_2318868*
condR
while_cond_2318867*K
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
NoOpNoOp%^lstm_cell_382/BiasAdd/ReadVariableOp$^lstm_cell_382/MatMul/ReadVariableOp&^lstm_cell_382/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_382/BiasAdd/ReadVariableOp$lstm_cell_382/BiasAdd/ReadVariableOp2J
#lstm_cell_382/MatMul/ReadVariableOp#lstm_cell_382/MatMul/ReadVariableOp2N
%lstm_cell_382/MatMul_1/ReadVariableOp%lstm_cell_382/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_2317694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_382_2317718_0:	d?0
while_lstm_cell_382_2317720_0:	2?,
while_lstm_cell_382_2317722_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_382_2317718:	d?.
while_lstm_cell_382_2317720:	2?*
while_lstm_cell_382_2317722:	???+while/lstm_cell_382/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_382/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_382_2317718_0while_lstm_cell_382_2317720_0while_lstm_cell_382_2317722_0*
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317635?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_382/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_382/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_382/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_382/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_382_2317718while_lstm_cell_382_2317718_0"<
while_lstm_cell_382_2317720while_lstm_cell_382_2317720_0"<
while_lstm_cell_382_2317722while_lstm_cell_382_2317722_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_382/StatefulPartitionedCall+while/lstm_cell_382/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2320628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2320628___redundant_placeholder05
1while_while_cond_2320628___redundant_placeholder15
1while_while_cond_2320628___redundant_placeholder25
1while_while_cond_2320628___redundant_placeholder3
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
while_body_2318337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_382_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_382_matmul_readvariableop_resource:	d?G
4while_lstm_cell_382_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_382_biasadd_readvariableop_resource:	???*while/lstm_cell_382/BiasAdd/ReadVariableOp?)while/lstm_cell_382/MatMul/ReadVariableOp?+while/lstm_cell_382/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_382/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_382/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_382/addAddV2$while/lstm_cell_382/MatMul:product:0&while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_382/BiasAddBiasAddwhile/lstm_cell_382/add:z:02while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_382/splitSplit,while/lstm_cell_382/split/split_dim:output:0$while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_382/SigmoidSigmoid"while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_1Sigmoid"while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mulMul!while/lstm_cell_382/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_382/ReluRelu"while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_1Mulwhile/lstm_cell_382/Sigmoid:y:0&while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/add_1AddV2while/lstm_cell_382/mul:z:0while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_2Sigmoid"while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_382/Relu_1Reluwhile/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_2Mul!while/lstm_cell_382/Sigmoid_2:y:0(while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_382/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_382/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_382/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_382/BiasAdd/ReadVariableOp*^while/lstm_cell_382/MatMul/ReadVariableOp,^while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_382_biasadd_readvariableop_resource5while_lstm_cell_382_biasadd_readvariableop_resource_0"n
4while_lstm_cell_382_matmul_1_readvariableop_resource6while_lstm_cell_382_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_382_matmul_readvariableop_resource4while_lstm_cell_382_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_382/BiasAdd/ReadVariableOp*while/lstm_cell_382/BiasAdd/ReadVariableOp2V
)while/lstm_cell_382/MatMul/ReadVariableOp)while/lstm_cell_382/MatMul/ReadVariableOp2Z
+while/lstm_cell_382/MatMul_1/ReadVariableOp+while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317139

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
while_cond_2321860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2321860___redundant_placeholder05
1while_while_cond_2321860___redundant_placeholder15
1while_while_cond_2321860___redundant_placeholder25
1while_while_cond_2321860___redundant_placeholder3
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
while_body_2318044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_383_2318068_0:2(/
while_lstm_cell_383_2318070_0:
(+
while_lstm_cell_383_2318072_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_383_2318068:2(-
while_lstm_cell_383_2318070:
()
while_lstm_cell_383_2318072:(??+while/lstm_cell_383/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_383/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_383_2318068_0while_lstm_cell_383_2318070_0while_lstm_cell_383_2318072_0*
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317985?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_383/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_383/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_383/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_383/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_383_2318068while_lstm_cell_383_2318068_0"<
while_lstm_cell_383_2318070while_lstm_cell_383_2318070_0"<
while_lstm_cell_383_2318072while_lstm_cell_383_2318072_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_383/StatefulPartitionedCall+while/lstm_cell_383/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321186
inputs_0?
,lstm_cell_382_matmul_readvariableop_resource:	d?A
.lstm_cell_382_matmul_1_readvariableop_resource:	2?<
-lstm_cell_382_biasadd_readvariableop_resource:	?
identity??$lstm_cell_382/BiasAdd/ReadVariableOp?#lstm_cell_382/MatMul/ReadVariableOp?%lstm_cell_382/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_382/MatMul/ReadVariableOpReadVariableOp,lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_382/MatMulMatMulstrided_slice_2:output:0+lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_382/MatMul_1MatMulzeros:output:0-lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_382/addAddV2lstm_cell_382/MatMul:product:0 lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_382/BiasAddBiasAddlstm_cell_382/add:z:0,lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_382/splitSplit&lstm_cell_382/split/split_dim:output:0lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_382/SigmoidSigmoidlstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_1Sigmoidlstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_382/mulMullstm_cell_382/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_382/ReluRelulstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_1Mullstm_cell_382/Sigmoid:y:0 lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_382/add_1AddV2lstm_cell_382/mul:z:0lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_2Sigmoidlstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_382/Relu_1Relulstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_2Mullstm_cell_382/Sigmoid_2:y:0"lstm_cell_382/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_382_matmul_readvariableop_resource.lstm_cell_382_matmul_1_readvariableop_resource-lstm_cell_382_biasadd_readvariableop_resource*
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
while_body_2321102*
condR
while_cond_2321101*K
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
NoOpNoOp%^lstm_cell_382/BiasAdd/ReadVariableOp$^lstm_cell_382/MatMul/ReadVariableOp&^lstm_cell_382/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_382/BiasAdd/ReadVariableOp$lstm_cell_382/BiasAdd/ReadVariableOp2J
#lstm_cell_382/MatMul/ReadVariableOp#lstm_cell_382/MatMul/ReadVariableOp2N
%lstm_cell_382/MatMul_1/ReadVariableOp%lstm_cell_382/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2320485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2320485___redundant_placeholder05
1while_while_cond_2320485___redundant_placeholder15
1while_while_cond_2320485___redundant_placeholder25
1while_while_cond_2320485___redundant_placeholder3
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2317922

inputs'
lstm_cell_383_2317840:2('
lstm_cell_383_2317842:
(#
lstm_cell_383_2317844:(
identity??%lstm_cell_383/StatefulPartitionedCall?while;
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
%lstm_cell_383/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_383_2317840lstm_cell_383_2317842lstm_cell_383_2317844*
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317839n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_383_2317840lstm_cell_383_2317842lstm_cell_383_2317844*
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
while_body_2317853*
condR
while_cond_2317852*K
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
NoOpNoOp&^lstm_cell_383/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_383/StatefulPartitionedCall%lstm_cell_383/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317985

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
*__inference_lstm_266_layer_call_fn_2321494
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318113o
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
while_cond_2321574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2321574___redundant_placeholder05
1while_while_cond_2321574___redundant_placeholder15
1while_while_cond_2321574___redundant_placeholder25
1while_while_cond_2321574___redundant_placeholder3
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
/__inference_lstm_cell_382_layer_call_fn_2322222

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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317489o
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
/__inference_sequential_88_layer_call_fn_2319237
lstm_264_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_264_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319185o
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
_user_specified_namelstm_264_input
?J
?
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320713

inputs?
,lstm_cell_381_matmul_readvariableop_resource:	?A
.lstm_cell_381_matmul_1_readvariableop_resource:	d?<
-lstm_cell_381_biasadd_readvariableop_resource:	?
identity??$lstm_cell_381/BiasAdd/ReadVariableOp?#lstm_cell_381/MatMul/ReadVariableOp?%lstm_cell_381/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_381/MatMul/ReadVariableOpReadVariableOp,lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_381/MatMulMatMulstrided_slice_2:output:0+lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_381/MatMul_1MatMulzeros:output:0-lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_381/addAddV2lstm_cell_381/MatMul:product:0 lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_381/BiasAddBiasAddlstm_cell_381/add:z:0,lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_381/splitSplit&lstm_cell_381/split/split_dim:output:0lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_381/SigmoidSigmoidlstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_1Sigmoidlstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_381/mulMullstm_cell_381/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_381/ReluRelulstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_1Mullstm_cell_381/Sigmoid:y:0 lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_381/add_1AddV2lstm_cell_381/mul:z:0lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_2Sigmoidlstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_381/Relu_1Relulstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_2Mullstm_cell_381/Sigmoid_2:y:0"lstm_cell_381/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_381_matmul_readvariableop_resource.lstm_cell_381_matmul_1_readvariableop_resource-lstm_cell_381_biasadd_readvariableop_resource*
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
while_body_2320629*
condR
while_cond_2320628*K
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
NoOpNoOp%^lstm_cell_381/BiasAdd/ReadVariableOp$^lstm_cell_381/MatMul/ReadVariableOp&^lstm_cell_381/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_381/BiasAdd/ReadVariableOp$lstm_cell_381/BiasAdd/ReadVariableOp2J
#lstm_cell_381/MatMul/ReadVariableOp#lstm_cell_381/MatMul/ReadVariableOp2N
%lstm_cell_381/MatMul_1/ReadVariableOp%lstm_cell_381/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2318186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2318186___redundant_placeholder05
1while_while_cond_2318186___redundant_placeholder15
1while_while_cond_2318186___redundant_placeholder25
1while_while_cond_2318186___redundant_placeholder3
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
while_body_2320343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_381_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_381_matmul_readvariableop_resource:	?G
4while_lstm_cell_381_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_381_biasadd_readvariableop_resource:	???*while/lstm_cell_381/BiasAdd/ReadVariableOp?)while/lstm_cell_381/MatMul/ReadVariableOp?+while/lstm_cell_381/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_381/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_381/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_381/addAddV2$while/lstm_cell_381/MatMul:product:0&while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_381/BiasAddBiasAddwhile/lstm_cell_381/add:z:02while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_381/splitSplit,while/lstm_cell_381/split/split_dim:output:0$while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_381/SigmoidSigmoid"while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_1Sigmoid"while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mulMul!while/lstm_cell_381/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_381/ReluRelu"while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_1Mulwhile/lstm_cell_381/Sigmoid:y:0&while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/add_1AddV2while/lstm_cell_381/mul:z:0while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_2Sigmoid"while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_381/Relu_1Reluwhile/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_2Mul!while/lstm_cell_381/Sigmoid_2:y:0(while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_381/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_381/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_381/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_381/BiasAdd/ReadVariableOp*^while/lstm_cell_381/MatMul/ReadVariableOp,^while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_381_biasadd_readvariableop_resource5while_lstm_cell_381_biasadd_readvariableop_resource_0"n
4while_lstm_cell_381_matmul_1_readvariableop_resource6while_lstm_cell_381_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_381_matmul_readvariableop_resource4while_lstm_cell_381_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_381/BiasAdd/ReadVariableOp*while/lstm_cell_381/BiasAdd/ReadVariableOp2V
)while/lstm_cell_381/MatMul/ReadVariableOp)while/lstm_cell_381/MatMul/ReadVariableOp2Z
+while/lstm_cell_381/MatMul_1/ReadVariableOp+while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318113

inputs'
lstm_cell_383_2318031:2('
lstm_cell_383_2318033:
(#
lstm_cell_383_2318035:(
identity??%lstm_cell_383/StatefulPartitionedCall?while;
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
%lstm_cell_383/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_383_2318031lstm_cell_383_2318033lstm_cell_383_2318035*
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317985n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_383_2318031lstm_cell_383_2318033lstm_cell_383_2318035*
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
while_body_2318044*
condR
while_cond_2318043*K
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
NoOpNoOp&^lstm_cell_383/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_383/StatefulPartitionedCall%lstm_cell_383/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_2322004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_383_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_383_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_383_matmul_readvariableop_resource:2(F
4while_lstm_cell_383_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_383_biasadd_readvariableop_resource:(??*while/lstm_cell_383/BiasAdd/ReadVariableOp?)while/lstm_cell_383/MatMul/ReadVariableOp?+while/lstm_cell_383/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_383/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_383/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_383/addAddV2$while/lstm_cell_383/MatMul:product:0&while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_383/BiasAddBiasAddwhile/lstm_cell_383/add:z:02while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_383/splitSplit,while/lstm_cell_383/split/split_dim:output:0$while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_383/SigmoidSigmoid"while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_1Sigmoid"while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mulMul!while/lstm_cell_383/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_383/ReluRelu"while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_1Mulwhile/lstm_cell_383/Sigmoid:y:0&while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/add_1AddV2while/lstm_cell_383/mul:z:0while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_2Sigmoid"while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_383/Relu_1Reluwhile/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_2Mul!while/lstm_cell_383/Sigmoid_2:y:0(while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_383/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_383/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_383/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_383/BiasAdd/ReadVariableOp*^while/lstm_cell_383/MatMul/ReadVariableOp,^while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_383_biasadd_readvariableop_resource5while_lstm_cell_383_biasadd_readvariableop_resource_0"n
4while_lstm_cell_383_matmul_1_readvariableop_resource6while_lstm_cell_383_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_383_matmul_readvariableop_resource4while_lstm_cell_383_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_383/BiasAdd/ReadVariableOp*while/lstm_cell_383/BiasAdd/ReadVariableOp2V
)while/lstm_cell_383/MatMul/ReadVariableOp)while/lstm_cell_383/MatMul/ReadVariableOp2Z
+while/lstm_cell_383/MatMul_1/ReadVariableOp+while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2317502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2317502___redundant_placeholder05
1while_while_cond_2317502___redundant_placeholder15
1while_while_cond_2317502___redundant_placeholder25
1while_while_cond_2317502___redundant_placeholder3
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
/__inference_lstm_cell_381_layer_call_fn_2322141

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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317285o
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2322303

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

lstm_266_while_body_2320150.
*lstm_266_while_lstm_266_while_loop_counter4
0lstm_266_while_lstm_266_while_maximum_iterations
lstm_266_while_placeholder 
lstm_266_while_placeholder_1 
lstm_266_while_placeholder_2 
lstm_266_while_placeholder_3-
)lstm_266_while_lstm_266_strided_slice_1_0i
elstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0:2(Q
?lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(L
>lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0:(
lstm_266_while_identity
lstm_266_while_identity_1
lstm_266_while_identity_2
lstm_266_while_identity_3
lstm_266_while_identity_4
lstm_266_while_identity_5+
'lstm_266_while_lstm_266_strided_slice_1g
clstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensorM
;lstm_266_while_lstm_cell_383_matmul_readvariableop_resource:2(O
=lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource:
(J
<lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource:(??3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp?2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp?4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp?
@lstm_266/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_266/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensor_0lstm_266_while_placeholderIlstm_266/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp=lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_266/while/lstm_cell_383/MatMulMatMul9lstm_266/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp?lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_266/while/lstm_cell_383/MatMul_1MatMullstm_266_while_placeholder_2<lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_266/while/lstm_cell_383/addAddV2-lstm_266/while/lstm_cell_383/MatMul:product:0/lstm_266/while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp>lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_266/while/lstm_cell_383/BiasAddBiasAdd$lstm_266/while/lstm_cell_383/add:z:0;lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_266/while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_266/while/lstm_cell_383/splitSplit5lstm_266/while/lstm_cell_383/split/split_dim:output:0-lstm_266/while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_266/while/lstm_cell_383/SigmoidSigmoid+lstm_266/while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_266/while/lstm_cell_383/Sigmoid_1Sigmoid+lstm_266/while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_266/while/lstm_cell_383/mulMul*lstm_266/while/lstm_cell_383/Sigmoid_1:y:0lstm_266_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_266/while/lstm_cell_383/ReluRelu+lstm_266/while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_266/while/lstm_cell_383/mul_1Mul(lstm_266/while/lstm_cell_383/Sigmoid:y:0/lstm_266/while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_266/while/lstm_cell_383/add_1AddV2$lstm_266/while/lstm_cell_383/mul:z:0&lstm_266/while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_266/while/lstm_cell_383/Sigmoid_2Sigmoid+lstm_266/while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_266/while/lstm_cell_383/Relu_1Relu&lstm_266/while/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_266/while/lstm_cell_383/mul_2Mul*lstm_266/while/lstm_cell_383/Sigmoid_2:y:01lstm_266/while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_266/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_266_while_placeholder_1lstm_266_while_placeholder&lstm_266/while/lstm_cell_383/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_266/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_266/while/addAddV2lstm_266_while_placeholderlstm_266/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_266/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_266/while/add_1AddV2*lstm_266_while_lstm_266_while_loop_counterlstm_266/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_266/while/IdentityIdentitylstm_266/while/add_1:z:0^lstm_266/while/NoOp*
T0*
_output_shapes
: ?
lstm_266/while/Identity_1Identity0lstm_266_while_lstm_266_while_maximum_iterations^lstm_266/while/NoOp*
T0*
_output_shapes
: t
lstm_266/while/Identity_2Identitylstm_266/while/add:z:0^lstm_266/while/NoOp*
T0*
_output_shapes
: ?
lstm_266/while/Identity_3IdentityClstm_266/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_266/while/NoOp*
T0*
_output_shapes
: ?
lstm_266/while/Identity_4Identity&lstm_266/while/lstm_cell_383/mul_2:z:0^lstm_266/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_266/while/Identity_5Identity&lstm_266/while/lstm_cell_383/add_1:z:0^lstm_266/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_266/while/NoOpNoOp4^lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp3^lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp5^lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_266_while_identity lstm_266/while/Identity:output:0"?
lstm_266_while_identity_1"lstm_266/while/Identity_1:output:0"?
lstm_266_while_identity_2"lstm_266/while/Identity_2:output:0"?
lstm_266_while_identity_3"lstm_266/while/Identity_3:output:0"?
lstm_266_while_identity_4"lstm_266/while/Identity_4:output:0"?
lstm_266_while_identity_5"lstm_266/while/Identity_5:output:0"T
'lstm_266_while_lstm_266_strided_slice_1)lstm_266_while_lstm_266_strided_slice_1_0"~
<lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource>lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0"?
=lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource?lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0"|
;lstm_266_while_lstm_cell_383_matmul_readvariableop_resource=lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0"?
clstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensorelstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp2h
2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp2l
4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2317763

inputs(
lstm_cell_382_2317681:	d?(
lstm_cell_382_2317683:	2?$
lstm_cell_382_2317685:	?
identity??%lstm_cell_382/StatefulPartitionedCall?while;
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
%lstm_cell_382/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_382_2317681lstm_cell_382_2317683lstm_cell_382_2317685*
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317635n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_382_2317681lstm_cell_382_2317683lstm_cell_382_2317685*
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
while_body_2317694*
condR
while_cond_2317693*K
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
NoOpNoOp&^lstm_cell_382/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_382/StatefulPartitionedCall%lstm_cell_382/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_2317072
lstm_264_inputV
Csequential_88_lstm_264_lstm_cell_381_matmul_readvariableop_resource:	?X
Esequential_88_lstm_264_lstm_cell_381_matmul_1_readvariableop_resource:	d?S
Dsequential_88_lstm_264_lstm_cell_381_biasadd_readvariableop_resource:	?V
Csequential_88_lstm_265_lstm_cell_382_matmul_readvariableop_resource:	d?X
Esequential_88_lstm_265_lstm_cell_382_matmul_1_readvariableop_resource:	2?S
Dsequential_88_lstm_265_lstm_cell_382_biasadd_readvariableop_resource:	?U
Csequential_88_lstm_266_lstm_cell_383_matmul_readvariableop_resource:2(W
Esequential_88_lstm_266_lstm_cell_383_matmul_1_readvariableop_resource:
(R
Dsequential_88_lstm_266_lstm_cell_383_biasadd_readvariableop_resource:(G
5sequential_88_dense_88_matmul_readvariableop_resource:
D
6sequential_88_dense_88_biasadd_readvariableop_resource:
identity??-sequential_88/dense_88/BiasAdd/ReadVariableOp?,sequential_88/dense_88/MatMul/ReadVariableOp?;sequential_88/lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp?:sequential_88/lstm_264/lstm_cell_381/MatMul/ReadVariableOp?<sequential_88/lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp?sequential_88/lstm_264/while?;sequential_88/lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp?:sequential_88/lstm_265/lstm_cell_382/MatMul/ReadVariableOp?<sequential_88/lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp?sequential_88/lstm_265/while?;sequential_88/lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp?:sequential_88/lstm_266/lstm_cell_383/MatMul/ReadVariableOp?<sequential_88/lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp?sequential_88/lstm_266/whileZ
sequential_88/lstm_264/ShapeShapelstm_264_input*
T0*
_output_shapes
:t
*sequential_88/lstm_264/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_88/lstm_264/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_88/lstm_264/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_88/lstm_264/strided_sliceStridedSlice%sequential_88/lstm_264/Shape:output:03sequential_88/lstm_264/strided_slice/stack:output:05sequential_88/lstm_264/strided_slice/stack_1:output:05sequential_88/lstm_264/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_88/lstm_264/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_88/lstm_264/zeros/packedPack-sequential_88/lstm_264/strided_slice:output:0.sequential_88/lstm_264/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_88/lstm_264/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_88/lstm_264/zerosFill,sequential_88/lstm_264/zeros/packed:output:0+sequential_88/lstm_264/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_88/lstm_264/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_88/lstm_264/zeros_1/packedPack-sequential_88/lstm_264/strided_slice:output:00sequential_88/lstm_264/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_88/lstm_264/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_88/lstm_264/zeros_1Fill.sequential_88/lstm_264/zeros_1/packed:output:0-sequential_88/lstm_264/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_88/lstm_264/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_88/lstm_264/transpose	Transposelstm_264_input.sequential_88/lstm_264/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_88/lstm_264/Shape_1Shape$sequential_88/lstm_264/transpose:y:0*
T0*
_output_shapes
:v
,sequential_88/lstm_264/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_264/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_88/lstm_264/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_264/strided_slice_1StridedSlice'sequential_88/lstm_264/Shape_1:output:05sequential_88/lstm_264/strided_slice_1/stack:output:07sequential_88/lstm_264/strided_slice_1/stack_1:output:07sequential_88/lstm_264/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_88/lstm_264/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_88/lstm_264/TensorArrayV2TensorListReserve;sequential_88/lstm_264/TensorArrayV2/element_shape:output:0/sequential_88/lstm_264/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_88/lstm_264/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_88/lstm_264/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_88/lstm_264/transpose:y:0Usequential_88/lstm_264/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_88/lstm_264/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_264/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_88/lstm_264/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_264/strided_slice_2StridedSlice$sequential_88/lstm_264/transpose:y:05sequential_88/lstm_264/strided_slice_2/stack:output:07sequential_88/lstm_264/strided_slice_2/stack_1:output:07sequential_88/lstm_264/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_88/lstm_264/lstm_cell_381/MatMul/ReadVariableOpReadVariableOpCsequential_88_lstm_264_lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_88/lstm_264/lstm_cell_381/MatMulMatMul/sequential_88/lstm_264/strided_slice_2:output:0Bsequential_88/lstm_264/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_88/lstm_264/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOpEsequential_88_lstm_264_lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_88/lstm_264/lstm_cell_381/MatMul_1MatMul%sequential_88/lstm_264/zeros:output:0Dsequential_88/lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_88/lstm_264/lstm_cell_381/addAddV25sequential_88/lstm_264/lstm_cell_381/MatMul:product:07sequential_88/lstm_264/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_88/lstm_264/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOpDsequential_88_lstm_264_lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_88/lstm_264/lstm_cell_381/BiasAddBiasAdd,sequential_88/lstm_264/lstm_cell_381/add:z:0Csequential_88/lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_88/lstm_264/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_88/lstm_264/lstm_cell_381/splitSplit=sequential_88/lstm_264/lstm_cell_381/split/split_dim:output:05sequential_88/lstm_264/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_88/lstm_264/lstm_cell_381/SigmoidSigmoid3sequential_88/lstm_264/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_88/lstm_264/lstm_cell_381/Sigmoid_1Sigmoid3sequential_88/lstm_264/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_88/lstm_264/lstm_cell_381/mulMul2sequential_88/lstm_264/lstm_cell_381/Sigmoid_1:y:0'sequential_88/lstm_264/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_88/lstm_264/lstm_cell_381/ReluRelu3sequential_88/lstm_264/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_88/lstm_264/lstm_cell_381/mul_1Mul0sequential_88/lstm_264/lstm_cell_381/Sigmoid:y:07sequential_88/lstm_264/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_88/lstm_264/lstm_cell_381/add_1AddV2,sequential_88/lstm_264/lstm_cell_381/mul:z:0.sequential_88/lstm_264/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_88/lstm_264/lstm_cell_381/Sigmoid_2Sigmoid3sequential_88/lstm_264/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_88/lstm_264/lstm_cell_381/Relu_1Relu.sequential_88/lstm_264/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_88/lstm_264/lstm_cell_381/mul_2Mul2sequential_88/lstm_264/lstm_cell_381/Sigmoid_2:y:09sequential_88/lstm_264/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_88/lstm_264/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_88/lstm_264/TensorArrayV2_1TensorListReserve=sequential_88/lstm_264/TensorArrayV2_1/element_shape:output:0/sequential_88/lstm_264/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_88/lstm_264/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_88/lstm_264/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_88/lstm_264/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_88/lstm_264/whileWhile2sequential_88/lstm_264/while/loop_counter:output:08sequential_88/lstm_264/while/maximum_iterations:output:0$sequential_88/lstm_264/time:output:0/sequential_88/lstm_264/TensorArrayV2_1:handle:0%sequential_88/lstm_264/zeros:output:0'sequential_88/lstm_264/zeros_1:output:0/sequential_88/lstm_264/strided_slice_1:output:0Nsequential_88/lstm_264/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_88_lstm_264_lstm_cell_381_matmul_readvariableop_resourceEsequential_88_lstm_264_lstm_cell_381_matmul_1_readvariableop_resourceDsequential_88_lstm_264_lstm_cell_381_biasadd_readvariableop_resource*
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
)sequential_88_lstm_264_while_body_2316704*5
cond-R+
)sequential_88_lstm_264_while_cond_2316703*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_88/lstm_264/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_88/lstm_264/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_88/lstm_264/while:output:3Psequential_88/lstm_264/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_88/lstm_264/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_88/lstm_264/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_264/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_264/strided_slice_3StridedSliceBsequential_88/lstm_264/TensorArrayV2Stack/TensorListStack:tensor:05sequential_88/lstm_264/strided_slice_3/stack:output:07sequential_88/lstm_264/strided_slice_3/stack_1:output:07sequential_88/lstm_264/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_88/lstm_264/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_88/lstm_264/transpose_1	TransposeBsequential_88/lstm_264/TensorArrayV2Stack/TensorListStack:tensor:00sequential_88/lstm_264/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_88/lstm_264/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_88/lstm_265/ShapeShape&sequential_88/lstm_264/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_88/lstm_265/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_88/lstm_265/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_88/lstm_265/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_88/lstm_265/strided_sliceStridedSlice%sequential_88/lstm_265/Shape:output:03sequential_88/lstm_265/strided_slice/stack:output:05sequential_88/lstm_265/strided_slice/stack_1:output:05sequential_88/lstm_265/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_88/lstm_265/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_88/lstm_265/zeros/packedPack-sequential_88/lstm_265/strided_slice:output:0.sequential_88/lstm_265/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_88/lstm_265/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_88/lstm_265/zerosFill,sequential_88/lstm_265/zeros/packed:output:0+sequential_88/lstm_265/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_88/lstm_265/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_88/lstm_265/zeros_1/packedPack-sequential_88/lstm_265/strided_slice:output:00sequential_88/lstm_265/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_88/lstm_265/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_88/lstm_265/zeros_1Fill.sequential_88/lstm_265/zeros_1/packed:output:0-sequential_88/lstm_265/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_88/lstm_265/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_88/lstm_265/transpose	Transpose&sequential_88/lstm_264/transpose_1:y:0.sequential_88/lstm_265/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_88/lstm_265/Shape_1Shape$sequential_88/lstm_265/transpose:y:0*
T0*
_output_shapes
:v
,sequential_88/lstm_265/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_265/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_88/lstm_265/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_265/strided_slice_1StridedSlice'sequential_88/lstm_265/Shape_1:output:05sequential_88/lstm_265/strided_slice_1/stack:output:07sequential_88/lstm_265/strided_slice_1/stack_1:output:07sequential_88/lstm_265/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_88/lstm_265/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_88/lstm_265/TensorArrayV2TensorListReserve;sequential_88/lstm_265/TensorArrayV2/element_shape:output:0/sequential_88/lstm_265/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_88/lstm_265/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_88/lstm_265/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_88/lstm_265/transpose:y:0Usequential_88/lstm_265/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_88/lstm_265/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_265/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_88/lstm_265/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_265/strided_slice_2StridedSlice$sequential_88/lstm_265/transpose:y:05sequential_88/lstm_265/strided_slice_2/stack:output:07sequential_88/lstm_265/strided_slice_2/stack_1:output:07sequential_88/lstm_265/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_88/lstm_265/lstm_cell_382/MatMul/ReadVariableOpReadVariableOpCsequential_88_lstm_265_lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_88/lstm_265/lstm_cell_382/MatMulMatMul/sequential_88/lstm_265/strided_slice_2:output:0Bsequential_88/lstm_265/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_88/lstm_265/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOpEsequential_88_lstm_265_lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_88/lstm_265/lstm_cell_382/MatMul_1MatMul%sequential_88/lstm_265/zeros:output:0Dsequential_88/lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_88/lstm_265/lstm_cell_382/addAddV25sequential_88/lstm_265/lstm_cell_382/MatMul:product:07sequential_88/lstm_265/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_88/lstm_265/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOpDsequential_88_lstm_265_lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_88/lstm_265/lstm_cell_382/BiasAddBiasAdd,sequential_88/lstm_265/lstm_cell_382/add:z:0Csequential_88/lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_88/lstm_265/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_88/lstm_265/lstm_cell_382/splitSplit=sequential_88/lstm_265/lstm_cell_382/split/split_dim:output:05sequential_88/lstm_265/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_88/lstm_265/lstm_cell_382/SigmoidSigmoid3sequential_88/lstm_265/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_88/lstm_265/lstm_cell_382/Sigmoid_1Sigmoid3sequential_88/lstm_265/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_88/lstm_265/lstm_cell_382/mulMul2sequential_88/lstm_265/lstm_cell_382/Sigmoid_1:y:0'sequential_88/lstm_265/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_88/lstm_265/lstm_cell_382/ReluRelu3sequential_88/lstm_265/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_88/lstm_265/lstm_cell_382/mul_1Mul0sequential_88/lstm_265/lstm_cell_382/Sigmoid:y:07sequential_88/lstm_265/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_88/lstm_265/lstm_cell_382/add_1AddV2,sequential_88/lstm_265/lstm_cell_382/mul:z:0.sequential_88/lstm_265/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_88/lstm_265/lstm_cell_382/Sigmoid_2Sigmoid3sequential_88/lstm_265/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_88/lstm_265/lstm_cell_382/Relu_1Relu.sequential_88/lstm_265/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_88/lstm_265/lstm_cell_382/mul_2Mul2sequential_88/lstm_265/lstm_cell_382/Sigmoid_2:y:09sequential_88/lstm_265/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_88/lstm_265/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_88/lstm_265/TensorArrayV2_1TensorListReserve=sequential_88/lstm_265/TensorArrayV2_1/element_shape:output:0/sequential_88/lstm_265/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_88/lstm_265/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_88/lstm_265/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_88/lstm_265/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_88/lstm_265/whileWhile2sequential_88/lstm_265/while/loop_counter:output:08sequential_88/lstm_265/while/maximum_iterations:output:0$sequential_88/lstm_265/time:output:0/sequential_88/lstm_265/TensorArrayV2_1:handle:0%sequential_88/lstm_265/zeros:output:0'sequential_88/lstm_265/zeros_1:output:0/sequential_88/lstm_265/strided_slice_1:output:0Nsequential_88/lstm_265/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_88_lstm_265_lstm_cell_382_matmul_readvariableop_resourceEsequential_88_lstm_265_lstm_cell_382_matmul_1_readvariableop_resourceDsequential_88_lstm_265_lstm_cell_382_biasadd_readvariableop_resource*
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
)sequential_88_lstm_265_while_body_2316843*5
cond-R+
)sequential_88_lstm_265_while_cond_2316842*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_88/lstm_265/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_88/lstm_265/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_88/lstm_265/while:output:3Psequential_88/lstm_265/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_88/lstm_265/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_88/lstm_265/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_265/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_265/strided_slice_3StridedSliceBsequential_88/lstm_265/TensorArrayV2Stack/TensorListStack:tensor:05sequential_88/lstm_265/strided_slice_3/stack:output:07sequential_88/lstm_265/strided_slice_3/stack_1:output:07sequential_88/lstm_265/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_88/lstm_265/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_88/lstm_265/transpose_1	TransposeBsequential_88/lstm_265/TensorArrayV2Stack/TensorListStack:tensor:00sequential_88/lstm_265/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_88/lstm_265/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_88/lstm_266/ShapeShape&sequential_88/lstm_265/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_88/lstm_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_88/lstm_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_88/lstm_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_88/lstm_266/strided_sliceStridedSlice%sequential_88/lstm_266/Shape:output:03sequential_88/lstm_266/strided_slice/stack:output:05sequential_88/lstm_266/strided_slice/stack_1:output:05sequential_88/lstm_266/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_88/lstm_266/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_88/lstm_266/zeros/packedPack-sequential_88/lstm_266/strided_slice:output:0.sequential_88/lstm_266/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_88/lstm_266/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_88/lstm_266/zerosFill,sequential_88/lstm_266/zeros/packed:output:0+sequential_88/lstm_266/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_88/lstm_266/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_88/lstm_266/zeros_1/packedPack-sequential_88/lstm_266/strided_slice:output:00sequential_88/lstm_266/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_88/lstm_266/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_88/lstm_266/zeros_1Fill.sequential_88/lstm_266/zeros_1/packed:output:0-sequential_88/lstm_266/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_88/lstm_266/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_88/lstm_266/transpose	Transpose&sequential_88/lstm_265/transpose_1:y:0.sequential_88/lstm_266/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_88/lstm_266/Shape_1Shape$sequential_88/lstm_266/transpose:y:0*
T0*
_output_shapes
:v
,sequential_88/lstm_266/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_266/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_88/lstm_266/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_266/strided_slice_1StridedSlice'sequential_88/lstm_266/Shape_1:output:05sequential_88/lstm_266/strided_slice_1/stack:output:07sequential_88/lstm_266/strided_slice_1/stack_1:output:07sequential_88/lstm_266/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_88/lstm_266/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_88/lstm_266/TensorArrayV2TensorListReserve;sequential_88/lstm_266/TensorArrayV2/element_shape:output:0/sequential_88/lstm_266/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_88/lstm_266/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_88/lstm_266/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_88/lstm_266/transpose:y:0Usequential_88/lstm_266/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_88/lstm_266/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_266/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_88/lstm_266/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_266/strided_slice_2StridedSlice$sequential_88/lstm_266/transpose:y:05sequential_88/lstm_266/strided_slice_2/stack:output:07sequential_88/lstm_266/strided_slice_2/stack_1:output:07sequential_88/lstm_266/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_88/lstm_266/lstm_cell_383/MatMul/ReadVariableOpReadVariableOpCsequential_88_lstm_266_lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_88/lstm_266/lstm_cell_383/MatMulMatMul/sequential_88/lstm_266/strided_slice_2:output:0Bsequential_88/lstm_266/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_88/lstm_266/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOpEsequential_88_lstm_266_lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_88/lstm_266/lstm_cell_383/MatMul_1MatMul%sequential_88/lstm_266/zeros:output:0Dsequential_88/lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_88/lstm_266/lstm_cell_383/addAddV25sequential_88/lstm_266/lstm_cell_383/MatMul:product:07sequential_88/lstm_266/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_88/lstm_266/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOpDsequential_88_lstm_266_lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_88/lstm_266/lstm_cell_383/BiasAddBiasAdd,sequential_88/lstm_266/lstm_cell_383/add:z:0Csequential_88/lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_88/lstm_266/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_88/lstm_266/lstm_cell_383/splitSplit=sequential_88/lstm_266/lstm_cell_383/split/split_dim:output:05sequential_88/lstm_266/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_88/lstm_266/lstm_cell_383/SigmoidSigmoid3sequential_88/lstm_266/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_88/lstm_266/lstm_cell_383/Sigmoid_1Sigmoid3sequential_88/lstm_266/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_88/lstm_266/lstm_cell_383/mulMul2sequential_88/lstm_266/lstm_cell_383/Sigmoid_1:y:0'sequential_88/lstm_266/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_88/lstm_266/lstm_cell_383/ReluRelu3sequential_88/lstm_266/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_88/lstm_266/lstm_cell_383/mul_1Mul0sequential_88/lstm_266/lstm_cell_383/Sigmoid:y:07sequential_88/lstm_266/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_88/lstm_266/lstm_cell_383/add_1AddV2,sequential_88/lstm_266/lstm_cell_383/mul:z:0.sequential_88/lstm_266/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_88/lstm_266/lstm_cell_383/Sigmoid_2Sigmoid3sequential_88/lstm_266/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_88/lstm_266/lstm_cell_383/Relu_1Relu.sequential_88/lstm_266/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_88/lstm_266/lstm_cell_383/mul_2Mul2sequential_88/lstm_266/lstm_cell_383/Sigmoid_2:y:09sequential_88/lstm_266/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_88/lstm_266/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_88/lstm_266/TensorArrayV2_1TensorListReserve=sequential_88/lstm_266/TensorArrayV2_1/element_shape:output:0/sequential_88/lstm_266/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_88/lstm_266/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_88/lstm_266/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_88/lstm_266/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_88/lstm_266/whileWhile2sequential_88/lstm_266/while/loop_counter:output:08sequential_88/lstm_266/while/maximum_iterations:output:0$sequential_88/lstm_266/time:output:0/sequential_88/lstm_266/TensorArrayV2_1:handle:0%sequential_88/lstm_266/zeros:output:0'sequential_88/lstm_266/zeros_1:output:0/sequential_88/lstm_266/strided_slice_1:output:0Nsequential_88/lstm_266/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_88_lstm_266_lstm_cell_383_matmul_readvariableop_resourceEsequential_88_lstm_266_lstm_cell_383_matmul_1_readvariableop_resourceDsequential_88_lstm_266_lstm_cell_383_biasadd_readvariableop_resource*
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
)sequential_88_lstm_266_while_body_2316982*5
cond-R+
)sequential_88_lstm_266_while_cond_2316981*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_88/lstm_266/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_88/lstm_266/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_88/lstm_266/while:output:3Psequential_88/lstm_266/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_88/lstm_266/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_88/lstm_266/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_88/lstm_266/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_88/lstm_266/strided_slice_3StridedSliceBsequential_88/lstm_266/TensorArrayV2Stack/TensorListStack:tensor:05sequential_88/lstm_266/strided_slice_3/stack:output:07sequential_88/lstm_266/strided_slice_3/stack_1:output:07sequential_88/lstm_266/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_88/lstm_266/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_88/lstm_266/transpose_1	TransposeBsequential_88/lstm_266/TensorArrayV2Stack/TensorListStack:tensor:00sequential_88/lstm_266/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_88/lstm_266/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_88/dense_88/MatMul/ReadVariableOpReadVariableOp5sequential_88_dense_88_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_88/dense_88/MatMulMatMul/sequential_88/lstm_266/strided_slice_3:output:04sequential_88/dense_88/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_88/dense_88/BiasAdd/ReadVariableOpReadVariableOp6sequential_88_dense_88_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_88/dense_88/BiasAddBiasAdd'sequential_88/dense_88/MatMul:product:05sequential_88/dense_88/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_88/dense_88/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_88/dense_88/BiasAdd/ReadVariableOp-^sequential_88/dense_88/MatMul/ReadVariableOp<^sequential_88/lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp;^sequential_88/lstm_264/lstm_cell_381/MatMul/ReadVariableOp=^sequential_88/lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp^sequential_88/lstm_264/while<^sequential_88/lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp;^sequential_88/lstm_265/lstm_cell_382/MatMul/ReadVariableOp=^sequential_88/lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp^sequential_88/lstm_265/while<^sequential_88/lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp;^sequential_88/lstm_266/lstm_cell_383/MatMul/ReadVariableOp=^sequential_88/lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp^sequential_88/lstm_266/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_88/dense_88/BiasAdd/ReadVariableOp-sequential_88/dense_88/BiasAdd/ReadVariableOp2\
,sequential_88/dense_88/MatMul/ReadVariableOp,sequential_88/dense_88/MatMul/ReadVariableOp2z
;sequential_88/lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp;sequential_88/lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp2x
:sequential_88/lstm_264/lstm_cell_381/MatMul/ReadVariableOp:sequential_88/lstm_264/lstm_cell_381/MatMul/ReadVariableOp2|
<sequential_88/lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp<sequential_88/lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp2<
sequential_88/lstm_264/whilesequential_88/lstm_264/while2z
;sequential_88/lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp;sequential_88/lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp2x
:sequential_88/lstm_265/lstm_cell_382/MatMul/ReadVariableOp:sequential_88/lstm_265/lstm_cell_382/MatMul/ReadVariableOp2|
<sequential_88/lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp<sequential_88/lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp2<
sequential_88/lstm_265/whilesequential_88/lstm_265/while2z
;sequential_88/lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp;sequential_88/lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp2x
:sequential_88/lstm_266/lstm_cell_383/MatMul/ReadVariableOp:sequential_88/lstm_266/lstm_cell_383/MatMul/ReadVariableOp2|
<sequential_88/lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp<sequential_88/lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp2<
sequential_88/lstm_266/whilesequential_88/lstm_266/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_264_input
?
?
*__inference_lstm_264_layer_call_fn_2320284

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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2319117s
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
while_body_2318487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_383_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_383_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_383_matmul_readvariableop_resource:2(F
4while_lstm_cell_383_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_383_biasadd_readvariableop_resource:(??*while/lstm_cell_383/BiasAdd/ReadVariableOp?)while/lstm_cell_383/MatMul/ReadVariableOp?+while/lstm_cell_383/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_383/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_383/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_383/addAddV2$while/lstm_cell_383/MatMul:product:0&while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_383/BiasAddBiasAddwhile/lstm_cell_383/add:z:02while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_383/splitSplit,while/lstm_cell_383/split/split_dim:output:0$while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_383/SigmoidSigmoid"while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_1Sigmoid"while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mulMul!while/lstm_cell_383/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_383/ReluRelu"while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_1Mulwhile/lstm_cell_383/Sigmoid:y:0&while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/add_1AddV2while/lstm_cell_383/mul:z:0while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_2Sigmoid"while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_383/Relu_1Reluwhile/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_2Mul!while/lstm_cell_383/Sigmoid_2:y:0(while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_383/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_383/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_383/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_383/BiasAdd/ReadVariableOp*^while/lstm_cell_383/MatMul/ReadVariableOp,^while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_383_biasadd_readvariableop_resource5while_lstm_cell_383_biasadd_readvariableop_resource_0"n
4while_lstm_cell_383_matmul_1_readvariableop_resource6while_lstm_cell_383_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_383_matmul_readvariableop_resource4while_lstm_cell_383_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_383/BiasAdd/ReadVariableOp*while/lstm_cell_383/BiasAdd/ReadVariableOp2V
)while/lstm_cell_383/MatMul/ReadVariableOp)while/lstm_cell_383/MatMul/ReadVariableOp2Z
+while/lstm_cell_383/MatMul_1/ReadVariableOp+while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_265_layer_call_fn_2320889

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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318421s
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
while_body_2317853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_383_2317877_0:2(/
while_lstm_cell_383_2317879_0:
(+
while_lstm_cell_383_2317881_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_383_2317877:2(-
while_lstm_cell_383_2317879:
()
while_lstm_cell_383_2317881:(??+while/lstm_cell_383/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_383/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_383_2317877_0while_lstm_cell_383_2317879_0while_lstm_cell_383_2317881_0*
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317839?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_383/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_383/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_383/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_383/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_383_2317877while_lstm_cell_383_2317877_0"<
while_lstm_cell_383_2317879while_lstm_cell_383_2317879_0"<
while_lstm_cell_383_2317881while_lstm_cell_383_2317881_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_383/StatefulPartitionedCall+while/lstm_cell_383/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319813

inputsH
5lstm_264_lstm_cell_381_matmul_readvariableop_resource:	?J
7lstm_264_lstm_cell_381_matmul_1_readvariableop_resource:	d?E
6lstm_264_lstm_cell_381_biasadd_readvariableop_resource:	?H
5lstm_265_lstm_cell_382_matmul_readvariableop_resource:	d?J
7lstm_265_lstm_cell_382_matmul_1_readvariableop_resource:	2?E
6lstm_265_lstm_cell_382_biasadd_readvariableop_resource:	?G
5lstm_266_lstm_cell_383_matmul_readvariableop_resource:2(I
7lstm_266_lstm_cell_383_matmul_1_readvariableop_resource:
(D
6lstm_266_lstm_cell_383_biasadd_readvariableop_resource:(9
'dense_88_matmul_readvariableop_resource:
6
(dense_88_biasadd_readvariableop_resource:
identity??dense_88/BiasAdd/ReadVariableOp?dense_88/MatMul/ReadVariableOp?-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp?,lstm_264/lstm_cell_381/MatMul/ReadVariableOp?.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp?lstm_264/while?-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp?,lstm_265/lstm_cell_382/MatMul/ReadVariableOp?.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp?lstm_265/while?-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp?,lstm_266/lstm_cell_383/MatMul/ReadVariableOp?.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp?lstm_266/whileD
lstm_264/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_264/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_264/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_264/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_sliceStridedSlicelstm_264/Shape:output:0%lstm_264/strided_slice/stack:output:0'lstm_264/strided_slice/stack_1:output:0'lstm_264/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_264/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_264/zeros/packedPacklstm_264/strided_slice:output:0 lstm_264/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_264/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_264/zerosFilllstm_264/zeros/packed:output:0lstm_264/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_264/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_264/zeros_1/packedPacklstm_264/strided_slice:output:0"lstm_264/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_264/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_264/zeros_1Fill lstm_264/zeros_1/packed:output:0lstm_264/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_264/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_264/transpose	Transposeinputs lstm_264/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_264/Shape_1Shapelstm_264/transpose:y:0*
T0*
_output_shapes
:h
lstm_264/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_264/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_264/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_slice_1StridedSlicelstm_264/Shape_1:output:0'lstm_264/strided_slice_1/stack:output:0)lstm_264/strided_slice_1/stack_1:output:0)lstm_264/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_264/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_264/TensorArrayV2TensorListReserve-lstm_264/TensorArrayV2/element_shape:output:0!lstm_264/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_264/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_264/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_264/transpose:y:0Glstm_264/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_264/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_264/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_264/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_slice_2StridedSlicelstm_264/transpose:y:0'lstm_264/strided_slice_2/stack:output:0)lstm_264/strided_slice_2/stack_1:output:0)lstm_264/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_264/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp5lstm_264_lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_264/lstm_cell_381/MatMulMatMul!lstm_264/strided_slice_2:output:04lstm_264/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp7lstm_264_lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_264/lstm_cell_381/MatMul_1MatMullstm_264/zeros:output:06lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_264/lstm_cell_381/addAddV2'lstm_264/lstm_cell_381/MatMul:product:0)lstm_264/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp6lstm_264_lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_264/lstm_cell_381/BiasAddBiasAddlstm_264/lstm_cell_381/add:z:05lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_264/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_264/lstm_cell_381/splitSplit/lstm_264/lstm_cell_381/split/split_dim:output:0'lstm_264/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_264/lstm_cell_381/SigmoidSigmoid%lstm_264/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_264/lstm_cell_381/Sigmoid_1Sigmoid%lstm_264/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/mulMul$lstm_264/lstm_cell_381/Sigmoid_1:y:0lstm_264/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_264/lstm_cell_381/ReluRelu%lstm_264/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/mul_1Mul"lstm_264/lstm_cell_381/Sigmoid:y:0)lstm_264/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/add_1AddV2lstm_264/lstm_cell_381/mul:z:0 lstm_264/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_264/lstm_cell_381/Sigmoid_2Sigmoid%lstm_264/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_264/lstm_cell_381/Relu_1Relu lstm_264/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/mul_2Mul$lstm_264/lstm_cell_381/Sigmoid_2:y:0+lstm_264/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_264/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_264/TensorArrayV2_1TensorListReserve/lstm_264/TensorArrayV2_1/element_shape:output:0!lstm_264/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_264/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_264/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_264/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_264/whileWhile$lstm_264/while/loop_counter:output:0*lstm_264/while/maximum_iterations:output:0lstm_264/time:output:0!lstm_264/TensorArrayV2_1:handle:0lstm_264/zeros:output:0lstm_264/zeros_1:output:0!lstm_264/strided_slice_1:output:0@lstm_264/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_264_lstm_cell_381_matmul_readvariableop_resource7lstm_264_lstm_cell_381_matmul_1_readvariableop_resource6lstm_264_lstm_cell_381_biasadd_readvariableop_resource*
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
lstm_264_while_body_2319445*'
condR
lstm_264_while_cond_2319444*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_264/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_264/TensorArrayV2Stack/TensorListStackTensorListStacklstm_264/while:output:3Blstm_264/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_264/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_264/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_264/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_slice_3StridedSlice4lstm_264/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_264/strided_slice_3/stack:output:0)lstm_264/strided_slice_3/stack_1:output:0)lstm_264/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_264/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_264/transpose_1	Transpose4lstm_264/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_264/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_264/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_265/ShapeShapelstm_264/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_265/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_265/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_265/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_sliceStridedSlicelstm_265/Shape:output:0%lstm_265/strided_slice/stack:output:0'lstm_265/strided_slice/stack_1:output:0'lstm_265/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_265/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_265/zeros/packedPacklstm_265/strided_slice:output:0 lstm_265/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_265/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_265/zerosFilllstm_265/zeros/packed:output:0lstm_265/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_265/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_265/zeros_1/packedPacklstm_265/strided_slice:output:0"lstm_265/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_265/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_265/zeros_1Fill lstm_265/zeros_1/packed:output:0lstm_265/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_265/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_265/transpose	Transposelstm_264/transpose_1:y:0 lstm_265/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_265/Shape_1Shapelstm_265/transpose:y:0*
T0*
_output_shapes
:h
lstm_265/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_265/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_265/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_slice_1StridedSlicelstm_265/Shape_1:output:0'lstm_265/strided_slice_1/stack:output:0)lstm_265/strided_slice_1/stack_1:output:0)lstm_265/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_265/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_265/TensorArrayV2TensorListReserve-lstm_265/TensorArrayV2/element_shape:output:0!lstm_265/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_265/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_265/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_265/transpose:y:0Glstm_265/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_265/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_265/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_265/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_slice_2StridedSlicelstm_265/transpose:y:0'lstm_265/strided_slice_2/stack:output:0)lstm_265/strided_slice_2/stack_1:output:0)lstm_265/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_265/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp5lstm_265_lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_265/lstm_cell_382/MatMulMatMul!lstm_265/strided_slice_2:output:04lstm_265/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp7lstm_265_lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_265/lstm_cell_382/MatMul_1MatMullstm_265/zeros:output:06lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_265/lstm_cell_382/addAddV2'lstm_265/lstm_cell_382/MatMul:product:0)lstm_265/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp6lstm_265_lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_265/lstm_cell_382/BiasAddBiasAddlstm_265/lstm_cell_382/add:z:05lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_265/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_265/lstm_cell_382/splitSplit/lstm_265/lstm_cell_382/split/split_dim:output:0'lstm_265/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_265/lstm_cell_382/SigmoidSigmoid%lstm_265/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_265/lstm_cell_382/Sigmoid_1Sigmoid%lstm_265/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/mulMul$lstm_265/lstm_cell_382/Sigmoid_1:y:0lstm_265/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_265/lstm_cell_382/ReluRelu%lstm_265/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/mul_1Mul"lstm_265/lstm_cell_382/Sigmoid:y:0)lstm_265/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/add_1AddV2lstm_265/lstm_cell_382/mul:z:0 lstm_265/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_265/lstm_cell_382/Sigmoid_2Sigmoid%lstm_265/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_265/lstm_cell_382/Relu_1Relu lstm_265/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/mul_2Mul$lstm_265/lstm_cell_382/Sigmoid_2:y:0+lstm_265/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_265/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_265/TensorArrayV2_1TensorListReserve/lstm_265/TensorArrayV2_1/element_shape:output:0!lstm_265/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_265/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_265/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_265/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_265/whileWhile$lstm_265/while/loop_counter:output:0*lstm_265/while/maximum_iterations:output:0lstm_265/time:output:0!lstm_265/TensorArrayV2_1:handle:0lstm_265/zeros:output:0lstm_265/zeros_1:output:0!lstm_265/strided_slice_1:output:0@lstm_265/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_265_lstm_cell_382_matmul_readvariableop_resource7lstm_265_lstm_cell_382_matmul_1_readvariableop_resource6lstm_265_lstm_cell_382_biasadd_readvariableop_resource*
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
lstm_265_while_body_2319584*'
condR
lstm_265_while_cond_2319583*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_265/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_265/TensorArrayV2Stack/TensorListStackTensorListStacklstm_265/while:output:3Blstm_265/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_265/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_265/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_265/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_slice_3StridedSlice4lstm_265/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_265/strided_slice_3/stack:output:0)lstm_265/strided_slice_3/stack_1:output:0)lstm_265/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_265/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_265/transpose_1	Transpose4lstm_265/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_265/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_265/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_266/ShapeShapelstm_265/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_sliceStridedSlicelstm_266/Shape:output:0%lstm_266/strided_slice/stack:output:0'lstm_266/strided_slice/stack_1:output:0'lstm_266/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_266/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_266/zeros/packedPacklstm_266/strided_slice:output:0 lstm_266/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_266/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_266/zerosFilllstm_266/zeros/packed:output:0lstm_266/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_266/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_266/zeros_1/packedPacklstm_266/strided_slice:output:0"lstm_266/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_266/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_266/zeros_1Fill lstm_266/zeros_1/packed:output:0lstm_266/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_266/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_266/transpose	Transposelstm_265/transpose_1:y:0 lstm_266/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_266/Shape_1Shapelstm_266/transpose:y:0*
T0*
_output_shapes
:h
lstm_266/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_266/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_266/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_slice_1StridedSlicelstm_266/Shape_1:output:0'lstm_266/strided_slice_1/stack:output:0)lstm_266/strided_slice_1/stack_1:output:0)lstm_266/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_266/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_266/TensorArrayV2TensorListReserve-lstm_266/TensorArrayV2/element_shape:output:0!lstm_266/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_266/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_266/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_266/transpose:y:0Glstm_266/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_266/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_266/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_266/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_slice_2StridedSlicelstm_266/transpose:y:0'lstm_266/strided_slice_2/stack:output:0)lstm_266/strided_slice_2/stack_1:output:0)lstm_266/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_266/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp5lstm_266_lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_266/lstm_cell_383/MatMulMatMul!lstm_266/strided_slice_2:output:04lstm_266/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp7lstm_266_lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_266/lstm_cell_383/MatMul_1MatMullstm_266/zeros:output:06lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_266/lstm_cell_383/addAddV2'lstm_266/lstm_cell_383/MatMul:product:0)lstm_266/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp6lstm_266_lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_266/lstm_cell_383/BiasAddBiasAddlstm_266/lstm_cell_383/add:z:05lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_266/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_266/lstm_cell_383/splitSplit/lstm_266/lstm_cell_383/split/split_dim:output:0'lstm_266/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_266/lstm_cell_383/SigmoidSigmoid%lstm_266/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_266/lstm_cell_383/Sigmoid_1Sigmoid%lstm_266/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/mulMul$lstm_266/lstm_cell_383/Sigmoid_1:y:0lstm_266/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_266/lstm_cell_383/ReluRelu%lstm_266/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/mul_1Mul"lstm_266/lstm_cell_383/Sigmoid:y:0)lstm_266/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/add_1AddV2lstm_266/lstm_cell_383/mul:z:0 lstm_266/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_266/lstm_cell_383/Sigmoid_2Sigmoid%lstm_266/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_266/lstm_cell_383/Relu_1Relu lstm_266/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/mul_2Mul$lstm_266/lstm_cell_383/Sigmoid_2:y:0+lstm_266/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_266/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_266/TensorArrayV2_1TensorListReserve/lstm_266/TensorArrayV2_1/element_shape:output:0!lstm_266/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_266/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_266/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_266/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_266/whileWhile$lstm_266/while/loop_counter:output:0*lstm_266/while/maximum_iterations:output:0lstm_266/time:output:0!lstm_266/TensorArrayV2_1:handle:0lstm_266/zeros:output:0lstm_266/zeros_1:output:0!lstm_266/strided_slice_1:output:0@lstm_266/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_266_lstm_cell_383_matmul_readvariableop_resource7lstm_266_lstm_cell_383_matmul_1_readvariableop_resource6lstm_266_lstm_cell_383_biasadd_readvariableop_resource*
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
lstm_266_while_body_2319723*'
condR
lstm_266_while_cond_2319722*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_266/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_266/TensorArrayV2Stack/TensorListStackTensorListStacklstm_266/while:output:3Blstm_266/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_266/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_266/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_266/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_slice_3StridedSlice4lstm_266/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_266/strided_slice_3/stack:output:0)lstm_266/strided_slice_3/stack_1:output:0)lstm_266/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_266/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_266/transpose_1	Transpose4lstm_266/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_266/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_266/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_88/MatMul/ReadVariableOpReadVariableOp'dense_88_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_88/MatMulMatMul!lstm_266/strided_slice_3:output:0&dense_88/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_88/BiasAdd/ReadVariableOpReadVariableOp(dense_88_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_88/BiasAddBiasAdddense_88/MatMul:product:0'dense_88/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_88/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_88/BiasAdd/ReadVariableOp^dense_88/MatMul/ReadVariableOp.^lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp-^lstm_264/lstm_cell_381/MatMul/ReadVariableOp/^lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp^lstm_264/while.^lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp-^lstm_265/lstm_cell_382/MatMul/ReadVariableOp/^lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp^lstm_265/while.^lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp-^lstm_266/lstm_cell_383/MatMul/ReadVariableOp/^lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp^lstm_266/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_88/BiasAdd/ReadVariableOpdense_88/BiasAdd/ReadVariableOp2@
dense_88/MatMul/ReadVariableOpdense_88/MatMul/ReadVariableOp2^
-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp2\
,lstm_264/lstm_cell_381/MatMul/ReadVariableOp,lstm_264/lstm_cell_381/MatMul/ReadVariableOp2`
.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp2 
lstm_264/whilelstm_264/while2^
-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp2\
,lstm_265/lstm_cell_382/MatMul/ReadVariableOp,lstm_265/lstm_cell_382/MatMul/ReadVariableOp2`
.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp2 
lstm_265/whilelstm_265/while2^
-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp2\
,lstm_266/lstm_cell_383/MatMul/ReadVariableOp,lstm_266/lstm_cell_383/MatMul/ReadVariableOp2`
.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp2 
lstm_266/whilelstm_266/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2318187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_381_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_381_matmul_readvariableop_resource:	?G
4while_lstm_cell_381_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_381_biasadd_readvariableop_resource:	???*while/lstm_cell_381/BiasAdd/ReadVariableOp?)while/lstm_cell_381/MatMul/ReadVariableOp?+while/lstm_cell_381/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_381/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_381/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_381/addAddV2$while/lstm_cell_381/MatMul:product:0&while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_381/BiasAddBiasAddwhile/lstm_cell_381/add:z:02while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_381/splitSplit,while/lstm_cell_381/split/split_dim:output:0$while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_381/SigmoidSigmoid"while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_1Sigmoid"while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mulMul!while/lstm_cell_381/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_381/ReluRelu"while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_1Mulwhile/lstm_cell_381/Sigmoid:y:0&while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/add_1AddV2while/lstm_cell_381/mul:z:0while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_2Sigmoid"while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_381/Relu_1Reluwhile/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_2Mul!while/lstm_cell_381/Sigmoid_2:y:0(while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_381/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_381/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_381/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_381/BiasAdd/ReadVariableOp*^while/lstm_cell_381/MatMul/ReadVariableOp,^while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_381_biasadd_readvariableop_resource5while_lstm_cell_381_biasadd_readvariableop_resource_0"n
4while_lstm_cell_381_matmul_1_readvariableop_resource6while_lstm_cell_381_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_381_matmul_readvariableop_resource4while_lstm_cell_381_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_381/BiasAdd/ReadVariableOp*while/lstm_cell_381/BiasAdd/ReadVariableOp2V
)while/lstm_cell_381/MatMul/ReadVariableOp)while/lstm_cell_381/MatMul/ReadVariableOp2Z
+while/lstm_cell_381/MatMul_1/ReadVariableOp+while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2319033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_381_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_381_matmul_readvariableop_resource:	?G
4while_lstm_cell_381_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_381_biasadd_readvariableop_resource:	???*while/lstm_cell_381/BiasAdd/ReadVariableOp?)while/lstm_cell_381/MatMul/ReadVariableOp?+while/lstm_cell_381/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_381/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_381/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_381/addAddV2$while/lstm_cell_381/MatMul:product:0&while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_381/BiasAddBiasAddwhile/lstm_cell_381/add:z:02while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_381/splitSplit,while/lstm_cell_381/split/split_dim:output:0$while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_381/SigmoidSigmoid"while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_1Sigmoid"while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mulMul!while/lstm_cell_381/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_381/ReluRelu"while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_1Mulwhile/lstm_cell_381/Sigmoid:y:0&while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/add_1AddV2while/lstm_cell_381/mul:z:0while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_2Sigmoid"while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_381/Relu_1Reluwhile/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_2Mul!while/lstm_cell_381/Sigmoid_2:y:0(while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_381/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_381/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_381/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_381/BiasAdd/ReadVariableOp*^while/lstm_cell_381/MatMul/ReadVariableOp,^while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_381_biasadd_readvariableop_resource5while_lstm_cell_381_biasadd_readvariableop_resource_0"n
4while_lstm_cell_381_matmul_1_readvariableop_resource6while_lstm_cell_381_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_381_matmul_readvariableop_resource4while_lstm_cell_381_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_381/BiasAdd/ReadVariableOp*while/lstm_cell_381/BiasAdd/ReadVariableOp2V
)while/lstm_cell_381/MatMul/ReadVariableOp)while/lstm_cell_381/MatMul/ReadVariableOp2Z
+while/lstm_cell_381/MatMul_1/ReadVariableOp+while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_382_layer_call_fn_2322239

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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317635o
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2320240

inputsH
5lstm_264_lstm_cell_381_matmul_readvariableop_resource:	?J
7lstm_264_lstm_cell_381_matmul_1_readvariableop_resource:	d?E
6lstm_264_lstm_cell_381_biasadd_readvariableop_resource:	?H
5lstm_265_lstm_cell_382_matmul_readvariableop_resource:	d?J
7lstm_265_lstm_cell_382_matmul_1_readvariableop_resource:	2?E
6lstm_265_lstm_cell_382_biasadd_readvariableop_resource:	?G
5lstm_266_lstm_cell_383_matmul_readvariableop_resource:2(I
7lstm_266_lstm_cell_383_matmul_1_readvariableop_resource:
(D
6lstm_266_lstm_cell_383_biasadd_readvariableop_resource:(9
'dense_88_matmul_readvariableop_resource:
6
(dense_88_biasadd_readvariableop_resource:
identity??dense_88/BiasAdd/ReadVariableOp?dense_88/MatMul/ReadVariableOp?-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp?,lstm_264/lstm_cell_381/MatMul/ReadVariableOp?.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp?lstm_264/while?-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp?,lstm_265/lstm_cell_382/MatMul/ReadVariableOp?.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp?lstm_265/while?-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp?,lstm_266/lstm_cell_383/MatMul/ReadVariableOp?.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp?lstm_266/whileD
lstm_264/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_264/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_264/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_264/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_sliceStridedSlicelstm_264/Shape:output:0%lstm_264/strided_slice/stack:output:0'lstm_264/strided_slice/stack_1:output:0'lstm_264/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_264/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_264/zeros/packedPacklstm_264/strided_slice:output:0 lstm_264/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_264/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_264/zerosFilllstm_264/zeros/packed:output:0lstm_264/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_264/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_264/zeros_1/packedPacklstm_264/strided_slice:output:0"lstm_264/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_264/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_264/zeros_1Fill lstm_264/zeros_1/packed:output:0lstm_264/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_264/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_264/transpose	Transposeinputs lstm_264/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_264/Shape_1Shapelstm_264/transpose:y:0*
T0*
_output_shapes
:h
lstm_264/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_264/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_264/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_slice_1StridedSlicelstm_264/Shape_1:output:0'lstm_264/strided_slice_1/stack:output:0)lstm_264/strided_slice_1/stack_1:output:0)lstm_264/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_264/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_264/TensorArrayV2TensorListReserve-lstm_264/TensorArrayV2/element_shape:output:0!lstm_264/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_264/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_264/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_264/transpose:y:0Glstm_264/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_264/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_264/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_264/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_slice_2StridedSlicelstm_264/transpose:y:0'lstm_264/strided_slice_2/stack:output:0)lstm_264/strided_slice_2/stack_1:output:0)lstm_264/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_264/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp5lstm_264_lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_264/lstm_cell_381/MatMulMatMul!lstm_264/strided_slice_2:output:04lstm_264/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp7lstm_264_lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_264/lstm_cell_381/MatMul_1MatMullstm_264/zeros:output:06lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_264/lstm_cell_381/addAddV2'lstm_264/lstm_cell_381/MatMul:product:0)lstm_264/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp6lstm_264_lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_264/lstm_cell_381/BiasAddBiasAddlstm_264/lstm_cell_381/add:z:05lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_264/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_264/lstm_cell_381/splitSplit/lstm_264/lstm_cell_381/split/split_dim:output:0'lstm_264/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_264/lstm_cell_381/SigmoidSigmoid%lstm_264/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_264/lstm_cell_381/Sigmoid_1Sigmoid%lstm_264/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/mulMul$lstm_264/lstm_cell_381/Sigmoid_1:y:0lstm_264/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_264/lstm_cell_381/ReluRelu%lstm_264/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/mul_1Mul"lstm_264/lstm_cell_381/Sigmoid:y:0)lstm_264/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/add_1AddV2lstm_264/lstm_cell_381/mul:z:0 lstm_264/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_264/lstm_cell_381/Sigmoid_2Sigmoid%lstm_264/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_264/lstm_cell_381/Relu_1Relu lstm_264/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_264/lstm_cell_381/mul_2Mul$lstm_264/lstm_cell_381/Sigmoid_2:y:0+lstm_264/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_264/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_264/TensorArrayV2_1TensorListReserve/lstm_264/TensorArrayV2_1/element_shape:output:0!lstm_264/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_264/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_264/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_264/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_264/whileWhile$lstm_264/while/loop_counter:output:0*lstm_264/while/maximum_iterations:output:0lstm_264/time:output:0!lstm_264/TensorArrayV2_1:handle:0lstm_264/zeros:output:0lstm_264/zeros_1:output:0!lstm_264/strided_slice_1:output:0@lstm_264/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_264_lstm_cell_381_matmul_readvariableop_resource7lstm_264_lstm_cell_381_matmul_1_readvariableop_resource6lstm_264_lstm_cell_381_biasadd_readvariableop_resource*
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
lstm_264_while_body_2319872*'
condR
lstm_264_while_cond_2319871*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_264/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_264/TensorArrayV2Stack/TensorListStackTensorListStacklstm_264/while:output:3Blstm_264/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_264/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_264/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_264/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_264/strided_slice_3StridedSlice4lstm_264/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_264/strided_slice_3/stack:output:0)lstm_264/strided_slice_3/stack_1:output:0)lstm_264/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_264/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_264/transpose_1	Transpose4lstm_264/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_264/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_264/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_265/ShapeShapelstm_264/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_265/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_265/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_265/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_sliceStridedSlicelstm_265/Shape:output:0%lstm_265/strided_slice/stack:output:0'lstm_265/strided_slice/stack_1:output:0'lstm_265/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_265/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_265/zeros/packedPacklstm_265/strided_slice:output:0 lstm_265/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_265/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_265/zerosFilllstm_265/zeros/packed:output:0lstm_265/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_265/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_265/zeros_1/packedPacklstm_265/strided_slice:output:0"lstm_265/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_265/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_265/zeros_1Fill lstm_265/zeros_1/packed:output:0lstm_265/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_265/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_265/transpose	Transposelstm_264/transpose_1:y:0 lstm_265/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_265/Shape_1Shapelstm_265/transpose:y:0*
T0*
_output_shapes
:h
lstm_265/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_265/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_265/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_slice_1StridedSlicelstm_265/Shape_1:output:0'lstm_265/strided_slice_1/stack:output:0)lstm_265/strided_slice_1/stack_1:output:0)lstm_265/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_265/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_265/TensorArrayV2TensorListReserve-lstm_265/TensorArrayV2/element_shape:output:0!lstm_265/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_265/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_265/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_265/transpose:y:0Glstm_265/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_265/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_265/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_265/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_slice_2StridedSlicelstm_265/transpose:y:0'lstm_265/strided_slice_2/stack:output:0)lstm_265/strided_slice_2/stack_1:output:0)lstm_265/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_265/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp5lstm_265_lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_265/lstm_cell_382/MatMulMatMul!lstm_265/strided_slice_2:output:04lstm_265/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp7lstm_265_lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_265/lstm_cell_382/MatMul_1MatMullstm_265/zeros:output:06lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_265/lstm_cell_382/addAddV2'lstm_265/lstm_cell_382/MatMul:product:0)lstm_265/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp6lstm_265_lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_265/lstm_cell_382/BiasAddBiasAddlstm_265/lstm_cell_382/add:z:05lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_265/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_265/lstm_cell_382/splitSplit/lstm_265/lstm_cell_382/split/split_dim:output:0'lstm_265/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_265/lstm_cell_382/SigmoidSigmoid%lstm_265/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_265/lstm_cell_382/Sigmoid_1Sigmoid%lstm_265/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/mulMul$lstm_265/lstm_cell_382/Sigmoid_1:y:0lstm_265/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_265/lstm_cell_382/ReluRelu%lstm_265/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/mul_1Mul"lstm_265/lstm_cell_382/Sigmoid:y:0)lstm_265/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/add_1AddV2lstm_265/lstm_cell_382/mul:z:0 lstm_265/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_265/lstm_cell_382/Sigmoid_2Sigmoid%lstm_265/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_265/lstm_cell_382/Relu_1Relu lstm_265/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_265/lstm_cell_382/mul_2Mul$lstm_265/lstm_cell_382/Sigmoid_2:y:0+lstm_265/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_265/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_265/TensorArrayV2_1TensorListReserve/lstm_265/TensorArrayV2_1/element_shape:output:0!lstm_265/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_265/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_265/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_265/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_265/whileWhile$lstm_265/while/loop_counter:output:0*lstm_265/while/maximum_iterations:output:0lstm_265/time:output:0!lstm_265/TensorArrayV2_1:handle:0lstm_265/zeros:output:0lstm_265/zeros_1:output:0!lstm_265/strided_slice_1:output:0@lstm_265/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_265_lstm_cell_382_matmul_readvariableop_resource7lstm_265_lstm_cell_382_matmul_1_readvariableop_resource6lstm_265_lstm_cell_382_biasadd_readvariableop_resource*
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
lstm_265_while_body_2320011*'
condR
lstm_265_while_cond_2320010*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_265/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_265/TensorArrayV2Stack/TensorListStackTensorListStacklstm_265/while:output:3Blstm_265/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_265/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_265/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_265/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_265/strided_slice_3StridedSlice4lstm_265/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_265/strided_slice_3/stack:output:0)lstm_265/strided_slice_3/stack_1:output:0)lstm_265/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_265/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_265/transpose_1	Transpose4lstm_265/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_265/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_265/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_266/ShapeShapelstm_265/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_266/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_266/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_266/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_sliceStridedSlicelstm_266/Shape:output:0%lstm_266/strided_slice/stack:output:0'lstm_266/strided_slice/stack_1:output:0'lstm_266/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_266/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_266/zeros/packedPacklstm_266/strided_slice:output:0 lstm_266/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_266/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_266/zerosFilllstm_266/zeros/packed:output:0lstm_266/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_266/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_266/zeros_1/packedPacklstm_266/strided_slice:output:0"lstm_266/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_266/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_266/zeros_1Fill lstm_266/zeros_1/packed:output:0lstm_266/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_266/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_266/transpose	Transposelstm_265/transpose_1:y:0 lstm_266/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_266/Shape_1Shapelstm_266/transpose:y:0*
T0*
_output_shapes
:h
lstm_266/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_266/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_266/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_slice_1StridedSlicelstm_266/Shape_1:output:0'lstm_266/strided_slice_1/stack:output:0)lstm_266/strided_slice_1/stack_1:output:0)lstm_266/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_266/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_266/TensorArrayV2TensorListReserve-lstm_266/TensorArrayV2/element_shape:output:0!lstm_266/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_266/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_266/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_266/transpose:y:0Glstm_266/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_266/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_266/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_266/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_slice_2StridedSlicelstm_266/transpose:y:0'lstm_266/strided_slice_2/stack:output:0)lstm_266/strided_slice_2/stack_1:output:0)lstm_266/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_266/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp5lstm_266_lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_266/lstm_cell_383/MatMulMatMul!lstm_266/strided_slice_2:output:04lstm_266/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp7lstm_266_lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_266/lstm_cell_383/MatMul_1MatMullstm_266/zeros:output:06lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_266/lstm_cell_383/addAddV2'lstm_266/lstm_cell_383/MatMul:product:0)lstm_266/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp6lstm_266_lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_266/lstm_cell_383/BiasAddBiasAddlstm_266/lstm_cell_383/add:z:05lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_266/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_266/lstm_cell_383/splitSplit/lstm_266/lstm_cell_383/split/split_dim:output:0'lstm_266/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_266/lstm_cell_383/SigmoidSigmoid%lstm_266/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_266/lstm_cell_383/Sigmoid_1Sigmoid%lstm_266/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/mulMul$lstm_266/lstm_cell_383/Sigmoid_1:y:0lstm_266/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_266/lstm_cell_383/ReluRelu%lstm_266/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/mul_1Mul"lstm_266/lstm_cell_383/Sigmoid:y:0)lstm_266/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/add_1AddV2lstm_266/lstm_cell_383/mul:z:0 lstm_266/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_266/lstm_cell_383/Sigmoid_2Sigmoid%lstm_266/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_266/lstm_cell_383/Relu_1Relu lstm_266/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_266/lstm_cell_383/mul_2Mul$lstm_266/lstm_cell_383/Sigmoid_2:y:0+lstm_266/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_266/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_266/TensorArrayV2_1TensorListReserve/lstm_266/TensorArrayV2_1/element_shape:output:0!lstm_266/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_266/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_266/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_266/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_266/whileWhile$lstm_266/while/loop_counter:output:0*lstm_266/while/maximum_iterations:output:0lstm_266/time:output:0!lstm_266/TensorArrayV2_1:handle:0lstm_266/zeros:output:0lstm_266/zeros_1:output:0!lstm_266/strided_slice_1:output:0@lstm_266/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_266_lstm_cell_383_matmul_readvariableop_resource7lstm_266_lstm_cell_383_matmul_1_readvariableop_resource6lstm_266_lstm_cell_383_biasadd_readvariableop_resource*
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
lstm_266_while_body_2320150*'
condR
lstm_266_while_cond_2320149*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_266/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_266/TensorArrayV2Stack/TensorListStackTensorListStacklstm_266/while:output:3Blstm_266/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_266/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_266/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_266/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_266/strided_slice_3StridedSlice4lstm_266/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_266/strided_slice_3/stack:output:0)lstm_266/strided_slice_3/stack_1:output:0)lstm_266/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_266/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_266/transpose_1	Transpose4lstm_266/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_266/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_266/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_88/MatMul/ReadVariableOpReadVariableOp'dense_88_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_88/MatMulMatMul!lstm_266/strided_slice_3:output:0&dense_88/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_88/BiasAdd/ReadVariableOpReadVariableOp(dense_88_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_88/BiasAddBiasAdddense_88/MatMul:product:0'dense_88/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_88/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_88/BiasAdd/ReadVariableOp^dense_88/MatMul/ReadVariableOp.^lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp-^lstm_264/lstm_cell_381/MatMul/ReadVariableOp/^lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp^lstm_264/while.^lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp-^lstm_265/lstm_cell_382/MatMul/ReadVariableOp/^lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp^lstm_265/while.^lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp-^lstm_266/lstm_cell_383/MatMul/ReadVariableOp/^lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp^lstm_266/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_88/BiasAdd/ReadVariableOpdense_88/BiasAdd/ReadVariableOp2@
dense_88/MatMul/ReadVariableOpdense_88/MatMul/ReadVariableOp2^
-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp-lstm_264/lstm_cell_381/BiasAdd/ReadVariableOp2\
,lstm_264/lstm_cell_381/MatMul/ReadVariableOp,lstm_264/lstm_cell_381/MatMul/ReadVariableOp2`
.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp.lstm_264/lstm_cell_381/MatMul_1/ReadVariableOp2 
lstm_264/whilelstm_264/while2^
-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp-lstm_265/lstm_cell_382/BiasAdd/ReadVariableOp2\
,lstm_265/lstm_cell_382/MatMul/ReadVariableOp,lstm_265/lstm_cell_382/MatMul/ReadVariableOp2`
.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp.lstm_265/lstm_cell_382/MatMul_1/ReadVariableOp2 
lstm_265/whilelstm_265/while2^
-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp-lstm_266/lstm_cell_383/BiasAdd/ReadVariableOp2\
,lstm_266/lstm_cell_383/MatMul/ReadVariableOp,lstm_266/lstm_cell_383/MatMul/ReadVariableOp2`
.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp.lstm_266/lstm_cell_383/MatMul_1/ReadVariableOp2 
lstm_266/whilelstm_266/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_265_layer_call_and_return_conditional_losses_2317572

inputs(
lstm_cell_382_2317490:	d?(
lstm_cell_382_2317492:	2?$
lstm_cell_382_2317494:	?
identity??%lstm_cell_382/StatefulPartitionedCall?while;
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
%lstm_cell_382/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_382_2317490lstm_cell_382_2317492lstm_cell_382_2317494*
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317489n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_382_2317490lstm_cell_382_2317492lstm_cell_382_2317494*
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
while_body_2317503*
condR
while_cond_2317502*K
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
NoOpNoOp&^lstm_cell_382/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_382/StatefulPartitionedCall%lstm_cell_382/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?C
?

lstm_264_while_body_2319445.
*lstm_264_while_lstm_264_while_loop_counter4
0lstm_264_while_lstm_264_while_maximum_iterations
lstm_264_while_placeholder 
lstm_264_while_placeholder_1 
lstm_264_while_placeholder_2 
lstm_264_while_placeholder_3-
)lstm_264_while_lstm_264_strided_slice_1_0i
elstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0:	?R
?lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?M
>lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
lstm_264_while_identity
lstm_264_while_identity_1
lstm_264_while_identity_2
lstm_264_while_identity_3
lstm_264_while_identity_4
lstm_264_while_identity_5+
'lstm_264_while_lstm_264_strided_slice_1g
clstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensorN
;lstm_264_while_lstm_cell_381_matmul_readvariableop_resource:	?P
=lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource:	d?K
<lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource:	???3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp?2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp?4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp?
@lstm_264/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_264/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensor_0lstm_264_while_placeholderIlstm_264/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp=lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_264/while/lstm_cell_381/MatMulMatMul9lstm_264/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp?lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_264/while/lstm_cell_381/MatMul_1MatMullstm_264_while_placeholder_2<lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_264/while/lstm_cell_381/addAddV2-lstm_264/while/lstm_cell_381/MatMul:product:0/lstm_264/while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp>lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_264/while/lstm_cell_381/BiasAddBiasAdd$lstm_264/while/lstm_cell_381/add:z:0;lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_264/while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_264/while/lstm_cell_381/splitSplit5lstm_264/while/lstm_cell_381/split/split_dim:output:0-lstm_264/while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_264/while/lstm_cell_381/SigmoidSigmoid+lstm_264/while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_264/while/lstm_cell_381/Sigmoid_1Sigmoid+lstm_264/while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_264/while/lstm_cell_381/mulMul*lstm_264/while/lstm_cell_381/Sigmoid_1:y:0lstm_264_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_264/while/lstm_cell_381/ReluRelu+lstm_264/while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_264/while/lstm_cell_381/mul_1Mul(lstm_264/while/lstm_cell_381/Sigmoid:y:0/lstm_264/while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_264/while/lstm_cell_381/add_1AddV2$lstm_264/while/lstm_cell_381/mul:z:0&lstm_264/while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_264/while/lstm_cell_381/Sigmoid_2Sigmoid+lstm_264/while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_264/while/lstm_cell_381/Relu_1Relu&lstm_264/while/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_264/while/lstm_cell_381/mul_2Mul*lstm_264/while/lstm_cell_381/Sigmoid_2:y:01lstm_264/while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_264/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_264_while_placeholder_1lstm_264_while_placeholder&lstm_264/while/lstm_cell_381/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_264/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_264/while/addAddV2lstm_264_while_placeholderlstm_264/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_264/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_264/while/add_1AddV2*lstm_264_while_lstm_264_while_loop_counterlstm_264/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_264/while/IdentityIdentitylstm_264/while/add_1:z:0^lstm_264/while/NoOp*
T0*
_output_shapes
: ?
lstm_264/while/Identity_1Identity0lstm_264_while_lstm_264_while_maximum_iterations^lstm_264/while/NoOp*
T0*
_output_shapes
: t
lstm_264/while/Identity_2Identitylstm_264/while/add:z:0^lstm_264/while/NoOp*
T0*
_output_shapes
: ?
lstm_264/while/Identity_3IdentityClstm_264/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_264/while/NoOp*
T0*
_output_shapes
: ?
lstm_264/while/Identity_4Identity&lstm_264/while/lstm_cell_381/mul_2:z:0^lstm_264/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_264/while/Identity_5Identity&lstm_264/while/lstm_cell_381/add_1:z:0^lstm_264/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_264/while/NoOpNoOp4^lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp3^lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp5^lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_264_while_identity lstm_264/while/Identity:output:0"?
lstm_264_while_identity_1"lstm_264/while/Identity_1:output:0"?
lstm_264_while_identity_2"lstm_264/while/Identity_2:output:0"?
lstm_264_while_identity_3"lstm_264/while/Identity_3:output:0"?
lstm_264_while_identity_4"lstm_264/while/Identity_4:output:0"?
lstm_264_while_identity_5"lstm_264/while/Identity_5:output:0"T
'lstm_264_while_lstm_264_strided_slice_1)lstm_264_while_lstm_264_strided_slice_1_0"~
<lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource>lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0"?
=lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource?lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0"|
;lstm_264_while_lstm_cell_381_matmul_readvariableop_resource=lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0"?
clstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensorelstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp2h
2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp2l
4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_266_while_cond_2320149.
*lstm_266_while_lstm_266_while_loop_counter4
0lstm_266_while_lstm_266_while_maximum_iterations
lstm_266_while_placeholder 
lstm_266_while_placeholder_1 
lstm_266_while_placeholder_2 
lstm_266_while_placeholder_30
,lstm_266_while_less_lstm_266_strided_slice_1G
Clstm_266_while_lstm_266_while_cond_2320149___redundant_placeholder0G
Clstm_266_while_lstm_266_while_cond_2320149___redundant_placeholder1G
Clstm_266_while_lstm_266_while_cond_2320149___redundant_placeholder2G
Clstm_266_while_lstm_266_while_cond_2320149___redundant_placeholder3
lstm_266_while_identity
?
lstm_266/while/LessLesslstm_266_while_placeholder,lstm_266_while_less_lstm_266_strided_slice_1*
T0*
_output_shapes
: ]
lstm_266/while/IdentityIdentitylstm_266/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_266_while_identity lstm_266/while/Identity:output:0*(
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
while_cond_2318043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2318043___redundant_placeholder05
1while_while_cond_2318043___redundant_placeholder15
1while_while_cond_2318043___redundant_placeholder25
1while_while_cond_2318043___redundant_placeholder3
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
/__inference_sequential_88_layer_call_fn_2319386

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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319185o
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
?
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319185

inputs#
lstm_264_2319158:	?#
lstm_264_2319160:	d?
lstm_264_2319162:	?#
lstm_265_2319165:	d?#
lstm_265_2319167:	2?
lstm_265_2319169:	?"
lstm_266_2319172:2("
lstm_266_2319174:
(
lstm_266_2319176:("
dense_88_2319179:

dense_88_2319181:
identity?? dense_88/StatefulPartitionedCall? lstm_264/StatefulPartitionedCall? lstm_265/StatefulPartitionedCall? lstm_266/StatefulPartitionedCall?
 lstm_264/StatefulPartitionedCallStatefulPartitionedCallinputslstm_264_2319158lstm_264_2319160lstm_264_2319162*
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2319117?
 lstm_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_264/StatefulPartitionedCall:output:0lstm_265_2319165lstm_265_2319167lstm_265_2319169*
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318952?
 lstm_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_265/StatefulPartitionedCall:output:0lstm_266_2319172lstm_266_2319174lstm_266_2319176*
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318787?
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)lstm_266/StatefulPartitionedCall:output:0dense_88_2319179dense_88_2319181*
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
E__inference_dense_88_layer_call_and_return_conditional_losses_2318589x
IdentityIdentity)dense_88/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_88/StatefulPartitionedCall!^lstm_264/StatefulPartitionedCall!^lstm_265/StatefulPartitionedCall!^lstm_266/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 lstm_264/StatefulPartitionedCall lstm_264/StatefulPartitionedCall2D
 lstm_265/StatefulPartitionedCall lstm_265/StatefulPartitionedCall2D
 lstm_266/StatefulPartitionedCall lstm_266/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2318702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2318702___redundant_placeholder05
1while_while_cond_2318702___redundant_placeholder15
1while_while_cond_2318702___redundant_placeholder25
1while_while_cond_2318702___redundant_placeholder3
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2322369

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
?
?
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2322205

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
?K
?
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321659
inputs_0>
,lstm_cell_383_matmul_readvariableop_resource:2(@
.lstm_cell_383_matmul_1_readvariableop_resource:
(;
-lstm_cell_383_biasadd_readvariableop_resource:(
identity??$lstm_cell_383/BiasAdd/ReadVariableOp?#lstm_cell_383/MatMul/ReadVariableOp?%lstm_cell_383/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_383/MatMul/ReadVariableOpReadVariableOp,lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_383/MatMulMatMulstrided_slice_2:output:0+lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_383/MatMul_1MatMulzeros:output:0-lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_383/addAddV2lstm_cell_383/MatMul:product:0 lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_383/BiasAddBiasAddlstm_cell_383/add:z:0,lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_383/splitSplit&lstm_cell_383/split/split_dim:output:0lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_383/SigmoidSigmoidlstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_1Sigmoidlstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_383/mulMullstm_cell_383/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_383/ReluRelulstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_1Mullstm_cell_383/Sigmoid:y:0 lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_383/add_1AddV2lstm_cell_383/mul:z:0lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_2Sigmoidlstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_383/Relu_1Relulstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_2Mullstm_cell_383/Sigmoid_2:y:0"lstm_cell_383/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_383_matmul_readvariableop_resource.lstm_cell_383_matmul_1_readvariableop_resource-lstm_cell_383_biasadd_readvariableop_resource*
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
while_body_2321575*
condR
while_cond_2321574*K
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
NoOpNoOp%^lstm_cell_383/BiasAdd/ReadVariableOp$^lstm_cell_383/MatMul/ReadVariableOp&^lstm_cell_383/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_383/BiasAdd/ReadVariableOp$lstm_cell_383/BiasAdd/ReadVariableOp2J
#lstm_cell_383/MatMul/ReadVariableOp#lstm_cell_383/MatMul/ReadVariableOp2N
%lstm_cell_383/MatMul_1/ReadVariableOp%lstm_cell_383/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317635

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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318421

inputs?
,lstm_cell_382_matmul_readvariableop_resource:	d?A
.lstm_cell_382_matmul_1_readvariableop_resource:	2?<
-lstm_cell_382_biasadd_readvariableop_resource:	?
identity??$lstm_cell_382/BiasAdd/ReadVariableOp?#lstm_cell_382/MatMul/ReadVariableOp?%lstm_cell_382/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_382/MatMul/ReadVariableOpReadVariableOp,lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_382/MatMulMatMulstrided_slice_2:output:0+lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_382/MatMul_1MatMulzeros:output:0-lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_382/addAddV2lstm_cell_382/MatMul:product:0 lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_382/BiasAddBiasAddlstm_cell_382/add:z:0,lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_382/splitSplit&lstm_cell_382/split/split_dim:output:0lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_382/SigmoidSigmoidlstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_1Sigmoidlstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_382/mulMullstm_cell_382/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_382/ReluRelulstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_1Mullstm_cell_382/Sigmoid:y:0 lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_382/add_1AddV2lstm_cell_382/mul:z:0lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_2Sigmoidlstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_382/Relu_1Relulstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_2Mullstm_cell_382/Sigmoid_2:y:0"lstm_cell_382/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_382_matmul_readvariableop_resource.lstm_cell_382_matmul_1_readvariableop_resource-lstm_cell_382_biasadd_readvariableop_resource*
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
while_body_2318337*
condR
while_cond_2318336*K
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
NoOpNoOp%^lstm_cell_382/BiasAdd/ReadVariableOp$^lstm_cell_382/MatMul/ReadVariableOp&^lstm_cell_382/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_382/BiasAdd/ReadVariableOp$lstm_cell_382/BiasAdd/ReadVariableOp2J
#lstm_cell_382/MatMul/ReadVariableOp#lstm_cell_382/MatMul/ReadVariableOp2N
%lstm_cell_382/MatMul_1/ReadVariableOp%lstm_cell_382/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2317852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2317852___redundant_placeholder05
1while_while_cond_2317852___redundant_placeholder15
1while_while_cond_2317852___redundant_placeholder25
1while_while_cond_2317852___redundant_placeholder3
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
??
?
#__inference__traced_restore_2322674
file_prefix2
 assignvariableop_dense_88_kernel:
.
 assignvariableop_1_dense_88_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_264_lstm_cell_264_kernel:	?M
:assignvariableop_8_lstm_264_lstm_cell_264_recurrent_kernel:	d?=
.assignvariableop_9_lstm_264_lstm_cell_264_bias:	?D
1assignvariableop_10_lstm_265_lstm_cell_265_kernel:	d?N
;assignvariableop_11_lstm_265_lstm_cell_265_recurrent_kernel:	2?>
/assignvariableop_12_lstm_265_lstm_cell_265_bias:	?C
1assignvariableop_13_lstm_266_lstm_cell_266_kernel:2(M
;assignvariableop_14_lstm_266_lstm_cell_266_recurrent_kernel:
(=
/assignvariableop_15_lstm_266_lstm_cell_266_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_88_kernel_m:
6
(assignvariableop_19_adam_dense_88_bias_m:K
8assignvariableop_20_adam_lstm_264_lstm_cell_264_kernel_m:	?U
Bassignvariableop_21_adam_lstm_264_lstm_cell_264_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_264_lstm_cell_264_bias_m:	?K
8assignvariableop_23_adam_lstm_265_lstm_cell_265_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_265_lstm_cell_265_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_265_lstm_cell_265_bias_m:	?J
8assignvariableop_26_adam_lstm_266_lstm_cell_266_kernel_m:2(T
Bassignvariableop_27_adam_lstm_266_lstm_cell_266_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_266_lstm_cell_266_bias_m:(<
*assignvariableop_29_adam_dense_88_kernel_v:
6
(assignvariableop_30_adam_dense_88_bias_v:K
8assignvariableop_31_adam_lstm_264_lstm_cell_264_kernel_v:	?U
Bassignvariableop_32_adam_lstm_264_lstm_cell_264_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_264_lstm_cell_264_bias_v:	?K
8assignvariableop_34_adam_lstm_265_lstm_cell_265_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_265_lstm_cell_265_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_265_lstm_cell_265_bias_v:	?J
8assignvariableop_37_adam_lstm_266_lstm_cell_266_kernel_v:2(T
Bassignvariableop_38_adam_lstm_266_lstm_cell_266_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_266_lstm_cell_266_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_88_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_88_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_264_lstm_cell_264_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_264_lstm_cell_264_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_264_lstm_cell_264_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_265_lstm_cell_265_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_265_lstm_cell_265_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_265_lstm_cell_265_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_266_lstm_cell_266_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_266_lstm_cell_266_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_266_lstm_cell_266_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_88_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_88_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_264_lstm_cell_264_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_264_lstm_cell_264_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_264_lstm_cell_264_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_265_lstm_cell_265_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_265_lstm_cell_265_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_265_lstm_cell_265_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_266_lstm_cell_266_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_266_lstm_cell_266_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_266_lstm_cell_266_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_88_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_88_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_264_lstm_cell_264_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_264_lstm_cell_264_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_264_lstm_cell_264_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_265_lstm_cell_265_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_265_lstm_cell_265_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_265_lstm_cell_265_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_266_lstm_cell_266_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_266_lstm_cell_266_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_266_lstm_cell_266_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2319032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2319032___redundant_placeholder05
1while_while_cond_2319032___redundant_placeholder15
1while_while_cond_2319032___redundant_placeholder25
1while_while_cond_2319032___redundant_placeholder3
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
)sequential_88_lstm_265_while_body_2316843J
Fsequential_88_lstm_265_while_sequential_88_lstm_265_while_loop_counterP
Lsequential_88_lstm_265_while_sequential_88_lstm_265_while_maximum_iterations,
(sequential_88_lstm_265_while_placeholder.
*sequential_88_lstm_265_while_placeholder_1.
*sequential_88_lstm_265_while_placeholder_2.
*sequential_88_lstm_265_while_placeholder_3I
Esequential_88_lstm_265_while_sequential_88_lstm_265_strided_slice_1_0?
?sequential_88_lstm_265_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_265_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_88_lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0:	d?`
Msequential_88_lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?[
Lsequential_88_lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0:	?)
%sequential_88_lstm_265_while_identity+
'sequential_88_lstm_265_while_identity_1+
'sequential_88_lstm_265_while_identity_2+
'sequential_88_lstm_265_while_identity_3+
'sequential_88_lstm_265_while_identity_4+
'sequential_88_lstm_265_while_identity_5G
Csequential_88_lstm_265_while_sequential_88_lstm_265_strided_slice_1?
sequential_88_lstm_265_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_265_tensorarrayunstack_tensorlistfromtensor\
Isequential_88_lstm_265_while_lstm_cell_382_matmul_readvariableop_resource:	d?^
Ksequential_88_lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource:	2?Y
Jsequential_88_lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource:	???Asequential_88/lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp?@sequential_88/lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp?Bsequential_88/lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp?
Nsequential_88/lstm_265/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_88/lstm_265/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_88_lstm_265_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_265_tensorarrayunstack_tensorlistfromtensor_0(sequential_88_lstm_265_while_placeholderWsequential_88/lstm_265/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_88/lstm_265/while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOpKsequential_88_lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_88/lstm_265/while/lstm_cell_382/MatMulMatMulGsequential_88/lstm_265/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_88/lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_88/lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOpMsequential_88_lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_88/lstm_265/while/lstm_cell_382/MatMul_1MatMul*sequential_88_lstm_265_while_placeholder_2Jsequential_88/lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_88/lstm_265/while/lstm_cell_382/addAddV2;sequential_88/lstm_265/while/lstm_cell_382/MatMul:product:0=sequential_88/lstm_265/while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_88/lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOpLsequential_88_lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_88/lstm_265/while/lstm_cell_382/BiasAddBiasAdd2sequential_88/lstm_265/while/lstm_cell_382/add:z:0Isequential_88/lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_88/lstm_265/while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_88/lstm_265/while/lstm_cell_382/splitSplitCsequential_88/lstm_265/while/lstm_cell_382/split/split_dim:output:0;sequential_88/lstm_265/while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_88/lstm_265/while/lstm_cell_382/SigmoidSigmoid9sequential_88/lstm_265/while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_88/lstm_265/while/lstm_cell_382/Sigmoid_1Sigmoid9sequential_88/lstm_265/while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_88/lstm_265/while/lstm_cell_382/mulMul8sequential_88/lstm_265/while/lstm_cell_382/Sigmoid_1:y:0*sequential_88_lstm_265_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_88/lstm_265/while/lstm_cell_382/ReluRelu9sequential_88/lstm_265/while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_88/lstm_265/while/lstm_cell_382/mul_1Mul6sequential_88/lstm_265/while/lstm_cell_382/Sigmoid:y:0=sequential_88/lstm_265/while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_88/lstm_265/while/lstm_cell_382/add_1AddV22sequential_88/lstm_265/while/lstm_cell_382/mul:z:04sequential_88/lstm_265/while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_88/lstm_265/while/lstm_cell_382/Sigmoid_2Sigmoid9sequential_88/lstm_265/while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_88/lstm_265/while/lstm_cell_382/Relu_1Relu4sequential_88/lstm_265/while/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_88/lstm_265/while/lstm_cell_382/mul_2Mul8sequential_88/lstm_265/while/lstm_cell_382/Sigmoid_2:y:0?sequential_88/lstm_265/while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_88/lstm_265/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_88_lstm_265_while_placeholder_1(sequential_88_lstm_265_while_placeholder4sequential_88/lstm_265/while/lstm_cell_382/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_88/lstm_265/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_88/lstm_265/while/addAddV2(sequential_88_lstm_265_while_placeholder+sequential_88/lstm_265/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_88/lstm_265/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_88/lstm_265/while/add_1AddV2Fsequential_88_lstm_265_while_sequential_88_lstm_265_while_loop_counter-sequential_88/lstm_265/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_88/lstm_265/while/IdentityIdentity&sequential_88/lstm_265/while/add_1:z:0"^sequential_88/lstm_265/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_265/while/Identity_1IdentityLsequential_88_lstm_265_while_sequential_88_lstm_265_while_maximum_iterations"^sequential_88/lstm_265/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_265/while/Identity_2Identity$sequential_88/lstm_265/while/add:z:0"^sequential_88/lstm_265/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_265/while/Identity_3IdentityQsequential_88/lstm_265/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_88/lstm_265/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_265/while/Identity_4Identity4sequential_88/lstm_265/while/lstm_cell_382/mul_2:z:0"^sequential_88/lstm_265/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_88/lstm_265/while/Identity_5Identity4sequential_88/lstm_265/while/lstm_cell_382/add_1:z:0"^sequential_88/lstm_265/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_88/lstm_265/while/NoOpNoOpB^sequential_88/lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOpA^sequential_88/lstm_265/while/lstm_cell_382/MatMul/ReadVariableOpC^sequential_88/lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_88_lstm_265_while_identity.sequential_88/lstm_265/while/Identity:output:0"[
'sequential_88_lstm_265_while_identity_10sequential_88/lstm_265/while/Identity_1:output:0"[
'sequential_88_lstm_265_while_identity_20sequential_88/lstm_265/while/Identity_2:output:0"[
'sequential_88_lstm_265_while_identity_30sequential_88/lstm_265/while/Identity_3:output:0"[
'sequential_88_lstm_265_while_identity_40sequential_88/lstm_265/while/Identity_4:output:0"[
'sequential_88_lstm_265_while_identity_50sequential_88/lstm_265/while/Identity_5:output:0"?
Jsequential_88_lstm_265_while_lstm_cell_382_biasadd_readvariableop_resourceLsequential_88_lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0"?
Ksequential_88_lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resourceMsequential_88_lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0"?
Isequential_88_lstm_265_while_lstm_cell_382_matmul_readvariableop_resourceKsequential_88_lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0"?
Csequential_88_lstm_265_while_sequential_88_lstm_265_strided_slice_1Esequential_88_lstm_265_while_sequential_88_lstm_265_strided_slice_1_0"?
sequential_88_lstm_265_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_265_tensorarrayunstack_tensorlistfromtensor?sequential_88_lstm_265_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_265_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_88/lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOpAsequential_88/lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp2?
@sequential_88/lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp@sequential_88/lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp2?
Bsequential_88/lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOpBsequential_88/lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2321575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_383_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_383_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_383_matmul_readvariableop_resource:2(F
4while_lstm_cell_383_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_383_biasadd_readvariableop_resource:(??*while/lstm_cell_383/BiasAdd/ReadVariableOp?)while/lstm_cell_383/MatMul/ReadVariableOp?+while/lstm_cell_383/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_383/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_383/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_383/addAddV2$while/lstm_cell_383/MatMul:product:0&while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_383/BiasAddBiasAddwhile/lstm_cell_383/add:z:02while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_383/splitSplit,while/lstm_cell_383/split/split_dim:output:0$while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_383/SigmoidSigmoid"while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_1Sigmoid"while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mulMul!while/lstm_cell_383/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_383/ReluRelu"while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_1Mulwhile/lstm_cell_383/Sigmoid:y:0&while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/add_1AddV2while/lstm_cell_383/mul:z:0while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_2Sigmoid"while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_383/Relu_1Reluwhile/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_2Mul!while/lstm_cell_383/Sigmoid_2:y:0(while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_383/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_383/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_383/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_383/BiasAdd/ReadVariableOp*^while/lstm_cell_383/MatMul/ReadVariableOp,^while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_383_biasadd_readvariableop_resource5while_lstm_cell_383_biasadd_readvariableop_resource_0"n
4while_lstm_cell_383_matmul_1_readvariableop_resource6while_lstm_cell_383_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_383_matmul_readvariableop_resource4while_lstm_cell_383_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_383/BiasAdd/ReadVariableOp*while/lstm_cell_383/BiasAdd/ReadVariableOp2V
)while/lstm_cell_383/MatMul/ReadVariableOp)while/lstm_cell_383/MatMul/ReadVariableOp2Z
+while/lstm_cell_383/MatMul_1/ReadVariableOp+while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2321244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2321244___redundant_placeholder05
1while_while_cond_2321244___redundant_placeholder15
1while_while_cond_2321244___redundant_placeholder25
1while_while_cond_2321244___redundant_placeholder3
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
/__inference_lstm_cell_383_layer_call_fn_2322337

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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317985o
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
*__inference_lstm_266_layer_call_fn_2321505

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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318571o
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
while_cond_2318486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2318486___redundant_placeholder05
1while_while_cond_2318486___redundant_placeholder15
1while_while_cond_2318486___redundant_placeholder25
1while_while_cond_2318486___redundant_placeholder3
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
*__inference_lstm_265_layer_call_fn_2320878
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2317763|
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2322401

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

lstm_264_while_body_2319872.
*lstm_264_while_lstm_264_while_loop_counter4
0lstm_264_while_lstm_264_while_maximum_iterations
lstm_264_while_placeholder 
lstm_264_while_placeholder_1 
lstm_264_while_placeholder_2 
lstm_264_while_placeholder_3-
)lstm_264_while_lstm_264_strided_slice_1_0i
elstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0:	?R
?lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?M
>lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
lstm_264_while_identity
lstm_264_while_identity_1
lstm_264_while_identity_2
lstm_264_while_identity_3
lstm_264_while_identity_4
lstm_264_while_identity_5+
'lstm_264_while_lstm_264_strided_slice_1g
clstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensorN
;lstm_264_while_lstm_cell_381_matmul_readvariableop_resource:	?P
=lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource:	d?K
<lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource:	???3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp?2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp?4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp?
@lstm_264/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_264/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensor_0lstm_264_while_placeholderIlstm_264/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp=lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_264/while/lstm_cell_381/MatMulMatMul9lstm_264/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp?lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_264/while/lstm_cell_381/MatMul_1MatMullstm_264_while_placeholder_2<lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_264/while/lstm_cell_381/addAddV2-lstm_264/while/lstm_cell_381/MatMul:product:0/lstm_264/while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp>lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_264/while/lstm_cell_381/BiasAddBiasAdd$lstm_264/while/lstm_cell_381/add:z:0;lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_264/while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_264/while/lstm_cell_381/splitSplit5lstm_264/while/lstm_cell_381/split/split_dim:output:0-lstm_264/while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_264/while/lstm_cell_381/SigmoidSigmoid+lstm_264/while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_264/while/lstm_cell_381/Sigmoid_1Sigmoid+lstm_264/while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_264/while/lstm_cell_381/mulMul*lstm_264/while/lstm_cell_381/Sigmoid_1:y:0lstm_264_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_264/while/lstm_cell_381/ReluRelu+lstm_264/while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_264/while/lstm_cell_381/mul_1Mul(lstm_264/while/lstm_cell_381/Sigmoid:y:0/lstm_264/while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_264/while/lstm_cell_381/add_1AddV2$lstm_264/while/lstm_cell_381/mul:z:0&lstm_264/while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_264/while/lstm_cell_381/Sigmoid_2Sigmoid+lstm_264/while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_264/while/lstm_cell_381/Relu_1Relu&lstm_264/while/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_264/while/lstm_cell_381/mul_2Mul*lstm_264/while/lstm_cell_381/Sigmoid_2:y:01lstm_264/while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_264/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_264_while_placeholder_1lstm_264_while_placeholder&lstm_264/while/lstm_cell_381/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_264/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_264/while/addAddV2lstm_264_while_placeholderlstm_264/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_264/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_264/while/add_1AddV2*lstm_264_while_lstm_264_while_loop_counterlstm_264/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_264/while/IdentityIdentitylstm_264/while/add_1:z:0^lstm_264/while/NoOp*
T0*
_output_shapes
: ?
lstm_264/while/Identity_1Identity0lstm_264_while_lstm_264_while_maximum_iterations^lstm_264/while/NoOp*
T0*
_output_shapes
: t
lstm_264/while/Identity_2Identitylstm_264/while/add:z:0^lstm_264/while/NoOp*
T0*
_output_shapes
: ?
lstm_264/while/Identity_3IdentityClstm_264/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_264/while/NoOp*
T0*
_output_shapes
: ?
lstm_264/while/Identity_4Identity&lstm_264/while/lstm_cell_381/mul_2:z:0^lstm_264/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_264/while/Identity_5Identity&lstm_264/while/lstm_cell_381/add_1:z:0^lstm_264/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_264/while/NoOpNoOp4^lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp3^lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp5^lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_264_while_identity lstm_264/while/Identity:output:0"?
lstm_264_while_identity_1"lstm_264/while/Identity_1:output:0"?
lstm_264_while_identity_2"lstm_264/while/Identity_2:output:0"?
lstm_264_while_identity_3"lstm_264/while/Identity_3:output:0"?
lstm_264_while_identity_4"lstm_264/while/Identity_4:output:0"?
lstm_264_while_identity_5"lstm_264/while/Identity_5:output:0"T
'lstm_264_while_lstm_264_strided_slice_1)lstm_264_while_lstm_264_strided_slice_1_0"~
<lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource>lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0"?
=lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource?lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0"|
;lstm_264_while_lstm_cell_381_matmul_readvariableop_resource=lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0"?
clstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensorelstm_264_while_tensorarrayv2read_tensorlistgetitem_lstm_264_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp3lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp2h
2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp2lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp2l
4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp4lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_2322544
file_prefix.
*savev2_dense_88_kernel_read_readvariableop,
(savev2_dense_88_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_264_lstm_cell_264_kernel_read_readvariableopF
Bsavev2_lstm_264_lstm_cell_264_recurrent_kernel_read_readvariableop:
6savev2_lstm_264_lstm_cell_264_bias_read_readvariableop<
8savev2_lstm_265_lstm_cell_265_kernel_read_readvariableopF
Bsavev2_lstm_265_lstm_cell_265_recurrent_kernel_read_readvariableop:
6savev2_lstm_265_lstm_cell_265_bias_read_readvariableop<
8savev2_lstm_266_lstm_cell_266_kernel_read_readvariableopF
Bsavev2_lstm_266_lstm_cell_266_recurrent_kernel_read_readvariableop:
6savev2_lstm_266_lstm_cell_266_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_88_kernel_m_read_readvariableop3
/savev2_adam_dense_88_bias_m_read_readvariableopC
?savev2_adam_lstm_264_lstm_cell_264_kernel_m_read_readvariableopM
Isavev2_adam_lstm_264_lstm_cell_264_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_264_lstm_cell_264_bias_m_read_readvariableopC
?savev2_adam_lstm_265_lstm_cell_265_kernel_m_read_readvariableopM
Isavev2_adam_lstm_265_lstm_cell_265_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_265_lstm_cell_265_bias_m_read_readvariableopC
?savev2_adam_lstm_266_lstm_cell_266_kernel_m_read_readvariableopM
Isavev2_adam_lstm_266_lstm_cell_266_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_266_lstm_cell_266_bias_m_read_readvariableop5
1savev2_adam_dense_88_kernel_v_read_readvariableop3
/savev2_adam_dense_88_bias_v_read_readvariableopC
?savev2_adam_lstm_264_lstm_cell_264_kernel_v_read_readvariableopM
Isavev2_adam_lstm_264_lstm_cell_264_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_264_lstm_cell_264_bias_v_read_readvariableopC
?savev2_adam_lstm_265_lstm_cell_265_kernel_v_read_readvariableopM
Isavev2_adam_lstm_265_lstm_cell_265_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_265_lstm_cell_265_bias_v_read_readvariableopC
?savev2_adam_lstm_266_lstm_cell_266_kernel_v_read_readvariableopM
Isavev2_adam_lstm_266_lstm_cell_266_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_266_lstm_cell_266_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_88_kernel_read_readvariableop(savev2_dense_88_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_264_lstm_cell_264_kernel_read_readvariableopBsavev2_lstm_264_lstm_cell_264_recurrent_kernel_read_readvariableop6savev2_lstm_264_lstm_cell_264_bias_read_readvariableop8savev2_lstm_265_lstm_cell_265_kernel_read_readvariableopBsavev2_lstm_265_lstm_cell_265_recurrent_kernel_read_readvariableop6savev2_lstm_265_lstm_cell_265_bias_read_readvariableop8savev2_lstm_266_lstm_cell_266_kernel_read_readvariableopBsavev2_lstm_266_lstm_cell_266_recurrent_kernel_read_readvariableop6savev2_lstm_266_lstm_cell_266_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_88_kernel_m_read_readvariableop/savev2_adam_dense_88_bias_m_read_readvariableop?savev2_adam_lstm_264_lstm_cell_264_kernel_m_read_readvariableopIsavev2_adam_lstm_264_lstm_cell_264_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_264_lstm_cell_264_bias_m_read_readvariableop?savev2_adam_lstm_265_lstm_cell_265_kernel_m_read_readvariableopIsavev2_adam_lstm_265_lstm_cell_265_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_265_lstm_cell_265_bias_m_read_readvariableop?savev2_adam_lstm_266_lstm_cell_266_kernel_m_read_readvariableopIsavev2_adam_lstm_266_lstm_cell_266_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_266_lstm_cell_266_bias_m_read_readvariableop1savev2_adam_dense_88_kernel_v_read_readvariableop/savev2_adam_dense_88_bias_v_read_readvariableop?savev2_adam_lstm_264_lstm_cell_264_kernel_v_read_readvariableopIsavev2_adam_lstm_264_lstm_cell_264_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_264_lstm_cell_264_bias_v_read_readvariableop?savev2_adam_lstm_265_lstm_cell_265_kernel_v_read_readvariableopIsavev2_adam_lstm_265_lstm_cell_265_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_265_lstm_cell_265_bias_v_read_readvariableop?savev2_adam_lstm_266_lstm_cell_266_kernel_v_read_readvariableopIsavev2_adam_lstm_266_lstm_cell_266_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_266_lstm_cell_266_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
*__inference_lstm_264_layer_call_fn_2320262
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2317413|
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
while_cond_2321387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2321387___redundant_placeholder05
1while_while_cond_2321387___redundant_placeholder15
1while_while_cond_2321387___redundant_placeholder25
1while_while_cond_2321387___redundant_placeholder3
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
)sequential_88_lstm_266_while_cond_2316981J
Fsequential_88_lstm_266_while_sequential_88_lstm_266_while_loop_counterP
Lsequential_88_lstm_266_while_sequential_88_lstm_266_while_maximum_iterations,
(sequential_88_lstm_266_while_placeholder.
*sequential_88_lstm_266_while_placeholder_1.
*sequential_88_lstm_266_while_placeholder_2.
*sequential_88_lstm_266_while_placeholder_3L
Hsequential_88_lstm_266_while_less_sequential_88_lstm_266_strided_slice_1c
_sequential_88_lstm_266_while_sequential_88_lstm_266_while_cond_2316981___redundant_placeholder0c
_sequential_88_lstm_266_while_sequential_88_lstm_266_while_cond_2316981___redundant_placeholder1c
_sequential_88_lstm_266_while_sequential_88_lstm_266_while_cond_2316981___redundant_placeholder2c
_sequential_88_lstm_266_while_sequential_88_lstm_266_while_cond_2316981___redundant_placeholder3)
%sequential_88_lstm_266_while_identity
?
!sequential_88/lstm_266/while/LessLess(sequential_88_lstm_266_while_placeholderHsequential_88_lstm_266_while_less_sequential_88_lstm_266_strided_slice_1*
T0*
_output_shapes
: y
%sequential_88/lstm_266/while/IdentityIdentity%sequential_88/lstm_266/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_88_lstm_266_while_identity.sequential_88/lstm_266/while/Identity:output:0*(
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
while_cond_2321717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2321717___redundant_placeholder05
1while_while_cond_2321717___redundant_placeholder15
1while_while_cond_2321717___redundant_placeholder25
1while_while_cond_2321717___redundant_placeholder3
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321802
inputs_0>
,lstm_cell_383_matmul_readvariableop_resource:2(@
.lstm_cell_383_matmul_1_readvariableop_resource:
(;
-lstm_cell_383_biasadd_readvariableop_resource:(
identity??$lstm_cell_383/BiasAdd/ReadVariableOp?#lstm_cell_383/MatMul/ReadVariableOp?%lstm_cell_383/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_383/MatMul/ReadVariableOpReadVariableOp,lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_383/MatMulMatMulstrided_slice_2:output:0+lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_383/MatMul_1MatMulzeros:output:0-lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_383/addAddV2lstm_cell_383/MatMul:product:0 lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_383/BiasAddBiasAddlstm_cell_383/add:z:0,lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_383/splitSplit&lstm_cell_383/split/split_dim:output:0lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_383/SigmoidSigmoidlstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_1Sigmoidlstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_383/mulMullstm_cell_383/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_383/ReluRelulstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_1Mullstm_cell_383/Sigmoid:y:0 lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_383/add_1AddV2lstm_cell_383/mul:z:0lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_2Sigmoidlstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_383/Relu_1Relulstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_2Mullstm_cell_383/Sigmoid_2:y:0"lstm_cell_383/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_383_matmul_readvariableop_resource.lstm_cell_383_matmul_1_readvariableop_resource-lstm_cell_383_biasadd_readvariableop_resource*
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
while_body_2321718*
condR
while_cond_2321717*K
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
NoOpNoOp%^lstm_cell_383/BiasAdd/ReadVariableOp$^lstm_cell_383/MatMul/ReadVariableOp&^lstm_cell_383/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_383/BiasAdd/ReadVariableOp$lstm_cell_383/BiasAdd/ReadVariableOp2J
#lstm_cell_383/MatMul/ReadVariableOp#lstm_cell_383/MatMul/ReadVariableOp2N
%lstm_cell_383/MatMul_1/ReadVariableOp%lstm_cell_383/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?C
?

lstm_266_while_body_2319723.
*lstm_266_while_lstm_266_while_loop_counter4
0lstm_266_while_lstm_266_while_maximum_iterations
lstm_266_while_placeholder 
lstm_266_while_placeholder_1 
lstm_266_while_placeholder_2 
lstm_266_while_placeholder_3-
)lstm_266_while_lstm_266_strided_slice_1_0i
elstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0:2(Q
?lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(L
>lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0:(
lstm_266_while_identity
lstm_266_while_identity_1
lstm_266_while_identity_2
lstm_266_while_identity_3
lstm_266_while_identity_4
lstm_266_while_identity_5+
'lstm_266_while_lstm_266_strided_slice_1g
clstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensorM
;lstm_266_while_lstm_cell_383_matmul_readvariableop_resource:2(O
=lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource:
(J
<lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource:(??3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp?2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp?4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp?
@lstm_266/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_266/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensor_0lstm_266_while_placeholderIlstm_266/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp=lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_266/while/lstm_cell_383/MatMulMatMul9lstm_266/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp?lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_266/while/lstm_cell_383/MatMul_1MatMullstm_266_while_placeholder_2<lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_266/while/lstm_cell_383/addAddV2-lstm_266/while/lstm_cell_383/MatMul:product:0/lstm_266/while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp>lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_266/while/lstm_cell_383/BiasAddBiasAdd$lstm_266/while/lstm_cell_383/add:z:0;lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_266/while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_266/while/lstm_cell_383/splitSplit5lstm_266/while/lstm_cell_383/split/split_dim:output:0-lstm_266/while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_266/while/lstm_cell_383/SigmoidSigmoid+lstm_266/while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_266/while/lstm_cell_383/Sigmoid_1Sigmoid+lstm_266/while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_266/while/lstm_cell_383/mulMul*lstm_266/while/lstm_cell_383/Sigmoid_1:y:0lstm_266_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_266/while/lstm_cell_383/ReluRelu+lstm_266/while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_266/while/lstm_cell_383/mul_1Mul(lstm_266/while/lstm_cell_383/Sigmoid:y:0/lstm_266/while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_266/while/lstm_cell_383/add_1AddV2$lstm_266/while/lstm_cell_383/mul:z:0&lstm_266/while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_266/while/lstm_cell_383/Sigmoid_2Sigmoid+lstm_266/while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_266/while/lstm_cell_383/Relu_1Relu&lstm_266/while/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_266/while/lstm_cell_383/mul_2Mul*lstm_266/while/lstm_cell_383/Sigmoid_2:y:01lstm_266/while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_266/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_266_while_placeholder_1lstm_266_while_placeholder&lstm_266/while/lstm_cell_383/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_266/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_266/while/addAddV2lstm_266_while_placeholderlstm_266/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_266/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_266/while/add_1AddV2*lstm_266_while_lstm_266_while_loop_counterlstm_266/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_266/while/IdentityIdentitylstm_266/while/add_1:z:0^lstm_266/while/NoOp*
T0*
_output_shapes
: ?
lstm_266/while/Identity_1Identity0lstm_266_while_lstm_266_while_maximum_iterations^lstm_266/while/NoOp*
T0*
_output_shapes
: t
lstm_266/while/Identity_2Identitylstm_266/while/add:z:0^lstm_266/while/NoOp*
T0*
_output_shapes
: ?
lstm_266/while/Identity_3IdentityClstm_266/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_266/while/NoOp*
T0*
_output_shapes
: ?
lstm_266/while/Identity_4Identity&lstm_266/while/lstm_cell_383/mul_2:z:0^lstm_266/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_266/while/Identity_5Identity&lstm_266/while/lstm_cell_383/add_1:z:0^lstm_266/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_266/while/NoOpNoOp4^lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp3^lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp5^lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_266_while_identity lstm_266/while/Identity:output:0"?
lstm_266_while_identity_1"lstm_266/while/Identity_1:output:0"?
lstm_266_while_identity_2"lstm_266/while/Identity_2:output:0"?
lstm_266_while_identity_3"lstm_266/while/Identity_3:output:0"?
lstm_266_while_identity_4"lstm_266/while/Identity_4:output:0"?
lstm_266_while_identity_5"lstm_266/while/Identity_5:output:0"T
'lstm_266_while_lstm_266_strided_slice_1)lstm_266_while_lstm_266_strided_slice_1_0"~
<lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource>lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0"?
=lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource?lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0"|
;lstm_266_while_lstm_cell_383_matmul_readvariableop_resource=lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0"?
clstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensorelstm_266_while_tensorarrayv2read_tensorlistgetitem_lstm_266_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp3lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp2h
2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp2lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp2l
4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp4lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2321861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_383_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_383_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_383_matmul_readvariableop_resource:2(F
4while_lstm_cell_383_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_383_biasadd_readvariableop_resource:(??*while/lstm_cell_383/BiasAdd/ReadVariableOp?)while/lstm_cell_383/MatMul/ReadVariableOp?+while/lstm_cell_383/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_383/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_383/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_383/addAddV2$while/lstm_cell_383/MatMul:product:0&while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_383/BiasAddBiasAddwhile/lstm_cell_383/add:z:02while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_383/splitSplit,while/lstm_cell_383/split/split_dim:output:0$while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_383/SigmoidSigmoid"while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_1Sigmoid"while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mulMul!while/lstm_cell_383/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_383/ReluRelu"while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_1Mulwhile/lstm_cell_383/Sigmoid:y:0&while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/add_1AddV2while/lstm_cell_383/mul:z:0while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_2Sigmoid"while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_383/Relu_1Reluwhile/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_2Mul!while/lstm_cell_383/Sigmoid_2:y:0(while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_383/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_383/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_383/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_383/BiasAdd/ReadVariableOp*^while/lstm_cell_383/MatMul/ReadVariableOp,^while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_383_biasadd_readvariableop_resource5while_lstm_cell_383_biasadd_readvariableop_resource_0"n
4while_lstm_cell_383_matmul_1_readvariableop_resource6while_lstm_cell_383_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_383_matmul_readvariableop_resource4while_lstm_cell_383_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_383/BiasAdd/ReadVariableOp*while/lstm_cell_383/BiasAdd/ReadVariableOp2V
)while/lstm_cell_383/MatMul/ReadVariableOp)while/lstm_cell_383/MatMul/ReadVariableOp2Z
+while/lstm_cell_383/MatMul_1/ReadVariableOp+while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_264_layer_call_fn_2320251
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2317222|
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
*__inference_lstm_265_layer_call_fn_2320900

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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318952s
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
while_body_2318868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_382_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_382_matmul_readvariableop_resource:	d?G
4while_lstm_cell_382_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_382_biasadd_readvariableop_resource:	???*while/lstm_cell_382/BiasAdd/ReadVariableOp?)while/lstm_cell_382/MatMul/ReadVariableOp?+while/lstm_cell_382/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_382/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_382/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_382/addAddV2$while/lstm_cell_382/MatMul:product:0&while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_382/BiasAddBiasAddwhile/lstm_cell_382/add:z:02while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_382/splitSplit,while/lstm_cell_382/split/split_dim:output:0$while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_382/SigmoidSigmoid"while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_1Sigmoid"while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mulMul!while/lstm_cell_382/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_382/ReluRelu"while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_1Mulwhile/lstm_cell_382/Sigmoid:y:0&while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/add_1AddV2while/lstm_cell_382/mul:z:0while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_2Sigmoid"while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_382/Relu_1Reluwhile/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_2Mul!while/lstm_cell_382/Sigmoid_2:y:0(while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_382/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_382/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_382/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_382/BiasAdd/ReadVariableOp*^while/lstm_cell_382/MatMul/ReadVariableOp,^while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_382_biasadd_readvariableop_resource5while_lstm_cell_382_biasadd_readvariableop_resource_0"n
4while_lstm_cell_382_matmul_1_readvariableop_resource6while_lstm_cell_382_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_382_matmul_readvariableop_resource4while_lstm_cell_382_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_382/BiasAdd/ReadVariableOp*while/lstm_cell_382/BiasAdd/ReadVariableOp2V
)while/lstm_cell_382/MatMul/ReadVariableOp)while/lstm_cell_382/MatMul/ReadVariableOp2Z
+while/lstm_cell_382/MatMul_1/ReadVariableOp+while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321043
inputs_0?
,lstm_cell_382_matmul_readvariableop_resource:	d?A
.lstm_cell_382_matmul_1_readvariableop_resource:	2?<
-lstm_cell_382_biasadd_readvariableop_resource:	?
identity??$lstm_cell_382/BiasAdd/ReadVariableOp?#lstm_cell_382/MatMul/ReadVariableOp?%lstm_cell_382/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_382/MatMul/ReadVariableOpReadVariableOp,lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_382/MatMulMatMulstrided_slice_2:output:0+lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_382/MatMul_1MatMulzeros:output:0-lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_382/addAddV2lstm_cell_382/MatMul:product:0 lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_382/BiasAddBiasAddlstm_cell_382/add:z:0,lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_382/splitSplit&lstm_cell_382/split/split_dim:output:0lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_382/SigmoidSigmoidlstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_1Sigmoidlstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_382/mulMullstm_cell_382/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_382/ReluRelulstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_1Mullstm_cell_382/Sigmoid:y:0 lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_382/add_1AddV2lstm_cell_382/mul:z:0lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_2Sigmoidlstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_382/Relu_1Relulstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_2Mullstm_cell_382/Sigmoid_2:y:0"lstm_cell_382/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_382_matmul_readvariableop_resource.lstm_cell_382_matmul_1_readvariableop_resource-lstm_cell_382_biasadd_readvariableop_resource*
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
while_body_2320959*
condR
while_cond_2320958*K
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
NoOpNoOp%^lstm_cell_382/BiasAdd/ReadVariableOp$^lstm_cell_382/MatMul/ReadVariableOp&^lstm_cell_382/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_382/BiasAdd/ReadVariableOp$lstm_cell_382/BiasAdd/ReadVariableOp2J
#lstm_cell_382/MatMul/ReadVariableOp#lstm_cell_382/MatMul/ReadVariableOp2N
%lstm_cell_382/MatMul_1/ReadVariableOp%lstm_cell_382/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321329

inputs?
,lstm_cell_382_matmul_readvariableop_resource:	d?A
.lstm_cell_382_matmul_1_readvariableop_resource:	2?<
-lstm_cell_382_biasadd_readvariableop_resource:	?
identity??$lstm_cell_382/BiasAdd/ReadVariableOp?#lstm_cell_382/MatMul/ReadVariableOp?%lstm_cell_382/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_382/MatMul/ReadVariableOpReadVariableOp,lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_382/MatMulMatMulstrided_slice_2:output:0+lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_382/MatMul_1MatMulzeros:output:0-lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_382/addAddV2lstm_cell_382/MatMul:product:0 lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_382/BiasAddBiasAddlstm_cell_382/add:z:0,lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_382/splitSplit&lstm_cell_382/split/split_dim:output:0lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_382/SigmoidSigmoidlstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_1Sigmoidlstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_382/mulMullstm_cell_382/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_382/ReluRelulstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_1Mullstm_cell_382/Sigmoid:y:0 lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_382/add_1AddV2lstm_cell_382/mul:z:0lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_2Sigmoidlstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_382/Relu_1Relulstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_2Mullstm_cell_382/Sigmoid_2:y:0"lstm_cell_382/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_382_matmul_readvariableop_resource.lstm_cell_382_matmul_1_readvariableop_resource-lstm_cell_382_biasadd_readvariableop_resource*
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
while_body_2321245*
condR
while_cond_2321244*K
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
NoOpNoOp%^lstm_cell_382/BiasAdd/ReadVariableOp$^lstm_cell_382/MatMul/ReadVariableOp&^lstm_cell_382/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_382/BiasAdd/ReadVariableOp$lstm_cell_382/BiasAdd/ReadVariableOp2J
#lstm_cell_382/MatMul/ReadVariableOp#lstm_cell_382/MatMul/ReadVariableOp2N
%lstm_cell_382/MatMul_1/ReadVariableOp%lstm_cell_382/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2317693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2317693___redundant_placeholder05
1while_while_cond_2317693___redundant_placeholder15
1while_while_cond_2317693___redundant_placeholder25
1while_while_cond_2317693___redundant_placeholder3
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
while_body_2318703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_383_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_383_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_383_matmul_readvariableop_resource:2(F
4while_lstm_cell_383_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_383_biasadd_readvariableop_resource:(??*while/lstm_cell_383/BiasAdd/ReadVariableOp?)while/lstm_cell_383/MatMul/ReadVariableOp?+while/lstm_cell_383/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_383/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_383/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_383/addAddV2$while/lstm_cell_383/MatMul:product:0&while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_383/BiasAddBiasAddwhile/lstm_cell_383/add:z:02while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_383/splitSplit,while/lstm_cell_383/split/split_dim:output:0$while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_383/SigmoidSigmoid"while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_1Sigmoid"while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mulMul!while/lstm_cell_383/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_383/ReluRelu"while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_1Mulwhile/lstm_cell_383/Sigmoid:y:0&while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/add_1AddV2while/lstm_cell_383/mul:z:0while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_2Sigmoid"while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_383/Relu_1Reluwhile/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_2Mul!while/lstm_cell_383/Sigmoid_2:y:0(while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_383/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_383/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_383/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_383/BiasAdd/ReadVariableOp*^while/lstm_cell_383/MatMul/ReadVariableOp,^while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_383_biasadd_readvariableop_resource5while_lstm_cell_383_biasadd_readvariableop_resource_0"n
4while_lstm_cell_383_matmul_1_readvariableop_resource6while_lstm_cell_383_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_383_matmul_readvariableop_resource4while_lstm_cell_383_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_383/BiasAdd/ReadVariableOp*while/lstm_cell_383/BiasAdd/ReadVariableOp2V
)while/lstm_cell_383/MatMul/ReadVariableOp)while/lstm_cell_383/MatMul/ReadVariableOp2Z
+while/lstm_cell_383/MatMul_1/ReadVariableOp+while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2320342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2320342___redundant_placeholder05
1while_while_cond_2320342___redundant_placeholder15
1while_while_cond_2320342___redundant_placeholder25
1while_while_cond_2320342___redundant_placeholder3
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
while_cond_2317343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2317343___redundant_placeholder05
1while_while_cond_2317343___redundant_placeholder15
1while_while_cond_2317343___redundant_placeholder25
1while_while_cond_2317343___redundant_placeholder3
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2318596

inputs#
lstm_264_2318272:	?#
lstm_264_2318274:	d?
lstm_264_2318276:	?#
lstm_265_2318422:	d?#
lstm_265_2318424:	2?
lstm_265_2318426:	?"
lstm_266_2318572:2("
lstm_266_2318574:
(
lstm_266_2318576:("
dense_88_2318590:

dense_88_2318592:
identity?? dense_88/StatefulPartitionedCall? lstm_264/StatefulPartitionedCall? lstm_265/StatefulPartitionedCall? lstm_266/StatefulPartitionedCall?
 lstm_264/StatefulPartitionedCallStatefulPartitionedCallinputslstm_264_2318272lstm_264_2318274lstm_264_2318276*
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2318271?
 lstm_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_264/StatefulPartitionedCall:output:0lstm_265_2318422lstm_265_2318424lstm_265_2318426*
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318421?
 lstm_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_265/StatefulPartitionedCall:output:0lstm_266_2318572lstm_266_2318574lstm_266_2318576*
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318571?
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)lstm_266/StatefulPartitionedCall:output:0dense_88_2318590dense_88_2318592*
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
E__inference_dense_88_layer_call_and_return_conditional_losses_2318589x
IdentityIdentity)dense_88/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_88/StatefulPartitionedCall!^lstm_264/StatefulPartitionedCall!^lstm_265/StatefulPartitionedCall!^lstm_266/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 lstm_264/StatefulPartitionedCall lstm_264/StatefulPartitionedCall2D
 lstm_265/StatefulPartitionedCall lstm_265/StatefulPartitionedCall2D
 lstm_266/StatefulPartitionedCall lstm_266/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2320772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_381_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_381_matmul_readvariableop_resource:	?G
4while_lstm_cell_381_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_381_biasadd_readvariableop_resource:	???*while/lstm_cell_381/BiasAdd/ReadVariableOp?)while/lstm_cell_381/MatMul/ReadVariableOp?+while/lstm_cell_381/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_381/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_381/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_381/addAddV2$while/lstm_cell_381/MatMul:product:0&while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_381/BiasAddBiasAddwhile/lstm_cell_381/add:z:02while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_381/splitSplit,while/lstm_cell_381/split/split_dim:output:0$while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_381/SigmoidSigmoid"while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_1Sigmoid"while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mulMul!while/lstm_cell_381/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_381/ReluRelu"while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_1Mulwhile/lstm_cell_381/Sigmoid:y:0&while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/add_1AddV2while/lstm_cell_381/mul:z:0while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_2Sigmoid"while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_381/Relu_1Reluwhile/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_2Mul!while/lstm_cell_381/Sigmoid_2:y:0(while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_381/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_381/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_381/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_381/BiasAdd/ReadVariableOp*^while/lstm_cell_381/MatMul/ReadVariableOp,^while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_381_biasadd_readvariableop_resource5while_lstm_cell_381_biasadd_readvariableop_resource_0"n
4while_lstm_cell_381_matmul_1_readvariableop_resource6while_lstm_cell_381_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_381_matmul_readvariableop_resource4while_lstm_cell_381_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_381/BiasAdd/ReadVariableOp*while/lstm_cell_381/BiasAdd/ReadVariableOp2V
)while/lstm_cell_381/MatMul/ReadVariableOp)while/lstm_cell_381/MatMul/ReadVariableOp2Z
+while/lstm_cell_381/MatMul_1/ReadVariableOp+while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_88_layer_call_fn_2322097

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
E__inference_dense_88_layer_call_and_return_conditional_losses_2318589o
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
?J
?
E__inference_lstm_264_layer_call_and_return_conditional_losses_2319117

inputs?
,lstm_cell_381_matmul_readvariableop_resource:	?A
.lstm_cell_381_matmul_1_readvariableop_resource:	d?<
-lstm_cell_381_biasadd_readvariableop_resource:	?
identity??$lstm_cell_381/BiasAdd/ReadVariableOp?#lstm_cell_381/MatMul/ReadVariableOp?%lstm_cell_381/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_381/MatMul/ReadVariableOpReadVariableOp,lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_381/MatMulMatMulstrided_slice_2:output:0+lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_381/MatMul_1MatMulzeros:output:0-lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_381/addAddV2lstm_cell_381/MatMul:product:0 lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_381/BiasAddBiasAddlstm_cell_381/add:z:0,lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_381/splitSplit&lstm_cell_381/split/split_dim:output:0lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_381/SigmoidSigmoidlstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_1Sigmoidlstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_381/mulMullstm_cell_381/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_381/ReluRelulstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_1Mullstm_cell_381/Sigmoid:y:0 lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_381/add_1AddV2lstm_cell_381/mul:z:0lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_2Sigmoidlstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_381/Relu_1Relulstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_2Mullstm_cell_381/Sigmoid_2:y:0"lstm_cell_381/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_381_matmul_readvariableop_resource.lstm_cell_381_matmul_1_readvariableop_resource-lstm_cell_381_biasadd_readvariableop_resource*
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
while_body_2319033*
condR
while_cond_2319032*K
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
NoOpNoOp%^lstm_cell_381/BiasAdd/ReadVariableOp$^lstm_cell_381/MatMul/ReadVariableOp&^lstm_cell_381/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_381/BiasAdd/ReadVariableOp$lstm_cell_381/BiasAdd/ReadVariableOp2J
#lstm_cell_381/MatMul/ReadVariableOp#lstm_cell_381/MatMul/ReadVariableOp2N
%lstm_cell_381/MatMul_1/ReadVariableOp%lstm_cell_381/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2317152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2317152___redundant_placeholder05
1while_while_cond_2317152___redundant_placeholder15
1while_while_cond_2317152___redundant_placeholder25
1while_while_cond_2317152___redundant_placeholder3
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
while_cond_2321101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2321101___redundant_placeholder05
1while_while_cond_2321101___redundant_placeholder15
1while_while_cond_2321101___redundant_placeholder25
1while_while_cond_2321101___redundant_placeholder3
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2322088

inputs>
,lstm_cell_383_matmul_readvariableop_resource:2(@
.lstm_cell_383_matmul_1_readvariableop_resource:
(;
-lstm_cell_383_biasadd_readvariableop_resource:(
identity??$lstm_cell_383/BiasAdd/ReadVariableOp?#lstm_cell_383/MatMul/ReadVariableOp?%lstm_cell_383/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_383/MatMul/ReadVariableOpReadVariableOp,lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_383/MatMulMatMulstrided_slice_2:output:0+lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_383/MatMul_1MatMulzeros:output:0-lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_383/addAddV2lstm_cell_383/MatMul:product:0 lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_383/BiasAddBiasAddlstm_cell_383/add:z:0,lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_383/splitSplit&lstm_cell_383/split/split_dim:output:0lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_383/SigmoidSigmoidlstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_1Sigmoidlstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_383/mulMullstm_cell_383/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_383/ReluRelulstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_1Mullstm_cell_383/Sigmoid:y:0 lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_383/add_1AddV2lstm_cell_383/mul:z:0lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_2Sigmoidlstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_383/Relu_1Relulstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_2Mullstm_cell_383/Sigmoid_2:y:0"lstm_cell_383/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_383_matmul_readvariableop_resource.lstm_cell_383_matmul_1_readvariableop_resource-lstm_cell_383_biasadd_readvariableop_resource*
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
while_body_2322004*
condR
while_cond_2322003*K
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
NoOpNoOp%^lstm_cell_383/BiasAdd/ReadVariableOp$^lstm_cell_383/MatMul/ReadVariableOp&^lstm_cell_383/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_383/BiasAdd/ReadVariableOp$lstm_cell_383/BiasAdd/ReadVariableOp2J
#lstm_cell_383/MatMul/ReadVariableOp#lstm_cell_383/MatMul/ReadVariableOp2N
%lstm_cell_383/MatMul_1/ReadVariableOp%lstm_cell_383/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
E__inference_dense_88_layer_call_and_return_conditional_losses_2322107

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
?S
?
)sequential_88_lstm_266_while_body_2316982J
Fsequential_88_lstm_266_while_sequential_88_lstm_266_while_loop_counterP
Lsequential_88_lstm_266_while_sequential_88_lstm_266_while_maximum_iterations,
(sequential_88_lstm_266_while_placeholder.
*sequential_88_lstm_266_while_placeholder_1.
*sequential_88_lstm_266_while_placeholder_2.
*sequential_88_lstm_266_while_placeholder_3I
Esequential_88_lstm_266_while_sequential_88_lstm_266_strided_slice_1_0?
?sequential_88_lstm_266_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_266_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_88_lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0:2(_
Msequential_88_lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(Z
Lsequential_88_lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0:()
%sequential_88_lstm_266_while_identity+
'sequential_88_lstm_266_while_identity_1+
'sequential_88_lstm_266_while_identity_2+
'sequential_88_lstm_266_while_identity_3+
'sequential_88_lstm_266_while_identity_4+
'sequential_88_lstm_266_while_identity_5G
Csequential_88_lstm_266_while_sequential_88_lstm_266_strided_slice_1?
sequential_88_lstm_266_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_266_tensorarrayunstack_tensorlistfromtensor[
Isequential_88_lstm_266_while_lstm_cell_383_matmul_readvariableop_resource:2(]
Ksequential_88_lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource:
(X
Jsequential_88_lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource:(??Asequential_88/lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp?@sequential_88/lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp?Bsequential_88/lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp?
Nsequential_88/lstm_266/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_88/lstm_266/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_88_lstm_266_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_266_tensorarrayunstack_tensorlistfromtensor_0(sequential_88_lstm_266_while_placeholderWsequential_88/lstm_266/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_88/lstm_266/while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOpKsequential_88_lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_88/lstm_266/while/lstm_cell_383/MatMulMatMulGsequential_88/lstm_266/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_88/lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_88/lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOpMsequential_88_lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_88/lstm_266/while/lstm_cell_383/MatMul_1MatMul*sequential_88_lstm_266_while_placeholder_2Jsequential_88/lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_88/lstm_266/while/lstm_cell_383/addAddV2;sequential_88/lstm_266/while/lstm_cell_383/MatMul:product:0=sequential_88/lstm_266/while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_88/lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOpLsequential_88_lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_88/lstm_266/while/lstm_cell_383/BiasAddBiasAdd2sequential_88/lstm_266/while/lstm_cell_383/add:z:0Isequential_88/lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_88/lstm_266/while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_88/lstm_266/while/lstm_cell_383/splitSplitCsequential_88/lstm_266/while/lstm_cell_383/split/split_dim:output:0;sequential_88/lstm_266/while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_88/lstm_266/while/lstm_cell_383/SigmoidSigmoid9sequential_88/lstm_266/while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_88/lstm_266/while/lstm_cell_383/Sigmoid_1Sigmoid9sequential_88/lstm_266/while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_88/lstm_266/while/lstm_cell_383/mulMul8sequential_88/lstm_266/while/lstm_cell_383/Sigmoid_1:y:0*sequential_88_lstm_266_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_88/lstm_266/while/lstm_cell_383/ReluRelu9sequential_88/lstm_266/while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_88/lstm_266/while/lstm_cell_383/mul_1Mul6sequential_88/lstm_266/while/lstm_cell_383/Sigmoid:y:0=sequential_88/lstm_266/while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_88/lstm_266/while/lstm_cell_383/add_1AddV22sequential_88/lstm_266/while/lstm_cell_383/mul:z:04sequential_88/lstm_266/while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_88/lstm_266/while/lstm_cell_383/Sigmoid_2Sigmoid9sequential_88/lstm_266/while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_88/lstm_266/while/lstm_cell_383/Relu_1Relu4sequential_88/lstm_266/while/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_88/lstm_266/while/lstm_cell_383/mul_2Mul8sequential_88/lstm_266/while/lstm_cell_383/Sigmoid_2:y:0?sequential_88/lstm_266/while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_88/lstm_266/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_88_lstm_266_while_placeholder_1(sequential_88_lstm_266_while_placeholder4sequential_88/lstm_266/while/lstm_cell_383/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_88/lstm_266/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_88/lstm_266/while/addAddV2(sequential_88_lstm_266_while_placeholder+sequential_88/lstm_266/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_88/lstm_266/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_88/lstm_266/while/add_1AddV2Fsequential_88_lstm_266_while_sequential_88_lstm_266_while_loop_counter-sequential_88/lstm_266/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_88/lstm_266/while/IdentityIdentity&sequential_88/lstm_266/while/add_1:z:0"^sequential_88/lstm_266/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_266/while/Identity_1IdentityLsequential_88_lstm_266_while_sequential_88_lstm_266_while_maximum_iterations"^sequential_88/lstm_266/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_266/while/Identity_2Identity$sequential_88/lstm_266/while/add:z:0"^sequential_88/lstm_266/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_266/while/Identity_3IdentityQsequential_88/lstm_266/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_88/lstm_266/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_266/while/Identity_4Identity4sequential_88/lstm_266/while/lstm_cell_383/mul_2:z:0"^sequential_88/lstm_266/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_88/lstm_266/while/Identity_5Identity4sequential_88/lstm_266/while/lstm_cell_383/add_1:z:0"^sequential_88/lstm_266/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_88/lstm_266/while/NoOpNoOpB^sequential_88/lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOpA^sequential_88/lstm_266/while/lstm_cell_383/MatMul/ReadVariableOpC^sequential_88/lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_88_lstm_266_while_identity.sequential_88/lstm_266/while/Identity:output:0"[
'sequential_88_lstm_266_while_identity_10sequential_88/lstm_266/while/Identity_1:output:0"[
'sequential_88_lstm_266_while_identity_20sequential_88/lstm_266/while/Identity_2:output:0"[
'sequential_88_lstm_266_while_identity_30sequential_88/lstm_266/while/Identity_3:output:0"[
'sequential_88_lstm_266_while_identity_40sequential_88/lstm_266/while/Identity_4:output:0"[
'sequential_88_lstm_266_while_identity_50sequential_88/lstm_266/while/Identity_5:output:0"?
Jsequential_88_lstm_266_while_lstm_cell_383_biasadd_readvariableop_resourceLsequential_88_lstm_266_while_lstm_cell_383_biasadd_readvariableop_resource_0"?
Ksequential_88_lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resourceMsequential_88_lstm_266_while_lstm_cell_383_matmul_1_readvariableop_resource_0"?
Isequential_88_lstm_266_while_lstm_cell_383_matmul_readvariableop_resourceKsequential_88_lstm_266_while_lstm_cell_383_matmul_readvariableop_resource_0"?
Csequential_88_lstm_266_while_sequential_88_lstm_266_strided_slice_1Esequential_88_lstm_266_while_sequential_88_lstm_266_strided_slice_1_0"?
sequential_88_lstm_266_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_266_tensorarrayunstack_tensorlistfromtensor?sequential_88_lstm_266_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_266_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_88/lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOpAsequential_88/lstm_266/while/lstm_cell_383/BiasAdd/ReadVariableOp2?
@sequential_88/lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp@sequential_88/lstm_266/while/lstm_cell_383/MatMul/ReadVariableOp2?
Bsequential_88/lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOpBsequential_88/lstm_266/while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_88_layer_call_fn_2318621
lstm_264_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_264_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2318596o
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
_user_specified_namelstm_264_input
?
?
/__inference_lstm_cell_383_layer_call_fn_2322320

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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2317839o
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
while_cond_2318336
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2318336___redundant_placeholder05
1while_while_cond_2318336___redundant_placeholder15
1while_while_cond_2318336___redundant_placeholder25
1while_while_cond_2318336___redundant_placeholder3
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
while_cond_2320771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2320771___redundant_placeholder05
1while_while_cond_2320771___redundant_placeholder15
1while_while_cond_2320771___redundant_placeholder25
1while_while_cond_2320771___redundant_placeholder3
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
*__inference_lstm_264_layer_call_fn_2320273

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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2318271s
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319297
lstm_264_input#
lstm_264_2319270:	?#
lstm_264_2319272:	d?
lstm_264_2319274:	?#
lstm_265_2319277:	d?#
lstm_265_2319279:	2?
lstm_265_2319281:	?"
lstm_266_2319284:2("
lstm_266_2319286:
(
lstm_266_2319288:("
dense_88_2319291:

dense_88_2319293:
identity?? dense_88/StatefulPartitionedCall? lstm_264/StatefulPartitionedCall? lstm_265/StatefulPartitionedCall? lstm_266/StatefulPartitionedCall?
 lstm_264/StatefulPartitionedCallStatefulPartitionedCalllstm_264_inputlstm_264_2319270lstm_264_2319272lstm_264_2319274*
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2319117?
 lstm_265/StatefulPartitionedCallStatefulPartitionedCall)lstm_264/StatefulPartitionedCall:output:0lstm_265_2319277lstm_265_2319279lstm_265_2319281*
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2318952?
 lstm_266/StatefulPartitionedCallStatefulPartitionedCall)lstm_265/StatefulPartitionedCall:output:0lstm_266_2319284lstm_266_2319286lstm_266_2319288*
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318787?
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)lstm_266/StatefulPartitionedCall:output:0dense_88_2319291dense_88_2319293*
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
E__inference_dense_88_layer_call_and_return_conditional_losses_2318589x
IdentityIdentity)dense_88/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_88/StatefulPartitionedCall!^lstm_264/StatefulPartitionedCall!^lstm_265/StatefulPartitionedCall!^lstm_266/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 lstm_264/StatefulPartitionedCall lstm_264/StatefulPartitionedCall2D
 lstm_265/StatefulPartitionedCall lstm_265/StatefulPartitionedCall2D
 lstm_266/StatefulPartitionedCall lstm_266/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_264_input
?
?
)sequential_88_lstm_264_while_cond_2316703J
Fsequential_88_lstm_264_while_sequential_88_lstm_264_while_loop_counterP
Lsequential_88_lstm_264_while_sequential_88_lstm_264_while_maximum_iterations,
(sequential_88_lstm_264_while_placeholder.
*sequential_88_lstm_264_while_placeholder_1.
*sequential_88_lstm_264_while_placeholder_2.
*sequential_88_lstm_264_while_placeholder_3L
Hsequential_88_lstm_264_while_less_sequential_88_lstm_264_strided_slice_1c
_sequential_88_lstm_264_while_sequential_88_lstm_264_while_cond_2316703___redundant_placeholder0c
_sequential_88_lstm_264_while_sequential_88_lstm_264_while_cond_2316703___redundant_placeholder1c
_sequential_88_lstm_264_while_sequential_88_lstm_264_while_cond_2316703___redundant_placeholder2c
_sequential_88_lstm_264_while_sequential_88_lstm_264_while_cond_2316703___redundant_placeholder3)
%sequential_88_lstm_264_while_identity
?
!sequential_88/lstm_264/while/LessLess(sequential_88_lstm_264_while_placeholderHsequential_88_lstm_264_while_less_sequential_88_lstm_264_strided_slice_1*
T0*
_output_shapes
: y
%sequential_88/lstm_264/while/IdentityIdentity%sequential_88/lstm_264/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_88_lstm_264_while_identity.sequential_88/lstm_264/while/Identity:output:0*(
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
*__inference_lstm_266_layer_call_fn_2321516

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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318787o
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
while_body_2317344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_381_2317368_0:	?0
while_lstm_cell_381_2317370_0:	d?,
while_lstm_cell_381_2317372_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_381_2317368:	?.
while_lstm_cell_381_2317370:	d?*
while_lstm_cell_381_2317372:	???+while/lstm_cell_381/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_381/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_381_2317368_0while_lstm_cell_381_2317370_0while_lstm_cell_381_2317372_0*
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317285?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_381/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_381/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_381/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_381/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_381_2317368while_lstm_cell_381_2317368_0"<
while_lstm_cell_381_2317370while_lstm_cell_381_2317370_0"<
while_lstm_cell_381_2317372while_lstm_cell_381_2317372_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_381/StatefulPartitionedCall+while/lstm_cell_381/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2318271

inputs?
,lstm_cell_381_matmul_readvariableop_resource:	?A
.lstm_cell_381_matmul_1_readvariableop_resource:	d?<
-lstm_cell_381_biasadd_readvariableop_resource:	?
identity??$lstm_cell_381/BiasAdd/ReadVariableOp?#lstm_cell_381/MatMul/ReadVariableOp?%lstm_cell_381/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_381/MatMul/ReadVariableOpReadVariableOp,lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_381/MatMulMatMulstrided_slice_2:output:0+lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_381/MatMul_1MatMulzeros:output:0-lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_381/addAddV2lstm_cell_381/MatMul:product:0 lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_381/BiasAddBiasAddlstm_cell_381/add:z:0,lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_381/splitSplit&lstm_cell_381/split/split_dim:output:0lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_381/SigmoidSigmoidlstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_1Sigmoidlstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_381/mulMullstm_cell_381/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_381/ReluRelulstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_1Mullstm_cell_381/Sigmoid:y:0 lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_381/add_1AddV2lstm_cell_381/mul:z:0lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_2Sigmoidlstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_381/Relu_1Relulstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_2Mullstm_cell_381/Sigmoid_2:y:0"lstm_cell_381/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_381_matmul_readvariableop_resource.lstm_cell_381_matmul_1_readvariableop_resource-lstm_cell_381_biasadd_readvariableop_resource*
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
while_body_2318187*
condR
while_cond_2318186*K
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
NoOpNoOp%^lstm_cell_381/BiasAdd/ReadVariableOp$^lstm_cell_381/MatMul/ReadVariableOp&^lstm_cell_381/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_381/BiasAdd/ReadVariableOp$lstm_cell_381/BiasAdd/ReadVariableOp2J
#lstm_cell_381/MatMul/ReadVariableOp#lstm_cell_381/MatMul/ReadVariableOp2N
%lstm_cell_381/MatMul_1/ReadVariableOp%lstm_cell_381/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2321102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_382_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_382_matmul_readvariableop_resource:	d?G
4while_lstm_cell_382_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_382_biasadd_readvariableop_resource:	???*while/lstm_cell_382/BiasAdd/ReadVariableOp?)while/lstm_cell_382/MatMul/ReadVariableOp?+while/lstm_cell_382/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_382/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_382/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_382/addAddV2$while/lstm_cell_382/MatMul:product:0&while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_382/BiasAddBiasAddwhile/lstm_cell_382/add:z:02while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_382/splitSplit,while/lstm_cell_382/split/split_dim:output:0$while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_382/SigmoidSigmoid"while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_1Sigmoid"while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mulMul!while/lstm_cell_382/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_382/ReluRelu"while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_1Mulwhile/lstm_cell_382/Sigmoid:y:0&while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/add_1AddV2while/lstm_cell_382/mul:z:0while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_2Sigmoid"while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_382/Relu_1Reluwhile/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_2Mul!while/lstm_cell_382/Sigmoid_2:y:0(while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_382/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_382/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_382/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_382/BiasAdd/ReadVariableOp*^while/lstm_cell_382/MatMul/ReadVariableOp,^while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_382_biasadd_readvariableop_resource5while_lstm_cell_382_biasadd_readvariableop_resource_0"n
4while_lstm_cell_382_matmul_1_readvariableop_resource6while_lstm_cell_382_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_382_matmul_readvariableop_resource4while_lstm_cell_382_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_382/BiasAdd/ReadVariableOp*while/lstm_cell_382/BiasAdd/ReadVariableOp2V
)while/lstm_cell_382/MatMul/ReadVariableOp)while/lstm_cell_382/MatMul/ReadVariableOp2Z
+while/lstm_cell_382/MatMul_1/ReadVariableOp+while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2317153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_381_2317177_0:	?0
while_lstm_cell_381_2317179_0:	d?,
while_lstm_cell_381_2317181_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_381_2317177:	?.
while_lstm_cell_381_2317179:	d?*
while_lstm_cell_381_2317181:	???+while/lstm_cell_381/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_381/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_381_2317177_0while_lstm_cell_381_2317179_0while_lstm_cell_381_2317181_0*
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317139?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_381/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_381/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_381/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_381/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_381_2317177while_lstm_cell_381_2317177_0"<
while_lstm_cell_381_2317179while_lstm_cell_381_2317179_0"<
while_lstm_cell_381_2317181while_lstm_cell_381_2317181_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_381/StatefulPartitionedCall+while/lstm_cell_381/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_265_while_body_2320011.
*lstm_265_while_lstm_265_while_loop_counter4
0lstm_265_while_lstm_265_while_maximum_iterations
lstm_265_while_placeholder 
lstm_265_while_placeholder_1 
lstm_265_while_placeholder_2 
lstm_265_while_placeholder_3-
)lstm_265_while_lstm_265_strided_slice_1_0i
elstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0:	d?R
?lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?M
>lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
lstm_265_while_identity
lstm_265_while_identity_1
lstm_265_while_identity_2
lstm_265_while_identity_3
lstm_265_while_identity_4
lstm_265_while_identity_5+
'lstm_265_while_lstm_265_strided_slice_1g
clstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensorN
;lstm_265_while_lstm_cell_382_matmul_readvariableop_resource:	d?P
=lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource:	2?K
<lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource:	???3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp?2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp?4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp?
@lstm_265/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_265/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensor_0lstm_265_while_placeholderIlstm_265/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp=lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_265/while/lstm_cell_382/MatMulMatMul9lstm_265/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp?lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_265/while/lstm_cell_382/MatMul_1MatMullstm_265_while_placeholder_2<lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_265/while/lstm_cell_382/addAddV2-lstm_265/while/lstm_cell_382/MatMul:product:0/lstm_265/while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp>lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_265/while/lstm_cell_382/BiasAddBiasAdd$lstm_265/while/lstm_cell_382/add:z:0;lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_265/while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_265/while/lstm_cell_382/splitSplit5lstm_265/while/lstm_cell_382/split/split_dim:output:0-lstm_265/while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_265/while/lstm_cell_382/SigmoidSigmoid+lstm_265/while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_265/while/lstm_cell_382/Sigmoid_1Sigmoid+lstm_265/while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_265/while/lstm_cell_382/mulMul*lstm_265/while/lstm_cell_382/Sigmoid_1:y:0lstm_265_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_265/while/lstm_cell_382/ReluRelu+lstm_265/while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_265/while/lstm_cell_382/mul_1Mul(lstm_265/while/lstm_cell_382/Sigmoid:y:0/lstm_265/while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_265/while/lstm_cell_382/add_1AddV2$lstm_265/while/lstm_cell_382/mul:z:0&lstm_265/while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_265/while/lstm_cell_382/Sigmoid_2Sigmoid+lstm_265/while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_265/while/lstm_cell_382/Relu_1Relu&lstm_265/while/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_265/while/lstm_cell_382/mul_2Mul*lstm_265/while/lstm_cell_382/Sigmoid_2:y:01lstm_265/while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_265/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_265_while_placeholder_1lstm_265_while_placeholder&lstm_265/while/lstm_cell_382/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_265/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_265/while/addAddV2lstm_265_while_placeholderlstm_265/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_265/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_265/while/add_1AddV2*lstm_265_while_lstm_265_while_loop_counterlstm_265/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_265/while/IdentityIdentitylstm_265/while/add_1:z:0^lstm_265/while/NoOp*
T0*
_output_shapes
: ?
lstm_265/while/Identity_1Identity0lstm_265_while_lstm_265_while_maximum_iterations^lstm_265/while/NoOp*
T0*
_output_shapes
: t
lstm_265/while/Identity_2Identitylstm_265/while/add:z:0^lstm_265/while/NoOp*
T0*
_output_shapes
: ?
lstm_265/while/Identity_3IdentityClstm_265/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_265/while/NoOp*
T0*
_output_shapes
: ?
lstm_265/while/Identity_4Identity&lstm_265/while/lstm_cell_382/mul_2:z:0^lstm_265/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_265/while/Identity_5Identity&lstm_265/while/lstm_cell_382/add_1:z:0^lstm_265/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_265/while/NoOpNoOp4^lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp3^lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp5^lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_265_while_identity lstm_265/while/Identity:output:0"?
lstm_265_while_identity_1"lstm_265/while/Identity_1:output:0"?
lstm_265_while_identity_2"lstm_265/while/Identity_2:output:0"?
lstm_265_while_identity_3"lstm_265/while/Identity_3:output:0"?
lstm_265_while_identity_4"lstm_265/while/Identity_4:output:0"?
lstm_265_while_identity_5"lstm_265/while/Identity_5:output:0"T
'lstm_265_while_lstm_265_strided_slice_1)lstm_265_while_lstm_265_strided_slice_1_0"~
<lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource>lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0"?
=lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource?lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0"|
;lstm_265_while_lstm_cell_382_matmul_readvariableop_resource=lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0"?
clstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensorelstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp2h
2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp2l
4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2321718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_383_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_383_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_383_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_383_matmul_readvariableop_resource:2(F
4while_lstm_cell_383_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_383_biasadd_readvariableop_resource:(??*while/lstm_cell_383/BiasAdd/ReadVariableOp?)while/lstm_cell_383/MatMul/ReadVariableOp?+while/lstm_cell_383/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_383/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_383_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_383/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_383_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_383/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_383/addAddV2$while/lstm_cell_383/MatMul:product:0&while/lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_383_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_383/BiasAddBiasAddwhile/lstm_cell_383/add:z:02while/lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_383/splitSplit,while/lstm_cell_383/split/split_dim:output:0$while/lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_383/SigmoidSigmoid"while/lstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_1Sigmoid"while/lstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mulMul!while/lstm_cell_383/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_383/ReluRelu"while/lstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_1Mulwhile/lstm_cell_383/Sigmoid:y:0&while/lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/add_1AddV2while/lstm_cell_383/mul:z:0while/lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_383/Sigmoid_2Sigmoid"while/lstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_383/Relu_1Reluwhile/lstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_383/mul_2Mul!while/lstm_cell_383/Sigmoid_2:y:0(while/lstm_cell_383/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_383/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_383/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_383/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_383/BiasAdd/ReadVariableOp*^while/lstm_cell_383/MatMul/ReadVariableOp,^while/lstm_cell_383/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_383_biasadd_readvariableop_resource5while_lstm_cell_383_biasadd_readvariableop_resource_0"n
4while_lstm_cell_383_matmul_1_readvariableop_resource6while_lstm_cell_383_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_383_matmul_readvariableop_resource4while_lstm_cell_383_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_383/BiasAdd/ReadVariableOp*while/lstm_cell_383/BiasAdd/ReadVariableOp2V
)while/lstm_cell_383/MatMul/ReadVariableOp)while/lstm_cell_383/MatMul/ReadVariableOp2Z
+while/lstm_cell_383/MatMul_1/ReadVariableOp+while/lstm_cell_383/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_265_while_cond_2319583.
*lstm_265_while_lstm_265_while_loop_counter4
0lstm_265_while_lstm_265_while_maximum_iterations
lstm_265_while_placeholder 
lstm_265_while_placeholder_1 
lstm_265_while_placeholder_2 
lstm_265_while_placeholder_30
,lstm_265_while_less_lstm_265_strided_slice_1G
Clstm_265_while_lstm_265_while_cond_2319583___redundant_placeholder0G
Clstm_265_while_lstm_265_while_cond_2319583___redundant_placeholder1G
Clstm_265_while_lstm_265_while_cond_2319583___redundant_placeholder2G
Clstm_265_while_lstm_265_while_cond_2319583___redundant_placeholder3
lstm_265_while_identity
?
lstm_265/while/LessLesslstm_265_while_placeholder,lstm_265_while_less_lstm_265_strided_slice_1*
T0*
_output_shapes
: ]
lstm_265/while/IdentityIdentitylstm_265/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_265_while_identity lstm_265/while/Identity:output:0*(
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
lstm_264_while_cond_2319444.
*lstm_264_while_lstm_264_while_loop_counter4
0lstm_264_while_lstm_264_while_maximum_iterations
lstm_264_while_placeholder 
lstm_264_while_placeholder_1 
lstm_264_while_placeholder_2 
lstm_264_while_placeholder_30
,lstm_264_while_less_lstm_264_strided_slice_1G
Clstm_264_while_lstm_264_while_cond_2319444___redundant_placeholder0G
Clstm_264_while_lstm_264_while_cond_2319444___redundant_placeholder1G
Clstm_264_while_lstm_264_while_cond_2319444___redundant_placeholder2G
Clstm_264_while_lstm_264_while_cond_2319444___redundant_placeholder3
lstm_264_while_identity
?
lstm_264/while/LessLesslstm_264_while_placeholder,lstm_264_while_less_lstm_264_strided_slice_1*
T0*
_output_shapes
: ]
lstm_264/while/IdentityIdentitylstm_264/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_264_while_identity lstm_264/while/Identity:output:0*(
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320570
inputs_0?
,lstm_cell_381_matmul_readvariableop_resource:	?A
.lstm_cell_381_matmul_1_readvariableop_resource:	d?<
-lstm_cell_381_biasadd_readvariableop_resource:	?
identity??$lstm_cell_381/BiasAdd/ReadVariableOp?#lstm_cell_381/MatMul/ReadVariableOp?%lstm_cell_381/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_381/MatMul/ReadVariableOpReadVariableOp,lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_381/MatMulMatMulstrided_slice_2:output:0+lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_381/MatMul_1MatMulzeros:output:0-lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_381/addAddV2lstm_cell_381/MatMul:product:0 lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_381/BiasAddBiasAddlstm_cell_381/add:z:0,lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_381/splitSplit&lstm_cell_381/split/split_dim:output:0lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_381/SigmoidSigmoidlstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_1Sigmoidlstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_381/mulMullstm_cell_381/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_381/ReluRelulstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_1Mullstm_cell_381/Sigmoid:y:0 lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_381/add_1AddV2lstm_cell_381/mul:z:0lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_2Sigmoidlstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_381/Relu_1Relulstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_2Mullstm_cell_381/Sigmoid_2:y:0"lstm_cell_381/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_381_matmul_readvariableop_resource.lstm_cell_381_matmul_1_readvariableop_resource-lstm_cell_381_biasadd_readvariableop_resource*
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
while_body_2320486*
condR
while_cond_2320485*K
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
NoOpNoOp%^lstm_cell_381/BiasAdd/ReadVariableOp$^lstm_cell_381/MatMul/ReadVariableOp&^lstm_cell_381/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_381/BiasAdd/ReadVariableOp$lstm_cell_381/BiasAdd/ReadVariableOp2J
#lstm_cell_381/MatMul/ReadVariableOp#lstm_cell_381/MatMul/ReadVariableOp2N
%lstm_cell_381/MatMul_1/ReadVariableOp%lstm_cell_381/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320856

inputs?
,lstm_cell_381_matmul_readvariableop_resource:	?A
.lstm_cell_381_matmul_1_readvariableop_resource:	d?<
-lstm_cell_381_biasadd_readvariableop_resource:	?
identity??$lstm_cell_381/BiasAdd/ReadVariableOp?#lstm_cell_381/MatMul/ReadVariableOp?%lstm_cell_381/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_381/MatMul/ReadVariableOpReadVariableOp,lstm_cell_381_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_381/MatMulMatMulstrided_slice_2:output:0+lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_381_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_381/MatMul_1MatMulzeros:output:0-lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_381/addAddV2lstm_cell_381/MatMul:product:0 lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_381_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_381/BiasAddBiasAddlstm_cell_381/add:z:0,lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_381/splitSplit&lstm_cell_381/split/split_dim:output:0lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_381/SigmoidSigmoidlstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_1Sigmoidlstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_381/mulMullstm_cell_381/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_381/ReluRelulstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_1Mullstm_cell_381/Sigmoid:y:0 lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_381/add_1AddV2lstm_cell_381/mul:z:0lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_381/Sigmoid_2Sigmoidlstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_381/Relu_1Relulstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_381/mul_2Mullstm_cell_381/Sigmoid_2:y:0"lstm_cell_381/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_381_matmul_readvariableop_resource.lstm_cell_381_matmul_1_readvariableop_resource-lstm_cell_381_biasadd_readvariableop_resource*
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
while_body_2320772*
condR
while_cond_2320771*K
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
NoOpNoOp%^lstm_cell_381/BiasAdd/ReadVariableOp$^lstm_cell_381/MatMul/ReadVariableOp&^lstm_cell_381/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_381/BiasAdd/ReadVariableOp$lstm_cell_381/BiasAdd/ReadVariableOp2J
#lstm_cell_381/MatMul/ReadVariableOp#lstm_cell_381/MatMul/ReadVariableOp2N
%lstm_cell_381/MatMul_1/ReadVariableOp%lstm_cell_381/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_266_layer_call_and_return_conditional_losses_2318787

inputs>
,lstm_cell_383_matmul_readvariableop_resource:2(@
.lstm_cell_383_matmul_1_readvariableop_resource:
(;
-lstm_cell_383_biasadd_readvariableop_resource:(
identity??$lstm_cell_383/BiasAdd/ReadVariableOp?#lstm_cell_383/MatMul/ReadVariableOp?%lstm_cell_383/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_383/MatMul/ReadVariableOpReadVariableOp,lstm_cell_383_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_383/MatMulMatMulstrided_slice_2:output:0+lstm_cell_383/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_383/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_383_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_383/MatMul_1MatMulzeros:output:0-lstm_cell_383/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_383/addAddV2lstm_cell_383/MatMul:product:0 lstm_cell_383/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_383/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_383_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_383/BiasAddBiasAddlstm_cell_383/add:z:0,lstm_cell_383/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_383/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_383/splitSplit&lstm_cell_383/split/split_dim:output:0lstm_cell_383/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_383/SigmoidSigmoidlstm_cell_383/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_1Sigmoidlstm_cell_383/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_383/mulMullstm_cell_383/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_383/ReluRelulstm_cell_383/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_1Mullstm_cell_383/Sigmoid:y:0 lstm_cell_383/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_383/add_1AddV2lstm_cell_383/mul:z:0lstm_cell_383/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_383/Sigmoid_2Sigmoidlstm_cell_383/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_383/Relu_1Relulstm_cell_383/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_383/mul_2Mullstm_cell_383/Sigmoid_2:y:0"lstm_cell_383/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_383_matmul_readvariableop_resource.lstm_cell_383_matmul_1_readvariableop_resource-lstm_cell_383_biasadd_readvariableop_resource*
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
while_body_2318703*
condR
while_cond_2318702*K
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
NoOpNoOp%^lstm_cell_383/BiasAdd/ReadVariableOp$^lstm_cell_383/MatMul/ReadVariableOp&^lstm_cell_383/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_383/BiasAdd/ReadVariableOp$lstm_cell_383/BiasAdd/ReadVariableOp2J
#lstm_cell_383/MatMul/ReadVariableOp#lstm_cell_383/MatMul/ReadVariableOp2N
%lstm_cell_383/MatMul_1/ReadVariableOp%lstm_cell_383/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_264_layer_call_and_return_conditional_losses_2317222

inputs(
lstm_cell_381_2317140:	?(
lstm_cell_381_2317142:	d?$
lstm_cell_381_2317144:	?
identity??%lstm_cell_381/StatefulPartitionedCall?while;
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
%lstm_cell_381/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_381_2317140lstm_cell_381_2317142lstm_cell_381_2317144*
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2317139n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_381_2317140lstm_cell_381_2317142lstm_cell_381_2317144*
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
while_body_2317153*
condR
while_cond_2317152*K
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
NoOpNoOp&^lstm_cell_381/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_381/StatefulPartitionedCall%lstm_cell_381/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_2317503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_382_2317527_0:	d?0
while_lstm_cell_382_2317529_0:	2?,
while_lstm_cell_382_2317531_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_382_2317527:	d?.
while_lstm_cell_382_2317529:	2?*
while_lstm_cell_382_2317531:	???+while/lstm_cell_382/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_382/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_382_2317527_0while_lstm_cell_382_2317529_0while_lstm_cell_382_2317531_0*
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2317489?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_382/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_382/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_382/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_382/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_382_2317527while_lstm_cell_382_2317527_0"<
while_lstm_cell_382_2317529while_lstm_cell_382_2317529_0"<
while_lstm_cell_382_2317531while_lstm_cell_382_2317531_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_382/StatefulPartitionedCall+while/lstm_cell_382/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_88_layer_call_fn_2319359

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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2318596o
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321472

inputs?
,lstm_cell_382_matmul_readvariableop_resource:	d?A
.lstm_cell_382_matmul_1_readvariableop_resource:	2?<
-lstm_cell_382_biasadd_readvariableop_resource:	?
identity??$lstm_cell_382/BiasAdd/ReadVariableOp?#lstm_cell_382/MatMul/ReadVariableOp?%lstm_cell_382/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_382/MatMul/ReadVariableOpReadVariableOp,lstm_cell_382_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_382/MatMulMatMulstrided_slice_2:output:0+lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_382_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_382/MatMul_1MatMulzeros:output:0-lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_382/addAddV2lstm_cell_382/MatMul:product:0 lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_382_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_382/BiasAddBiasAddlstm_cell_382/add:z:0,lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_382/splitSplit&lstm_cell_382/split/split_dim:output:0lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_382/SigmoidSigmoidlstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_1Sigmoidlstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_382/mulMullstm_cell_382/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_382/ReluRelulstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_1Mullstm_cell_382/Sigmoid:y:0 lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_382/add_1AddV2lstm_cell_382/mul:z:0lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_382/Sigmoid_2Sigmoidlstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_382/Relu_1Relulstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_382/mul_2Mullstm_cell_382/Sigmoid_2:y:0"lstm_cell_382/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_382_matmul_readvariableop_resource.lstm_cell_382_matmul_1_readvariableop_resource-lstm_cell_382_biasadd_readvariableop_resource*
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
while_body_2321388*
condR
while_cond_2321387*K
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
NoOpNoOp%^lstm_cell_382/BiasAdd/ReadVariableOp$^lstm_cell_382/MatMul/ReadVariableOp&^lstm_cell_382/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_382/BiasAdd/ReadVariableOp$lstm_cell_382/BiasAdd/ReadVariableOp2J
#lstm_cell_382/MatMul/ReadVariableOp#lstm_cell_382/MatMul/ReadVariableOp2N
%lstm_cell_382/MatMul_1/ReadVariableOp%lstm_cell_382/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_265_layer_call_fn_2320867
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2317572|
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
?C
?

lstm_265_while_body_2319584.
*lstm_265_while_lstm_265_while_loop_counter4
0lstm_265_while_lstm_265_while_maximum_iterations
lstm_265_while_placeholder 
lstm_265_while_placeholder_1 
lstm_265_while_placeholder_2 
lstm_265_while_placeholder_3-
)lstm_265_while_lstm_265_strided_slice_1_0i
elstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0:	d?R
?lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?M
>lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
lstm_265_while_identity
lstm_265_while_identity_1
lstm_265_while_identity_2
lstm_265_while_identity_3
lstm_265_while_identity_4
lstm_265_while_identity_5+
'lstm_265_while_lstm_265_strided_slice_1g
clstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensorN
;lstm_265_while_lstm_cell_382_matmul_readvariableop_resource:	d?P
=lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource:	2?K
<lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource:	???3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp?2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp?4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp?
@lstm_265/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_265/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensor_0lstm_265_while_placeholderIlstm_265/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp=lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_265/while/lstm_cell_382/MatMulMatMul9lstm_265/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp?lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_265/while/lstm_cell_382/MatMul_1MatMullstm_265_while_placeholder_2<lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_265/while/lstm_cell_382/addAddV2-lstm_265/while/lstm_cell_382/MatMul:product:0/lstm_265/while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp>lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_265/while/lstm_cell_382/BiasAddBiasAdd$lstm_265/while/lstm_cell_382/add:z:0;lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_265/while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_265/while/lstm_cell_382/splitSplit5lstm_265/while/lstm_cell_382/split/split_dim:output:0-lstm_265/while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_265/while/lstm_cell_382/SigmoidSigmoid+lstm_265/while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_265/while/lstm_cell_382/Sigmoid_1Sigmoid+lstm_265/while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_265/while/lstm_cell_382/mulMul*lstm_265/while/lstm_cell_382/Sigmoid_1:y:0lstm_265_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_265/while/lstm_cell_382/ReluRelu+lstm_265/while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_265/while/lstm_cell_382/mul_1Mul(lstm_265/while/lstm_cell_382/Sigmoid:y:0/lstm_265/while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_265/while/lstm_cell_382/add_1AddV2$lstm_265/while/lstm_cell_382/mul:z:0&lstm_265/while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_265/while/lstm_cell_382/Sigmoid_2Sigmoid+lstm_265/while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_265/while/lstm_cell_382/Relu_1Relu&lstm_265/while/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_265/while/lstm_cell_382/mul_2Mul*lstm_265/while/lstm_cell_382/Sigmoid_2:y:01lstm_265/while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_265/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_265_while_placeholder_1lstm_265_while_placeholder&lstm_265/while/lstm_cell_382/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_265/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_265/while/addAddV2lstm_265_while_placeholderlstm_265/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_265/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_265/while/add_1AddV2*lstm_265_while_lstm_265_while_loop_counterlstm_265/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_265/while/IdentityIdentitylstm_265/while/add_1:z:0^lstm_265/while/NoOp*
T0*
_output_shapes
: ?
lstm_265/while/Identity_1Identity0lstm_265_while_lstm_265_while_maximum_iterations^lstm_265/while/NoOp*
T0*
_output_shapes
: t
lstm_265/while/Identity_2Identitylstm_265/while/add:z:0^lstm_265/while/NoOp*
T0*
_output_shapes
: ?
lstm_265/while/Identity_3IdentityClstm_265/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_265/while/NoOp*
T0*
_output_shapes
: ?
lstm_265/while/Identity_4Identity&lstm_265/while/lstm_cell_382/mul_2:z:0^lstm_265/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_265/while/Identity_5Identity&lstm_265/while/lstm_cell_382/add_1:z:0^lstm_265/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_265/while/NoOpNoOp4^lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp3^lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp5^lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_265_while_identity lstm_265/while/Identity:output:0"?
lstm_265_while_identity_1"lstm_265/while/Identity_1:output:0"?
lstm_265_while_identity_2"lstm_265/while/Identity_2:output:0"?
lstm_265_while_identity_3"lstm_265/while/Identity_3:output:0"?
lstm_265_while_identity_4"lstm_265/while/Identity_4:output:0"?
lstm_265_while_identity_5"lstm_265/while/Identity_5:output:0"T
'lstm_265_while_lstm_265_strided_slice_1)lstm_265_while_lstm_265_strided_slice_1_0"~
<lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource>lstm_265_while_lstm_cell_382_biasadd_readvariableop_resource_0"?
=lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource?lstm_265_while_lstm_cell_382_matmul_1_readvariableop_resource_0"|
;lstm_265_while_lstm_cell_382_matmul_readvariableop_resource=lstm_265_while_lstm_cell_382_matmul_readvariableop_resource_0"?
clstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensorelstm_265_while_tensorarrayv2read_tensorlistgetitem_lstm_265_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp3lstm_265/while/lstm_cell_382/BiasAdd/ReadVariableOp2h
2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp2lstm_265/while/lstm_cell_382/MatMul/ReadVariableOp2l
4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp4lstm_265/while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_88_lstm_264_while_body_2316704J
Fsequential_88_lstm_264_while_sequential_88_lstm_264_while_loop_counterP
Lsequential_88_lstm_264_while_sequential_88_lstm_264_while_maximum_iterations,
(sequential_88_lstm_264_while_placeholder.
*sequential_88_lstm_264_while_placeholder_1.
*sequential_88_lstm_264_while_placeholder_2.
*sequential_88_lstm_264_while_placeholder_3I
Esequential_88_lstm_264_while_sequential_88_lstm_264_strided_slice_1_0?
?sequential_88_lstm_264_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_264_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_88_lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0:	?`
Msequential_88_lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?[
Lsequential_88_lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0:	?)
%sequential_88_lstm_264_while_identity+
'sequential_88_lstm_264_while_identity_1+
'sequential_88_lstm_264_while_identity_2+
'sequential_88_lstm_264_while_identity_3+
'sequential_88_lstm_264_while_identity_4+
'sequential_88_lstm_264_while_identity_5G
Csequential_88_lstm_264_while_sequential_88_lstm_264_strided_slice_1?
sequential_88_lstm_264_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_264_tensorarrayunstack_tensorlistfromtensor\
Isequential_88_lstm_264_while_lstm_cell_381_matmul_readvariableop_resource:	?^
Ksequential_88_lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource:	d?Y
Jsequential_88_lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource:	???Asequential_88/lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp?@sequential_88/lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp?Bsequential_88/lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp?
Nsequential_88/lstm_264/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_88/lstm_264/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_88_lstm_264_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_264_tensorarrayunstack_tensorlistfromtensor_0(sequential_88_lstm_264_while_placeholderWsequential_88/lstm_264/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_88/lstm_264/while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOpKsequential_88_lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_88/lstm_264/while/lstm_cell_381/MatMulMatMulGsequential_88/lstm_264/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_88/lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_88/lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOpMsequential_88_lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_88/lstm_264/while/lstm_cell_381/MatMul_1MatMul*sequential_88_lstm_264_while_placeholder_2Jsequential_88/lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_88/lstm_264/while/lstm_cell_381/addAddV2;sequential_88/lstm_264/while/lstm_cell_381/MatMul:product:0=sequential_88/lstm_264/while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_88/lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOpLsequential_88_lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_88/lstm_264/while/lstm_cell_381/BiasAddBiasAdd2sequential_88/lstm_264/while/lstm_cell_381/add:z:0Isequential_88/lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_88/lstm_264/while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_88/lstm_264/while/lstm_cell_381/splitSplitCsequential_88/lstm_264/while/lstm_cell_381/split/split_dim:output:0;sequential_88/lstm_264/while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_88/lstm_264/while/lstm_cell_381/SigmoidSigmoid9sequential_88/lstm_264/while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_88/lstm_264/while/lstm_cell_381/Sigmoid_1Sigmoid9sequential_88/lstm_264/while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_88/lstm_264/while/lstm_cell_381/mulMul8sequential_88/lstm_264/while/lstm_cell_381/Sigmoid_1:y:0*sequential_88_lstm_264_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_88/lstm_264/while/lstm_cell_381/ReluRelu9sequential_88/lstm_264/while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_88/lstm_264/while/lstm_cell_381/mul_1Mul6sequential_88/lstm_264/while/lstm_cell_381/Sigmoid:y:0=sequential_88/lstm_264/while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_88/lstm_264/while/lstm_cell_381/add_1AddV22sequential_88/lstm_264/while/lstm_cell_381/mul:z:04sequential_88/lstm_264/while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_88/lstm_264/while/lstm_cell_381/Sigmoid_2Sigmoid9sequential_88/lstm_264/while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_88/lstm_264/while/lstm_cell_381/Relu_1Relu4sequential_88/lstm_264/while/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_88/lstm_264/while/lstm_cell_381/mul_2Mul8sequential_88/lstm_264/while/lstm_cell_381/Sigmoid_2:y:0?sequential_88/lstm_264/while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_88/lstm_264/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_88_lstm_264_while_placeholder_1(sequential_88_lstm_264_while_placeholder4sequential_88/lstm_264/while/lstm_cell_381/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_88/lstm_264/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_88/lstm_264/while/addAddV2(sequential_88_lstm_264_while_placeholder+sequential_88/lstm_264/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_88/lstm_264/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_88/lstm_264/while/add_1AddV2Fsequential_88_lstm_264_while_sequential_88_lstm_264_while_loop_counter-sequential_88/lstm_264/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_88/lstm_264/while/IdentityIdentity&sequential_88/lstm_264/while/add_1:z:0"^sequential_88/lstm_264/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_264/while/Identity_1IdentityLsequential_88_lstm_264_while_sequential_88_lstm_264_while_maximum_iterations"^sequential_88/lstm_264/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_264/while/Identity_2Identity$sequential_88/lstm_264/while/add:z:0"^sequential_88/lstm_264/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_264/while/Identity_3IdentityQsequential_88/lstm_264/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_88/lstm_264/while/NoOp*
T0*
_output_shapes
: ?
'sequential_88/lstm_264/while/Identity_4Identity4sequential_88/lstm_264/while/lstm_cell_381/mul_2:z:0"^sequential_88/lstm_264/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_88/lstm_264/while/Identity_5Identity4sequential_88/lstm_264/while/lstm_cell_381/add_1:z:0"^sequential_88/lstm_264/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_88/lstm_264/while/NoOpNoOpB^sequential_88/lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOpA^sequential_88/lstm_264/while/lstm_cell_381/MatMul/ReadVariableOpC^sequential_88/lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_88_lstm_264_while_identity.sequential_88/lstm_264/while/Identity:output:0"[
'sequential_88_lstm_264_while_identity_10sequential_88/lstm_264/while/Identity_1:output:0"[
'sequential_88_lstm_264_while_identity_20sequential_88/lstm_264/while/Identity_2:output:0"[
'sequential_88_lstm_264_while_identity_30sequential_88/lstm_264/while/Identity_3:output:0"[
'sequential_88_lstm_264_while_identity_40sequential_88/lstm_264/while/Identity_4:output:0"[
'sequential_88_lstm_264_while_identity_50sequential_88/lstm_264/while/Identity_5:output:0"?
Jsequential_88_lstm_264_while_lstm_cell_381_biasadd_readvariableop_resourceLsequential_88_lstm_264_while_lstm_cell_381_biasadd_readvariableop_resource_0"?
Ksequential_88_lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resourceMsequential_88_lstm_264_while_lstm_cell_381_matmul_1_readvariableop_resource_0"?
Isequential_88_lstm_264_while_lstm_cell_381_matmul_readvariableop_resourceKsequential_88_lstm_264_while_lstm_cell_381_matmul_readvariableop_resource_0"?
Csequential_88_lstm_264_while_sequential_88_lstm_264_strided_slice_1Esequential_88_lstm_264_while_sequential_88_lstm_264_strided_slice_1_0"?
sequential_88_lstm_264_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_264_tensorarrayunstack_tensorlistfromtensor?sequential_88_lstm_264_while_tensorarrayv2read_tensorlistgetitem_sequential_88_lstm_264_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_88/lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOpAsequential_88/lstm_264/while/lstm_cell_381/BiasAdd/ReadVariableOp2?
@sequential_88/lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp@sequential_88/lstm_264/while/lstm_cell_381/MatMul/ReadVariableOp2?
Bsequential_88/lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOpBsequential_88/lstm_264/while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2320629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_381_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_381_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_381_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_381_matmul_readvariableop_resource:	?G
4while_lstm_cell_381_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_381_biasadd_readvariableop_resource:	???*while/lstm_cell_381/BiasAdd/ReadVariableOp?)while/lstm_cell_381/MatMul/ReadVariableOp?+while/lstm_cell_381/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_381/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_381_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_381/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_381/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_381/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_381_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_381/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_381/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_381/addAddV2$while/lstm_cell_381/MatMul:product:0&while/lstm_cell_381/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_381/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_381_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_381/BiasAddBiasAddwhile/lstm_cell_381/add:z:02while/lstm_cell_381/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_381/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_381/splitSplit,while/lstm_cell_381/split/split_dim:output:0$while/lstm_cell_381/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_381/SigmoidSigmoid"while/lstm_cell_381/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_1Sigmoid"while/lstm_cell_381/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mulMul!while/lstm_cell_381/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_381/ReluRelu"while/lstm_cell_381/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_1Mulwhile/lstm_cell_381/Sigmoid:y:0&while/lstm_cell_381/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/add_1AddV2while/lstm_cell_381/mul:z:0while/lstm_cell_381/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_381/Sigmoid_2Sigmoid"while/lstm_cell_381/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_381/Relu_1Reluwhile/lstm_cell_381/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_381/mul_2Mul!while/lstm_cell_381/Sigmoid_2:y:0(while/lstm_cell_381/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_381/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_381/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_381/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_381/BiasAdd/ReadVariableOp*^while/lstm_cell_381/MatMul/ReadVariableOp,^while/lstm_cell_381/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_381_biasadd_readvariableop_resource5while_lstm_cell_381_biasadd_readvariableop_resource_0"n
4while_lstm_cell_381_matmul_1_readvariableop_resource6while_lstm_cell_381_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_381_matmul_readvariableop_resource4while_lstm_cell_381_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_381/BiasAdd/ReadVariableOp*while/lstm_cell_381/BiasAdd/ReadVariableOp2V
)while/lstm_cell_381/MatMul/ReadVariableOp)while/lstm_cell_381/MatMul/ReadVariableOp2Z
+while/lstm_cell_381/MatMul_1/ReadVariableOp+while/lstm_cell_381/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2318867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2318867___redundant_placeholder05
1while_while_cond_2318867___redundant_placeholder15
1while_while_cond_2318867___redundant_placeholder25
1while_while_cond_2318867___redundant_placeholder3
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
lstm_266_while_cond_2319722.
*lstm_266_while_lstm_266_while_loop_counter4
0lstm_266_while_lstm_266_while_maximum_iterations
lstm_266_while_placeholder 
lstm_266_while_placeholder_1 
lstm_266_while_placeholder_2 
lstm_266_while_placeholder_30
,lstm_266_while_less_lstm_266_strided_slice_1G
Clstm_266_while_lstm_266_while_cond_2319722___redundant_placeholder0G
Clstm_266_while_lstm_266_while_cond_2319722___redundant_placeholder1G
Clstm_266_while_lstm_266_while_cond_2319722___redundant_placeholder2G
Clstm_266_while_lstm_266_while_cond_2319722___redundant_placeholder3
lstm_266_while_identity
?
lstm_266/while/LessLesslstm_266_while_placeholder,lstm_266_while_less_lstm_266_strided_slice_1*
T0*
_output_shapes
: ]
lstm_266/while/IdentityIdentitylstm_266/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_266_while_identity lstm_266/while/Identity:output:0*(
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
while_body_2320959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_382_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_382_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_382_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_382_matmul_readvariableop_resource:	d?G
4while_lstm_cell_382_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_382_biasadd_readvariableop_resource:	???*while/lstm_cell_382/BiasAdd/ReadVariableOp?)while/lstm_cell_382/MatMul/ReadVariableOp?+while/lstm_cell_382/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_382/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_382_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_382/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_382/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_382/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_382_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_382/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_382/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_382/addAddV2$while/lstm_cell_382/MatMul:product:0&while/lstm_cell_382/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_382/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_382_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_382/BiasAddBiasAddwhile/lstm_cell_382/add:z:02while/lstm_cell_382/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_382/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_382/splitSplit,while/lstm_cell_382/split/split_dim:output:0$while/lstm_cell_382/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_382/SigmoidSigmoid"while/lstm_cell_382/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_1Sigmoid"while/lstm_cell_382/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mulMul!while/lstm_cell_382/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_382/ReluRelu"while/lstm_cell_382/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_1Mulwhile/lstm_cell_382/Sigmoid:y:0&while/lstm_cell_382/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/add_1AddV2while/lstm_cell_382/mul:z:0while/lstm_cell_382/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_382/Sigmoid_2Sigmoid"while/lstm_cell_382/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_382/Relu_1Reluwhile/lstm_cell_382/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_382/mul_2Mul!while/lstm_cell_382/Sigmoid_2:y:0(while/lstm_cell_382/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_382/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_382/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_382/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_382/BiasAdd/ReadVariableOp*^while/lstm_cell_382/MatMul/ReadVariableOp,^while/lstm_cell_382/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_382_biasadd_readvariableop_resource5while_lstm_cell_382_biasadd_readvariableop_resource_0"n
4while_lstm_cell_382_matmul_1_readvariableop_resource6while_lstm_cell_382_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_382_matmul_readvariableop_resource4while_lstm_cell_382_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_382/BiasAdd/ReadVariableOp*while/lstm_cell_382/BiasAdd/ReadVariableOp2V
)while/lstm_cell_382/MatMul/ReadVariableOp)while/lstm_cell_382/MatMul/ReadVariableOp2Z
+while/lstm_cell_382/MatMul_1/ReadVariableOp+while/lstm_cell_382/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_264_input;
 serving_default_lstm_264_input:0?????????<
dense_880
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
2dense_88/kernel
:2dense_88/bias
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
0:.	?2lstm_264/lstm_cell_264/kernel
::8	d?2'lstm_264/lstm_cell_264/recurrent_kernel
*:(?2lstm_264/lstm_cell_264/bias
0:.	d?2lstm_265/lstm_cell_265/kernel
::8	2?2'lstm_265/lstm_cell_265/recurrent_kernel
*:(?2lstm_265/lstm_cell_265/bias
/:-2(2lstm_266/lstm_cell_266/kernel
9:7
(2'lstm_266/lstm_cell_266/recurrent_kernel
):'(2lstm_266/lstm_cell_266/bias
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
2Adam/dense_88/kernel/m
 :2Adam/dense_88/bias/m
5:3	?2$Adam/lstm_264/lstm_cell_264/kernel/m
?:=	d?2.Adam/lstm_264/lstm_cell_264/recurrent_kernel/m
/:-?2"Adam/lstm_264/lstm_cell_264/bias/m
5:3	d?2$Adam/lstm_265/lstm_cell_265/kernel/m
?:=	2?2.Adam/lstm_265/lstm_cell_265/recurrent_kernel/m
/:-?2"Adam/lstm_265/lstm_cell_265/bias/m
4:22(2$Adam/lstm_266/lstm_cell_266/kernel/m
>:<
(2.Adam/lstm_266/lstm_cell_266/recurrent_kernel/m
.:,(2"Adam/lstm_266/lstm_cell_266/bias/m
&:$
2Adam/dense_88/kernel/v
 :2Adam/dense_88/bias/v
5:3	?2$Adam/lstm_264/lstm_cell_264/kernel/v
?:=	d?2.Adam/lstm_264/lstm_cell_264/recurrent_kernel/v
/:-?2"Adam/lstm_264/lstm_cell_264/bias/v
5:3	d?2$Adam/lstm_265/lstm_cell_265/kernel/v
?:=	2?2.Adam/lstm_265/lstm_cell_265/recurrent_kernel/v
/:-?2"Adam/lstm_265/lstm_cell_265/bias/v
4:22(2$Adam/lstm_266/lstm_cell_266/kernel/v
>:<
(2.Adam/lstm_266/lstm_cell_266/recurrent_kernel/v
.:,(2"Adam/lstm_266/lstm_cell_266/bias/v
?2?
/__inference_sequential_88_layer_call_fn_2318621
/__inference_sequential_88_layer_call_fn_2319359
/__inference_sequential_88_layer_call_fn_2319386
/__inference_sequential_88_layer_call_fn_2319237?
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319813
J__inference_sequential_88_layer_call_and_return_conditional_losses_2320240
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319267
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319297?
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
"__inference__wrapped_model_2317072lstm_264_input"?
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
*__inference_lstm_264_layer_call_fn_2320251
*__inference_lstm_264_layer_call_fn_2320262
*__inference_lstm_264_layer_call_fn_2320273
*__inference_lstm_264_layer_call_fn_2320284?
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320427
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320570
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320713
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320856?
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
*__inference_lstm_265_layer_call_fn_2320867
*__inference_lstm_265_layer_call_fn_2320878
*__inference_lstm_265_layer_call_fn_2320889
*__inference_lstm_265_layer_call_fn_2320900?
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321043
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321186
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321329
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321472?
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
*__inference_lstm_266_layer_call_fn_2321483
*__inference_lstm_266_layer_call_fn_2321494
*__inference_lstm_266_layer_call_fn_2321505
*__inference_lstm_266_layer_call_fn_2321516?
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321659
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321802
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321945
E__inference_lstm_266_layer_call_and_return_conditional_losses_2322088?
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
*__inference_dense_88_layer_call_fn_2322097?
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
E__inference_dense_88_layer_call_and_return_conditional_losses_2322107?
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
%__inference_signature_wrapper_2319332lstm_264_input"?
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
/__inference_lstm_cell_381_layer_call_fn_2322124
/__inference_lstm_cell_381_layer_call_fn_2322141?
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2322173
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2322205?
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
/__inference_lstm_cell_382_layer_call_fn_2322222
/__inference_lstm_cell_382_layer_call_fn_2322239?
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2322271
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2322303?
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
/__inference_lstm_cell_383_layer_call_fn_2322320
/__inference_lstm_cell_383_layer_call_fn_2322337?
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2322369
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2322401?
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
"__inference__wrapped_model_2317072-./012345!";?8
1?.
,?)
lstm_264_input?????????
? "3?0
.
dense_88"?
dense_88??????????
E__inference_dense_88_layer_call_and_return_conditional_losses_2322107\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_88_layer_call_fn_2322097O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320427?-./O?L
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320570?-./O?L
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320713q-./??<
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
E__inference_lstm_264_layer_call_and_return_conditional_losses_2320856q-./??<
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
*__inference_lstm_264_layer_call_fn_2320251}-./O?L
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
*__inference_lstm_264_layer_call_fn_2320262}-./O?L
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
*__inference_lstm_264_layer_call_fn_2320273d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_264_layer_call_fn_2320284d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321043?012O?L
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321186?012O?L
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321329q012??<
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
E__inference_lstm_265_layer_call_and_return_conditional_losses_2321472q012??<
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
*__inference_lstm_265_layer_call_fn_2320867}012O?L
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
*__inference_lstm_265_layer_call_fn_2320878}012O?L
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
*__inference_lstm_265_layer_call_fn_2320889d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_265_layer_call_fn_2320900d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321659}345O?L
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321802}345O?L
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2321945m345??<
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
E__inference_lstm_266_layer_call_and_return_conditional_losses_2322088m345??<
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
*__inference_lstm_266_layer_call_fn_2321483p345O?L
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
*__inference_lstm_266_layer_call_fn_2321494p345O?L
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
*__inference_lstm_266_layer_call_fn_2321505`345??<
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
*__inference_lstm_266_layer_call_fn_2321516`345??<
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2322173?-./??}
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
J__inference_lstm_cell_381_layer_call_and_return_conditional_losses_2322205?-./??}
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
/__inference_lstm_cell_381_layer_call_fn_2322124?-./??}
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
/__inference_lstm_cell_381_layer_call_fn_2322141?-./??}
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2322271?012??}
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
J__inference_lstm_cell_382_layer_call_and_return_conditional_losses_2322303?012??}
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
/__inference_lstm_cell_382_layer_call_fn_2322222?012??}
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
/__inference_lstm_cell_382_layer_call_fn_2322239?012??}
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2322369?345??}
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
J__inference_lstm_cell_383_layer_call_and_return_conditional_losses_2322401?345??}
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
/__inference_lstm_cell_383_layer_call_fn_2322320?345??}
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
/__inference_lstm_cell_383_layer_call_fn_2322337?345??}
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319267y-./012345!"C?@
9?6
,?)
lstm_264_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319297y-./012345!"C?@
9?6
,?)
lstm_264_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_88_layer_call_and_return_conditional_losses_2319813q-./012345!";?8
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
J__inference_sequential_88_layer_call_and_return_conditional_losses_2320240q-./012345!";?8
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
/__inference_sequential_88_layer_call_fn_2318621l-./012345!"C?@
9?6
,?)
lstm_264_input?????????
p 

 
? "???????????
/__inference_sequential_88_layer_call_fn_2319237l-./012345!"C?@
9?6
,?)
lstm_264_input?????????
p

 
? "???????????
/__inference_sequential_88_layer_call_fn_2319359d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_88_layer_call_fn_2319386d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2319332?-./012345!"M?J
? 
C?@
>
lstm_264_input,?)
lstm_264_input?????????"3?0
.
dense_88"?
dense_88?????????