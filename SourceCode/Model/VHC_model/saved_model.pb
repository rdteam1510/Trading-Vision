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
dense_89/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_89/kernel
s
#dense_89/kernel/Read/ReadVariableOpReadVariableOpdense_89/kernel*
_output_shapes

:
*
dtype0
r
dense_89/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_89/bias
k
!dense_89/bias/Read/ReadVariableOpReadVariableOpdense_89/bias*
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
lstm_267/lstm_cell_267/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_267/lstm_cell_267/kernel
?
1lstm_267/lstm_cell_267/kernel/Read/ReadVariableOpReadVariableOplstm_267/lstm_cell_267/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_267/lstm_cell_267/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_267/lstm_cell_267/recurrent_kernel
?
;lstm_267/lstm_cell_267/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_267/lstm_cell_267/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_267/lstm_cell_267/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_267/lstm_cell_267/bias
?
/lstm_267/lstm_cell_267/bias/Read/ReadVariableOpReadVariableOplstm_267/lstm_cell_267/bias*
_output_shapes	
:?*
dtype0
?
lstm_268/lstm_cell_268/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_268/lstm_cell_268/kernel
?
1lstm_268/lstm_cell_268/kernel/Read/ReadVariableOpReadVariableOplstm_268/lstm_cell_268/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_268/lstm_cell_268/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_268/lstm_cell_268/recurrent_kernel
?
;lstm_268/lstm_cell_268/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_268/lstm_cell_268/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_268/lstm_cell_268/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_268/lstm_cell_268/bias
?
/lstm_268/lstm_cell_268/bias/Read/ReadVariableOpReadVariableOplstm_268/lstm_cell_268/bias*
_output_shapes	
:?*
dtype0
?
lstm_269/lstm_cell_269/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_269/lstm_cell_269/kernel
?
1lstm_269/lstm_cell_269/kernel/Read/ReadVariableOpReadVariableOplstm_269/lstm_cell_269/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_269/lstm_cell_269/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_269/lstm_cell_269/recurrent_kernel
?
;lstm_269/lstm_cell_269/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_269/lstm_cell_269/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_269/lstm_cell_269/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_269/lstm_cell_269/bias
?
/lstm_269/lstm_cell_269/bias/Read/ReadVariableOpReadVariableOplstm_269/lstm_cell_269/bias*
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
Adam/dense_89/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_89/kernel/m
?
*Adam/dense_89/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_89/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_89/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_89/bias/m
y
(Adam/dense_89/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_89/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_267/lstm_cell_267/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_267/lstm_cell_267/kernel/m
?
8Adam/lstm_267/lstm_cell_267/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_267/lstm_cell_267/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_267/lstm_cell_267/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_267/lstm_cell_267/recurrent_kernel/m
?
BAdam/lstm_267/lstm_cell_267/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_267/lstm_cell_267/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_267/lstm_cell_267/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_267/lstm_cell_267/bias/m
?
6Adam/lstm_267/lstm_cell_267/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_267/lstm_cell_267/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_268/lstm_cell_268/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_268/lstm_cell_268/kernel/m
?
8Adam/lstm_268/lstm_cell_268/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_268/lstm_cell_268/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_268/lstm_cell_268/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_268/lstm_cell_268/recurrent_kernel/m
?
BAdam/lstm_268/lstm_cell_268/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_268/lstm_cell_268/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_268/lstm_cell_268/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_268/lstm_cell_268/bias/m
?
6Adam/lstm_268/lstm_cell_268/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_268/lstm_cell_268/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_269/lstm_cell_269/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_269/lstm_cell_269/kernel/m
?
8Adam/lstm_269/lstm_cell_269/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_269/lstm_cell_269/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_269/lstm_cell_269/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_269/lstm_cell_269/recurrent_kernel/m
?
BAdam/lstm_269/lstm_cell_269/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_269/lstm_cell_269/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_269/lstm_cell_269/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_269/lstm_cell_269/bias/m
?
6Adam/lstm_269/lstm_cell_269/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_269/lstm_cell_269/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_89/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_89/kernel/v
?
*Adam/dense_89/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_89/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_89/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_89/bias/v
y
(Adam/dense_89/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_89/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_267/lstm_cell_267/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_267/lstm_cell_267/kernel/v
?
8Adam/lstm_267/lstm_cell_267/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_267/lstm_cell_267/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_267/lstm_cell_267/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_267/lstm_cell_267/recurrent_kernel/v
?
BAdam/lstm_267/lstm_cell_267/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_267/lstm_cell_267/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_267/lstm_cell_267/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_267/lstm_cell_267/bias/v
?
6Adam/lstm_267/lstm_cell_267/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_267/lstm_cell_267/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_268/lstm_cell_268/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_268/lstm_cell_268/kernel/v
?
8Adam/lstm_268/lstm_cell_268/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_268/lstm_cell_268/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_268/lstm_cell_268/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_268/lstm_cell_268/recurrent_kernel/v
?
BAdam/lstm_268/lstm_cell_268/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_268/lstm_cell_268/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_268/lstm_cell_268/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_268/lstm_cell_268/bias/v
?
6Adam/lstm_268/lstm_cell_268/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_268/lstm_cell_268/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_269/lstm_cell_269/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_269/lstm_cell_269/kernel/v
?
8Adam/lstm_269/lstm_cell_269/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_269/lstm_cell_269/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_269/lstm_cell_269/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_269/lstm_cell_269/recurrent_kernel/v
?
BAdam/lstm_269/lstm_cell_269/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_269/lstm_cell_269/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_269/lstm_cell_269/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_269/lstm_cell_269/bias/v
?
6Adam/lstm_269/lstm_cell_269/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_269/lstm_cell_269/bias/v*
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
VARIABLE_VALUEdense_89/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_89/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_267/lstm_cell_267/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_267/lstm_cell_267/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_267/lstm_cell_267/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_268/lstm_cell_268/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_268/lstm_cell_268/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_268/lstm_cell_268/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_269/lstm_cell_269/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_269/lstm_cell_269/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_269/lstm_cell_269/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_89/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_89/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_267/lstm_cell_267/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_267/lstm_cell_267/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_267/lstm_cell_267/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_268/lstm_cell_268/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_268/lstm_cell_268/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_268/lstm_cell_268/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_269/lstm_cell_269/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_269/lstm_cell_269/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_269/lstm_cell_269/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_89/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_89/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_267/lstm_cell_267/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_267/lstm_cell_267/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_267/lstm_cell_267/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_268/lstm_cell_268/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_268/lstm_cell_268/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_268/lstm_cell_268/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_269/lstm_cell_269/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_269/lstm_cell_269/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_269/lstm_cell_269/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_267_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_267_inputlstm_267/lstm_cell_267/kernel'lstm_267/lstm_cell_267/recurrent_kernellstm_267/lstm_cell_267/biaslstm_268/lstm_cell_268/kernel'lstm_268/lstm_cell_268/recurrent_kernellstm_268/lstm_cell_268/biaslstm_269/lstm_cell_269/kernel'lstm_269/lstm_cell_269/recurrent_kernellstm_269/lstm_cell_269/biasdense_89/kerneldense_89/bias*
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
%__inference_signature_wrapper_3171697
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_89/kernel/Read/ReadVariableOp!dense_89/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_267/lstm_cell_267/kernel/Read/ReadVariableOp;lstm_267/lstm_cell_267/recurrent_kernel/Read/ReadVariableOp/lstm_267/lstm_cell_267/bias/Read/ReadVariableOp1lstm_268/lstm_cell_268/kernel/Read/ReadVariableOp;lstm_268/lstm_cell_268/recurrent_kernel/Read/ReadVariableOp/lstm_268/lstm_cell_268/bias/Read/ReadVariableOp1lstm_269/lstm_cell_269/kernel/Read/ReadVariableOp;lstm_269/lstm_cell_269/recurrent_kernel/Read/ReadVariableOp/lstm_269/lstm_cell_269/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_89/kernel/m/Read/ReadVariableOp(Adam/dense_89/bias/m/Read/ReadVariableOp8Adam/lstm_267/lstm_cell_267/kernel/m/Read/ReadVariableOpBAdam/lstm_267/lstm_cell_267/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_267/lstm_cell_267/bias/m/Read/ReadVariableOp8Adam/lstm_268/lstm_cell_268/kernel/m/Read/ReadVariableOpBAdam/lstm_268/lstm_cell_268/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_268/lstm_cell_268/bias/m/Read/ReadVariableOp8Adam/lstm_269/lstm_cell_269/kernel/m/Read/ReadVariableOpBAdam/lstm_269/lstm_cell_269/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_269/lstm_cell_269/bias/m/Read/ReadVariableOp*Adam/dense_89/kernel/v/Read/ReadVariableOp(Adam/dense_89/bias/v/Read/ReadVariableOp8Adam/lstm_267/lstm_cell_267/kernel/v/Read/ReadVariableOpBAdam/lstm_267/lstm_cell_267/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_267/lstm_cell_267/bias/v/Read/ReadVariableOp8Adam/lstm_268/lstm_cell_268/kernel/v/Read/ReadVariableOpBAdam/lstm_268/lstm_cell_268/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_268/lstm_cell_268/bias/v/Read/ReadVariableOp8Adam/lstm_269/lstm_cell_269/kernel/v/Read/ReadVariableOpBAdam/lstm_269/lstm_cell_269/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_269/lstm_cell_269/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3174909
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_89/kerneldense_89/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_267/lstm_cell_267/kernel'lstm_267/lstm_cell_267/recurrent_kernellstm_267/lstm_cell_267/biaslstm_268/lstm_cell_268/kernel'lstm_268/lstm_cell_268/recurrent_kernellstm_268/lstm_cell_268/biaslstm_269/lstm_cell_269/kernel'lstm_269/lstm_cell_269/recurrent_kernellstm_269/lstm_cell_269/biastotalcountAdam/dense_89/kernel/mAdam/dense_89/bias/m$Adam/lstm_267/lstm_cell_267/kernel/m.Adam/lstm_267/lstm_cell_267/recurrent_kernel/m"Adam/lstm_267/lstm_cell_267/bias/m$Adam/lstm_268/lstm_cell_268/kernel/m.Adam/lstm_268/lstm_cell_268/recurrent_kernel/m"Adam/lstm_268/lstm_cell_268/bias/m$Adam/lstm_269/lstm_cell_269/kernel/m.Adam/lstm_269/lstm_cell_269/recurrent_kernel/m"Adam/lstm_269/lstm_cell_269/bias/mAdam/dense_89/kernel/vAdam/dense_89/bias/v$Adam/lstm_267/lstm_cell_267/kernel/v.Adam/lstm_267/lstm_cell_267/recurrent_kernel/v"Adam/lstm_267/lstm_cell_267/bias/v$Adam/lstm_268/lstm_cell_268/kernel/v.Adam/lstm_268/lstm_cell_268/recurrent_kernel/v"Adam/lstm_268/lstm_cell_268/bias/v$Adam/lstm_269/lstm_cell_269/kernel/v.Adam/lstm_269/lstm_cell_269/recurrent_kernel/v"Adam/lstm_269/lstm_cell_269/bias/v*4
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
#__inference__traced_restore_3175039??+
?C
?

lstm_269_while_body_3172088.
*lstm_269_while_lstm_269_while_loop_counter4
0lstm_269_while_lstm_269_while_maximum_iterations
lstm_269_while_placeholder 
lstm_269_while_placeholder_1 
lstm_269_while_placeholder_2 
lstm_269_while_placeholder_3-
)lstm_269_while_lstm_269_strided_slice_1_0i
elstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0:2(Q
?lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(L
>lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0:(
lstm_269_while_identity
lstm_269_while_identity_1
lstm_269_while_identity_2
lstm_269_while_identity_3
lstm_269_while_identity_4
lstm_269_while_identity_5+
'lstm_269_while_lstm_269_strided_slice_1g
clstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensorM
;lstm_269_while_lstm_cell_524_matmul_readvariableop_resource:2(O
=lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource:
(J
<lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource:(??3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp?2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp?4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp?
@lstm_269/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_269/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensor_0lstm_269_while_placeholderIlstm_269/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp=lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_269/while/lstm_cell_524/MatMulMatMul9lstm_269/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp?lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_269/while/lstm_cell_524/MatMul_1MatMullstm_269_while_placeholder_2<lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_269/while/lstm_cell_524/addAddV2-lstm_269/while/lstm_cell_524/MatMul:product:0/lstm_269/while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp>lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_269/while/lstm_cell_524/BiasAddBiasAdd$lstm_269/while/lstm_cell_524/add:z:0;lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_269/while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_269/while/lstm_cell_524/splitSplit5lstm_269/while/lstm_cell_524/split/split_dim:output:0-lstm_269/while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_269/while/lstm_cell_524/SigmoidSigmoid+lstm_269/while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_269/while/lstm_cell_524/Sigmoid_1Sigmoid+lstm_269/while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_269/while/lstm_cell_524/mulMul*lstm_269/while/lstm_cell_524/Sigmoid_1:y:0lstm_269_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_269/while/lstm_cell_524/ReluRelu+lstm_269/while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_269/while/lstm_cell_524/mul_1Mul(lstm_269/while/lstm_cell_524/Sigmoid:y:0/lstm_269/while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_269/while/lstm_cell_524/add_1AddV2$lstm_269/while/lstm_cell_524/mul:z:0&lstm_269/while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_269/while/lstm_cell_524/Sigmoid_2Sigmoid+lstm_269/while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_269/while/lstm_cell_524/Relu_1Relu&lstm_269/while/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_269/while/lstm_cell_524/mul_2Mul*lstm_269/while/lstm_cell_524/Sigmoid_2:y:01lstm_269/while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_269/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_269_while_placeholder_1lstm_269_while_placeholder&lstm_269/while/lstm_cell_524/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_269/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_269/while/addAddV2lstm_269_while_placeholderlstm_269/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_269/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_269/while/add_1AddV2*lstm_269_while_lstm_269_while_loop_counterlstm_269/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_269/while/IdentityIdentitylstm_269/while/add_1:z:0^lstm_269/while/NoOp*
T0*
_output_shapes
: ?
lstm_269/while/Identity_1Identity0lstm_269_while_lstm_269_while_maximum_iterations^lstm_269/while/NoOp*
T0*
_output_shapes
: t
lstm_269/while/Identity_2Identitylstm_269/while/add:z:0^lstm_269/while/NoOp*
T0*
_output_shapes
: ?
lstm_269/while/Identity_3IdentityClstm_269/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_269/while/NoOp*
T0*
_output_shapes
: ?
lstm_269/while/Identity_4Identity&lstm_269/while/lstm_cell_524/mul_2:z:0^lstm_269/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_269/while/Identity_5Identity&lstm_269/while/lstm_cell_524/add_1:z:0^lstm_269/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_269/while/NoOpNoOp4^lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp3^lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp5^lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_269_while_identity lstm_269/while/Identity:output:0"?
lstm_269_while_identity_1"lstm_269/while/Identity_1:output:0"?
lstm_269_while_identity_2"lstm_269/while/Identity_2:output:0"?
lstm_269_while_identity_3"lstm_269/while/Identity_3:output:0"?
lstm_269_while_identity_4"lstm_269/while/Identity_4:output:0"?
lstm_269_while_identity_5"lstm_269/while/Identity_5:output:0"T
'lstm_269_while_lstm_269_strided_slice_1)lstm_269_while_lstm_269_strided_slice_1_0"~
<lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource>lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0"?
=lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource?lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0"|
;lstm_269_while_lstm_cell_524_matmul_readvariableop_resource=lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0"?
clstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensorelstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp2h
2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp2l
4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169650

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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3174734

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
?
)sequential_89_lstm_267_while_cond_3169068J
Fsequential_89_lstm_267_while_sequential_89_lstm_267_while_loop_counterP
Lsequential_89_lstm_267_while_sequential_89_lstm_267_while_maximum_iterations,
(sequential_89_lstm_267_while_placeholder.
*sequential_89_lstm_267_while_placeholder_1.
*sequential_89_lstm_267_while_placeholder_2.
*sequential_89_lstm_267_while_placeholder_3L
Hsequential_89_lstm_267_while_less_sequential_89_lstm_267_strided_slice_1c
_sequential_89_lstm_267_while_sequential_89_lstm_267_while_cond_3169068___redundant_placeholder0c
_sequential_89_lstm_267_while_sequential_89_lstm_267_while_cond_3169068___redundant_placeholder1c
_sequential_89_lstm_267_while_sequential_89_lstm_267_while_cond_3169068___redundant_placeholder2c
_sequential_89_lstm_267_while_sequential_89_lstm_267_while_cond_3169068___redundant_placeholder3)
%sequential_89_lstm_267_while_identity
?
!sequential_89/lstm_267/while/LessLess(sequential_89_lstm_267_while_placeholderHsequential_89_lstm_267_while_less_sequential_89_lstm_267_strided_slice_1*
T0*
_output_shapes
: y
%sequential_89/lstm_267/while/IdentityIdentity%sequential_89/lstm_267/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_89_lstm_267_while_identity.sequential_89/lstm_267/while/Identity:output:0*(
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

lstm_269_while_body_3172515.
*lstm_269_while_lstm_269_while_loop_counter4
0lstm_269_while_lstm_269_while_maximum_iterations
lstm_269_while_placeholder 
lstm_269_while_placeholder_1 
lstm_269_while_placeholder_2 
lstm_269_while_placeholder_3-
)lstm_269_while_lstm_269_strided_slice_1_0i
elstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0:2(Q
?lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(L
>lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0:(
lstm_269_while_identity
lstm_269_while_identity_1
lstm_269_while_identity_2
lstm_269_while_identity_3
lstm_269_while_identity_4
lstm_269_while_identity_5+
'lstm_269_while_lstm_269_strided_slice_1g
clstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensorM
;lstm_269_while_lstm_cell_524_matmul_readvariableop_resource:2(O
=lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource:
(J
<lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource:(??3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp?2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp?4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp?
@lstm_269/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_269/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensor_0lstm_269_while_placeholderIlstm_269/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp=lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_269/while/lstm_cell_524/MatMulMatMul9lstm_269/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp?lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_269/while/lstm_cell_524/MatMul_1MatMullstm_269_while_placeholder_2<lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_269/while/lstm_cell_524/addAddV2-lstm_269/while/lstm_cell_524/MatMul:product:0/lstm_269/while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp>lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_269/while/lstm_cell_524/BiasAddBiasAdd$lstm_269/while/lstm_cell_524/add:z:0;lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_269/while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_269/while/lstm_cell_524/splitSplit5lstm_269/while/lstm_cell_524/split/split_dim:output:0-lstm_269/while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_269/while/lstm_cell_524/SigmoidSigmoid+lstm_269/while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_269/while/lstm_cell_524/Sigmoid_1Sigmoid+lstm_269/while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_269/while/lstm_cell_524/mulMul*lstm_269/while/lstm_cell_524/Sigmoid_1:y:0lstm_269_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_269/while/lstm_cell_524/ReluRelu+lstm_269/while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_269/while/lstm_cell_524/mul_1Mul(lstm_269/while/lstm_cell_524/Sigmoid:y:0/lstm_269/while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_269/while/lstm_cell_524/add_1AddV2$lstm_269/while/lstm_cell_524/mul:z:0&lstm_269/while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_269/while/lstm_cell_524/Sigmoid_2Sigmoid+lstm_269/while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_269/while/lstm_cell_524/Relu_1Relu&lstm_269/while/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_269/while/lstm_cell_524/mul_2Mul*lstm_269/while/lstm_cell_524/Sigmoid_2:y:01lstm_269/while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_269/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_269_while_placeholder_1lstm_269_while_placeholder&lstm_269/while/lstm_cell_524/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_269/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_269/while/addAddV2lstm_269_while_placeholderlstm_269/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_269/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_269/while/add_1AddV2*lstm_269_while_lstm_269_while_loop_counterlstm_269/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_269/while/IdentityIdentitylstm_269/while/add_1:z:0^lstm_269/while/NoOp*
T0*
_output_shapes
: ?
lstm_269/while/Identity_1Identity0lstm_269_while_lstm_269_while_maximum_iterations^lstm_269/while/NoOp*
T0*
_output_shapes
: t
lstm_269/while/Identity_2Identitylstm_269/while/add:z:0^lstm_269/while/NoOp*
T0*
_output_shapes
: ?
lstm_269/while/Identity_3IdentityClstm_269/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_269/while/NoOp*
T0*
_output_shapes
: ?
lstm_269/while/Identity_4Identity&lstm_269/while/lstm_cell_524/mul_2:z:0^lstm_269/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_269/while/Identity_5Identity&lstm_269/while/lstm_cell_524/add_1:z:0^lstm_269/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_269/while/NoOpNoOp4^lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp3^lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp5^lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_269_while_identity lstm_269/while/Identity:output:0"?
lstm_269_while_identity_1"lstm_269/while/Identity_1:output:0"?
lstm_269_while_identity_2"lstm_269/while/Identity_2:output:0"?
lstm_269_while_identity_3"lstm_269/while/Identity_3:output:0"?
lstm_269_while_identity_4"lstm_269/while/Identity_4:output:0"?
lstm_269_while_identity_5"lstm_269/while/Identity_5:output:0"T
'lstm_269_while_lstm_269_strided_slice_1)lstm_269_while_lstm_269_strided_slice_1_0"~
<lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource>lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0"?
=lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource?lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0"|
;lstm_269_while_lstm_cell_524_matmul_readvariableop_resource=lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0"?
clstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensorelstm_269_while_tensorarrayv2read_tensorlistgetitem_lstm_269_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp3lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp2h
2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp2lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp2l
4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp4lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_89_layer_call_fn_3171602
lstm_267_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_267_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171550o
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
_user_specified_namelstm_267_input
??
?
"__inference__wrapped_model_3169437
lstm_267_inputV
Csequential_89_lstm_267_lstm_cell_522_matmul_readvariableop_resource:	?X
Esequential_89_lstm_267_lstm_cell_522_matmul_1_readvariableop_resource:	d?S
Dsequential_89_lstm_267_lstm_cell_522_biasadd_readvariableop_resource:	?V
Csequential_89_lstm_268_lstm_cell_523_matmul_readvariableop_resource:	d?X
Esequential_89_lstm_268_lstm_cell_523_matmul_1_readvariableop_resource:	2?S
Dsequential_89_lstm_268_lstm_cell_523_biasadd_readvariableop_resource:	?U
Csequential_89_lstm_269_lstm_cell_524_matmul_readvariableop_resource:2(W
Esequential_89_lstm_269_lstm_cell_524_matmul_1_readvariableop_resource:
(R
Dsequential_89_lstm_269_lstm_cell_524_biasadd_readvariableop_resource:(G
5sequential_89_dense_89_matmul_readvariableop_resource:
D
6sequential_89_dense_89_biasadd_readvariableop_resource:
identity??-sequential_89/dense_89/BiasAdd/ReadVariableOp?,sequential_89/dense_89/MatMul/ReadVariableOp?;sequential_89/lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp?:sequential_89/lstm_267/lstm_cell_522/MatMul/ReadVariableOp?<sequential_89/lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp?sequential_89/lstm_267/while?;sequential_89/lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp?:sequential_89/lstm_268/lstm_cell_523/MatMul/ReadVariableOp?<sequential_89/lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp?sequential_89/lstm_268/while?;sequential_89/lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp?:sequential_89/lstm_269/lstm_cell_524/MatMul/ReadVariableOp?<sequential_89/lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp?sequential_89/lstm_269/whileZ
sequential_89/lstm_267/ShapeShapelstm_267_input*
T0*
_output_shapes
:t
*sequential_89/lstm_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_89/lstm_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_89/lstm_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_89/lstm_267/strided_sliceStridedSlice%sequential_89/lstm_267/Shape:output:03sequential_89/lstm_267/strided_slice/stack:output:05sequential_89/lstm_267/strided_slice/stack_1:output:05sequential_89/lstm_267/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_89/lstm_267/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_89/lstm_267/zeros/packedPack-sequential_89/lstm_267/strided_slice:output:0.sequential_89/lstm_267/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_89/lstm_267/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_89/lstm_267/zerosFill,sequential_89/lstm_267/zeros/packed:output:0+sequential_89/lstm_267/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_89/lstm_267/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_89/lstm_267/zeros_1/packedPack-sequential_89/lstm_267/strided_slice:output:00sequential_89/lstm_267/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_89/lstm_267/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_89/lstm_267/zeros_1Fill.sequential_89/lstm_267/zeros_1/packed:output:0-sequential_89/lstm_267/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_89/lstm_267/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_89/lstm_267/transpose	Transposelstm_267_input.sequential_89/lstm_267/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_89/lstm_267/Shape_1Shape$sequential_89/lstm_267/transpose:y:0*
T0*
_output_shapes
:v
,sequential_89/lstm_267/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_267/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_89/lstm_267/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_267/strided_slice_1StridedSlice'sequential_89/lstm_267/Shape_1:output:05sequential_89/lstm_267/strided_slice_1/stack:output:07sequential_89/lstm_267/strided_slice_1/stack_1:output:07sequential_89/lstm_267/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_89/lstm_267/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_89/lstm_267/TensorArrayV2TensorListReserve;sequential_89/lstm_267/TensorArrayV2/element_shape:output:0/sequential_89/lstm_267/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_89/lstm_267/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_89/lstm_267/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_89/lstm_267/transpose:y:0Usequential_89/lstm_267/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_89/lstm_267/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_267/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_89/lstm_267/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_267/strided_slice_2StridedSlice$sequential_89/lstm_267/transpose:y:05sequential_89/lstm_267/strided_slice_2/stack:output:07sequential_89/lstm_267/strided_slice_2/stack_1:output:07sequential_89/lstm_267/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_89/lstm_267/lstm_cell_522/MatMul/ReadVariableOpReadVariableOpCsequential_89_lstm_267_lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_89/lstm_267/lstm_cell_522/MatMulMatMul/sequential_89/lstm_267/strided_slice_2:output:0Bsequential_89/lstm_267/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_89/lstm_267/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOpEsequential_89_lstm_267_lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_89/lstm_267/lstm_cell_522/MatMul_1MatMul%sequential_89/lstm_267/zeros:output:0Dsequential_89/lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_89/lstm_267/lstm_cell_522/addAddV25sequential_89/lstm_267/lstm_cell_522/MatMul:product:07sequential_89/lstm_267/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_89/lstm_267/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOpDsequential_89_lstm_267_lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_89/lstm_267/lstm_cell_522/BiasAddBiasAdd,sequential_89/lstm_267/lstm_cell_522/add:z:0Csequential_89/lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_89/lstm_267/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_89/lstm_267/lstm_cell_522/splitSplit=sequential_89/lstm_267/lstm_cell_522/split/split_dim:output:05sequential_89/lstm_267/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_89/lstm_267/lstm_cell_522/SigmoidSigmoid3sequential_89/lstm_267/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_89/lstm_267/lstm_cell_522/Sigmoid_1Sigmoid3sequential_89/lstm_267/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_89/lstm_267/lstm_cell_522/mulMul2sequential_89/lstm_267/lstm_cell_522/Sigmoid_1:y:0'sequential_89/lstm_267/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_89/lstm_267/lstm_cell_522/ReluRelu3sequential_89/lstm_267/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_89/lstm_267/lstm_cell_522/mul_1Mul0sequential_89/lstm_267/lstm_cell_522/Sigmoid:y:07sequential_89/lstm_267/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_89/lstm_267/lstm_cell_522/add_1AddV2,sequential_89/lstm_267/lstm_cell_522/mul:z:0.sequential_89/lstm_267/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_89/lstm_267/lstm_cell_522/Sigmoid_2Sigmoid3sequential_89/lstm_267/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_89/lstm_267/lstm_cell_522/Relu_1Relu.sequential_89/lstm_267/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_89/lstm_267/lstm_cell_522/mul_2Mul2sequential_89/lstm_267/lstm_cell_522/Sigmoid_2:y:09sequential_89/lstm_267/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_89/lstm_267/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_89/lstm_267/TensorArrayV2_1TensorListReserve=sequential_89/lstm_267/TensorArrayV2_1/element_shape:output:0/sequential_89/lstm_267/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_89/lstm_267/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_89/lstm_267/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_89/lstm_267/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_89/lstm_267/whileWhile2sequential_89/lstm_267/while/loop_counter:output:08sequential_89/lstm_267/while/maximum_iterations:output:0$sequential_89/lstm_267/time:output:0/sequential_89/lstm_267/TensorArrayV2_1:handle:0%sequential_89/lstm_267/zeros:output:0'sequential_89/lstm_267/zeros_1:output:0/sequential_89/lstm_267/strided_slice_1:output:0Nsequential_89/lstm_267/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_89_lstm_267_lstm_cell_522_matmul_readvariableop_resourceEsequential_89_lstm_267_lstm_cell_522_matmul_1_readvariableop_resourceDsequential_89_lstm_267_lstm_cell_522_biasadd_readvariableop_resource*
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
)sequential_89_lstm_267_while_body_3169069*5
cond-R+
)sequential_89_lstm_267_while_cond_3169068*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_89/lstm_267/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_89/lstm_267/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_89/lstm_267/while:output:3Psequential_89/lstm_267/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_89/lstm_267/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_89/lstm_267/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_267/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_267/strided_slice_3StridedSliceBsequential_89/lstm_267/TensorArrayV2Stack/TensorListStack:tensor:05sequential_89/lstm_267/strided_slice_3/stack:output:07sequential_89/lstm_267/strided_slice_3/stack_1:output:07sequential_89/lstm_267/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_89/lstm_267/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_89/lstm_267/transpose_1	TransposeBsequential_89/lstm_267/TensorArrayV2Stack/TensorListStack:tensor:00sequential_89/lstm_267/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_89/lstm_267/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_89/lstm_268/ShapeShape&sequential_89/lstm_267/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_89/lstm_268/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_89/lstm_268/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_89/lstm_268/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_89/lstm_268/strided_sliceStridedSlice%sequential_89/lstm_268/Shape:output:03sequential_89/lstm_268/strided_slice/stack:output:05sequential_89/lstm_268/strided_slice/stack_1:output:05sequential_89/lstm_268/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_89/lstm_268/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_89/lstm_268/zeros/packedPack-sequential_89/lstm_268/strided_slice:output:0.sequential_89/lstm_268/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_89/lstm_268/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_89/lstm_268/zerosFill,sequential_89/lstm_268/zeros/packed:output:0+sequential_89/lstm_268/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_89/lstm_268/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_89/lstm_268/zeros_1/packedPack-sequential_89/lstm_268/strided_slice:output:00sequential_89/lstm_268/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_89/lstm_268/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_89/lstm_268/zeros_1Fill.sequential_89/lstm_268/zeros_1/packed:output:0-sequential_89/lstm_268/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_89/lstm_268/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_89/lstm_268/transpose	Transpose&sequential_89/lstm_267/transpose_1:y:0.sequential_89/lstm_268/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_89/lstm_268/Shape_1Shape$sequential_89/lstm_268/transpose:y:0*
T0*
_output_shapes
:v
,sequential_89/lstm_268/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_268/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_89/lstm_268/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_268/strided_slice_1StridedSlice'sequential_89/lstm_268/Shape_1:output:05sequential_89/lstm_268/strided_slice_1/stack:output:07sequential_89/lstm_268/strided_slice_1/stack_1:output:07sequential_89/lstm_268/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_89/lstm_268/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_89/lstm_268/TensorArrayV2TensorListReserve;sequential_89/lstm_268/TensorArrayV2/element_shape:output:0/sequential_89/lstm_268/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_89/lstm_268/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_89/lstm_268/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_89/lstm_268/transpose:y:0Usequential_89/lstm_268/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_89/lstm_268/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_268/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_89/lstm_268/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_268/strided_slice_2StridedSlice$sequential_89/lstm_268/transpose:y:05sequential_89/lstm_268/strided_slice_2/stack:output:07sequential_89/lstm_268/strided_slice_2/stack_1:output:07sequential_89/lstm_268/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_89/lstm_268/lstm_cell_523/MatMul/ReadVariableOpReadVariableOpCsequential_89_lstm_268_lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_89/lstm_268/lstm_cell_523/MatMulMatMul/sequential_89/lstm_268/strided_slice_2:output:0Bsequential_89/lstm_268/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_89/lstm_268/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOpEsequential_89_lstm_268_lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_89/lstm_268/lstm_cell_523/MatMul_1MatMul%sequential_89/lstm_268/zeros:output:0Dsequential_89/lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_89/lstm_268/lstm_cell_523/addAddV25sequential_89/lstm_268/lstm_cell_523/MatMul:product:07sequential_89/lstm_268/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_89/lstm_268/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOpDsequential_89_lstm_268_lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_89/lstm_268/lstm_cell_523/BiasAddBiasAdd,sequential_89/lstm_268/lstm_cell_523/add:z:0Csequential_89/lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_89/lstm_268/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_89/lstm_268/lstm_cell_523/splitSplit=sequential_89/lstm_268/lstm_cell_523/split/split_dim:output:05sequential_89/lstm_268/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_89/lstm_268/lstm_cell_523/SigmoidSigmoid3sequential_89/lstm_268/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_89/lstm_268/lstm_cell_523/Sigmoid_1Sigmoid3sequential_89/lstm_268/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_89/lstm_268/lstm_cell_523/mulMul2sequential_89/lstm_268/lstm_cell_523/Sigmoid_1:y:0'sequential_89/lstm_268/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_89/lstm_268/lstm_cell_523/ReluRelu3sequential_89/lstm_268/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_89/lstm_268/lstm_cell_523/mul_1Mul0sequential_89/lstm_268/lstm_cell_523/Sigmoid:y:07sequential_89/lstm_268/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_89/lstm_268/lstm_cell_523/add_1AddV2,sequential_89/lstm_268/lstm_cell_523/mul:z:0.sequential_89/lstm_268/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_89/lstm_268/lstm_cell_523/Sigmoid_2Sigmoid3sequential_89/lstm_268/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_89/lstm_268/lstm_cell_523/Relu_1Relu.sequential_89/lstm_268/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_89/lstm_268/lstm_cell_523/mul_2Mul2sequential_89/lstm_268/lstm_cell_523/Sigmoid_2:y:09sequential_89/lstm_268/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_89/lstm_268/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_89/lstm_268/TensorArrayV2_1TensorListReserve=sequential_89/lstm_268/TensorArrayV2_1/element_shape:output:0/sequential_89/lstm_268/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_89/lstm_268/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_89/lstm_268/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_89/lstm_268/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_89/lstm_268/whileWhile2sequential_89/lstm_268/while/loop_counter:output:08sequential_89/lstm_268/while/maximum_iterations:output:0$sequential_89/lstm_268/time:output:0/sequential_89/lstm_268/TensorArrayV2_1:handle:0%sequential_89/lstm_268/zeros:output:0'sequential_89/lstm_268/zeros_1:output:0/sequential_89/lstm_268/strided_slice_1:output:0Nsequential_89/lstm_268/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_89_lstm_268_lstm_cell_523_matmul_readvariableop_resourceEsequential_89_lstm_268_lstm_cell_523_matmul_1_readvariableop_resourceDsequential_89_lstm_268_lstm_cell_523_biasadd_readvariableop_resource*
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
)sequential_89_lstm_268_while_body_3169208*5
cond-R+
)sequential_89_lstm_268_while_cond_3169207*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_89/lstm_268/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_89/lstm_268/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_89/lstm_268/while:output:3Psequential_89/lstm_268/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_89/lstm_268/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_89/lstm_268/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_268/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_268/strided_slice_3StridedSliceBsequential_89/lstm_268/TensorArrayV2Stack/TensorListStack:tensor:05sequential_89/lstm_268/strided_slice_3/stack:output:07sequential_89/lstm_268/strided_slice_3/stack_1:output:07sequential_89/lstm_268/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_89/lstm_268/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_89/lstm_268/transpose_1	TransposeBsequential_89/lstm_268/TensorArrayV2Stack/TensorListStack:tensor:00sequential_89/lstm_268/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_89/lstm_268/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_89/lstm_269/ShapeShape&sequential_89/lstm_268/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_89/lstm_269/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_89/lstm_269/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_89/lstm_269/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_89/lstm_269/strided_sliceStridedSlice%sequential_89/lstm_269/Shape:output:03sequential_89/lstm_269/strided_slice/stack:output:05sequential_89/lstm_269/strided_slice/stack_1:output:05sequential_89/lstm_269/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_89/lstm_269/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_89/lstm_269/zeros/packedPack-sequential_89/lstm_269/strided_slice:output:0.sequential_89/lstm_269/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_89/lstm_269/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_89/lstm_269/zerosFill,sequential_89/lstm_269/zeros/packed:output:0+sequential_89/lstm_269/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_89/lstm_269/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_89/lstm_269/zeros_1/packedPack-sequential_89/lstm_269/strided_slice:output:00sequential_89/lstm_269/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_89/lstm_269/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_89/lstm_269/zeros_1Fill.sequential_89/lstm_269/zeros_1/packed:output:0-sequential_89/lstm_269/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_89/lstm_269/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_89/lstm_269/transpose	Transpose&sequential_89/lstm_268/transpose_1:y:0.sequential_89/lstm_269/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_89/lstm_269/Shape_1Shape$sequential_89/lstm_269/transpose:y:0*
T0*
_output_shapes
:v
,sequential_89/lstm_269/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_269/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_89/lstm_269/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_269/strided_slice_1StridedSlice'sequential_89/lstm_269/Shape_1:output:05sequential_89/lstm_269/strided_slice_1/stack:output:07sequential_89/lstm_269/strided_slice_1/stack_1:output:07sequential_89/lstm_269/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_89/lstm_269/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_89/lstm_269/TensorArrayV2TensorListReserve;sequential_89/lstm_269/TensorArrayV2/element_shape:output:0/sequential_89/lstm_269/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_89/lstm_269/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_89/lstm_269/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_89/lstm_269/transpose:y:0Usequential_89/lstm_269/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_89/lstm_269/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_269/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_89/lstm_269/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_269/strided_slice_2StridedSlice$sequential_89/lstm_269/transpose:y:05sequential_89/lstm_269/strided_slice_2/stack:output:07sequential_89/lstm_269/strided_slice_2/stack_1:output:07sequential_89/lstm_269/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_89/lstm_269/lstm_cell_524/MatMul/ReadVariableOpReadVariableOpCsequential_89_lstm_269_lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_89/lstm_269/lstm_cell_524/MatMulMatMul/sequential_89/lstm_269/strided_slice_2:output:0Bsequential_89/lstm_269/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_89/lstm_269/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOpEsequential_89_lstm_269_lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_89/lstm_269/lstm_cell_524/MatMul_1MatMul%sequential_89/lstm_269/zeros:output:0Dsequential_89/lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_89/lstm_269/lstm_cell_524/addAddV25sequential_89/lstm_269/lstm_cell_524/MatMul:product:07sequential_89/lstm_269/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_89/lstm_269/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOpDsequential_89_lstm_269_lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_89/lstm_269/lstm_cell_524/BiasAddBiasAdd,sequential_89/lstm_269/lstm_cell_524/add:z:0Csequential_89/lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_89/lstm_269/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_89/lstm_269/lstm_cell_524/splitSplit=sequential_89/lstm_269/lstm_cell_524/split/split_dim:output:05sequential_89/lstm_269/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_89/lstm_269/lstm_cell_524/SigmoidSigmoid3sequential_89/lstm_269/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_89/lstm_269/lstm_cell_524/Sigmoid_1Sigmoid3sequential_89/lstm_269/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_89/lstm_269/lstm_cell_524/mulMul2sequential_89/lstm_269/lstm_cell_524/Sigmoid_1:y:0'sequential_89/lstm_269/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_89/lstm_269/lstm_cell_524/ReluRelu3sequential_89/lstm_269/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_89/lstm_269/lstm_cell_524/mul_1Mul0sequential_89/lstm_269/lstm_cell_524/Sigmoid:y:07sequential_89/lstm_269/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_89/lstm_269/lstm_cell_524/add_1AddV2,sequential_89/lstm_269/lstm_cell_524/mul:z:0.sequential_89/lstm_269/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_89/lstm_269/lstm_cell_524/Sigmoid_2Sigmoid3sequential_89/lstm_269/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_89/lstm_269/lstm_cell_524/Relu_1Relu.sequential_89/lstm_269/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_89/lstm_269/lstm_cell_524/mul_2Mul2sequential_89/lstm_269/lstm_cell_524/Sigmoid_2:y:09sequential_89/lstm_269/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_89/lstm_269/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_89/lstm_269/TensorArrayV2_1TensorListReserve=sequential_89/lstm_269/TensorArrayV2_1/element_shape:output:0/sequential_89/lstm_269/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_89/lstm_269/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_89/lstm_269/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_89/lstm_269/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_89/lstm_269/whileWhile2sequential_89/lstm_269/while/loop_counter:output:08sequential_89/lstm_269/while/maximum_iterations:output:0$sequential_89/lstm_269/time:output:0/sequential_89/lstm_269/TensorArrayV2_1:handle:0%sequential_89/lstm_269/zeros:output:0'sequential_89/lstm_269/zeros_1:output:0/sequential_89/lstm_269/strided_slice_1:output:0Nsequential_89/lstm_269/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_89_lstm_269_lstm_cell_524_matmul_readvariableop_resourceEsequential_89_lstm_269_lstm_cell_524_matmul_1_readvariableop_resourceDsequential_89_lstm_269_lstm_cell_524_biasadd_readvariableop_resource*
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
)sequential_89_lstm_269_while_body_3169347*5
cond-R+
)sequential_89_lstm_269_while_cond_3169346*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_89/lstm_269/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_89/lstm_269/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_89/lstm_269/while:output:3Psequential_89/lstm_269/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_89/lstm_269/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_89/lstm_269/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_89/lstm_269/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_89/lstm_269/strided_slice_3StridedSliceBsequential_89/lstm_269/TensorArrayV2Stack/TensorListStack:tensor:05sequential_89/lstm_269/strided_slice_3/stack:output:07sequential_89/lstm_269/strided_slice_3/stack_1:output:07sequential_89/lstm_269/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_89/lstm_269/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_89/lstm_269/transpose_1	TransposeBsequential_89/lstm_269/TensorArrayV2Stack/TensorListStack:tensor:00sequential_89/lstm_269/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_89/lstm_269/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_89/dense_89/MatMul/ReadVariableOpReadVariableOp5sequential_89_dense_89_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_89/dense_89/MatMulMatMul/sequential_89/lstm_269/strided_slice_3:output:04sequential_89/dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_89/dense_89/BiasAdd/ReadVariableOpReadVariableOp6sequential_89_dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_89/dense_89/BiasAddBiasAdd'sequential_89/dense_89/MatMul:product:05sequential_89/dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_89/dense_89/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_89/dense_89/BiasAdd/ReadVariableOp-^sequential_89/dense_89/MatMul/ReadVariableOp<^sequential_89/lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp;^sequential_89/lstm_267/lstm_cell_522/MatMul/ReadVariableOp=^sequential_89/lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp^sequential_89/lstm_267/while<^sequential_89/lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp;^sequential_89/lstm_268/lstm_cell_523/MatMul/ReadVariableOp=^sequential_89/lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp^sequential_89/lstm_268/while<^sequential_89/lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp;^sequential_89/lstm_269/lstm_cell_524/MatMul/ReadVariableOp=^sequential_89/lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp^sequential_89/lstm_269/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_89/dense_89/BiasAdd/ReadVariableOp-sequential_89/dense_89/BiasAdd/ReadVariableOp2\
,sequential_89/dense_89/MatMul/ReadVariableOp,sequential_89/dense_89/MatMul/ReadVariableOp2z
;sequential_89/lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp;sequential_89/lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp2x
:sequential_89/lstm_267/lstm_cell_522/MatMul/ReadVariableOp:sequential_89/lstm_267/lstm_cell_522/MatMul/ReadVariableOp2|
<sequential_89/lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp<sequential_89/lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp2<
sequential_89/lstm_267/whilesequential_89/lstm_267/while2z
;sequential_89/lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp;sequential_89/lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp2x
:sequential_89/lstm_268/lstm_cell_523/MatMul/ReadVariableOp:sequential_89/lstm_268/lstm_cell_523/MatMul/ReadVariableOp2|
<sequential_89/lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp<sequential_89/lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp2<
sequential_89/lstm_268/whilesequential_89/lstm_268/while2z
;sequential_89/lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp;sequential_89/lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp2x
:sequential_89/lstm_269/lstm_cell_524/MatMul/ReadVariableOp:sequential_89/lstm_269/lstm_cell_524/MatMul/ReadVariableOp2|
<sequential_89/lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp<sequential_89/lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp2<
sequential_89/lstm_269/whilesequential_89/lstm_269/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_267_input
?
?
while_cond_3173466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3173466___redundant_placeholder05
1while_while_cond_3173466___redundant_placeholder15
1while_while_cond_3173466___redundant_placeholder25
1while_while_cond_3173466___redundant_placeholder3
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
while_cond_3174225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3174225___redundant_placeholder05
1while_while_cond_3174225___redundant_placeholder15
1while_while_cond_3174225___redundant_placeholder25
1while_while_cond_3174225___redundant_placeholder3
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
while_cond_3173323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3173323___redundant_placeholder05
1while_while_cond_3173323___redundant_placeholder15
1while_while_cond_3173323___redundant_placeholder25
1while_while_cond_3173323___redundant_placeholder3
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
*__inference_lstm_268_layer_call_fn_3173254

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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3170786s
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
while_cond_3172993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3172993___redundant_placeholder05
1while_while_cond_3172993___redundant_placeholder15
1while_while_cond_3172993___redundant_placeholder25
1while_while_cond_3172993___redundant_placeholder3
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
/__inference_lstm_cell_523_layer_call_fn_3174604

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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3170000o
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
?#
?
while_body_3169518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_522_3169542_0:	?0
while_lstm_cell_522_3169544_0:	d?,
while_lstm_cell_522_3169546_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_522_3169542:	?.
while_lstm_cell_522_3169544:	d?*
while_lstm_cell_522_3169546:	???+while/lstm_cell_522/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_522/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_522_3169542_0while_lstm_cell_522_3169544_0while_lstm_cell_522_3169546_0*
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169504?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_522/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_522/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_522/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_522/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_522_3169542while_lstm_cell_522_3169542_0"<
while_lstm_cell_522_3169544while_lstm_cell_522_3169544_0"<
while_lstm_cell_522_3169546while_lstm_cell_522_3169546_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_522/StatefulPartitionedCall+while/lstm_cell_522/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3170702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_523_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_523_matmul_readvariableop_resource:	d?G
4while_lstm_cell_523_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_523_biasadd_readvariableop_resource:	???*while/lstm_cell_523/BiasAdd/ReadVariableOp?)while/lstm_cell_523/MatMul/ReadVariableOp?+while/lstm_cell_523/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_523/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_523/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_523/addAddV2$while/lstm_cell_523/MatMul:product:0&while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_523/BiasAddBiasAddwhile/lstm_cell_523/add:z:02while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_523/splitSplit,while/lstm_cell_523/split/split_dim:output:0$while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_523/SigmoidSigmoid"while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_1Sigmoid"while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mulMul!while/lstm_cell_523/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_523/ReluRelu"while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_1Mulwhile/lstm_cell_523/Sigmoid:y:0&while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/add_1AddV2while/lstm_cell_523/mul:z:0while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_2Sigmoid"while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_523/Relu_1Reluwhile/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_2Mul!while/lstm_cell_523/Sigmoid_2:y:0(while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_523/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_523/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_523/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_523/BiasAdd/ReadVariableOp*^while/lstm_cell_523/MatMul/ReadVariableOp,^while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_523_biasadd_readvariableop_resource5while_lstm_cell_523_biasadd_readvariableop_resource_0"n
4while_lstm_cell_523_matmul_1_readvariableop_resource6while_lstm_cell_523_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_523_matmul_readvariableop_resource4while_lstm_cell_523_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_523/BiasAdd/ReadVariableOp*while/lstm_cell_523/BiasAdd/ReadVariableOp2V
)while/lstm_cell_523/MatMul/ReadVariableOp)while/lstm_cell_523/MatMul/ReadVariableOp2Z
+while/lstm_cell_523/MatMul_1/ReadVariableOp+while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3171317

inputs?
,lstm_cell_523_matmul_readvariableop_resource:	d?A
.lstm_cell_523_matmul_1_readvariableop_resource:	2?<
-lstm_cell_523_biasadd_readvariableop_resource:	?
identity??$lstm_cell_523/BiasAdd/ReadVariableOp?#lstm_cell_523/MatMul/ReadVariableOp?%lstm_cell_523/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_523/MatMul/ReadVariableOpReadVariableOp,lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_523/MatMulMatMulstrided_slice_2:output:0+lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_523/MatMul_1MatMulzeros:output:0-lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_523/addAddV2lstm_cell_523/MatMul:product:0 lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_523/BiasAddBiasAddlstm_cell_523/add:z:0,lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_523/splitSplit&lstm_cell_523/split/split_dim:output:0lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_523/SigmoidSigmoidlstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_1Sigmoidlstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_523/mulMullstm_cell_523/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_523/ReluRelulstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_1Mullstm_cell_523/Sigmoid:y:0 lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_523/add_1AddV2lstm_cell_523/mul:z:0lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_2Sigmoidlstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_523/Relu_1Relulstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_2Mullstm_cell_523/Sigmoid_2:y:0"lstm_cell_523/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_523_matmul_readvariableop_resource.lstm_cell_523_matmul_1_readvariableop_resource-lstm_cell_523_biasadd_readvariableop_resource*
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
while_body_3171233*
condR
while_cond_3171232*K
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
NoOpNoOp%^lstm_cell_523/BiasAdd/ReadVariableOp$^lstm_cell_523/MatMul/ReadVariableOp&^lstm_cell_523/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_523/BiasAdd/ReadVariableOp$lstm_cell_523/BiasAdd/ReadVariableOp2J
#lstm_cell_523/MatMul/ReadVariableOp#lstm_cell_523/MatMul/ReadVariableOp2N
%lstm_cell_523/MatMul_1/ReadVariableOp%lstm_cell_523/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3170000

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
while_body_3173940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_524_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_524_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_524_matmul_readvariableop_resource:2(F
4while_lstm_cell_524_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_524_biasadd_readvariableop_resource:(??*while/lstm_cell_524/BiasAdd/ReadVariableOp?)while/lstm_cell_524/MatMul/ReadVariableOp?+while/lstm_cell_524/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_524/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_524/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_524/addAddV2$while/lstm_cell_524/MatMul:product:0&while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_524/BiasAddBiasAddwhile/lstm_cell_524/add:z:02while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_524/splitSplit,while/lstm_cell_524/split/split_dim:output:0$while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_524/SigmoidSigmoid"while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_1Sigmoid"while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mulMul!while/lstm_cell_524/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_524/ReluRelu"while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_1Mulwhile/lstm_cell_524/Sigmoid:y:0&while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/add_1AddV2while/lstm_cell_524/mul:z:0while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_2Sigmoid"while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_524/Relu_1Reluwhile/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_2Mul!while/lstm_cell_524/Sigmoid_2:y:0(while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_524/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_524/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_524/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_524/BiasAdd/ReadVariableOp*^while/lstm_cell_524/MatMul/ReadVariableOp,^while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_524_biasadd_readvariableop_resource5while_lstm_cell_524_biasadd_readvariableop_resource_0"n
4while_lstm_cell_524_matmul_1_readvariableop_resource6while_lstm_cell_524_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_524_matmul_readvariableop_resource4while_lstm_cell_524_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_524/BiasAdd/ReadVariableOp*while/lstm_cell_524/BiasAdd/ReadVariableOp2V
)while/lstm_cell_524/MatMul/ReadVariableOp)while/lstm_cell_524/MatMul/ReadVariableOp2Z
+while/lstm_cell_524/MatMul_1/ReadVariableOp+while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3173136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3173136___redundant_placeholder05
1while_while_cond_3173136___redundant_placeholder15
1while_while_cond_3173136___redundant_placeholder25
1while_while_cond_3173136___redundant_placeholder3
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174310

inputs>
,lstm_cell_524_matmul_readvariableop_resource:2(@
.lstm_cell_524_matmul_1_readvariableop_resource:
(;
-lstm_cell_524_biasadd_readvariableop_resource:(
identity??$lstm_cell_524/BiasAdd/ReadVariableOp?#lstm_cell_524/MatMul/ReadVariableOp?%lstm_cell_524/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_524/MatMul/ReadVariableOpReadVariableOp,lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_524/MatMulMatMulstrided_slice_2:output:0+lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_524/MatMul_1MatMulzeros:output:0-lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_524/addAddV2lstm_cell_524/MatMul:product:0 lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_524/BiasAddBiasAddlstm_cell_524/add:z:0,lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_524/splitSplit&lstm_cell_524/split/split_dim:output:0lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_524/SigmoidSigmoidlstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_1Sigmoidlstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_524/mulMullstm_cell_524/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_524/ReluRelulstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_1Mullstm_cell_524/Sigmoid:y:0 lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_524/add_1AddV2lstm_cell_524/mul:z:0lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_2Sigmoidlstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_524/Relu_1Relulstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_2Mullstm_cell_524/Sigmoid_2:y:0"lstm_cell_524/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_524_matmul_readvariableop_resource.lstm_cell_524_matmul_1_readvariableop_resource-lstm_cell_524_biasadd_readvariableop_resource*
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
while_body_3174226*
condR
while_cond_3174225*K
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
NoOpNoOp%^lstm_cell_524/BiasAdd/ReadVariableOp$^lstm_cell_524/MatMul/ReadVariableOp&^lstm_cell_524/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_524/BiasAdd/ReadVariableOp$lstm_cell_524/BiasAdd/ReadVariableOp2J
#lstm_cell_524/MatMul/ReadVariableOp#lstm_cell_524/MatMul/ReadVariableOp2N
%lstm_cell_524/MatMul_1/ReadVariableOp%lstm_cell_524/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3174082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3174082___redundant_placeholder05
1while_while_cond_3174082___redundant_placeholder15
1while_while_cond_3174082___redundant_placeholder25
1while_while_cond_3174082___redundant_placeholder3
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
while_body_3170218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_524_3170242_0:2(/
while_lstm_cell_524_3170244_0:
(+
while_lstm_cell_524_3170246_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_524_3170242:2(-
while_lstm_cell_524_3170244:
()
while_lstm_cell_524_3170246:(??+while/lstm_cell_524/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_524/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_524_3170242_0while_lstm_cell_524_3170244_0while_lstm_cell_524_3170246_0*
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170204?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_524/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_524/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_524/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_524/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_524_3170242while_lstm_cell_524_3170242_0"<
while_lstm_cell_524_3170244while_lstm_cell_524_3170244_0"<
while_lstm_cell_524_3170246while_lstm_cell_524_3170246_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_524/StatefulPartitionedCall+while/lstm_cell_524/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3171232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3171232___redundant_placeholder05
1while_while_cond_3171232___redundant_placeholder15
1while_while_cond_3171232___redundant_placeholder25
1while_while_cond_3171232___redundant_placeholder3
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
lstm_269_while_cond_3172514.
*lstm_269_while_lstm_269_while_loop_counter4
0lstm_269_while_lstm_269_while_maximum_iterations
lstm_269_while_placeholder 
lstm_269_while_placeholder_1 
lstm_269_while_placeholder_2 
lstm_269_while_placeholder_30
,lstm_269_while_less_lstm_269_strided_slice_1G
Clstm_269_while_lstm_269_while_cond_3172514___redundant_placeholder0G
Clstm_269_while_lstm_269_while_cond_3172514___redundant_placeholder1G
Clstm_269_while_lstm_269_while_cond_3172514___redundant_placeholder2G
Clstm_269_while_lstm_269_while_cond_3172514___redundant_placeholder3
lstm_269_while_identity
?
lstm_269/while/LessLesslstm_269_while_placeholder,lstm_269_while_less_lstm_269_strided_slice_1*
T0*
_output_shapes
: ]
lstm_269/while/IdentityIdentitylstm_269/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_269_while_identity lstm_269/while/Identity:output:0*(
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
*__inference_lstm_269_layer_call_fn_3173870

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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170936o
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171550

inputs#
lstm_267_3171523:	?#
lstm_267_3171525:	d?
lstm_267_3171527:	?#
lstm_268_3171530:	d?#
lstm_268_3171532:	2?
lstm_268_3171534:	?"
lstm_269_3171537:2("
lstm_269_3171539:
(
lstm_269_3171541:("
dense_89_3171544:

dense_89_3171546:
identity?? dense_89/StatefulPartitionedCall? lstm_267/StatefulPartitionedCall? lstm_268/StatefulPartitionedCall? lstm_269/StatefulPartitionedCall?
 lstm_267/StatefulPartitionedCallStatefulPartitionedCallinputslstm_267_3171523lstm_267_3171525lstm_267_3171527*
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3171482?
 lstm_268/StatefulPartitionedCallStatefulPartitionedCall)lstm_267/StatefulPartitionedCall:output:0lstm_268_3171530lstm_268_3171532lstm_268_3171534*
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3171317?
 lstm_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_268/StatefulPartitionedCall:output:0lstm_269_3171537lstm_269_3171539lstm_269_3171541*
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3171152?
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)lstm_269/StatefulPartitionedCall:output:0dense_89_3171544dense_89_3171546*
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
E__inference_dense_89_layer_call_and_return_conditional_losses_3170954x
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_89/StatefulPartitionedCall!^lstm_267/StatefulPartitionedCall!^lstm_268/StatefulPartitionedCall!^lstm_269/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2D
 lstm_267/StatefulPartitionedCall lstm_267/StatefulPartitionedCall2D
 lstm_268/StatefulPartitionedCall lstm_268/StatefulPartitionedCall2D
 lstm_269/StatefulPartitionedCall lstm_269/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170350

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
while_cond_3170408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3170408___redundant_placeholder05
1while_while_cond_3170408___redundant_placeholder15
1while_while_cond_3170408___redundant_placeholder25
1while_while_cond_3170408___redundant_placeholder3
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
/__inference_lstm_cell_522_layer_call_fn_3174506

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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169650o
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

?
lstm_268_while_cond_3172375.
*lstm_268_while_lstm_268_while_loop_counter4
0lstm_268_while_lstm_268_while_maximum_iterations
lstm_268_while_placeholder 
lstm_268_while_placeholder_1 
lstm_268_while_placeholder_2 
lstm_268_while_placeholder_30
,lstm_268_while_less_lstm_268_strided_slice_1G
Clstm_268_while_lstm_268_while_cond_3172375___redundant_placeholder0G
Clstm_268_while_lstm_268_while_cond_3172375___redundant_placeholder1G
Clstm_268_while_lstm_268_while_cond_3172375___redundant_placeholder2G
Clstm_268_while_lstm_268_while_cond_3172375___redundant_placeholder3
lstm_268_while_identity
?
lstm_268/while/LessLesslstm_268_while_placeholder,lstm_268_while_less_lstm_268_strided_slice_1*
T0*
_output_shapes
: ]
lstm_268/while/IdentityIdentitylstm_268/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_268_while_identity lstm_268/while/Identity:output:0*(
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
*__inference_lstm_268_layer_call_fn_3173243
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3170128|
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
while_body_3174369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_524_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_524_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_524_matmul_readvariableop_resource:2(F
4while_lstm_cell_524_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_524_biasadd_readvariableop_resource:(??*while/lstm_cell_524/BiasAdd/ReadVariableOp?)while/lstm_cell_524/MatMul/ReadVariableOp?+while/lstm_cell_524/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_524/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_524/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_524/addAddV2$while/lstm_cell_524/MatMul:product:0&while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_524/BiasAddBiasAddwhile/lstm_cell_524/add:z:02while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_524/splitSplit,while/lstm_cell_524/split/split_dim:output:0$while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_524/SigmoidSigmoid"while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_1Sigmoid"while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mulMul!while/lstm_cell_524/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_524/ReluRelu"while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_1Mulwhile/lstm_cell_524/Sigmoid:y:0&while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/add_1AddV2while/lstm_cell_524/mul:z:0while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_2Sigmoid"while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_524/Relu_1Reluwhile/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_2Mul!while/lstm_cell_524/Sigmoid_2:y:0(while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_524/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_524/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_524/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_524/BiasAdd/ReadVariableOp*^while/lstm_cell_524/MatMul/ReadVariableOp,^while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_524_biasadd_readvariableop_resource5while_lstm_cell_524_biasadd_readvariableop_resource_0"n
4while_lstm_cell_524_matmul_1_readvariableop_resource6while_lstm_cell_524_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_524_matmul_readvariableop_resource4while_lstm_cell_524_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_524/BiasAdd/ReadVariableOp*while/lstm_cell_524/BiasAdd/ReadVariableOp2V
)while/lstm_cell_524/MatMul/ReadVariableOp)while/lstm_cell_524/MatMul/ReadVariableOp2Z
+while/lstm_cell_524/MatMul_1/ReadVariableOp+while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_268_while_body_3171949.
*lstm_268_while_lstm_268_while_loop_counter4
0lstm_268_while_lstm_268_while_maximum_iterations
lstm_268_while_placeholder 
lstm_268_while_placeholder_1 
lstm_268_while_placeholder_2 
lstm_268_while_placeholder_3-
)lstm_268_while_lstm_268_strided_slice_1_0i
elstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0:	d?R
?lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?M
>lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
lstm_268_while_identity
lstm_268_while_identity_1
lstm_268_while_identity_2
lstm_268_while_identity_3
lstm_268_while_identity_4
lstm_268_while_identity_5+
'lstm_268_while_lstm_268_strided_slice_1g
clstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensorN
;lstm_268_while_lstm_cell_523_matmul_readvariableop_resource:	d?P
=lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource:	2?K
<lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource:	???3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp?2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp?4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp?
@lstm_268/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_268/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensor_0lstm_268_while_placeholderIlstm_268/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp=lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_268/while/lstm_cell_523/MatMulMatMul9lstm_268/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp?lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_268/while/lstm_cell_523/MatMul_1MatMullstm_268_while_placeholder_2<lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_268/while/lstm_cell_523/addAddV2-lstm_268/while/lstm_cell_523/MatMul:product:0/lstm_268/while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp>lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_268/while/lstm_cell_523/BiasAddBiasAdd$lstm_268/while/lstm_cell_523/add:z:0;lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_268/while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_268/while/lstm_cell_523/splitSplit5lstm_268/while/lstm_cell_523/split/split_dim:output:0-lstm_268/while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_268/while/lstm_cell_523/SigmoidSigmoid+lstm_268/while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_268/while/lstm_cell_523/Sigmoid_1Sigmoid+lstm_268/while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_268/while/lstm_cell_523/mulMul*lstm_268/while/lstm_cell_523/Sigmoid_1:y:0lstm_268_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_268/while/lstm_cell_523/ReluRelu+lstm_268/while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_268/while/lstm_cell_523/mul_1Mul(lstm_268/while/lstm_cell_523/Sigmoid:y:0/lstm_268/while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_268/while/lstm_cell_523/add_1AddV2$lstm_268/while/lstm_cell_523/mul:z:0&lstm_268/while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_268/while/lstm_cell_523/Sigmoid_2Sigmoid+lstm_268/while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_268/while/lstm_cell_523/Relu_1Relu&lstm_268/while/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_268/while/lstm_cell_523/mul_2Mul*lstm_268/while/lstm_cell_523/Sigmoid_2:y:01lstm_268/while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_268/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_268_while_placeholder_1lstm_268_while_placeholder&lstm_268/while/lstm_cell_523/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_268/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_268/while/addAddV2lstm_268_while_placeholderlstm_268/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_268/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_268/while/add_1AddV2*lstm_268_while_lstm_268_while_loop_counterlstm_268/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_268/while/IdentityIdentitylstm_268/while/add_1:z:0^lstm_268/while/NoOp*
T0*
_output_shapes
: ?
lstm_268/while/Identity_1Identity0lstm_268_while_lstm_268_while_maximum_iterations^lstm_268/while/NoOp*
T0*
_output_shapes
: t
lstm_268/while/Identity_2Identitylstm_268/while/add:z:0^lstm_268/while/NoOp*
T0*
_output_shapes
: ?
lstm_268/while/Identity_3IdentityClstm_268/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_268/while/NoOp*
T0*
_output_shapes
: ?
lstm_268/while/Identity_4Identity&lstm_268/while/lstm_cell_523/mul_2:z:0^lstm_268/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_268/while/Identity_5Identity&lstm_268/while/lstm_cell_523/add_1:z:0^lstm_268/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_268/while/NoOpNoOp4^lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp3^lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp5^lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_268_while_identity lstm_268/while/Identity:output:0"?
lstm_268_while_identity_1"lstm_268/while/Identity_1:output:0"?
lstm_268_while_identity_2"lstm_268/while/Identity_2:output:0"?
lstm_268_while_identity_3"lstm_268/while/Identity_3:output:0"?
lstm_268_while_identity_4"lstm_268/while/Identity_4:output:0"?
lstm_268_while_identity_5"lstm_268/while/Identity_5:output:0"T
'lstm_268_while_lstm_268_strided_slice_1)lstm_268_while_lstm_268_strided_slice_1_0"~
<lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource>lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0"?
=lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource?lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0"|
;lstm_268_while_lstm_cell_523_matmul_readvariableop_resource=lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0"?
clstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensorelstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp2h
2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp2l
4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3175039
file_prefix2
 assignvariableop_dense_89_kernel:
.
 assignvariableop_1_dense_89_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_267_lstm_cell_267_kernel:	?M
:assignvariableop_8_lstm_267_lstm_cell_267_recurrent_kernel:	d?=
.assignvariableop_9_lstm_267_lstm_cell_267_bias:	?D
1assignvariableop_10_lstm_268_lstm_cell_268_kernel:	d?N
;assignvariableop_11_lstm_268_lstm_cell_268_recurrent_kernel:	2?>
/assignvariableop_12_lstm_268_lstm_cell_268_bias:	?C
1assignvariableop_13_lstm_269_lstm_cell_269_kernel:2(M
;assignvariableop_14_lstm_269_lstm_cell_269_recurrent_kernel:
(=
/assignvariableop_15_lstm_269_lstm_cell_269_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_89_kernel_m:
6
(assignvariableop_19_adam_dense_89_bias_m:K
8assignvariableop_20_adam_lstm_267_lstm_cell_267_kernel_m:	?U
Bassignvariableop_21_adam_lstm_267_lstm_cell_267_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_267_lstm_cell_267_bias_m:	?K
8assignvariableop_23_adam_lstm_268_lstm_cell_268_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_268_lstm_cell_268_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_268_lstm_cell_268_bias_m:	?J
8assignvariableop_26_adam_lstm_269_lstm_cell_269_kernel_m:2(T
Bassignvariableop_27_adam_lstm_269_lstm_cell_269_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_269_lstm_cell_269_bias_m:(<
*assignvariableop_29_adam_dense_89_kernel_v:
6
(assignvariableop_30_adam_dense_89_bias_v:K
8assignvariableop_31_adam_lstm_267_lstm_cell_267_kernel_v:	?U
Bassignvariableop_32_adam_lstm_267_lstm_cell_267_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_267_lstm_cell_267_bias_v:	?K
8assignvariableop_34_adam_lstm_268_lstm_cell_268_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_268_lstm_cell_268_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_268_lstm_cell_268_bias_v:	?J
8assignvariableop_37_adam_lstm_269_lstm_cell_269_kernel_v:2(T
Bassignvariableop_38_adam_lstm_269_lstm_cell_269_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_269_lstm_cell_269_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_89_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_89_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_267_lstm_cell_267_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_267_lstm_cell_267_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_267_lstm_cell_267_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_268_lstm_cell_268_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_268_lstm_cell_268_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_268_lstm_cell_268_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_269_lstm_cell_269_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_269_lstm_cell_269_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_269_lstm_cell_269_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_89_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_89_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_267_lstm_cell_267_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_267_lstm_cell_267_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_267_lstm_cell_267_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_268_lstm_cell_268_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_268_lstm_cell_268_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_268_lstm_cell_268_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_269_lstm_cell_269_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_269_lstm_cell_269_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_269_lstm_cell_269_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_89_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_89_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_267_lstm_cell_267_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_267_lstm_cell_267_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_267_lstm_cell_267_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_268_lstm_cell_268_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_268_lstm_cell_268_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_268_lstm_cell_268_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_269_lstm_cell_269_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_269_lstm_cell_269_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_269_lstm_cell_269_bias_vIdentity_39:output:0"/device:CPU:0*
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
?#
?
while_body_3170409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_524_3170433_0:2(/
while_lstm_cell_524_3170435_0:
(+
while_lstm_cell_524_3170437_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_524_3170433:2(-
while_lstm_cell_524_3170435:
()
while_lstm_cell_524_3170437:(??+while/lstm_cell_524/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_524/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_524_3170433_0while_lstm_cell_524_3170435_0while_lstm_cell_524_3170437_0*
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170350?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_524/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_524/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_524/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_524/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_524_3170433while_lstm_cell_524_3170433_0"<
while_lstm_cell_524_3170435while_lstm_cell_524_3170435_0"<
while_lstm_cell_524_3170437while_lstm_cell_524_3170437_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_524/StatefulPartitionedCall+while/lstm_cell_524/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3169708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3169708___redundant_placeholder05
1while_while_cond_3169708___redundant_placeholder15
1while_while_cond_3169708___redundant_placeholder25
1while_while_cond_3169708___redundant_placeholder3
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
/__inference_lstm_cell_524_layer_call_fn_3174685

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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170204o
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
*__inference_lstm_269_layer_call_fn_3173859
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170478o
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
?S
?
)sequential_89_lstm_268_while_body_3169208J
Fsequential_89_lstm_268_while_sequential_89_lstm_268_while_loop_counterP
Lsequential_89_lstm_268_while_sequential_89_lstm_268_while_maximum_iterations,
(sequential_89_lstm_268_while_placeholder.
*sequential_89_lstm_268_while_placeholder_1.
*sequential_89_lstm_268_while_placeholder_2.
*sequential_89_lstm_268_while_placeholder_3I
Esequential_89_lstm_268_while_sequential_89_lstm_268_strided_slice_1_0?
?sequential_89_lstm_268_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_268_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_89_lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0:	d?`
Msequential_89_lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?[
Lsequential_89_lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0:	?)
%sequential_89_lstm_268_while_identity+
'sequential_89_lstm_268_while_identity_1+
'sequential_89_lstm_268_while_identity_2+
'sequential_89_lstm_268_while_identity_3+
'sequential_89_lstm_268_while_identity_4+
'sequential_89_lstm_268_while_identity_5G
Csequential_89_lstm_268_while_sequential_89_lstm_268_strided_slice_1?
sequential_89_lstm_268_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_268_tensorarrayunstack_tensorlistfromtensor\
Isequential_89_lstm_268_while_lstm_cell_523_matmul_readvariableop_resource:	d?^
Ksequential_89_lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource:	2?Y
Jsequential_89_lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource:	???Asequential_89/lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp?@sequential_89/lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp?Bsequential_89/lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp?
Nsequential_89/lstm_268/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_89/lstm_268/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_89_lstm_268_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_268_tensorarrayunstack_tensorlistfromtensor_0(sequential_89_lstm_268_while_placeholderWsequential_89/lstm_268/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_89/lstm_268/while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOpKsequential_89_lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_89/lstm_268/while/lstm_cell_523/MatMulMatMulGsequential_89/lstm_268/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_89/lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_89/lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOpMsequential_89_lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_89/lstm_268/while/lstm_cell_523/MatMul_1MatMul*sequential_89_lstm_268_while_placeholder_2Jsequential_89/lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_89/lstm_268/while/lstm_cell_523/addAddV2;sequential_89/lstm_268/while/lstm_cell_523/MatMul:product:0=sequential_89/lstm_268/while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_89/lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOpLsequential_89_lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_89/lstm_268/while/lstm_cell_523/BiasAddBiasAdd2sequential_89/lstm_268/while/lstm_cell_523/add:z:0Isequential_89/lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_89/lstm_268/while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_89/lstm_268/while/lstm_cell_523/splitSplitCsequential_89/lstm_268/while/lstm_cell_523/split/split_dim:output:0;sequential_89/lstm_268/while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_89/lstm_268/while/lstm_cell_523/SigmoidSigmoid9sequential_89/lstm_268/while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_89/lstm_268/while/lstm_cell_523/Sigmoid_1Sigmoid9sequential_89/lstm_268/while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_89/lstm_268/while/lstm_cell_523/mulMul8sequential_89/lstm_268/while/lstm_cell_523/Sigmoid_1:y:0*sequential_89_lstm_268_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_89/lstm_268/while/lstm_cell_523/ReluRelu9sequential_89/lstm_268/while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_89/lstm_268/while/lstm_cell_523/mul_1Mul6sequential_89/lstm_268/while/lstm_cell_523/Sigmoid:y:0=sequential_89/lstm_268/while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_89/lstm_268/while/lstm_cell_523/add_1AddV22sequential_89/lstm_268/while/lstm_cell_523/mul:z:04sequential_89/lstm_268/while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_89/lstm_268/while/lstm_cell_523/Sigmoid_2Sigmoid9sequential_89/lstm_268/while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_89/lstm_268/while/lstm_cell_523/Relu_1Relu4sequential_89/lstm_268/while/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_89/lstm_268/while/lstm_cell_523/mul_2Mul8sequential_89/lstm_268/while/lstm_cell_523/Sigmoid_2:y:0?sequential_89/lstm_268/while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_89/lstm_268/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_89_lstm_268_while_placeholder_1(sequential_89_lstm_268_while_placeholder4sequential_89/lstm_268/while/lstm_cell_523/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_89/lstm_268/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_89/lstm_268/while/addAddV2(sequential_89_lstm_268_while_placeholder+sequential_89/lstm_268/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_89/lstm_268/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_89/lstm_268/while/add_1AddV2Fsequential_89_lstm_268_while_sequential_89_lstm_268_while_loop_counter-sequential_89/lstm_268/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_89/lstm_268/while/IdentityIdentity&sequential_89/lstm_268/while/add_1:z:0"^sequential_89/lstm_268/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_268/while/Identity_1IdentityLsequential_89_lstm_268_while_sequential_89_lstm_268_while_maximum_iterations"^sequential_89/lstm_268/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_268/while/Identity_2Identity$sequential_89/lstm_268/while/add:z:0"^sequential_89/lstm_268/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_268/while/Identity_3IdentityQsequential_89/lstm_268/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_89/lstm_268/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_268/while/Identity_4Identity4sequential_89/lstm_268/while/lstm_cell_523/mul_2:z:0"^sequential_89/lstm_268/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_89/lstm_268/while/Identity_5Identity4sequential_89/lstm_268/while/lstm_cell_523/add_1:z:0"^sequential_89/lstm_268/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_89/lstm_268/while/NoOpNoOpB^sequential_89/lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOpA^sequential_89/lstm_268/while/lstm_cell_523/MatMul/ReadVariableOpC^sequential_89/lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_89_lstm_268_while_identity.sequential_89/lstm_268/while/Identity:output:0"[
'sequential_89_lstm_268_while_identity_10sequential_89/lstm_268/while/Identity_1:output:0"[
'sequential_89_lstm_268_while_identity_20sequential_89/lstm_268/while/Identity_2:output:0"[
'sequential_89_lstm_268_while_identity_30sequential_89/lstm_268/while/Identity_3:output:0"[
'sequential_89_lstm_268_while_identity_40sequential_89/lstm_268/while/Identity_4:output:0"[
'sequential_89_lstm_268_while_identity_50sequential_89/lstm_268/while/Identity_5:output:0"?
Jsequential_89_lstm_268_while_lstm_cell_523_biasadd_readvariableop_resourceLsequential_89_lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0"?
Ksequential_89_lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resourceMsequential_89_lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0"?
Isequential_89_lstm_268_while_lstm_cell_523_matmul_readvariableop_resourceKsequential_89_lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0"?
Csequential_89_lstm_268_while_sequential_89_lstm_268_strided_slice_1Esequential_89_lstm_268_while_sequential_89_lstm_268_strided_slice_1_0"?
sequential_89_lstm_268_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_268_tensorarrayunstack_tensorlistfromtensor?sequential_89_lstm_268_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_268_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_89/lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOpAsequential_89/lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp2?
@sequential_89/lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp@sequential_89/lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp2?
Bsequential_89/lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOpBsequential_89/lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_267_layer_call_fn_3172616
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3169587|
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
while_body_3171233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_523_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_523_matmul_readvariableop_resource:	d?G
4while_lstm_cell_523_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_523_biasadd_readvariableop_resource:	???*while/lstm_cell_523/BiasAdd/ReadVariableOp?)while/lstm_cell_523/MatMul/ReadVariableOp?+while/lstm_cell_523/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_523/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_523/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_523/addAddV2$while/lstm_cell_523/MatMul:product:0&while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_523/BiasAddBiasAddwhile/lstm_cell_523/add:z:02while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_523/splitSplit,while/lstm_cell_523/split/split_dim:output:0$while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_523/SigmoidSigmoid"while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_1Sigmoid"while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mulMul!while/lstm_cell_523/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_523/ReluRelu"while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_1Mulwhile/lstm_cell_523/Sigmoid:y:0&while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/add_1AddV2while/lstm_cell_523/mul:z:0while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_2Sigmoid"while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_523/Relu_1Reluwhile/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_2Mul!while/lstm_cell_523/Sigmoid_2:y:0(while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_523/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_523/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_523/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_523/BiasAdd/ReadVariableOp*^while/lstm_cell_523/MatMul/ReadVariableOp,^while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_523_biasadd_readvariableop_resource5while_lstm_cell_523_biasadd_readvariableop_resource_0"n
4while_lstm_cell_523_matmul_1_readvariableop_resource6while_lstm_cell_523_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_523_matmul_readvariableop_resource4while_lstm_cell_523_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_523/BiasAdd/ReadVariableOp*while/lstm_cell_523/BiasAdd/ReadVariableOp2V
)while/lstm_cell_523/MatMul/ReadVariableOp)while/lstm_cell_523/MatMul/ReadVariableOp2Z
+while/lstm_cell_523/MatMul_1/ReadVariableOp+while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3171152

inputs>
,lstm_cell_524_matmul_readvariableop_resource:2(@
.lstm_cell_524_matmul_1_readvariableop_resource:
(;
-lstm_cell_524_biasadd_readvariableop_resource:(
identity??$lstm_cell_524/BiasAdd/ReadVariableOp?#lstm_cell_524/MatMul/ReadVariableOp?%lstm_cell_524/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_524/MatMul/ReadVariableOpReadVariableOp,lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_524/MatMulMatMulstrided_slice_2:output:0+lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_524/MatMul_1MatMulzeros:output:0-lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_524/addAddV2lstm_cell_524/MatMul:product:0 lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_524/BiasAddBiasAddlstm_cell_524/add:z:0,lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_524/splitSplit&lstm_cell_524/split/split_dim:output:0lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_524/SigmoidSigmoidlstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_1Sigmoidlstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_524/mulMullstm_cell_524/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_524/ReluRelulstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_1Mullstm_cell_524/Sigmoid:y:0 lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_524/add_1AddV2lstm_cell_524/mul:z:0lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_2Sigmoidlstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_524/Relu_1Relulstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_2Mullstm_cell_524/Sigmoid_2:y:0"lstm_cell_524/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_524_matmul_readvariableop_resource.lstm_cell_524_matmul_1_readvariableop_resource-lstm_cell_524_biasadd_readvariableop_resource*
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
while_body_3171068*
condR
while_cond_3171067*K
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
NoOpNoOp%^lstm_cell_524/BiasAdd/ReadVariableOp$^lstm_cell_524/MatMul/ReadVariableOp&^lstm_cell_524/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_524/BiasAdd/ReadVariableOp$lstm_cell_524/BiasAdd/ReadVariableOp2J
#lstm_cell_524/MatMul/ReadVariableOp#lstm_cell_524/MatMul/ReadVariableOp2N
%lstm_cell_524/MatMul_1/ReadVariableOp%lstm_cell_524/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_89_layer_call_fn_3171751

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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171550o
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
while_body_3173753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_523_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_523_matmul_readvariableop_resource:	d?G
4while_lstm_cell_523_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_523_biasadd_readvariableop_resource:	???*while/lstm_cell_523/BiasAdd/ReadVariableOp?)while/lstm_cell_523/MatMul/ReadVariableOp?+while/lstm_cell_523/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_523/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_523/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_523/addAddV2$while/lstm_cell_523/MatMul:product:0&while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_523/BiasAddBiasAddwhile/lstm_cell_523/add:z:02while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_523/splitSplit,while/lstm_cell_523/split/split_dim:output:0$while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_523/SigmoidSigmoid"while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_1Sigmoid"while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mulMul!while/lstm_cell_523/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_523/ReluRelu"while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_1Mulwhile/lstm_cell_523/Sigmoid:y:0&while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/add_1AddV2while/lstm_cell_523/mul:z:0while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_2Sigmoid"while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_523/Relu_1Reluwhile/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_2Mul!while/lstm_cell_523/Sigmoid_2:y:0(while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_523/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_523/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_523/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_523/BiasAdd/ReadVariableOp*^while/lstm_cell_523/MatMul/ReadVariableOp,^while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_523_biasadd_readvariableop_resource5while_lstm_cell_523_biasadd_readvariableop_resource_0"n
4while_lstm_cell_523_matmul_1_readvariableop_resource6while_lstm_cell_523_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_523_matmul_readvariableop_resource4while_lstm_cell_523_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_523/BiasAdd/ReadVariableOp*while/lstm_cell_523/BiasAdd/ReadVariableOp2V
)while/lstm_cell_523/MatMul/ReadVariableOp)while/lstm_cell_523/MatMul/ReadVariableOp2Z
+while/lstm_cell_523/MatMul_1/ReadVariableOp+while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3173078

inputs?
,lstm_cell_522_matmul_readvariableop_resource:	?A
.lstm_cell_522_matmul_1_readvariableop_resource:	d?<
-lstm_cell_522_biasadd_readvariableop_resource:	?
identity??$lstm_cell_522/BiasAdd/ReadVariableOp?#lstm_cell_522/MatMul/ReadVariableOp?%lstm_cell_522/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_522/MatMul/ReadVariableOpReadVariableOp,lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_522/MatMulMatMulstrided_slice_2:output:0+lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_522/MatMul_1MatMulzeros:output:0-lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_522/addAddV2lstm_cell_522/MatMul:product:0 lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_522/BiasAddBiasAddlstm_cell_522/add:z:0,lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_522/splitSplit&lstm_cell_522/split/split_dim:output:0lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_522/SigmoidSigmoidlstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_1Sigmoidlstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_522/mulMullstm_cell_522/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_522/ReluRelulstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_1Mullstm_cell_522/Sigmoid:y:0 lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_522/add_1AddV2lstm_cell_522/mul:z:0lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_2Sigmoidlstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_522/Relu_1Relulstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_2Mullstm_cell_522/Sigmoid_2:y:0"lstm_cell_522/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_522_matmul_readvariableop_resource.lstm_cell_522_matmul_1_readvariableop_resource-lstm_cell_522_biasadd_readvariableop_resource*
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
while_body_3172994*
condR
while_cond_3172993*K
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
NoOpNoOp%^lstm_cell_522/BiasAdd/ReadVariableOp$^lstm_cell_522/MatMul/ReadVariableOp&^lstm_cell_522/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_522/BiasAdd/ReadVariableOp$lstm_cell_522/BiasAdd/ReadVariableOp2J
#lstm_cell_522/MatMul/ReadVariableOp#lstm_cell_522/MatMul/ReadVariableOp2N
%lstm_cell_522/MatMul_1/ReadVariableOp%lstm_cell_522/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_268_layer_call_and_return_conditional_losses_3170128

inputs(
lstm_cell_523_3170046:	d?(
lstm_cell_523_3170048:	2?$
lstm_cell_523_3170050:	?
identity??%lstm_cell_523/StatefulPartitionedCall?while;
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
%lstm_cell_523/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_523_3170046lstm_cell_523_3170048lstm_cell_523_3170050*
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3170000n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_523_3170046lstm_cell_523_3170048lstm_cell_523_3170050*
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
while_body_3170059*
condR
while_cond_3170058*K
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
NoOpNoOp&^lstm_cell_523/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_523/StatefulPartitionedCall%lstm_cell_523/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
)sequential_89_lstm_269_while_cond_3169346J
Fsequential_89_lstm_269_while_sequential_89_lstm_269_while_loop_counterP
Lsequential_89_lstm_269_while_sequential_89_lstm_269_while_maximum_iterations,
(sequential_89_lstm_269_while_placeholder.
*sequential_89_lstm_269_while_placeholder_1.
*sequential_89_lstm_269_while_placeholder_2.
*sequential_89_lstm_269_while_placeholder_3L
Hsequential_89_lstm_269_while_less_sequential_89_lstm_269_strided_slice_1c
_sequential_89_lstm_269_while_sequential_89_lstm_269_while_cond_3169346___redundant_placeholder0c
_sequential_89_lstm_269_while_sequential_89_lstm_269_while_cond_3169346___redundant_placeholder1c
_sequential_89_lstm_269_while_sequential_89_lstm_269_while_cond_3169346___redundant_placeholder2c
_sequential_89_lstm_269_while_sequential_89_lstm_269_while_cond_3169346___redundant_placeholder3)
%sequential_89_lstm_269_while_identity
?
!sequential_89/lstm_269/while/LessLess(sequential_89_lstm_269_while_placeholderHsequential_89_lstm_269_while_less_sequential_89_lstm_269_strided_slice_1*
T0*
_output_shapes
: y
%sequential_89/lstm_269/while/IdentityIdentity%sequential_89/lstm_269/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_89_lstm_269_while_identity.sequential_89/lstm_269/while/Identity:output:0*(
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
while_cond_3174368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3174368___redundant_placeholder05
1while_while_cond_3174368___redundant_placeholder15
1while_while_cond_3174368___redundant_placeholder25
1while_while_cond_3174368___redundant_placeholder3
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

lstm_267_while_body_3171810.
*lstm_267_while_lstm_267_while_loop_counter4
0lstm_267_while_lstm_267_while_maximum_iterations
lstm_267_while_placeholder 
lstm_267_while_placeholder_1 
lstm_267_while_placeholder_2 
lstm_267_while_placeholder_3-
)lstm_267_while_lstm_267_strided_slice_1_0i
elstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0:	?R
?lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?M
>lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
lstm_267_while_identity
lstm_267_while_identity_1
lstm_267_while_identity_2
lstm_267_while_identity_3
lstm_267_while_identity_4
lstm_267_while_identity_5+
'lstm_267_while_lstm_267_strided_slice_1g
clstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensorN
;lstm_267_while_lstm_cell_522_matmul_readvariableop_resource:	?P
=lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource:	d?K
<lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource:	???3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp?2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp?4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp?
@lstm_267/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_267/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensor_0lstm_267_while_placeholderIlstm_267/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp=lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_267/while/lstm_cell_522/MatMulMatMul9lstm_267/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp?lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_267/while/lstm_cell_522/MatMul_1MatMullstm_267_while_placeholder_2<lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_267/while/lstm_cell_522/addAddV2-lstm_267/while/lstm_cell_522/MatMul:product:0/lstm_267/while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp>lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_267/while/lstm_cell_522/BiasAddBiasAdd$lstm_267/while/lstm_cell_522/add:z:0;lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_267/while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_267/while/lstm_cell_522/splitSplit5lstm_267/while/lstm_cell_522/split/split_dim:output:0-lstm_267/while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_267/while/lstm_cell_522/SigmoidSigmoid+lstm_267/while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_267/while/lstm_cell_522/Sigmoid_1Sigmoid+lstm_267/while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_267/while/lstm_cell_522/mulMul*lstm_267/while/lstm_cell_522/Sigmoid_1:y:0lstm_267_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_267/while/lstm_cell_522/ReluRelu+lstm_267/while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_267/while/lstm_cell_522/mul_1Mul(lstm_267/while/lstm_cell_522/Sigmoid:y:0/lstm_267/while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_267/while/lstm_cell_522/add_1AddV2$lstm_267/while/lstm_cell_522/mul:z:0&lstm_267/while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_267/while/lstm_cell_522/Sigmoid_2Sigmoid+lstm_267/while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_267/while/lstm_cell_522/Relu_1Relu&lstm_267/while/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_267/while/lstm_cell_522/mul_2Mul*lstm_267/while/lstm_cell_522/Sigmoid_2:y:01lstm_267/while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_267/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_267_while_placeholder_1lstm_267_while_placeholder&lstm_267/while/lstm_cell_522/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_267/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_267/while/addAddV2lstm_267_while_placeholderlstm_267/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_267/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_267/while/add_1AddV2*lstm_267_while_lstm_267_while_loop_counterlstm_267/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_267/while/IdentityIdentitylstm_267/while/add_1:z:0^lstm_267/while/NoOp*
T0*
_output_shapes
: ?
lstm_267/while/Identity_1Identity0lstm_267_while_lstm_267_while_maximum_iterations^lstm_267/while/NoOp*
T0*
_output_shapes
: t
lstm_267/while/Identity_2Identitylstm_267/while/add:z:0^lstm_267/while/NoOp*
T0*
_output_shapes
: ?
lstm_267/while/Identity_3IdentityClstm_267/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_267/while/NoOp*
T0*
_output_shapes
: ?
lstm_267/while/Identity_4Identity&lstm_267/while/lstm_cell_522/mul_2:z:0^lstm_267/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_267/while/Identity_5Identity&lstm_267/while/lstm_cell_522/add_1:z:0^lstm_267/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_267/while/NoOpNoOp4^lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp3^lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp5^lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_267_while_identity lstm_267/while/Identity:output:0"?
lstm_267_while_identity_1"lstm_267/while/Identity_1:output:0"?
lstm_267_while_identity_2"lstm_267/while/Identity_2:output:0"?
lstm_267_while_identity_3"lstm_267/while/Identity_3:output:0"?
lstm_267_while_identity_4"lstm_267/while/Identity_4:output:0"?
lstm_267_while_identity_5"lstm_267/while/Identity_5:output:0"T
'lstm_267_while_lstm_267_strided_slice_1)lstm_267_while_lstm_267_strided_slice_1_0"~
<lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource>lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0"?
=lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource?lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0"|
;lstm_267_while_lstm_cell_522_matmul_readvariableop_resource=lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0"?
clstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensorelstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp2h
2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp2l
4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_267_while_cond_3172236.
*lstm_267_while_lstm_267_while_loop_counter4
0lstm_267_while_lstm_267_while_maximum_iterations
lstm_267_while_placeholder 
lstm_267_while_placeholder_1 
lstm_267_while_placeholder_2 
lstm_267_while_placeholder_30
,lstm_267_while_less_lstm_267_strided_slice_1G
Clstm_267_while_lstm_267_while_cond_3172236___redundant_placeholder0G
Clstm_267_while_lstm_267_while_cond_3172236___redundant_placeholder1G
Clstm_267_while_lstm_267_while_cond_3172236___redundant_placeholder2G
Clstm_267_while_lstm_267_while_cond_3172236___redundant_placeholder3
lstm_267_while_identity
?
lstm_267/while/LessLesslstm_267_while_placeholder,lstm_267_while_less_lstm_267_strided_slice_1*
T0*
_output_shapes
: ]
lstm_267/while/IdentityIdentitylstm_267/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_267_while_identity lstm_267/while/Identity:output:0*(
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
while_cond_3171397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3171397___redundant_placeholder05
1while_while_cond_3171397___redundant_placeholder15
1while_while_cond_3171397___redundant_placeholder25
1while_while_cond_3171397___redundant_placeholder3
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
/__inference_sequential_89_layer_call_fn_3170986
lstm_267_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_267_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3170961o
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
_user_specified_namelstm_267_input
?
?
*__inference_lstm_267_layer_call_fn_3172649

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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3171482s
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173694

inputs?
,lstm_cell_523_matmul_readvariableop_resource:	d?A
.lstm_cell_523_matmul_1_readvariableop_resource:	2?<
-lstm_cell_523_biasadd_readvariableop_resource:	?
identity??$lstm_cell_523/BiasAdd/ReadVariableOp?#lstm_cell_523/MatMul/ReadVariableOp?%lstm_cell_523/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_523/MatMul/ReadVariableOpReadVariableOp,lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_523/MatMulMatMulstrided_slice_2:output:0+lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_523/MatMul_1MatMulzeros:output:0-lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_523/addAddV2lstm_cell_523/MatMul:product:0 lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_523/BiasAddBiasAddlstm_cell_523/add:z:0,lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_523/splitSplit&lstm_cell_523/split/split_dim:output:0lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_523/SigmoidSigmoidlstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_1Sigmoidlstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_523/mulMullstm_cell_523/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_523/ReluRelulstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_1Mullstm_cell_523/Sigmoid:y:0 lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_523/add_1AddV2lstm_cell_523/mul:z:0lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_2Sigmoidlstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_523/Relu_1Relulstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_2Mullstm_cell_523/Sigmoid_2:y:0"lstm_cell_523/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_523_matmul_readvariableop_resource.lstm_cell_523_matmul_1_readvariableop_resource-lstm_cell_523_biasadd_readvariableop_resource*
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
while_body_3173610*
condR
while_cond_3173609*K
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
NoOpNoOp%^lstm_cell_523/BiasAdd/ReadVariableOp$^lstm_cell_523/MatMul/ReadVariableOp&^lstm_cell_523/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_523/BiasAdd/ReadVariableOp$lstm_cell_523/BiasAdd/ReadVariableOp2J
#lstm_cell_523/MatMul/ReadVariableOp#lstm_cell_523/MatMul/ReadVariableOp2N
%lstm_cell_523/MatMul_1/ReadVariableOp%lstm_cell_523/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3174668

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
while_cond_3170701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3170701___redundant_placeholder05
1while_while_cond_3170701___redundant_placeholder15
1while_while_cond_3170701___redundant_placeholder25
1while_while_cond_3170701___redundant_placeholder3
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
while_body_3170059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_523_3170083_0:	d?0
while_lstm_cell_523_3170085_0:	2?,
while_lstm_cell_523_3170087_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_523_3170083:	d?.
while_lstm_cell_523_3170085:	2?*
while_lstm_cell_523_3170087:	???+while/lstm_cell_523/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_523/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_523_3170083_0while_lstm_cell_523_3170085_0while_lstm_cell_523_3170087_0*
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3170000?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_523/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_523/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_523/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_523/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_523_3170083while_lstm_cell_523_3170083_0"<
while_lstm_cell_523_3170085while_lstm_cell_523_3170085_0"<
while_lstm_cell_523_3170087while_lstm_cell_523_3170087_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_523/StatefulPartitionedCall+while/lstm_cell_523/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3170636

inputs?
,lstm_cell_522_matmul_readvariableop_resource:	?A
.lstm_cell_522_matmul_1_readvariableop_resource:	d?<
-lstm_cell_522_biasadd_readvariableop_resource:	?
identity??$lstm_cell_522/BiasAdd/ReadVariableOp?#lstm_cell_522/MatMul/ReadVariableOp?%lstm_cell_522/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_522/MatMul/ReadVariableOpReadVariableOp,lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_522/MatMulMatMulstrided_slice_2:output:0+lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_522/MatMul_1MatMulzeros:output:0-lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_522/addAddV2lstm_cell_522/MatMul:product:0 lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_522/BiasAddBiasAddlstm_cell_522/add:z:0,lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_522/splitSplit&lstm_cell_522/split/split_dim:output:0lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_522/SigmoidSigmoidlstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_1Sigmoidlstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_522/mulMullstm_cell_522/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_522/ReluRelulstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_1Mullstm_cell_522/Sigmoid:y:0 lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_522/add_1AddV2lstm_cell_522/mul:z:0lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_2Sigmoidlstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_522/Relu_1Relulstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_2Mullstm_cell_522/Sigmoid_2:y:0"lstm_cell_522/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_522_matmul_readvariableop_resource.lstm_cell_522_matmul_1_readvariableop_resource-lstm_cell_522_biasadd_readvariableop_resource*
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
while_body_3170552*
condR
while_cond_3170551*K
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
NoOpNoOp%^lstm_cell_522/BiasAdd/ReadVariableOp$^lstm_cell_522/MatMul/ReadVariableOp&^lstm_cell_522/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_522/BiasAdd/ReadVariableOp$lstm_cell_522/BiasAdd/ReadVariableOp2J
#lstm_cell_522/MatMul/ReadVariableOp#lstm_cell_522/MatMul/ReadVariableOp2N
%lstm_cell_522/MatMul_1/ReadVariableOp%lstm_cell_522/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_267_while_cond_3171809.
*lstm_267_while_lstm_267_while_loop_counter4
0lstm_267_while_lstm_267_while_maximum_iterations
lstm_267_while_placeholder 
lstm_267_while_placeholder_1 
lstm_267_while_placeholder_2 
lstm_267_while_placeholder_30
,lstm_267_while_less_lstm_267_strided_slice_1G
Clstm_267_while_lstm_267_while_cond_3171809___redundant_placeholder0G
Clstm_267_while_lstm_267_while_cond_3171809___redundant_placeholder1G
Clstm_267_while_lstm_267_while_cond_3171809___redundant_placeholder2G
Clstm_267_while_lstm_267_while_cond_3171809___redundant_placeholder3
lstm_267_while_identity
?
lstm_267/while/LessLesslstm_267_while_placeholder,lstm_267_while_less_lstm_267_strided_slice_1*
T0*
_output_shapes
: ]
lstm_267/while/IdentityIdentitylstm_267/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_267_while_identity lstm_267/while/Identity:output:0*(
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
*__inference_lstm_267_layer_call_fn_3172638

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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3170636s
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
while_body_3172708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_522_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_522_matmul_readvariableop_resource:	?G
4while_lstm_cell_522_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_522_biasadd_readvariableop_resource:	???*while/lstm_cell_522/BiasAdd/ReadVariableOp?)while/lstm_cell_522/MatMul/ReadVariableOp?+while/lstm_cell_522/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_522/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_522/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_522/addAddV2$while/lstm_cell_522/MatMul:product:0&while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_522/BiasAddBiasAddwhile/lstm_cell_522/add:z:02while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_522/splitSplit,while/lstm_cell_522/split/split_dim:output:0$while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_522/SigmoidSigmoid"while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_1Sigmoid"while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mulMul!while/lstm_cell_522/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_522/ReluRelu"while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_1Mulwhile/lstm_cell_522/Sigmoid:y:0&while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/add_1AddV2while/lstm_cell_522/mul:z:0while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_2Sigmoid"while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_522/Relu_1Reluwhile/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_2Mul!while/lstm_cell_522/Sigmoid_2:y:0(while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_522/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_522/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_522/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_522/BiasAdd/ReadVariableOp*^while/lstm_cell_522/MatMul/ReadVariableOp,^while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_522_biasadd_readvariableop_resource5while_lstm_cell_522_biasadd_readvariableop_resource_0"n
4while_lstm_cell_522_matmul_1_readvariableop_resource6while_lstm_cell_522_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_522_matmul_readvariableop_resource4while_lstm_cell_522_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_522/BiasAdd/ReadVariableOp*while/lstm_cell_522/BiasAdd/ReadVariableOp2V
)while/lstm_cell_522/MatMul/ReadVariableOp)while/lstm_cell_522/MatMul/ReadVariableOp2Z
+while/lstm_cell_522/MatMul_1/ReadVariableOp+while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3174570

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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174024
inputs_0>
,lstm_cell_524_matmul_readvariableop_resource:2(@
.lstm_cell_524_matmul_1_readvariableop_resource:
(;
-lstm_cell_524_biasadd_readvariableop_resource:(
identity??$lstm_cell_524/BiasAdd/ReadVariableOp?#lstm_cell_524/MatMul/ReadVariableOp?%lstm_cell_524/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_524/MatMul/ReadVariableOpReadVariableOp,lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_524/MatMulMatMulstrided_slice_2:output:0+lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_524/MatMul_1MatMulzeros:output:0-lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_524/addAddV2lstm_cell_524/MatMul:product:0 lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_524/BiasAddBiasAddlstm_cell_524/add:z:0,lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_524/splitSplit&lstm_cell_524/split/split_dim:output:0lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_524/SigmoidSigmoidlstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_1Sigmoidlstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_524/mulMullstm_cell_524/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_524/ReluRelulstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_1Mullstm_cell_524/Sigmoid:y:0 lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_524/add_1AddV2lstm_cell_524/mul:z:0lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_2Sigmoidlstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_524/Relu_1Relulstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_2Mullstm_cell_524/Sigmoid_2:y:0"lstm_cell_524/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_524_matmul_readvariableop_resource.lstm_cell_524_matmul_1_readvariableop_resource-lstm_cell_524_biasadd_readvariableop_resource*
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
while_body_3173940*
condR
while_cond_3173939*K
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
NoOpNoOp%^lstm_cell_524/BiasAdd/ReadVariableOp$^lstm_cell_524/MatMul/ReadVariableOp&^lstm_cell_524/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_524/BiasAdd/ReadVariableOp$lstm_cell_524/BiasAdd/ReadVariableOp2J
#lstm_cell_524/MatMul/ReadVariableOp#lstm_cell_524/MatMul/ReadVariableOp2N
%lstm_cell_524/MatMul_1/ReadVariableOp%lstm_cell_524/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3169854

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
?

?
lstm_269_while_cond_3172087.
*lstm_269_while_lstm_269_while_loop_counter4
0lstm_269_while_lstm_269_while_maximum_iterations
lstm_269_while_placeholder 
lstm_269_while_placeholder_1 
lstm_269_while_placeholder_2 
lstm_269_while_placeholder_30
,lstm_269_while_less_lstm_269_strided_slice_1G
Clstm_269_while_lstm_269_while_cond_3172087___redundant_placeholder0G
Clstm_269_while_lstm_269_while_cond_3172087___redundant_placeholder1G
Clstm_269_while_lstm_269_while_cond_3172087___redundant_placeholder2G
Clstm_269_while_lstm_269_while_cond_3172087___redundant_placeholder3
lstm_269_while_identity
?
lstm_269/while/LessLesslstm_269_while_placeholder,lstm_269_while_less_lstm_269_strided_slice_1*
T0*
_output_shapes
: ]
lstm_269/while/IdentityIdentitylstm_269/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_269_while_identity lstm_269/while/Identity:output:0*(
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
*__inference_lstm_269_layer_call_fn_3173848
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170287o
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
while_cond_3170551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3170551___redundant_placeholder05
1while_while_cond_3170551___redundant_placeholder15
1while_while_cond_3170551___redundant_placeholder25
1while_while_cond_3170551___redundant_placeholder3
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
*__inference_lstm_268_layer_call_fn_3173265

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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3171317s
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
?C
?

lstm_267_while_body_3172237.
*lstm_267_while_lstm_267_while_loop_counter4
0lstm_267_while_lstm_267_while_maximum_iterations
lstm_267_while_placeholder 
lstm_267_while_placeholder_1 
lstm_267_while_placeholder_2 
lstm_267_while_placeholder_3-
)lstm_267_while_lstm_267_strided_slice_1_0i
elstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0:	?R
?lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?M
>lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
lstm_267_while_identity
lstm_267_while_identity_1
lstm_267_while_identity_2
lstm_267_while_identity_3
lstm_267_while_identity_4
lstm_267_while_identity_5+
'lstm_267_while_lstm_267_strided_slice_1g
clstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensorN
;lstm_267_while_lstm_cell_522_matmul_readvariableop_resource:	?P
=lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource:	d?K
<lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource:	???3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp?2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp?4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp?
@lstm_267/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_267/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensor_0lstm_267_while_placeholderIlstm_267/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp=lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_267/while/lstm_cell_522/MatMulMatMul9lstm_267/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp?lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_267/while/lstm_cell_522/MatMul_1MatMullstm_267_while_placeholder_2<lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_267/while/lstm_cell_522/addAddV2-lstm_267/while/lstm_cell_522/MatMul:product:0/lstm_267/while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp>lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_267/while/lstm_cell_522/BiasAddBiasAdd$lstm_267/while/lstm_cell_522/add:z:0;lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_267/while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_267/while/lstm_cell_522/splitSplit5lstm_267/while/lstm_cell_522/split/split_dim:output:0-lstm_267/while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_267/while/lstm_cell_522/SigmoidSigmoid+lstm_267/while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_267/while/lstm_cell_522/Sigmoid_1Sigmoid+lstm_267/while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_267/while/lstm_cell_522/mulMul*lstm_267/while/lstm_cell_522/Sigmoid_1:y:0lstm_267_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_267/while/lstm_cell_522/ReluRelu+lstm_267/while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_267/while/lstm_cell_522/mul_1Mul(lstm_267/while/lstm_cell_522/Sigmoid:y:0/lstm_267/while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_267/while/lstm_cell_522/add_1AddV2$lstm_267/while/lstm_cell_522/mul:z:0&lstm_267/while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_267/while/lstm_cell_522/Sigmoid_2Sigmoid+lstm_267/while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_267/while/lstm_cell_522/Relu_1Relu&lstm_267/while/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_267/while/lstm_cell_522/mul_2Mul*lstm_267/while/lstm_cell_522/Sigmoid_2:y:01lstm_267/while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_267/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_267_while_placeholder_1lstm_267_while_placeholder&lstm_267/while/lstm_cell_522/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_267/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_267/while/addAddV2lstm_267_while_placeholderlstm_267/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_267/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_267/while/add_1AddV2*lstm_267_while_lstm_267_while_loop_counterlstm_267/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_267/while/IdentityIdentitylstm_267/while/add_1:z:0^lstm_267/while/NoOp*
T0*
_output_shapes
: ?
lstm_267/while/Identity_1Identity0lstm_267_while_lstm_267_while_maximum_iterations^lstm_267/while/NoOp*
T0*
_output_shapes
: t
lstm_267/while/Identity_2Identitylstm_267/while/add:z:0^lstm_267/while/NoOp*
T0*
_output_shapes
: ?
lstm_267/while/Identity_3IdentityClstm_267/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_267/while/NoOp*
T0*
_output_shapes
: ?
lstm_267/while/Identity_4Identity&lstm_267/while/lstm_cell_522/mul_2:z:0^lstm_267/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_267/while/Identity_5Identity&lstm_267/while/lstm_cell_522/add_1:z:0^lstm_267/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_267/while/NoOpNoOp4^lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp3^lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp5^lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_267_while_identity lstm_267/while/Identity:output:0"?
lstm_267_while_identity_1"lstm_267/while/Identity_1:output:0"?
lstm_267_while_identity_2"lstm_267/while/Identity_2:output:0"?
lstm_267_while_identity_3"lstm_267/while/Identity_3:output:0"?
lstm_267_while_identity_4"lstm_267/while/Identity_4:output:0"?
lstm_267_while_identity_5"lstm_267/while/Identity_5:output:0"T
'lstm_267_while_lstm_267_strided_slice_1)lstm_267_while_lstm_267_strided_slice_1_0"~
<lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource>lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0"?
=lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource?lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0"|
;lstm_267_while_lstm_cell_522_matmul_readvariableop_resource=lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0"?
clstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensorelstm_267_while_tensorarrayv2read_tensorlistgetitem_lstm_267_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp3lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp2h
2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp2lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp2l
4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp4lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3170961

inputs#
lstm_267_3170637:	?#
lstm_267_3170639:	d?
lstm_267_3170641:	?#
lstm_268_3170787:	d?#
lstm_268_3170789:	2?
lstm_268_3170791:	?"
lstm_269_3170937:2("
lstm_269_3170939:
(
lstm_269_3170941:("
dense_89_3170955:

dense_89_3170957:
identity?? dense_89/StatefulPartitionedCall? lstm_267/StatefulPartitionedCall? lstm_268/StatefulPartitionedCall? lstm_269/StatefulPartitionedCall?
 lstm_267/StatefulPartitionedCallStatefulPartitionedCallinputslstm_267_3170637lstm_267_3170639lstm_267_3170641*
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3170636?
 lstm_268/StatefulPartitionedCallStatefulPartitionedCall)lstm_267/StatefulPartitionedCall:output:0lstm_268_3170787lstm_268_3170789lstm_268_3170791*
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3170786?
 lstm_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_268/StatefulPartitionedCall:output:0lstm_269_3170937lstm_269_3170939lstm_269_3170941*
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170936?
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)lstm_269/StatefulPartitionedCall:output:0dense_89_3170955dense_89_3170957*
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
E__inference_dense_89_layer_call_and_return_conditional_losses_3170954x
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_89/StatefulPartitionedCall!^lstm_267/StatefulPartitionedCall!^lstm_268/StatefulPartitionedCall!^lstm_269/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2D
 lstm_267/StatefulPartitionedCall lstm_267/StatefulPartitionedCall2D
 lstm_268/StatefulPartitionedCall lstm_268/StatefulPartitionedCall2D
 lstm_269/StatefulPartitionedCall lstm_269/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_89_layer_call_and_return_conditional_losses_3172605

inputsH
5lstm_267_lstm_cell_522_matmul_readvariableop_resource:	?J
7lstm_267_lstm_cell_522_matmul_1_readvariableop_resource:	d?E
6lstm_267_lstm_cell_522_biasadd_readvariableop_resource:	?H
5lstm_268_lstm_cell_523_matmul_readvariableop_resource:	d?J
7lstm_268_lstm_cell_523_matmul_1_readvariableop_resource:	2?E
6lstm_268_lstm_cell_523_biasadd_readvariableop_resource:	?G
5lstm_269_lstm_cell_524_matmul_readvariableop_resource:2(I
7lstm_269_lstm_cell_524_matmul_1_readvariableop_resource:
(D
6lstm_269_lstm_cell_524_biasadd_readvariableop_resource:(9
'dense_89_matmul_readvariableop_resource:
6
(dense_89_biasadd_readvariableop_resource:
identity??dense_89/BiasAdd/ReadVariableOp?dense_89/MatMul/ReadVariableOp?-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp?,lstm_267/lstm_cell_522/MatMul/ReadVariableOp?.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp?lstm_267/while?-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp?,lstm_268/lstm_cell_523/MatMul/ReadVariableOp?.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp?lstm_268/while?-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp?,lstm_269/lstm_cell_524/MatMul/ReadVariableOp?.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp?lstm_269/whileD
lstm_267/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_sliceStridedSlicelstm_267/Shape:output:0%lstm_267/strided_slice/stack:output:0'lstm_267/strided_slice/stack_1:output:0'lstm_267/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_267/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_267/zeros/packedPacklstm_267/strided_slice:output:0 lstm_267/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_267/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_267/zerosFilllstm_267/zeros/packed:output:0lstm_267/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_267/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_267/zeros_1/packedPacklstm_267/strided_slice:output:0"lstm_267/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_267/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_267/zeros_1Fill lstm_267/zeros_1/packed:output:0lstm_267/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_267/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_267/transpose	Transposeinputs lstm_267/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_267/Shape_1Shapelstm_267/transpose:y:0*
T0*
_output_shapes
:h
lstm_267/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_267/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_267/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_slice_1StridedSlicelstm_267/Shape_1:output:0'lstm_267/strided_slice_1/stack:output:0)lstm_267/strided_slice_1/stack_1:output:0)lstm_267/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_267/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_267/TensorArrayV2TensorListReserve-lstm_267/TensorArrayV2/element_shape:output:0!lstm_267/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_267/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_267/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_267/transpose:y:0Glstm_267/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_267/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_267/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_267/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_slice_2StridedSlicelstm_267/transpose:y:0'lstm_267/strided_slice_2/stack:output:0)lstm_267/strided_slice_2/stack_1:output:0)lstm_267/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_267/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp5lstm_267_lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_267/lstm_cell_522/MatMulMatMul!lstm_267/strided_slice_2:output:04lstm_267/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp7lstm_267_lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_267/lstm_cell_522/MatMul_1MatMullstm_267/zeros:output:06lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_267/lstm_cell_522/addAddV2'lstm_267/lstm_cell_522/MatMul:product:0)lstm_267/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp6lstm_267_lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_267/lstm_cell_522/BiasAddBiasAddlstm_267/lstm_cell_522/add:z:05lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_267/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_267/lstm_cell_522/splitSplit/lstm_267/lstm_cell_522/split/split_dim:output:0'lstm_267/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_267/lstm_cell_522/SigmoidSigmoid%lstm_267/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_267/lstm_cell_522/Sigmoid_1Sigmoid%lstm_267/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/mulMul$lstm_267/lstm_cell_522/Sigmoid_1:y:0lstm_267/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_267/lstm_cell_522/ReluRelu%lstm_267/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/mul_1Mul"lstm_267/lstm_cell_522/Sigmoid:y:0)lstm_267/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/add_1AddV2lstm_267/lstm_cell_522/mul:z:0 lstm_267/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_267/lstm_cell_522/Sigmoid_2Sigmoid%lstm_267/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_267/lstm_cell_522/Relu_1Relu lstm_267/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/mul_2Mul$lstm_267/lstm_cell_522/Sigmoid_2:y:0+lstm_267/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_267/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_267/TensorArrayV2_1TensorListReserve/lstm_267/TensorArrayV2_1/element_shape:output:0!lstm_267/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_267/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_267/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_267/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_267/whileWhile$lstm_267/while/loop_counter:output:0*lstm_267/while/maximum_iterations:output:0lstm_267/time:output:0!lstm_267/TensorArrayV2_1:handle:0lstm_267/zeros:output:0lstm_267/zeros_1:output:0!lstm_267/strided_slice_1:output:0@lstm_267/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_267_lstm_cell_522_matmul_readvariableop_resource7lstm_267_lstm_cell_522_matmul_1_readvariableop_resource6lstm_267_lstm_cell_522_biasadd_readvariableop_resource*
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
lstm_267_while_body_3172237*'
condR
lstm_267_while_cond_3172236*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_267/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_267/TensorArrayV2Stack/TensorListStackTensorListStacklstm_267/while:output:3Blstm_267/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_267/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_267/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_267/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_slice_3StridedSlice4lstm_267/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_267/strided_slice_3/stack:output:0)lstm_267/strided_slice_3/stack_1:output:0)lstm_267/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_267/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_267/transpose_1	Transpose4lstm_267/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_267/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_267/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_268/ShapeShapelstm_267/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_268/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_268/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_268/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_sliceStridedSlicelstm_268/Shape:output:0%lstm_268/strided_slice/stack:output:0'lstm_268/strided_slice/stack_1:output:0'lstm_268/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_268/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_268/zeros/packedPacklstm_268/strided_slice:output:0 lstm_268/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_268/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_268/zerosFilllstm_268/zeros/packed:output:0lstm_268/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_268/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_268/zeros_1/packedPacklstm_268/strided_slice:output:0"lstm_268/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_268/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_268/zeros_1Fill lstm_268/zeros_1/packed:output:0lstm_268/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_268/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_268/transpose	Transposelstm_267/transpose_1:y:0 lstm_268/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_268/Shape_1Shapelstm_268/transpose:y:0*
T0*
_output_shapes
:h
lstm_268/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_268/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_268/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_slice_1StridedSlicelstm_268/Shape_1:output:0'lstm_268/strided_slice_1/stack:output:0)lstm_268/strided_slice_1/stack_1:output:0)lstm_268/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_268/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_268/TensorArrayV2TensorListReserve-lstm_268/TensorArrayV2/element_shape:output:0!lstm_268/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_268/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_268/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_268/transpose:y:0Glstm_268/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_268/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_268/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_268/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_slice_2StridedSlicelstm_268/transpose:y:0'lstm_268/strided_slice_2/stack:output:0)lstm_268/strided_slice_2/stack_1:output:0)lstm_268/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_268/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp5lstm_268_lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_268/lstm_cell_523/MatMulMatMul!lstm_268/strided_slice_2:output:04lstm_268/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp7lstm_268_lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_268/lstm_cell_523/MatMul_1MatMullstm_268/zeros:output:06lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_268/lstm_cell_523/addAddV2'lstm_268/lstm_cell_523/MatMul:product:0)lstm_268/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp6lstm_268_lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_268/lstm_cell_523/BiasAddBiasAddlstm_268/lstm_cell_523/add:z:05lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_268/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_268/lstm_cell_523/splitSplit/lstm_268/lstm_cell_523/split/split_dim:output:0'lstm_268/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_268/lstm_cell_523/SigmoidSigmoid%lstm_268/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_268/lstm_cell_523/Sigmoid_1Sigmoid%lstm_268/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/mulMul$lstm_268/lstm_cell_523/Sigmoid_1:y:0lstm_268/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_268/lstm_cell_523/ReluRelu%lstm_268/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/mul_1Mul"lstm_268/lstm_cell_523/Sigmoid:y:0)lstm_268/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/add_1AddV2lstm_268/lstm_cell_523/mul:z:0 lstm_268/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_268/lstm_cell_523/Sigmoid_2Sigmoid%lstm_268/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_268/lstm_cell_523/Relu_1Relu lstm_268/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/mul_2Mul$lstm_268/lstm_cell_523/Sigmoid_2:y:0+lstm_268/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_268/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_268/TensorArrayV2_1TensorListReserve/lstm_268/TensorArrayV2_1/element_shape:output:0!lstm_268/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_268/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_268/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_268/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_268/whileWhile$lstm_268/while/loop_counter:output:0*lstm_268/while/maximum_iterations:output:0lstm_268/time:output:0!lstm_268/TensorArrayV2_1:handle:0lstm_268/zeros:output:0lstm_268/zeros_1:output:0!lstm_268/strided_slice_1:output:0@lstm_268/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_268_lstm_cell_523_matmul_readvariableop_resource7lstm_268_lstm_cell_523_matmul_1_readvariableop_resource6lstm_268_lstm_cell_523_biasadd_readvariableop_resource*
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
lstm_268_while_body_3172376*'
condR
lstm_268_while_cond_3172375*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_268/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_268/TensorArrayV2Stack/TensorListStackTensorListStacklstm_268/while:output:3Blstm_268/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_268/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_268/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_268/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_slice_3StridedSlice4lstm_268/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_268/strided_slice_3/stack:output:0)lstm_268/strided_slice_3/stack_1:output:0)lstm_268/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_268/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_268/transpose_1	Transpose4lstm_268/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_268/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_268/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_269/ShapeShapelstm_268/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_269/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_269/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_269/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_sliceStridedSlicelstm_269/Shape:output:0%lstm_269/strided_slice/stack:output:0'lstm_269/strided_slice/stack_1:output:0'lstm_269/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_269/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_269/zeros/packedPacklstm_269/strided_slice:output:0 lstm_269/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_269/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_269/zerosFilllstm_269/zeros/packed:output:0lstm_269/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_269/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_269/zeros_1/packedPacklstm_269/strided_slice:output:0"lstm_269/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_269/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_269/zeros_1Fill lstm_269/zeros_1/packed:output:0lstm_269/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_269/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_269/transpose	Transposelstm_268/transpose_1:y:0 lstm_269/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_269/Shape_1Shapelstm_269/transpose:y:0*
T0*
_output_shapes
:h
lstm_269/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_269/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_269/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_slice_1StridedSlicelstm_269/Shape_1:output:0'lstm_269/strided_slice_1/stack:output:0)lstm_269/strided_slice_1/stack_1:output:0)lstm_269/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_269/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_269/TensorArrayV2TensorListReserve-lstm_269/TensorArrayV2/element_shape:output:0!lstm_269/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_269/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_269/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_269/transpose:y:0Glstm_269/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_269/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_269/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_269/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_slice_2StridedSlicelstm_269/transpose:y:0'lstm_269/strided_slice_2/stack:output:0)lstm_269/strided_slice_2/stack_1:output:0)lstm_269/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_269/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp5lstm_269_lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_269/lstm_cell_524/MatMulMatMul!lstm_269/strided_slice_2:output:04lstm_269/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp7lstm_269_lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_269/lstm_cell_524/MatMul_1MatMullstm_269/zeros:output:06lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_269/lstm_cell_524/addAddV2'lstm_269/lstm_cell_524/MatMul:product:0)lstm_269/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp6lstm_269_lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_269/lstm_cell_524/BiasAddBiasAddlstm_269/lstm_cell_524/add:z:05lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_269/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_269/lstm_cell_524/splitSplit/lstm_269/lstm_cell_524/split/split_dim:output:0'lstm_269/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_269/lstm_cell_524/SigmoidSigmoid%lstm_269/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_269/lstm_cell_524/Sigmoid_1Sigmoid%lstm_269/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/mulMul$lstm_269/lstm_cell_524/Sigmoid_1:y:0lstm_269/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_269/lstm_cell_524/ReluRelu%lstm_269/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/mul_1Mul"lstm_269/lstm_cell_524/Sigmoid:y:0)lstm_269/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/add_1AddV2lstm_269/lstm_cell_524/mul:z:0 lstm_269/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_269/lstm_cell_524/Sigmoid_2Sigmoid%lstm_269/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_269/lstm_cell_524/Relu_1Relu lstm_269/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/mul_2Mul$lstm_269/lstm_cell_524/Sigmoid_2:y:0+lstm_269/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_269/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_269/TensorArrayV2_1TensorListReserve/lstm_269/TensorArrayV2_1/element_shape:output:0!lstm_269/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_269/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_269/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_269/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_269/whileWhile$lstm_269/while/loop_counter:output:0*lstm_269/while/maximum_iterations:output:0lstm_269/time:output:0!lstm_269/TensorArrayV2_1:handle:0lstm_269/zeros:output:0lstm_269/zeros_1:output:0!lstm_269/strided_slice_1:output:0@lstm_269/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_269_lstm_cell_524_matmul_readvariableop_resource7lstm_269_lstm_cell_524_matmul_1_readvariableop_resource6lstm_269_lstm_cell_524_biasadd_readvariableop_resource*
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
lstm_269_while_body_3172515*'
condR
lstm_269_while_cond_3172514*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_269/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_269/TensorArrayV2Stack/TensorListStackTensorListStacklstm_269/while:output:3Blstm_269/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_269/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_269/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_269/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_slice_3StridedSlice4lstm_269/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_269/strided_slice_3/stack:output:0)lstm_269/strided_slice_3/stack_1:output:0)lstm_269/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_269/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_269/transpose_1	Transpose4lstm_269/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_269/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_269/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_89/MatMulMatMul!lstm_269/strided_slice_3:output:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_89/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp.^lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp-^lstm_267/lstm_cell_522/MatMul/ReadVariableOp/^lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp^lstm_267/while.^lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp-^lstm_268/lstm_cell_523/MatMul/ReadVariableOp/^lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp^lstm_268/while.^lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp-^lstm_269/lstm_cell_524/MatMul/ReadVariableOp/^lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp^lstm_269/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp2^
-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp2\
,lstm_267/lstm_cell_522/MatMul/ReadVariableOp,lstm_267/lstm_cell_522/MatMul/ReadVariableOp2`
.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp2 
lstm_267/whilelstm_267/while2^
-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp2\
,lstm_268/lstm_cell_523/MatMul/ReadVariableOp,lstm_268/lstm_cell_523/MatMul/ReadVariableOp2`
.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp2 
lstm_268/whilelstm_268/while2^
-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp2\
,lstm_269/lstm_cell_524/MatMul/ReadVariableOp,lstm_269/lstm_cell_524/MatMul/ReadVariableOp2`
.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp2 
lstm_269/whilelstm_269/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3170217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3170217___redundant_placeholder05
1while_while_cond_3170217___redundant_placeholder15
1while_while_cond_3170217___redundant_placeholder25
1while_while_cond_3170217___redundant_placeholder3
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
?W
?
 __inference__traced_save_3174909
file_prefix.
*savev2_dense_89_kernel_read_readvariableop,
(savev2_dense_89_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_267_lstm_cell_267_kernel_read_readvariableopF
Bsavev2_lstm_267_lstm_cell_267_recurrent_kernel_read_readvariableop:
6savev2_lstm_267_lstm_cell_267_bias_read_readvariableop<
8savev2_lstm_268_lstm_cell_268_kernel_read_readvariableopF
Bsavev2_lstm_268_lstm_cell_268_recurrent_kernel_read_readvariableop:
6savev2_lstm_268_lstm_cell_268_bias_read_readvariableop<
8savev2_lstm_269_lstm_cell_269_kernel_read_readvariableopF
Bsavev2_lstm_269_lstm_cell_269_recurrent_kernel_read_readvariableop:
6savev2_lstm_269_lstm_cell_269_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_89_kernel_m_read_readvariableop3
/savev2_adam_dense_89_bias_m_read_readvariableopC
?savev2_adam_lstm_267_lstm_cell_267_kernel_m_read_readvariableopM
Isavev2_adam_lstm_267_lstm_cell_267_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_267_lstm_cell_267_bias_m_read_readvariableopC
?savev2_adam_lstm_268_lstm_cell_268_kernel_m_read_readvariableopM
Isavev2_adam_lstm_268_lstm_cell_268_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_268_lstm_cell_268_bias_m_read_readvariableopC
?savev2_adam_lstm_269_lstm_cell_269_kernel_m_read_readvariableopM
Isavev2_adam_lstm_269_lstm_cell_269_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_269_lstm_cell_269_bias_m_read_readvariableop5
1savev2_adam_dense_89_kernel_v_read_readvariableop3
/savev2_adam_dense_89_bias_v_read_readvariableopC
?savev2_adam_lstm_267_lstm_cell_267_kernel_v_read_readvariableopM
Isavev2_adam_lstm_267_lstm_cell_267_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_267_lstm_cell_267_bias_v_read_readvariableopC
?savev2_adam_lstm_268_lstm_cell_268_kernel_v_read_readvariableopM
Isavev2_adam_lstm_268_lstm_cell_268_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_268_lstm_cell_268_bias_v_read_readvariableopC
?savev2_adam_lstm_269_lstm_cell_269_kernel_v_read_readvariableopM
Isavev2_adam_lstm_269_lstm_cell_269_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_269_lstm_cell_269_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_89_kernel_read_readvariableop(savev2_dense_89_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_267_lstm_cell_267_kernel_read_readvariableopBsavev2_lstm_267_lstm_cell_267_recurrent_kernel_read_readvariableop6savev2_lstm_267_lstm_cell_267_bias_read_readvariableop8savev2_lstm_268_lstm_cell_268_kernel_read_readvariableopBsavev2_lstm_268_lstm_cell_268_recurrent_kernel_read_readvariableop6savev2_lstm_268_lstm_cell_268_bias_read_readvariableop8savev2_lstm_269_lstm_cell_269_kernel_read_readvariableopBsavev2_lstm_269_lstm_cell_269_recurrent_kernel_read_readvariableop6savev2_lstm_269_lstm_cell_269_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_89_kernel_m_read_readvariableop/savev2_adam_dense_89_bias_m_read_readvariableop?savev2_adam_lstm_267_lstm_cell_267_kernel_m_read_readvariableopIsavev2_adam_lstm_267_lstm_cell_267_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_267_lstm_cell_267_bias_m_read_readvariableop?savev2_adam_lstm_268_lstm_cell_268_kernel_m_read_readvariableopIsavev2_adam_lstm_268_lstm_cell_268_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_268_lstm_cell_268_bias_m_read_readvariableop?savev2_adam_lstm_269_lstm_cell_269_kernel_m_read_readvariableopIsavev2_adam_lstm_269_lstm_cell_269_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_269_lstm_cell_269_bias_m_read_readvariableop1savev2_adam_dense_89_kernel_v_read_readvariableop/savev2_adam_dense_89_bias_v_read_readvariableop?savev2_adam_lstm_267_lstm_cell_267_kernel_v_read_readvariableopIsavev2_adam_lstm_267_lstm_cell_267_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_267_lstm_cell_267_bias_v_read_readvariableop?savev2_adam_lstm_268_lstm_cell_268_kernel_v_read_readvariableopIsavev2_adam_lstm_268_lstm_cell_268_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_268_lstm_cell_268_bias_v_read_readvariableop?savev2_adam_lstm_269_lstm_cell_269_kernel_v_read_readvariableopIsavev2_adam_lstm_269_lstm_cell_269_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_269_lstm_cell_269_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
while_cond_3170058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3170058___redundant_placeholder05
1while_while_cond_3170058___redundant_placeholder15
1while_while_cond_3170058___redundant_placeholder25
1while_while_cond_3170058___redundant_placeholder3
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3169778

inputs(
lstm_cell_522_3169696:	?(
lstm_cell_522_3169698:	d?$
lstm_cell_522_3169700:	?
identity??%lstm_cell_522/StatefulPartitionedCall?while;
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
%lstm_cell_522/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_522_3169696lstm_cell_522_3169698lstm_cell_522_3169700*
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169650n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_522_3169696lstm_cell_522_3169698lstm_cell_522_3169700*
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
while_body_3169709*
condR
while_cond_3169708*K
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
NoOpNoOp&^lstm_cell_522/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_522/StatefulPartitionedCall%lstm_cell_522/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3174538

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
lstm_268_while_cond_3171948.
*lstm_268_while_lstm_268_while_loop_counter4
0lstm_268_while_lstm_268_while_maximum_iterations
lstm_268_while_placeholder 
lstm_268_while_placeholder_1 
lstm_268_while_placeholder_2 
lstm_268_while_placeholder_30
,lstm_268_while_less_lstm_268_strided_slice_1G
Clstm_268_while_lstm_268_while_cond_3171948___redundant_placeholder0G
Clstm_268_while_lstm_268_while_cond_3171948___redundant_placeholder1G
Clstm_268_while_lstm_268_while_cond_3171948___redundant_placeholder2G
Clstm_268_while_lstm_268_while_cond_3171948___redundant_placeholder3
lstm_268_while_identity
?
lstm_268/while/LessLesslstm_268_while_placeholder,lstm_268_while_less_lstm_268_strided_slice_1*
T0*
_output_shapes
: ]
lstm_268/while/IdentityIdentitylstm_268/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_268_while_identity lstm_268/while/Identity:output:0*(
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3171482

inputs?
,lstm_cell_522_matmul_readvariableop_resource:	?A
.lstm_cell_522_matmul_1_readvariableop_resource:	d?<
-lstm_cell_522_biasadd_readvariableop_resource:	?
identity??$lstm_cell_522/BiasAdd/ReadVariableOp?#lstm_cell_522/MatMul/ReadVariableOp?%lstm_cell_522/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_522/MatMul/ReadVariableOpReadVariableOp,lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_522/MatMulMatMulstrided_slice_2:output:0+lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_522/MatMul_1MatMulzeros:output:0-lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_522/addAddV2lstm_cell_522/MatMul:product:0 lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_522/BiasAddBiasAddlstm_cell_522/add:z:0,lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_522/splitSplit&lstm_cell_522/split/split_dim:output:0lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_522/SigmoidSigmoidlstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_1Sigmoidlstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_522/mulMullstm_cell_522/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_522/ReluRelulstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_1Mullstm_cell_522/Sigmoid:y:0 lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_522/add_1AddV2lstm_cell_522/mul:z:0lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_2Sigmoidlstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_522/Relu_1Relulstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_2Mullstm_cell_522/Sigmoid_2:y:0"lstm_cell_522/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_522_matmul_readvariableop_resource.lstm_cell_522_matmul_1_readvariableop_resource-lstm_cell_522_biasadd_readvariableop_resource*
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
while_body_3171398*
condR
while_cond_3171397*K
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
NoOpNoOp%^lstm_cell_522/BiasAdd/ReadVariableOp$^lstm_cell_522/MatMul/ReadVariableOp&^lstm_cell_522/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_522/BiasAdd/ReadVariableOp$lstm_cell_522/BiasAdd/ReadVariableOp2J
#lstm_cell_522/MatMul/ReadVariableOp#lstm_cell_522/MatMul/ReadVariableOp2N
%lstm_cell_522/MatMul_1/ReadVariableOp%lstm_cell_522/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173837

inputs?
,lstm_cell_523_matmul_readvariableop_resource:	d?A
.lstm_cell_523_matmul_1_readvariableop_resource:	2?<
-lstm_cell_523_biasadd_readvariableop_resource:	?
identity??$lstm_cell_523/BiasAdd/ReadVariableOp?#lstm_cell_523/MatMul/ReadVariableOp?%lstm_cell_523/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_523/MatMul/ReadVariableOpReadVariableOp,lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_523/MatMulMatMulstrided_slice_2:output:0+lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_523/MatMul_1MatMulzeros:output:0-lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_523/addAddV2lstm_cell_523/MatMul:product:0 lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_523/BiasAddBiasAddlstm_cell_523/add:z:0,lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_523/splitSplit&lstm_cell_523/split/split_dim:output:0lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_523/SigmoidSigmoidlstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_1Sigmoidlstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_523/mulMullstm_cell_523/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_523/ReluRelulstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_1Mullstm_cell_523/Sigmoid:y:0 lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_523/add_1AddV2lstm_cell_523/mul:z:0lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_2Sigmoidlstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_523/Relu_1Relulstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_2Mullstm_cell_523/Sigmoid_2:y:0"lstm_cell_523/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_523_matmul_readvariableop_resource.lstm_cell_523_matmul_1_readvariableop_resource-lstm_cell_523_biasadd_readvariableop_resource*
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
while_body_3173753*
condR
while_cond_3173752*K
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
NoOpNoOp%^lstm_cell_523/BiasAdd/ReadVariableOp$^lstm_cell_523/MatMul/ReadVariableOp&^lstm_cell_523/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_523/BiasAdd/ReadVariableOp$lstm_cell_523/BiasAdd/ReadVariableOp2J
#lstm_cell_523/MatMul/ReadVariableOp#lstm_cell_523/MatMul/ReadVariableOp2N
%lstm_cell_523/MatMul_1/ReadVariableOp%lstm_cell_523/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_269_layer_call_fn_3173881

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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3171152o
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
while_cond_3173939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3173939___redundant_placeholder05
1while_while_cond_3173939___redundant_placeholder15
1while_while_cond_3173939___redundant_placeholder25
1while_while_cond_3173939___redundant_placeholder3
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
while_cond_3169517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3169517___redundant_placeholder05
1while_while_cond_3169517___redundant_placeholder15
1while_while_cond_3169517___redundant_placeholder25
1while_while_cond_3169517___redundant_placeholder3
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
/__inference_lstm_cell_523_layer_call_fn_3174587

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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3169854o
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170478

inputs'
lstm_cell_524_3170396:2('
lstm_cell_524_3170398:
(#
lstm_cell_524_3170400:(
identity??%lstm_cell_524/StatefulPartitionedCall?while;
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
%lstm_cell_524/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_524_3170396lstm_cell_524_3170398lstm_cell_524_3170400*
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170350n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_524_3170396lstm_cell_524_3170398lstm_cell_524_3170400*
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
while_body_3170409*
condR
while_cond_3170408*K
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
NoOpNoOp&^lstm_cell_524/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_524/StatefulPartitionedCall%lstm_cell_524/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171632
lstm_267_input#
lstm_267_3171605:	?#
lstm_267_3171607:	d?
lstm_267_3171609:	?#
lstm_268_3171612:	d?#
lstm_268_3171614:	2?
lstm_268_3171616:	?"
lstm_269_3171619:2("
lstm_269_3171621:
(
lstm_269_3171623:("
dense_89_3171626:

dense_89_3171628:
identity?? dense_89/StatefulPartitionedCall? lstm_267/StatefulPartitionedCall? lstm_268/StatefulPartitionedCall? lstm_269/StatefulPartitionedCall?
 lstm_267/StatefulPartitionedCallStatefulPartitionedCalllstm_267_inputlstm_267_3171605lstm_267_3171607lstm_267_3171609*
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3170636?
 lstm_268/StatefulPartitionedCallStatefulPartitionedCall)lstm_267/StatefulPartitionedCall:output:0lstm_268_3171612lstm_268_3171614lstm_268_3171616*
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3170786?
 lstm_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_268/StatefulPartitionedCall:output:0lstm_269_3171619lstm_269_3171621lstm_269_3171623*
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170936?
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)lstm_269/StatefulPartitionedCall:output:0dense_89_3171626dense_89_3171628*
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
E__inference_dense_89_layer_call_and_return_conditional_losses_3170954x
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_89/StatefulPartitionedCall!^lstm_267/StatefulPartitionedCall!^lstm_268/StatefulPartitionedCall!^lstm_269/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2D
 lstm_267/StatefulPartitionedCall lstm_267/StatefulPartitionedCall2D
 lstm_268/StatefulPartitionedCall lstm_268/StatefulPartitionedCall2D
 lstm_269/StatefulPartitionedCall lstm_269/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_267_input
?
?
while_cond_3171067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3171067___redundant_placeholder05
1while_while_cond_3171067___redundant_placeholder15
1while_while_cond_3171067___redundant_placeholder25
1while_while_cond_3171067___redundant_placeholder3
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
while_body_3173467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_523_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_523_matmul_readvariableop_resource:	d?G
4while_lstm_cell_523_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_523_biasadd_readvariableop_resource:	???*while/lstm_cell_523/BiasAdd/ReadVariableOp?)while/lstm_cell_523/MatMul/ReadVariableOp?+while/lstm_cell_523/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_523/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_523/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_523/addAddV2$while/lstm_cell_523/MatMul:product:0&while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_523/BiasAddBiasAddwhile/lstm_cell_523/add:z:02while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_523/splitSplit,while/lstm_cell_523/split/split_dim:output:0$while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_523/SigmoidSigmoid"while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_1Sigmoid"while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mulMul!while/lstm_cell_523/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_523/ReluRelu"while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_1Mulwhile/lstm_cell_523/Sigmoid:y:0&while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/add_1AddV2while/lstm_cell_523/mul:z:0while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_2Sigmoid"while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_523/Relu_1Reluwhile/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_2Mul!while/lstm_cell_523/Sigmoid_2:y:0(while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_523/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_523/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_523/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_523/BiasAdd/ReadVariableOp*^while/lstm_cell_523/MatMul/ReadVariableOp,^while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_523_biasadd_readvariableop_resource5while_lstm_cell_523_biasadd_readvariableop_resource_0"n
4while_lstm_cell_523_matmul_1_readvariableop_resource6while_lstm_cell_523_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_523_matmul_readvariableop_resource4while_lstm_cell_523_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_523/BiasAdd/ReadVariableOp*while/lstm_cell_523/BiasAdd/ReadVariableOp2V
)while/lstm_cell_523/MatMul/ReadVariableOp)while/lstm_cell_523/MatMul/ReadVariableOp2Z
+while/lstm_cell_523/MatMul_1/ReadVariableOp+while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_89_lstm_269_while_body_3169347J
Fsequential_89_lstm_269_while_sequential_89_lstm_269_while_loop_counterP
Lsequential_89_lstm_269_while_sequential_89_lstm_269_while_maximum_iterations,
(sequential_89_lstm_269_while_placeholder.
*sequential_89_lstm_269_while_placeholder_1.
*sequential_89_lstm_269_while_placeholder_2.
*sequential_89_lstm_269_while_placeholder_3I
Esequential_89_lstm_269_while_sequential_89_lstm_269_strided_slice_1_0?
?sequential_89_lstm_269_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_269_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_89_lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0:2(_
Msequential_89_lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(Z
Lsequential_89_lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0:()
%sequential_89_lstm_269_while_identity+
'sequential_89_lstm_269_while_identity_1+
'sequential_89_lstm_269_while_identity_2+
'sequential_89_lstm_269_while_identity_3+
'sequential_89_lstm_269_while_identity_4+
'sequential_89_lstm_269_while_identity_5G
Csequential_89_lstm_269_while_sequential_89_lstm_269_strided_slice_1?
sequential_89_lstm_269_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_269_tensorarrayunstack_tensorlistfromtensor[
Isequential_89_lstm_269_while_lstm_cell_524_matmul_readvariableop_resource:2(]
Ksequential_89_lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource:
(X
Jsequential_89_lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource:(??Asequential_89/lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp?@sequential_89/lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp?Bsequential_89/lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp?
Nsequential_89/lstm_269/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_89/lstm_269/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_89_lstm_269_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_269_tensorarrayunstack_tensorlistfromtensor_0(sequential_89_lstm_269_while_placeholderWsequential_89/lstm_269/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_89/lstm_269/while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOpKsequential_89_lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_89/lstm_269/while/lstm_cell_524/MatMulMatMulGsequential_89/lstm_269/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_89/lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_89/lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOpMsequential_89_lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_89/lstm_269/while/lstm_cell_524/MatMul_1MatMul*sequential_89_lstm_269_while_placeholder_2Jsequential_89/lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_89/lstm_269/while/lstm_cell_524/addAddV2;sequential_89/lstm_269/while/lstm_cell_524/MatMul:product:0=sequential_89/lstm_269/while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_89/lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOpLsequential_89_lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_89/lstm_269/while/lstm_cell_524/BiasAddBiasAdd2sequential_89/lstm_269/while/lstm_cell_524/add:z:0Isequential_89/lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_89/lstm_269/while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_89/lstm_269/while/lstm_cell_524/splitSplitCsequential_89/lstm_269/while/lstm_cell_524/split/split_dim:output:0;sequential_89/lstm_269/while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_89/lstm_269/while/lstm_cell_524/SigmoidSigmoid9sequential_89/lstm_269/while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_89/lstm_269/while/lstm_cell_524/Sigmoid_1Sigmoid9sequential_89/lstm_269/while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_89/lstm_269/while/lstm_cell_524/mulMul8sequential_89/lstm_269/while/lstm_cell_524/Sigmoid_1:y:0*sequential_89_lstm_269_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_89/lstm_269/while/lstm_cell_524/ReluRelu9sequential_89/lstm_269/while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_89/lstm_269/while/lstm_cell_524/mul_1Mul6sequential_89/lstm_269/while/lstm_cell_524/Sigmoid:y:0=sequential_89/lstm_269/while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_89/lstm_269/while/lstm_cell_524/add_1AddV22sequential_89/lstm_269/while/lstm_cell_524/mul:z:04sequential_89/lstm_269/while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_89/lstm_269/while/lstm_cell_524/Sigmoid_2Sigmoid9sequential_89/lstm_269/while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_89/lstm_269/while/lstm_cell_524/Relu_1Relu4sequential_89/lstm_269/while/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_89/lstm_269/while/lstm_cell_524/mul_2Mul8sequential_89/lstm_269/while/lstm_cell_524/Sigmoid_2:y:0?sequential_89/lstm_269/while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_89/lstm_269/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_89_lstm_269_while_placeholder_1(sequential_89_lstm_269_while_placeholder4sequential_89/lstm_269/while/lstm_cell_524/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_89/lstm_269/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_89/lstm_269/while/addAddV2(sequential_89_lstm_269_while_placeholder+sequential_89/lstm_269/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_89/lstm_269/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_89/lstm_269/while/add_1AddV2Fsequential_89_lstm_269_while_sequential_89_lstm_269_while_loop_counter-sequential_89/lstm_269/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_89/lstm_269/while/IdentityIdentity&sequential_89/lstm_269/while/add_1:z:0"^sequential_89/lstm_269/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_269/while/Identity_1IdentityLsequential_89_lstm_269_while_sequential_89_lstm_269_while_maximum_iterations"^sequential_89/lstm_269/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_269/while/Identity_2Identity$sequential_89/lstm_269/while/add:z:0"^sequential_89/lstm_269/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_269/while/Identity_3IdentityQsequential_89/lstm_269/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_89/lstm_269/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_269/while/Identity_4Identity4sequential_89/lstm_269/while/lstm_cell_524/mul_2:z:0"^sequential_89/lstm_269/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_89/lstm_269/while/Identity_5Identity4sequential_89/lstm_269/while/lstm_cell_524/add_1:z:0"^sequential_89/lstm_269/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_89/lstm_269/while/NoOpNoOpB^sequential_89/lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOpA^sequential_89/lstm_269/while/lstm_cell_524/MatMul/ReadVariableOpC^sequential_89/lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_89_lstm_269_while_identity.sequential_89/lstm_269/while/Identity:output:0"[
'sequential_89_lstm_269_while_identity_10sequential_89/lstm_269/while/Identity_1:output:0"[
'sequential_89_lstm_269_while_identity_20sequential_89/lstm_269/while/Identity_2:output:0"[
'sequential_89_lstm_269_while_identity_30sequential_89/lstm_269/while/Identity_3:output:0"[
'sequential_89_lstm_269_while_identity_40sequential_89/lstm_269/while/Identity_4:output:0"[
'sequential_89_lstm_269_while_identity_50sequential_89/lstm_269/while/Identity_5:output:0"?
Jsequential_89_lstm_269_while_lstm_cell_524_biasadd_readvariableop_resourceLsequential_89_lstm_269_while_lstm_cell_524_biasadd_readvariableop_resource_0"?
Ksequential_89_lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resourceMsequential_89_lstm_269_while_lstm_cell_524_matmul_1_readvariableop_resource_0"?
Isequential_89_lstm_269_while_lstm_cell_524_matmul_readvariableop_resourceKsequential_89_lstm_269_while_lstm_cell_524_matmul_readvariableop_resource_0"?
Csequential_89_lstm_269_while_sequential_89_lstm_269_strided_slice_1Esequential_89_lstm_269_while_sequential_89_lstm_269_strided_slice_1_0"?
sequential_89_lstm_269_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_269_tensorarrayunstack_tensorlistfromtensor?sequential_89_lstm_269_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_269_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_89/lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOpAsequential_89/lstm_269/while/lstm_cell_524/BiasAdd/ReadVariableOp2?
@sequential_89/lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp@sequential_89/lstm_269/while/lstm_cell_524/MatMul/ReadVariableOp2?
Bsequential_89/lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOpBsequential_89/lstm_269/while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3169587

inputs(
lstm_cell_522_3169505:	?(
lstm_cell_522_3169507:	d?$
lstm_cell_522_3169509:	?
identity??%lstm_cell_522/StatefulPartitionedCall?while;
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
%lstm_cell_522/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_522_3169505lstm_cell_522_3169507lstm_cell_522_3169509*
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169504n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_522_3169505lstm_cell_522_3169507lstm_cell_522_3169509*
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
while_body_3169518*
condR
while_cond_3169517*K
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
NoOpNoOp&^lstm_cell_522/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_522/StatefulPartitionedCall%lstm_cell_522/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_524_layer_call_fn_3174702

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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170350o
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
*__inference_lstm_268_layer_call_fn_3173232
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3169937|
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
while_body_3173610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_523_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_523_matmul_readvariableop_resource:	d?G
4while_lstm_cell_523_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_523_biasadd_readvariableop_resource:	???*while/lstm_cell_523/BiasAdd/ReadVariableOp?)while/lstm_cell_523/MatMul/ReadVariableOp?+while/lstm_cell_523/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_523/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_523/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_523/addAddV2$while/lstm_cell_523/MatMul:product:0&while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_523/BiasAddBiasAddwhile/lstm_cell_523/add:z:02while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_523/splitSplit,while/lstm_cell_523/split/split_dim:output:0$while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_523/SigmoidSigmoid"while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_1Sigmoid"while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mulMul!while/lstm_cell_523/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_523/ReluRelu"while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_1Mulwhile/lstm_cell_523/Sigmoid:y:0&while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/add_1AddV2while/lstm_cell_523/mul:z:0while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_2Sigmoid"while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_523/Relu_1Reluwhile/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_2Mul!while/lstm_cell_523/Sigmoid_2:y:0(while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_523/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_523/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_523/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_523/BiasAdd/ReadVariableOp*^while/lstm_cell_523/MatMul/ReadVariableOp,^while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_523_biasadd_readvariableop_resource5while_lstm_cell_523_biasadd_readvariableop_resource_0"n
4while_lstm_cell_523_matmul_1_readvariableop_resource6while_lstm_cell_523_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_523_matmul_readvariableop_resource4while_lstm_cell_523_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_523/BiasAdd/ReadVariableOp*while/lstm_cell_523/BiasAdd/ReadVariableOp2V
)while/lstm_cell_523/MatMul/ReadVariableOp)while/lstm_cell_523/MatMul/ReadVariableOp2Z
+while/lstm_cell_523/MatMul_1/ReadVariableOp+while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3172850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3172850___redundant_placeholder05
1while_while_cond_3172850___redundant_placeholder15
1while_while_cond_3172850___redundant_placeholder25
1while_while_cond_3172850___redundant_placeholder3
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3173221

inputs?
,lstm_cell_522_matmul_readvariableop_resource:	?A
.lstm_cell_522_matmul_1_readvariableop_resource:	d?<
-lstm_cell_522_biasadd_readvariableop_resource:	?
identity??$lstm_cell_522/BiasAdd/ReadVariableOp?#lstm_cell_522/MatMul/ReadVariableOp?%lstm_cell_522/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_522/MatMul/ReadVariableOpReadVariableOp,lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_522/MatMulMatMulstrided_slice_2:output:0+lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_522/MatMul_1MatMulzeros:output:0-lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_522/addAddV2lstm_cell_522/MatMul:product:0 lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_522/BiasAddBiasAddlstm_cell_522/add:z:0,lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_522/splitSplit&lstm_cell_522/split/split_dim:output:0lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_522/SigmoidSigmoidlstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_1Sigmoidlstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_522/mulMullstm_cell_522/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_522/ReluRelulstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_1Mullstm_cell_522/Sigmoid:y:0 lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_522/add_1AddV2lstm_cell_522/mul:z:0lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_2Sigmoidlstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_522/Relu_1Relulstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_2Mullstm_cell_522/Sigmoid_2:y:0"lstm_cell_522/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_522_matmul_readvariableop_resource.lstm_cell_522_matmul_1_readvariableop_resource-lstm_cell_522_biasadd_readvariableop_resource*
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
while_body_3173137*
condR
while_cond_3173136*K
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
NoOpNoOp%^lstm_cell_522/BiasAdd/ReadVariableOp$^lstm_cell_522/MatMul/ReadVariableOp&^lstm_cell_522/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_522/BiasAdd/ReadVariableOp$lstm_cell_522/BiasAdd/ReadVariableOp2J
#lstm_cell_522/MatMul/ReadVariableOp#lstm_cell_522/MatMul/ReadVariableOp2N
%lstm_cell_522/MatMul_1/ReadVariableOp%lstm_cell_522/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3173752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3173752___redundant_placeholder05
1while_while_cond_3173752___redundant_placeholder15
1while_while_cond_3173752___redundant_placeholder25
1while_while_cond_3173752___redundant_placeholder3
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
while_body_3169709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_522_3169733_0:	?0
while_lstm_cell_522_3169735_0:	d?,
while_lstm_cell_522_3169737_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_522_3169733:	?.
while_lstm_cell_522_3169735:	d?*
while_lstm_cell_522_3169737:	???+while/lstm_cell_522/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_522/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_522_3169733_0while_lstm_cell_522_3169735_0while_lstm_cell_522_3169737_0*
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169650?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_522/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_522/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_522/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_522/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_522_3169733while_lstm_cell_522_3169733_0"<
while_lstm_cell_522_3169735while_lstm_cell_522_3169735_0"<
while_lstm_cell_522_3169737while_lstm_cell_522_3169737_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_522/StatefulPartitionedCall+while/lstm_cell_522/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3169867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3169867___redundant_placeholder05
1while_while_cond_3169867___redundant_placeholder15
1while_while_cond_3169867___redundant_placeholder25
1while_while_cond_3169867___redundant_placeholder3
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
%__inference_signature_wrapper_3171697
lstm_267_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_267_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3169437o
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
_user_specified_namelstm_267_input
?8
?
while_body_3174083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_524_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_524_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_524_matmul_readvariableop_resource:2(F
4while_lstm_cell_524_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_524_biasadd_readvariableop_resource:(??*while/lstm_cell_524/BiasAdd/ReadVariableOp?)while/lstm_cell_524/MatMul/ReadVariableOp?+while/lstm_cell_524/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_524/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_524/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_524/addAddV2$while/lstm_cell_524/MatMul:product:0&while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_524/BiasAddBiasAddwhile/lstm_cell_524/add:z:02while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_524/splitSplit,while/lstm_cell_524/split/split_dim:output:0$while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_524/SigmoidSigmoid"while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_1Sigmoid"while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mulMul!while/lstm_cell_524/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_524/ReluRelu"while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_1Mulwhile/lstm_cell_524/Sigmoid:y:0&while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/add_1AddV2while/lstm_cell_524/mul:z:0while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_2Sigmoid"while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_524/Relu_1Reluwhile/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_2Mul!while/lstm_cell_524/Sigmoid_2:y:0(while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_524/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_524/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_524/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_524/BiasAdd/ReadVariableOp*^while/lstm_cell_524/MatMul/ReadVariableOp,^while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_524_biasadd_readvariableop_resource5while_lstm_cell_524_biasadd_readvariableop_resource_0"n
4while_lstm_cell_524_matmul_1_readvariableop_resource6while_lstm_cell_524_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_524_matmul_readvariableop_resource4while_lstm_cell_524_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_524/BiasAdd/ReadVariableOp*while/lstm_cell_524/BiasAdd/ReadVariableOp2V
)while/lstm_cell_524/MatMul/ReadVariableOp)while/lstm_cell_524/MatMul/ReadVariableOp2Z
+while/lstm_cell_524/MatMul_1/ReadVariableOp+while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173551
inputs_0?
,lstm_cell_523_matmul_readvariableop_resource:	d?A
.lstm_cell_523_matmul_1_readvariableop_resource:	2?<
-lstm_cell_523_biasadd_readvariableop_resource:	?
identity??$lstm_cell_523/BiasAdd/ReadVariableOp?#lstm_cell_523/MatMul/ReadVariableOp?%lstm_cell_523/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_523/MatMul/ReadVariableOpReadVariableOp,lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_523/MatMulMatMulstrided_slice_2:output:0+lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_523/MatMul_1MatMulzeros:output:0-lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_523/addAddV2lstm_cell_523/MatMul:product:0 lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_523/BiasAddBiasAddlstm_cell_523/add:z:0,lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_523/splitSplit&lstm_cell_523/split/split_dim:output:0lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_523/SigmoidSigmoidlstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_1Sigmoidlstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_523/mulMullstm_cell_523/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_523/ReluRelulstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_1Mullstm_cell_523/Sigmoid:y:0 lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_523/add_1AddV2lstm_cell_523/mul:z:0lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_2Sigmoidlstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_523/Relu_1Relulstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_2Mullstm_cell_523/Sigmoid_2:y:0"lstm_cell_523/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_523_matmul_readvariableop_resource.lstm_cell_523_matmul_1_readvariableop_resource-lstm_cell_523_biasadd_readvariableop_resource*
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
while_body_3173467*
condR
while_cond_3173466*K
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
NoOpNoOp%^lstm_cell_523/BiasAdd/ReadVariableOp$^lstm_cell_523/MatMul/ReadVariableOp&^lstm_cell_523/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_523/BiasAdd/ReadVariableOp$lstm_cell_523/BiasAdd/ReadVariableOp2J
#lstm_cell_523/MatMul/ReadVariableOp#lstm_cell_523/MatMul/ReadVariableOp2N
%lstm_cell_523/MatMul_1/ReadVariableOp%lstm_cell_523/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3170852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_524_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_524_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_524_matmul_readvariableop_resource:2(F
4while_lstm_cell_524_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_524_biasadd_readvariableop_resource:(??*while/lstm_cell_524/BiasAdd/ReadVariableOp?)while/lstm_cell_524/MatMul/ReadVariableOp?+while/lstm_cell_524/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_524/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_524/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_524/addAddV2$while/lstm_cell_524/MatMul:product:0&while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_524/BiasAddBiasAddwhile/lstm_cell_524/add:z:02while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_524/splitSplit,while/lstm_cell_524/split/split_dim:output:0$while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_524/SigmoidSigmoid"while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_1Sigmoid"while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mulMul!while/lstm_cell_524/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_524/ReluRelu"while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_1Mulwhile/lstm_cell_524/Sigmoid:y:0&while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/add_1AddV2while/lstm_cell_524/mul:z:0while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_2Sigmoid"while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_524/Relu_1Reluwhile/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_2Mul!while/lstm_cell_524/Sigmoid_2:y:0(while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_524/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_524/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_524/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_524/BiasAdd/ReadVariableOp*^while/lstm_cell_524/MatMul/ReadVariableOp,^while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_524_biasadd_readvariableop_resource5while_lstm_cell_524_biasadd_readvariableop_resource_0"n
4while_lstm_cell_524_matmul_1_readvariableop_resource6while_lstm_cell_524_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_524_matmul_readvariableop_resource4while_lstm_cell_524_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_524/BiasAdd/ReadVariableOp*while/lstm_cell_524/BiasAdd/ReadVariableOp2V
)while/lstm_cell_524/MatMul/ReadVariableOp)while/lstm_cell_524/MatMul/ReadVariableOp2Z
+while/lstm_cell_524/MatMul_1/ReadVariableOp+while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3172994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_522_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_522_matmul_readvariableop_resource:	?G
4while_lstm_cell_522_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_522_biasadd_readvariableop_resource:	???*while/lstm_cell_522/BiasAdd/ReadVariableOp?)while/lstm_cell_522/MatMul/ReadVariableOp?+while/lstm_cell_522/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_522/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_522/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_522/addAddV2$while/lstm_cell_522/MatMul:product:0&while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_522/BiasAddBiasAddwhile/lstm_cell_522/add:z:02while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_522/splitSplit,while/lstm_cell_522/split/split_dim:output:0$while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_522/SigmoidSigmoid"while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_1Sigmoid"while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mulMul!while/lstm_cell_522/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_522/ReluRelu"while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_1Mulwhile/lstm_cell_522/Sigmoid:y:0&while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/add_1AddV2while/lstm_cell_522/mul:z:0while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_2Sigmoid"while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_522/Relu_1Reluwhile/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_2Mul!while/lstm_cell_522/Sigmoid_2:y:0(while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_522/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_522/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_522/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_522/BiasAdd/ReadVariableOp*^while/lstm_cell_522/MatMul/ReadVariableOp,^while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_522_biasadd_readvariableop_resource5while_lstm_cell_522_biasadd_readvariableop_resource_0"n
4while_lstm_cell_522_matmul_1_readvariableop_resource6while_lstm_cell_522_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_522_matmul_readvariableop_resource4while_lstm_cell_522_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_522/BiasAdd/ReadVariableOp*while/lstm_cell_522/BiasAdd/ReadVariableOp2V
)while/lstm_cell_522/MatMul/ReadVariableOp)while/lstm_cell_522/MatMul/ReadVariableOp2Z
+while/lstm_cell_522/MatMul_1/ReadVariableOp+while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3169937

inputs(
lstm_cell_523_3169855:	d?(
lstm_cell_523_3169857:	2?$
lstm_cell_523_3169859:	?
identity??%lstm_cell_523/StatefulPartitionedCall?while;
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
%lstm_cell_523/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_523_3169855lstm_cell_523_3169857lstm_cell_523_3169859*
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3169854n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_523_3169855lstm_cell_523_3169857lstm_cell_523_3169859*
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
while_body_3169868*
condR
while_cond_3169867*K
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
NoOpNoOp&^lstm_cell_523/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_523/StatefulPartitionedCall%lstm_cell_523/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_3173137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_522_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_522_matmul_readvariableop_resource:	?G
4while_lstm_cell_522_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_522_biasadd_readvariableop_resource:	???*while/lstm_cell_522/BiasAdd/ReadVariableOp?)while/lstm_cell_522/MatMul/ReadVariableOp?+while/lstm_cell_522/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_522/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_522/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_522/addAddV2$while/lstm_cell_522/MatMul:product:0&while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_522/BiasAddBiasAddwhile/lstm_cell_522/add:z:02while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_522/splitSplit,while/lstm_cell_522/split/split_dim:output:0$while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_522/SigmoidSigmoid"while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_1Sigmoid"while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mulMul!while/lstm_cell_522/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_522/ReluRelu"while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_1Mulwhile/lstm_cell_522/Sigmoid:y:0&while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/add_1AddV2while/lstm_cell_522/mul:z:0while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_2Sigmoid"while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_522/Relu_1Reluwhile/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_2Mul!while/lstm_cell_522/Sigmoid_2:y:0(while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_522/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_522/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_522/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_522/BiasAdd/ReadVariableOp*^while/lstm_cell_522/MatMul/ReadVariableOp,^while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_522_biasadd_readvariableop_resource5while_lstm_cell_522_biasadd_readvariableop_resource_0"n
4while_lstm_cell_522_matmul_1_readvariableop_resource6while_lstm_cell_522_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_522_matmul_readvariableop_resource4while_lstm_cell_522_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_522/BiasAdd/ReadVariableOp*while/lstm_cell_522/BiasAdd/ReadVariableOp2V
)while/lstm_cell_522/MatMul/ReadVariableOp)while/lstm_cell_522/MatMul/ReadVariableOp2Z
+while/lstm_cell_522/MatMul_1/ReadVariableOp+while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170936

inputs>
,lstm_cell_524_matmul_readvariableop_resource:2(@
.lstm_cell_524_matmul_1_readvariableop_resource:
(;
-lstm_cell_524_biasadd_readvariableop_resource:(
identity??$lstm_cell_524/BiasAdd/ReadVariableOp?#lstm_cell_524/MatMul/ReadVariableOp?%lstm_cell_524/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_524/MatMul/ReadVariableOpReadVariableOp,lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_524/MatMulMatMulstrided_slice_2:output:0+lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_524/MatMul_1MatMulzeros:output:0-lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_524/addAddV2lstm_cell_524/MatMul:product:0 lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_524/BiasAddBiasAddlstm_cell_524/add:z:0,lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_524/splitSplit&lstm_cell_524/split/split_dim:output:0lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_524/SigmoidSigmoidlstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_1Sigmoidlstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_524/mulMullstm_cell_524/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_524/ReluRelulstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_1Mullstm_cell_524/Sigmoid:y:0 lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_524/add_1AddV2lstm_cell_524/mul:z:0lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_2Sigmoidlstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_524/Relu_1Relulstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_2Mullstm_cell_524/Sigmoid_2:y:0"lstm_cell_524/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_524_matmul_readvariableop_resource.lstm_cell_524_matmul_1_readvariableop_resource-lstm_cell_524_biasadd_readvariableop_resource*
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
while_body_3170852*
condR
while_cond_3170851*K
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
NoOpNoOp%^lstm_cell_524/BiasAdd/ReadVariableOp$^lstm_cell_524/MatMul/ReadVariableOp&^lstm_cell_524/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_524/BiasAdd/ReadVariableOp$lstm_cell_524/BiasAdd/ReadVariableOp2J
#lstm_cell_524/MatMul/ReadVariableOp#lstm_cell_524/MatMul/ReadVariableOp2N
%lstm_cell_524/MatMul_1/ReadVariableOp%lstm_cell_524/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
J__inference_sequential_89_layer_call_and_return_conditional_losses_3172178

inputsH
5lstm_267_lstm_cell_522_matmul_readvariableop_resource:	?J
7lstm_267_lstm_cell_522_matmul_1_readvariableop_resource:	d?E
6lstm_267_lstm_cell_522_biasadd_readvariableop_resource:	?H
5lstm_268_lstm_cell_523_matmul_readvariableop_resource:	d?J
7lstm_268_lstm_cell_523_matmul_1_readvariableop_resource:	2?E
6lstm_268_lstm_cell_523_biasadd_readvariableop_resource:	?G
5lstm_269_lstm_cell_524_matmul_readvariableop_resource:2(I
7lstm_269_lstm_cell_524_matmul_1_readvariableop_resource:
(D
6lstm_269_lstm_cell_524_biasadd_readvariableop_resource:(9
'dense_89_matmul_readvariableop_resource:
6
(dense_89_biasadd_readvariableop_resource:
identity??dense_89/BiasAdd/ReadVariableOp?dense_89/MatMul/ReadVariableOp?-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp?,lstm_267/lstm_cell_522/MatMul/ReadVariableOp?.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp?lstm_267/while?-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp?,lstm_268/lstm_cell_523/MatMul/ReadVariableOp?.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp?lstm_268/while?-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp?,lstm_269/lstm_cell_524/MatMul/ReadVariableOp?.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp?lstm_269/whileD
lstm_267/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_267/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_267/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_267/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_sliceStridedSlicelstm_267/Shape:output:0%lstm_267/strided_slice/stack:output:0'lstm_267/strided_slice/stack_1:output:0'lstm_267/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_267/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_267/zeros/packedPacklstm_267/strided_slice:output:0 lstm_267/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_267/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_267/zerosFilllstm_267/zeros/packed:output:0lstm_267/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_267/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_267/zeros_1/packedPacklstm_267/strided_slice:output:0"lstm_267/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_267/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_267/zeros_1Fill lstm_267/zeros_1/packed:output:0lstm_267/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_267/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_267/transpose	Transposeinputs lstm_267/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_267/Shape_1Shapelstm_267/transpose:y:0*
T0*
_output_shapes
:h
lstm_267/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_267/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_267/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_slice_1StridedSlicelstm_267/Shape_1:output:0'lstm_267/strided_slice_1/stack:output:0)lstm_267/strided_slice_1/stack_1:output:0)lstm_267/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_267/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_267/TensorArrayV2TensorListReserve-lstm_267/TensorArrayV2/element_shape:output:0!lstm_267/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_267/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_267/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_267/transpose:y:0Glstm_267/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_267/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_267/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_267/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_slice_2StridedSlicelstm_267/transpose:y:0'lstm_267/strided_slice_2/stack:output:0)lstm_267/strided_slice_2/stack_1:output:0)lstm_267/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_267/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp5lstm_267_lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_267/lstm_cell_522/MatMulMatMul!lstm_267/strided_slice_2:output:04lstm_267/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp7lstm_267_lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_267/lstm_cell_522/MatMul_1MatMullstm_267/zeros:output:06lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_267/lstm_cell_522/addAddV2'lstm_267/lstm_cell_522/MatMul:product:0)lstm_267/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp6lstm_267_lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_267/lstm_cell_522/BiasAddBiasAddlstm_267/lstm_cell_522/add:z:05lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_267/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_267/lstm_cell_522/splitSplit/lstm_267/lstm_cell_522/split/split_dim:output:0'lstm_267/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_267/lstm_cell_522/SigmoidSigmoid%lstm_267/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_267/lstm_cell_522/Sigmoid_1Sigmoid%lstm_267/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/mulMul$lstm_267/lstm_cell_522/Sigmoid_1:y:0lstm_267/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_267/lstm_cell_522/ReluRelu%lstm_267/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/mul_1Mul"lstm_267/lstm_cell_522/Sigmoid:y:0)lstm_267/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/add_1AddV2lstm_267/lstm_cell_522/mul:z:0 lstm_267/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_267/lstm_cell_522/Sigmoid_2Sigmoid%lstm_267/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_267/lstm_cell_522/Relu_1Relu lstm_267/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_267/lstm_cell_522/mul_2Mul$lstm_267/lstm_cell_522/Sigmoid_2:y:0+lstm_267/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_267/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_267/TensorArrayV2_1TensorListReserve/lstm_267/TensorArrayV2_1/element_shape:output:0!lstm_267/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_267/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_267/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_267/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_267/whileWhile$lstm_267/while/loop_counter:output:0*lstm_267/while/maximum_iterations:output:0lstm_267/time:output:0!lstm_267/TensorArrayV2_1:handle:0lstm_267/zeros:output:0lstm_267/zeros_1:output:0!lstm_267/strided_slice_1:output:0@lstm_267/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_267_lstm_cell_522_matmul_readvariableop_resource7lstm_267_lstm_cell_522_matmul_1_readvariableop_resource6lstm_267_lstm_cell_522_biasadd_readvariableop_resource*
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
lstm_267_while_body_3171810*'
condR
lstm_267_while_cond_3171809*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_267/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_267/TensorArrayV2Stack/TensorListStackTensorListStacklstm_267/while:output:3Blstm_267/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_267/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_267/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_267/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_267/strided_slice_3StridedSlice4lstm_267/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_267/strided_slice_3/stack:output:0)lstm_267/strided_slice_3/stack_1:output:0)lstm_267/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_267/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_267/transpose_1	Transpose4lstm_267/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_267/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_267/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_268/ShapeShapelstm_267/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_268/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_268/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_268/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_sliceStridedSlicelstm_268/Shape:output:0%lstm_268/strided_slice/stack:output:0'lstm_268/strided_slice/stack_1:output:0'lstm_268/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_268/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_268/zeros/packedPacklstm_268/strided_slice:output:0 lstm_268/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_268/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_268/zerosFilllstm_268/zeros/packed:output:0lstm_268/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_268/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_268/zeros_1/packedPacklstm_268/strided_slice:output:0"lstm_268/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_268/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_268/zeros_1Fill lstm_268/zeros_1/packed:output:0lstm_268/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_268/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_268/transpose	Transposelstm_267/transpose_1:y:0 lstm_268/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_268/Shape_1Shapelstm_268/transpose:y:0*
T0*
_output_shapes
:h
lstm_268/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_268/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_268/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_slice_1StridedSlicelstm_268/Shape_1:output:0'lstm_268/strided_slice_1/stack:output:0)lstm_268/strided_slice_1/stack_1:output:0)lstm_268/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_268/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_268/TensorArrayV2TensorListReserve-lstm_268/TensorArrayV2/element_shape:output:0!lstm_268/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_268/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_268/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_268/transpose:y:0Glstm_268/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_268/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_268/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_268/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_slice_2StridedSlicelstm_268/transpose:y:0'lstm_268/strided_slice_2/stack:output:0)lstm_268/strided_slice_2/stack_1:output:0)lstm_268/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_268/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp5lstm_268_lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_268/lstm_cell_523/MatMulMatMul!lstm_268/strided_slice_2:output:04lstm_268/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp7lstm_268_lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_268/lstm_cell_523/MatMul_1MatMullstm_268/zeros:output:06lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_268/lstm_cell_523/addAddV2'lstm_268/lstm_cell_523/MatMul:product:0)lstm_268/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp6lstm_268_lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_268/lstm_cell_523/BiasAddBiasAddlstm_268/lstm_cell_523/add:z:05lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_268/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_268/lstm_cell_523/splitSplit/lstm_268/lstm_cell_523/split/split_dim:output:0'lstm_268/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_268/lstm_cell_523/SigmoidSigmoid%lstm_268/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_268/lstm_cell_523/Sigmoid_1Sigmoid%lstm_268/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/mulMul$lstm_268/lstm_cell_523/Sigmoid_1:y:0lstm_268/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_268/lstm_cell_523/ReluRelu%lstm_268/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/mul_1Mul"lstm_268/lstm_cell_523/Sigmoid:y:0)lstm_268/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/add_1AddV2lstm_268/lstm_cell_523/mul:z:0 lstm_268/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_268/lstm_cell_523/Sigmoid_2Sigmoid%lstm_268/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_268/lstm_cell_523/Relu_1Relu lstm_268/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_268/lstm_cell_523/mul_2Mul$lstm_268/lstm_cell_523/Sigmoid_2:y:0+lstm_268/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_268/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_268/TensorArrayV2_1TensorListReserve/lstm_268/TensorArrayV2_1/element_shape:output:0!lstm_268/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_268/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_268/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_268/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_268/whileWhile$lstm_268/while/loop_counter:output:0*lstm_268/while/maximum_iterations:output:0lstm_268/time:output:0!lstm_268/TensorArrayV2_1:handle:0lstm_268/zeros:output:0lstm_268/zeros_1:output:0!lstm_268/strided_slice_1:output:0@lstm_268/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_268_lstm_cell_523_matmul_readvariableop_resource7lstm_268_lstm_cell_523_matmul_1_readvariableop_resource6lstm_268_lstm_cell_523_biasadd_readvariableop_resource*
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
lstm_268_while_body_3171949*'
condR
lstm_268_while_cond_3171948*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_268/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_268/TensorArrayV2Stack/TensorListStackTensorListStacklstm_268/while:output:3Blstm_268/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_268/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_268/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_268/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_268/strided_slice_3StridedSlice4lstm_268/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_268/strided_slice_3/stack:output:0)lstm_268/strided_slice_3/stack_1:output:0)lstm_268/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_268/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_268/transpose_1	Transpose4lstm_268/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_268/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_268/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_269/ShapeShapelstm_268/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_269/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_269/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_269/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_sliceStridedSlicelstm_269/Shape:output:0%lstm_269/strided_slice/stack:output:0'lstm_269/strided_slice/stack_1:output:0'lstm_269/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_269/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_269/zeros/packedPacklstm_269/strided_slice:output:0 lstm_269/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_269/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_269/zerosFilllstm_269/zeros/packed:output:0lstm_269/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_269/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_269/zeros_1/packedPacklstm_269/strided_slice:output:0"lstm_269/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_269/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_269/zeros_1Fill lstm_269/zeros_1/packed:output:0lstm_269/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_269/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_269/transpose	Transposelstm_268/transpose_1:y:0 lstm_269/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_269/Shape_1Shapelstm_269/transpose:y:0*
T0*
_output_shapes
:h
lstm_269/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_269/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_269/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_slice_1StridedSlicelstm_269/Shape_1:output:0'lstm_269/strided_slice_1/stack:output:0)lstm_269/strided_slice_1/stack_1:output:0)lstm_269/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_269/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_269/TensorArrayV2TensorListReserve-lstm_269/TensorArrayV2/element_shape:output:0!lstm_269/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_269/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_269/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_269/transpose:y:0Glstm_269/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_269/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_269/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_269/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_slice_2StridedSlicelstm_269/transpose:y:0'lstm_269/strided_slice_2/stack:output:0)lstm_269/strided_slice_2/stack_1:output:0)lstm_269/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_269/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp5lstm_269_lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_269/lstm_cell_524/MatMulMatMul!lstm_269/strided_slice_2:output:04lstm_269/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp7lstm_269_lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_269/lstm_cell_524/MatMul_1MatMullstm_269/zeros:output:06lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_269/lstm_cell_524/addAddV2'lstm_269/lstm_cell_524/MatMul:product:0)lstm_269/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp6lstm_269_lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_269/lstm_cell_524/BiasAddBiasAddlstm_269/lstm_cell_524/add:z:05lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_269/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_269/lstm_cell_524/splitSplit/lstm_269/lstm_cell_524/split/split_dim:output:0'lstm_269/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_269/lstm_cell_524/SigmoidSigmoid%lstm_269/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_269/lstm_cell_524/Sigmoid_1Sigmoid%lstm_269/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/mulMul$lstm_269/lstm_cell_524/Sigmoid_1:y:0lstm_269/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_269/lstm_cell_524/ReluRelu%lstm_269/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/mul_1Mul"lstm_269/lstm_cell_524/Sigmoid:y:0)lstm_269/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/add_1AddV2lstm_269/lstm_cell_524/mul:z:0 lstm_269/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_269/lstm_cell_524/Sigmoid_2Sigmoid%lstm_269/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_269/lstm_cell_524/Relu_1Relu lstm_269/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_269/lstm_cell_524/mul_2Mul$lstm_269/lstm_cell_524/Sigmoid_2:y:0+lstm_269/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_269/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_269/TensorArrayV2_1TensorListReserve/lstm_269/TensorArrayV2_1/element_shape:output:0!lstm_269/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_269/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_269/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_269/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_269/whileWhile$lstm_269/while/loop_counter:output:0*lstm_269/while/maximum_iterations:output:0lstm_269/time:output:0!lstm_269/TensorArrayV2_1:handle:0lstm_269/zeros:output:0lstm_269/zeros_1:output:0!lstm_269/strided_slice_1:output:0@lstm_269/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_269_lstm_cell_524_matmul_readvariableop_resource7lstm_269_lstm_cell_524_matmul_1_readvariableop_resource6lstm_269_lstm_cell_524_biasadd_readvariableop_resource*
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
lstm_269_while_body_3172088*'
condR
lstm_269_while_cond_3172087*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_269/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_269/TensorArrayV2Stack/TensorListStackTensorListStacklstm_269/while:output:3Blstm_269/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_269/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_269/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_269/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_269/strided_slice_3StridedSlice4lstm_269/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_269/strided_slice_3/stack:output:0)lstm_269/strided_slice_3/stack_1:output:0)lstm_269/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_269/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_269/transpose_1	Transpose4lstm_269/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_269/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_269/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_89/MatMulMatMul!lstm_269/strided_slice_3:output:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_89/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp.^lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp-^lstm_267/lstm_cell_522/MatMul/ReadVariableOp/^lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp^lstm_267/while.^lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp-^lstm_268/lstm_cell_523/MatMul/ReadVariableOp/^lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp^lstm_268/while.^lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp-^lstm_269/lstm_cell_524/MatMul/ReadVariableOp/^lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp^lstm_269/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp2^
-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp-lstm_267/lstm_cell_522/BiasAdd/ReadVariableOp2\
,lstm_267/lstm_cell_522/MatMul/ReadVariableOp,lstm_267/lstm_cell_522/MatMul/ReadVariableOp2`
.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp.lstm_267/lstm_cell_522/MatMul_1/ReadVariableOp2 
lstm_267/whilelstm_267/while2^
-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp-lstm_268/lstm_cell_523/BiasAdd/ReadVariableOp2\
,lstm_268/lstm_cell_523/MatMul/ReadVariableOp,lstm_268/lstm_cell_523/MatMul/ReadVariableOp2`
.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp.lstm_268/lstm_cell_523/MatMul_1/ReadVariableOp2 
lstm_268/whilelstm_268/while2^
-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp-lstm_269/lstm_cell_524/BiasAdd/ReadVariableOp2\
,lstm_269/lstm_cell_524/MatMul/ReadVariableOp,lstm_269/lstm_cell_524/MatMul/ReadVariableOp2`
.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp.lstm_269/lstm_cell_524/MatMul_1/ReadVariableOp2 
lstm_269/whilelstm_269/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_269_layer_call_and_return_conditional_losses_3170287

inputs'
lstm_cell_524_3170205:2('
lstm_cell_524_3170207:
(#
lstm_cell_524_3170209:(
identity??%lstm_cell_524/StatefulPartitionedCall?while;
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
%lstm_cell_524/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_524_3170205lstm_cell_524_3170207lstm_cell_524_3170209*
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170204n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_524_3170205lstm_cell_524_3170207lstm_cell_524_3170209*
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
while_body_3170218*
condR
while_cond_3170217*K
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
NoOpNoOp&^lstm_cell_524/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_524/StatefulPartitionedCall%lstm_cell_524/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3172851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_522_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_522_matmul_readvariableop_resource:	?G
4while_lstm_cell_522_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_522_biasadd_readvariableop_resource:	???*while/lstm_cell_522/BiasAdd/ReadVariableOp?)while/lstm_cell_522/MatMul/ReadVariableOp?+while/lstm_cell_522/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_522/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_522/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_522/addAddV2$while/lstm_cell_522/MatMul:product:0&while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_522/BiasAddBiasAddwhile/lstm_cell_522/add:z:02while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_522/splitSplit,while/lstm_cell_522/split/split_dim:output:0$while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_522/SigmoidSigmoid"while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_1Sigmoid"while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mulMul!while/lstm_cell_522/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_522/ReluRelu"while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_1Mulwhile/lstm_cell_522/Sigmoid:y:0&while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/add_1AddV2while/lstm_cell_522/mul:z:0while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_2Sigmoid"while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_522/Relu_1Reluwhile/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_2Mul!while/lstm_cell_522/Sigmoid_2:y:0(while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_522/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_522/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_522/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_522/BiasAdd/ReadVariableOp*^while/lstm_cell_522/MatMul/ReadVariableOp,^while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_522_biasadd_readvariableop_resource5while_lstm_cell_522_biasadd_readvariableop_resource_0"n
4while_lstm_cell_522_matmul_1_readvariableop_resource6while_lstm_cell_522_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_522_matmul_readvariableop_resource4while_lstm_cell_522_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_522/BiasAdd/ReadVariableOp*while/lstm_cell_522/BiasAdd/ReadVariableOp2V
)while/lstm_cell_522/MatMul/ReadVariableOp)while/lstm_cell_522/MatMul/ReadVariableOp2Z
+while/lstm_cell_522/MatMul_1/ReadVariableOp+while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3171398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_522_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_522_matmul_readvariableop_resource:	?G
4while_lstm_cell_522_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_522_biasadd_readvariableop_resource:	???*while/lstm_cell_522/BiasAdd/ReadVariableOp?)while/lstm_cell_522/MatMul/ReadVariableOp?+while/lstm_cell_522/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_522/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_522/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_522/addAddV2$while/lstm_cell_522/MatMul:product:0&while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_522/BiasAddBiasAddwhile/lstm_cell_522/add:z:02while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_522/splitSplit,while/lstm_cell_522/split/split_dim:output:0$while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_522/SigmoidSigmoid"while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_1Sigmoid"while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mulMul!while/lstm_cell_522/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_522/ReluRelu"while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_1Mulwhile/lstm_cell_522/Sigmoid:y:0&while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/add_1AddV2while/lstm_cell_522/mul:z:0while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_2Sigmoid"while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_522/Relu_1Reluwhile/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_2Mul!while/lstm_cell_522/Sigmoid_2:y:0(while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_522/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_522/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_522/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_522/BiasAdd/ReadVariableOp*^while/lstm_cell_522/MatMul/ReadVariableOp,^while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_522_biasadd_readvariableop_resource5while_lstm_cell_522_biasadd_readvariableop_resource_0"n
4while_lstm_cell_522_matmul_1_readvariableop_resource6while_lstm_cell_522_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_522_matmul_readvariableop_resource4while_lstm_cell_522_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_522/BiasAdd/ReadVariableOp*while/lstm_cell_522/BiasAdd/ReadVariableOp2V
)while/lstm_cell_522/MatMul/ReadVariableOp)while/lstm_cell_522/MatMul/ReadVariableOp2Z
+while/lstm_cell_522/MatMul_1/ReadVariableOp+while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3174226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_524_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_524_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_524_matmul_readvariableop_resource:2(F
4while_lstm_cell_524_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_524_biasadd_readvariableop_resource:(??*while/lstm_cell_524/BiasAdd/ReadVariableOp?)while/lstm_cell_524/MatMul/ReadVariableOp?+while/lstm_cell_524/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_524/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_524/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_524/addAddV2$while/lstm_cell_524/MatMul:product:0&while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_524/BiasAddBiasAddwhile/lstm_cell_524/add:z:02while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_524/splitSplit,while/lstm_cell_524/split/split_dim:output:0$while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_524/SigmoidSigmoid"while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_1Sigmoid"while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mulMul!while/lstm_cell_524/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_524/ReluRelu"while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_1Mulwhile/lstm_cell_524/Sigmoid:y:0&while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/add_1AddV2while/lstm_cell_524/mul:z:0while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_2Sigmoid"while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_524/Relu_1Reluwhile/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_2Mul!while/lstm_cell_524/Sigmoid_2:y:0(while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_524/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_524/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_524/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_524/BiasAdd/ReadVariableOp*^while/lstm_cell_524/MatMul/ReadVariableOp,^while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_524_biasadd_readvariableop_resource5while_lstm_cell_524_biasadd_readvariableop_resource_0"n
4while_lstm_cell_524_matmul_1_readvariableop_resource6while_lstm_cell_524_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_524_matmul_readvariableop_resource4while_lstm_cell_524_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_524/BiasAdd/ReadVariableOp*while/lstm_cell_524/BiasAdd/ReadVariableOp2V
)while/lstm_cell_524/MatMul/ReadVariableOp)while/lstm_cell_524/MatMul/ReadVariableOp2Z
+while/lstm_cell_524/MatMul_1/ReadVariableOp+while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3170851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3170851___redundant_placeholder05
1while_while_cond_3170851___redundant_placeholder15
1while_while_cond_3170851___redundant_placeholder25
1while_while_cond_3170851___redundant_placeholder3
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
while_body_3173324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_523_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_523_matmul_readvariableop_resource:	d?G
4while_lstm_cell_523_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_523_biasadd_readvariableop_resource:	???*while/lstm_cell_523/BiasAdd/ReadVariableOp?)while/lstm_cell_523/MatMul/ReadVariableOp?+while/lstm_cell_523/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_523/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_523/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_523/addAddV2$while/lstm_cell_523/MatMul:product:0&while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_523/BiasAddBiasAddwhile/lstm_cell_523/add:z:02while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_523/splitSplit,while/lstm_cell_523/split/split_dim:output:0$while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_523/SigmoidSigmoid"while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_1Sigmoid"while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mulMul!while/lstm_cell_523/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_523/ReluRelu"while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_1Mulwhile/lstm_cell_523/Sigmoid:y:0&while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/add_1AddV2while/lstm_cell_523/mul:z:0while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_523/Sigmoid_2Sigmoid"while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_523/Relu_1Reluwhile/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_523/mul_2Mul!while/lstm_cell_523/Sigmoid_2:y:0(while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_523/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_523/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_523/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_523/BiasAdd/ReadVariableOp*^while/lstm_cell_523/MatMul/ReadVariableOp,^while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_523_biasadd_readvariableop_resource5while_lstm_cell_523_biasadd_readvariableop_resource_0"n
4while_lstm_cell_523_matmul_1_readvariableop_resource6while_lstm_cell_523_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_523_matmul_readvariableop_resource4while_lstm_cell_523_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_523/BiasAdd/ReadVariableOp*while/lstm_cell_523/BiasAdd/ReadVariableOp2V
)while/lstm_cell_523/MatMul/ReadVariableOp)while/lstm_cell_523/MatMul/ReadVariableOp2Z
+while/lstm_cell_523/MatMul_1/ReadVariableOp+while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_267_layer_call_fn_3172627
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3169778|
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
?K
?
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174167
inputs_0>
,lstm_cell_524_matmul_readvariableop_resource:2(@
.lstm_cell_524_matmul_1_readvariableop_resource:
(;
-lstm_cell_524_biasadd_readvariableop_resource:(
identity??$lstm_cell_524/BiasAdd/ReadVariableOp?#lstm_cell_524/MatMul/ReadVariableOp?%lstm_cell_524/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_524/MatMul/ReadVariableOpReadVariableOp,lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_524/MatMulMatMulstrided_slice_2:output:0+lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_524/MatMul_1MatMulzeros:output:0-lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_524/addAddV2lstm_cell_524/MatMul:product:0 lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_524/BiasAddBiasAddlstm_cell_524/add:z:0,lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_524/splitSplit&lstm_cell_524/split/split_dim:output:0lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_524/SigmoidSigmoidlstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_1Sigmoidlstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_524/mulMullstm_cell_524/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_524/ReluRelulstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_1Mullstm_cell_524/Sigmoid:y:0 lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_524/add_1AddV2lstm_cell_524/mul:z:0lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_2Sigmoidlstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_524/Relu_1Relulstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_2Mullstm_cell_524/Sigmoid_2:y:0"lstm_cell_524/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_524_matmul_readvariableop_resource.lstm_cell_524_matmul_1_readvariableop_resource-lstm_cell_524_biasadd_readvariableop_resource*
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
while_body_3174083*
condR
while_cond_3174082*K
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
NoOpNoOp%^lstm_cell_524/BiasAdd/ReadVariableOp$^lstm_cell_524/MatMul/ReadVariableOp&^lstm_cell_524/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_524/BiasAdd/ReadVariableOp$lstm_cell_524/BiasAdd/ReadVariableOp2J
#lstm_cell_524/MatMul/ReadVariableOp#lstm_cell_524/MatMul/ReadVariableOp2N
%lstm_cell_524/MatMul_1/ReadVariableOp%lstm_cell_524/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174453

inputs>
,lstm_cell_524_matmul_readvariableop_resource:2(@
.lstm_cell_524_matmul_1_readvariableop_resource:
(;
-lstm_cell_524_biasadd_readvariableop_resource:(
identity??$lstm_cell_524/BiasAdd/ReadVariableOp?#lstm_cell_524/MatMul/ReadVariableOp?%lstm_cell_524/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_524/MatMul/ReadVariableOpReadVariableOp,lstm_cell_524_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_524/MatMulMatMulstrided_slice_2:output:0+lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_524_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_524/MatMul_1MatMulzeros:output:0-lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_524/addAddV2lstm_cell_524/MatMul:product:0 lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_524_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_524/BiasAddBiasAddlstm_cell_524/add:z:0,lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_524/splitSplit&lstm_cell_524/split/split_dim:output:0lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_524/SigmoidSigmoidlstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_1Sigmoidlstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_524/mulMullstm_cell_524/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_524/ReluRelulstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_1Mullstm_cell_524/Sigmoid:y:0 lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_524/add_1AddV2lstm_cell_524/mul:z:0lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_524/Sigmoid_2Sigmoidlstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_524/Relu_1Relulstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_524/mul_2Mullstm_cell_524/Sigmoid_2:y:0"lstm_cell_524/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_524_matmul_readvariableop_resource.lstm_cell_524_matmul_1_readvariableop_resource-lstm_cell_524_biasadd_readvariableop_resource*
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
while_body_3174369*
condR
while_cond_3174368*K
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
NoOpNoOp%^lstm_cell_524/BiasAdd/ReadVariableOp$^lstm_cell_524/MatMul/ReadVariableOp&^lstm_cell_524/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_524/BiasAdd/ReadVariableOp$lstm_cell_524/BiasAdd/ReadVariableOp2J
#lstm_cell_524/MatMul/ReadVariableOp#lstm_cell_524/MatMul/ReadVariableOp2N
%lstm_cell_524/MatMul_1/ReadVariableOp%lstm_cell_524/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3172707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3172707___redundant_placeholder05
1while_while_cond_3172707___redundant_placeholder15
1while_while_cond_3172707___redundant_placeholder25
1while_while_cond_3172707___redundant_placeholder3
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3172935
inputs_0?
,lstm_cell_522_matmul_readvariableop_resource:	?A
.lstm_cell_522_matmul_1_readvariableop_resource:	d?<
-lstm_cell_522_biasadd_readvariableop_resource:	?
identity??$lstm_cell_522/BiasAdd/ReadVariableOp?#lstm_cell_522/MatMul/ReadVariableOp?%lstm_cell_522/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_522/MatMul/ReadVariableOpReadVariableOp,lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_522/MatMulMatMulstrided_slice_2:output:0+lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_522/MatMul_1MatMulzeros:output:0-lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_522/addAddV2lstm_cell_522/MatMul:product:0 lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_522/BiasAddBiasAddlstm_cell_522/add:z:0,lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_522/splitSplit&lstm_cell_522/split/split_dim:output:0lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_522/SigmoidSigmoidlstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_1Sigmoidlstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_522/mulMullstm_cell_522/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_522/ReluRelulstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_1Mullstm_cell_522/Sigmoid:y:0 lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_522/add_1AddV2lstm_cell_522/mul:z:0lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_2Sigmoidlstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_522/Relu_1Relulstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_2Mullstm_cell_522/Sigmoid_2:y:0"lstm_cell_522/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_522_matmul_readvariableop_resource.lstm_cell_522_matmul_1_readvariableop_resource-lstm_cell_522_biasadd_readvariableop_resource*
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
while_body_3172851*
condR
while_cond_3172850*K
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
NoOpNoOp%^lstm_cell_522/BiasAdd/ReadVariableOp$^lstm_cell_522/MatMul/ReadVariableOp&^lstm_cell_522/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_522/BiasAdd/ReadVariableOp$lstm_cell_522/BiasAdd/ReadVariableOp2J
#lstm_cell_522/MatMul/ReadVariableOp#lstm_cell_522/MatMul/ReadVariableOp2N
%lstm_cell_522/MatMul_1/ReadVariableOp%lstm_cell_522/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3170204

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
E__inference_dense_89_layer_call_and_return_conditional_losses_3170954

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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173408
inputs_0?
,lstm_cell_523_matmul_readvariableop_resource:	d?A
.lstm_cell_523_matmul_1_readvariableop_resource:	2?<
-lstm_cell_523_biasadd_readvariableop_resource:	?
identity??$lstm_cell_523/BiasAdd/ReadVariableOp?#lstm_cell_523/MatMul/ReadVariableOp?%lstm_cell_523/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_523/MatMul/ReadVariableOpReadVariableOp,lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_523/MatMulMatMulstrided_slice_2:output:0+lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_523/MatMul_1MatMulzeros:output:0-lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_523/addAddV2lstm_cell_523/MatMul:product:0 lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_523/BiasAddBiasAddlstm_cell_523/add:z:0,lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_523/splitSplit&lstm_cell_523/split/split_dim:output:0lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_523/SigmoidSigmoidlstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_1Sigmoidlstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_523/mulMullstm_cell_523/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_523/ReluRelulstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_1Mullstm_cell_523/Sigmoid:y:0 lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_523/add_1AddV2lstm_cell_523/mul:z:0lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_2Sigmoidlstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_523/Relu_1Relulstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_2Mullstm_cell_523/Sigmoid_2:y:0"lstm_cell_523/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_523_matmul_readvariableop_resource.lstm_cell_523_matmul_1_readvariableop_resource-lstm_cell_523_biasadd_readvariableop_resource*
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
while_body_3173324*
condR
while_cond_3173323*K
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
NoOpNoOp%^lstm_cell_523/BiasAdd/ReadVariableOp$^lstm_cell_523/MatMul/ReadVariableOp&^lstm_cell_523/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_523/BiasAdd/ReadVariableOp$lstm_cell_523/BiasAdd/ReadVariableOp2J
#lstm_cell_523/MatMul/ReadVariableOp#lstm_cell_523/MatMul/ReadVariableOp2N
%lstm_cell_523/MatMul_1/ReadVariableOp%lstm_cell_523/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
)sequential_89_lstm_268_while_cond_3169207J
Fsequential_89_lstm_268_while_sequential_89_lstm_268_while_loop_counterP
Lsequential_89_lstm_268_while_sequential_89_lstm_268_while_maximum_iterations,
(sequential_89_lstm_268_while_placeholder.
*sequential_89_lstm_268_while_placeholder_1.
*sequential_89_lstm_268_while_placeholder_2.
*sequential_89_lstm_268_while_placeholder_3L
Hsequential_89_lstm_268_while_less_sequential_89_lstm_268_strided_slice_1c
_sequential_89_lstm_268_while_sequential_89_lstm_268_while_cond_3169207___redundant_placeholder0c
_sequential_89_lstm_268_while_sequential_89_lstm_268_while_cond_3169207___redundant_placeholder1c
_sequential_89_lstm_268_while_sequential_89_lstm_268_while_cond_3169207___redundant_placeholder2c
_sequential_89_lstm_268_while_sequential_89_lstm_268_while_cond_3169207___redundant_placeholder3)
%sequential_89_lstm_268_while_identity
?
!sequential_89/lstm_268/while/LessLess(sequential_89_lstm_268_while_placeholderHsequential_89_lstm_268_while_less_sequential_89_lstm_268_strided_slice_1*
T0*
_output_shapes
: y
%sequential_89/lstm_268/while/IdentityIdentity%sequential_89/lstm_268/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_89_lstm_268_while_identity.sequential_89/lstm_268/while/Identity:output:0*(
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
/__inference_lstm_cell_522_layer_call_fn_3174489

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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169504o
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
while_body_3171068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_524_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_524_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_524_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_524_matmul_readvariableop_resource:2(F
4while_lstm_cell_524_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_524_biasadd_readvariableop_resource:(??*while/lstm_cell_524/BiasAdd/ReadVariableOp?)while/lstm_cell_524/MatMul/ReadVariableOp?+while/lstm_cell_524/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_524/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_524_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_524/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_524/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_524/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_524_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_524/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_524/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_524/addAddV2$while/lstm_cell_524/MatMul:product:0&while/lstm_cell_524/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_524/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_524_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_524/BiasAddBiasAddwhile/lstm_cell_524/add:z:02while/lstm_cell_524/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_524/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_524/splitSplit,while/lstm_cell_524/split/split_dim:output:0$while/lstm_cell_524/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_524/SigmoidSigmoid"while/lstm_cell_524/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_1Sigmoid"while/lstm_cell_524/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mulMul!while/lstm_cell_524/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_524/ReluRelu"while/lstm_cell_524/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_1Mulwhile/lstm_cell_524/Sigmoid:y:0&while/lstm_cell_524/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/add_1AddV2while/lstm_cell_524/mul:z:0while/lstm_cell_524/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_524/Sigmoid_2Sigmoid"while/lstm_cell_524/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_524/Relu_1Reluwhile/lstm_cell_524/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_524/mul_2Mul!while/lstm_cell_524/Sigmoid_2:y:0(while/lstm_cell_524/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_524/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_524/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_524/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_524/BiasAdd/ReadVariableOp*^while/lstm_cell_524/MatMul/ReadVariableOp,^while/lstm_cell_524/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_524_biasadd_readvariableop_resource5while_lstm_cell_524_biasadd_readvariableop_resource_0"n
4while_lstm_cell_524_matmul_1_readvariableop_resource6while_lstm_cell_524_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_524_matmul_readvariableop_resource4while_lstm_cell_524_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_524/BiasAdd/ReadVariableOp*while/lstm_cell_524/BiasAdd/ReadVariableOp2V
)while/lstm_cell_524/MatMul/ReadVariableOp)while/lstm_cell_524/MatMul/ReadVariableOp2Z
+while/lstm_cell_524/MatMul_1/ReadVariableOp+while/lstm_cell_524/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?S
?
)sequential_89_lstm_267_while_body_3169069J
Fsequential_89_lstm_267_while_sequential_89_lstm_267_while_loop_counterP
Lsequential_89_lstm_267_while_sequential_89_lstm_267_while_maximum_iterations,
(sequential_89_lstm_267_while_placeholder.
*sequential_89_lstm_267_while_placeholder_1.
*sequential_89_lstm_267_while_placeholder_2.
*sequential_89_lstm_267_while_placeholder_3I
Esequential_89_lstm_267_while_sequential_89_lstm_267_strided_slice_1_0?
?sequential_89_lstm_267_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_267_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_89_lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0:	?`
Msequential_89_lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?[
Lsequential_89_lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0:	?)
%sequential_89_lstm_267_while_identity+
'sequential_89_lstm_267_while_identity_1+
'sequential_89_lstm_267_while_identity_2+
'sequential_89_lstm_267_while_identity_3+
'sequential_89_lstm_267_while_identity_4+
'sequential_89_lstm_267_while_identity_5G
Csequential_89_lstm_267_while_sequential_89_lstm_267_strided_slice_1?
sequential_89_lstm_267_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_267_tensorarrayunstack_tensorlistfromtensor\
Isequential_89_lstm_267_while_lstm_cell_522_matmul_readvariableop_resource:	?^
Ksequential_89_lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource:	d?Y
Jsequential_89_lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource:	???Asequential_89/lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp?@sequential_89/lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp?Bsequential_89/lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp?
Nsequential_89/lstm_267/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_89/lstm_267/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_89_lstm_267_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_267_tensorarrayunstack_tensorlistfromtensor_0(sequential_89_lstm_267_while_placeholderWsequential_89/lstm_267/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_89/lstm_267/while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOpKsequential_89_lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_89/lstm_267/while/lstm_cell_522/MatMulMatMulGsequential_89/lstm_267/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_89/lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_89/lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOpMsequential_89_lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_89/lstm_267/while/lstm_cell_522/MatMul_1MatMul*sequential_89_lstm_267_while_placeholder_2Jsequential_89/lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_89/lstm_267/while/lstm_cell_522/addAddV2;sequential_89/lstm_267/while/lstm_cell_522/MatMul:product:0=sequential_89/lstm_267/while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_89/lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOpLsequential_89_lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_89/lstm_267/while/lstm_cell_522/BiasAddBiasAdd2sequential_89/lstm_267/while/lstm_cell_522/add:z:0Isequential_89/lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_89/lstm_267/while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_89/lstm_267/while/lstm_cell_522/splitSplitCsequential_89/lstm_267/while/lstm_cell_522/split/split_dim:output:0;sequential_89/lstm_267/while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_89/lstm_267/while/lstm_cell_522/SigmoidSigmoid9sequential_89/lstm_267/while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_89/lstm_267/while/lstm_cell_522/Sigmoid_1Sigmoid9sequential_89/lstm_267/while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_89/lstm_267/while/lstm_cell_522/mulMul8sequential_89/lstm_267/while/lstm_cell_522/Sigmoid_1:y:0*sequential_89_lstm_267_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_89/lstm_267/while/lstm_cell_522/ReluRelu9sequential_89/lstm_267/while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_89/lstm_267/while/lstm_cell_522/mul_1Mul6sequential_89/lstm_267/while/lstm_cell_522/Sigmoid:y:0=sequential_89/lstm_267/while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_89/lstm_267/while/lstm_cell_522/add_1AddV22sequential_89/lstm_267/while/lstm_cell_522/mul:z:04sequential_89/lstm_267/while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_89/lstm_267/while/lstm_cell_522/Sigmoid_2Sigmoid9sequential_89/lstm_267/while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_89/lstm_267/while/lstm_cell_522/Relu_1Relu4sequential_89/lstm_267/while/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_89/lstm_267/while/lstm_cell_522/mul_2Mul8sequential_89/lstm_267/while/lstm_cell_522/Sigmoid_2:y:0?sequential_89/lstm_267/while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_89/lstm_267/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_89_lstm_267_while_placeholder_1(sequential_89_lstm_267_while_placeholder4sequential_89/lstm_267/while/lstm_cell_522/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_89/lstm_267/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_89/lstm_267/while/addAddV2(sequential_89_lstm_267_while_placeholder+sequential_89/lstm_267/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_89/lstm_267/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_89/lstm_267/while/add_1AddV2Fsequential_89_lstm_267_while_sequential_89_lstm_267_while_loop_counter-sequential_89/lstm_267/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_89/lstm_267/while/IdentityIdentity&sequential_89/lstm_267/while/add_1:z:0"^sequential_89/lstm_267/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_267/while/Identity_1IdentityLsequential_89_lstm_267_while_sequential_89_lstm_267_while_maximum_iterations"^sequential_89/lstm_267/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_267/while/Identity_2Identity$sequential_89/lstm_267/while/add:z:0"^sequential_89/lstm_267/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_267/while/Identity_3IdentityQsequential_89/lstm_267/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_89/lstm_267/while/NoOp*
T0*
_output_shapes
: ?
'sequential_89/lstm_267/while/Identity_4Identity4sequential_89/lstm_267/while/lstm_cell_522/mul_2:z:0"^sequential_89/lstm_267/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_89/lstm_267/while/Identity_5Identity4sequential_89/lstm_267/while/lstm_cell_522/add_1:z:0"^sequential_89/lstm_267/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_89/lstm_267/while/NoOpNoOpB^sequential_89/lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOpA^sequential_89/lstm_267/while/lstm_cell_522/MatMul/ReadVariableOpC^sequential_89/lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_89_lstm_267_while_identity.sequential_89/lstm_267/while/Identity:output:0"[
'sequential_89_lstm_267_while_identity_10sequential_89/lstm_267/while/Identity_1:output:0"[
'sequential_89_lstm_267_while_identity_20sequential_89/lstm_267/while/Identity_2:output:0"[
'sequential_89_lstm_267_while_identity_30sequential_89/lstm_267/while/Identity_3:output:0"[
'sequential_89_lstm_267_while_identity_40sequential_89/lstm_267/while/Identity_4:output:0"[
'sequential_89_lstm_267_while_identity_50sequential_89/lstm_267/while/Identity_5:output:0"?
Jsequential_89_lstm_267_while_lstm_cell_522_biasadd_readvariableop_resourceLsequential_89_lstm_267_while_lstm_cell_522_biasadd_readvariableop_resource_0"?
Ksequential_89_lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resourceMsequential_89_lstm_267_while_lstm_cell_522_matmul_1_readvariableop_resource_0"?
Isequential_89_lstm_267_while_lstm_cell_522_matmul_readvariableop_resourceKsequential_89_lstm_267_while_lstm_cell_522_matmul_readvariableop_resource_0"?
Csequential_89_lstm_267_while_sequential_89_lstm_267_strided_slice_1Esequential_89_lstm_267_while_sequential_89_lstm_267_strided_slice_1_0"?
sequential_89_lstm_267_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_267_tensorarrayunstack_tensorlistfromtensor?sequential_89_lstm_267_while_tensorarrayv2read_tensorlistgetitem_sequential_89_lstm_267_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_89/lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOpAsequential_89/lstm_267/while/lstm_cell_522/BiasAdd/ReadVariableOp2?
@sequential_89/lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp@sequential_89/lstm_267/while/lstm_cell_522/MatMul/ReadVariableOp2?
Bsequential_89/lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOpBsequential_89/lstm_267/while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171662
lstm_267_input#
lstm_267_3171635:	?#
lstm_267_3171637:	d?
lstm_267_3171639:	?#
lstm_268_3171642:	d?#
lstm_268_3171644:	2?
lstm_268_3171646:	?"
lstm_269_3171649:2("
lstm_269_3171651:
(
lstm_269_3171653:("
dense_89_3171656:

dense_89_3171658:
identity?? dense_89/StatefulPartitionedCall? lstm_267/StatefulPartitionedCall? lstm_268/StatefulPartitionedCall? lstm_269/StatefulPartitionedCall?
 lstm_267/StatefulPartitionedCallStatefulPartitionedCalllstm_267_inputlstm_267_3171635lstm_267_3171637lstm_267_3171639*
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3171482?
 lstm_268/StatefulPartitionedCallStatefulPartitionedCall)lstm_267/StatefulPartitionedCall:output:0lstm_268_3171642lstm_268_3171644lstm_268_3171646*
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3171317?
 lstm_269/StatefulPartitionedCallStatefulPartitionedCall)lstm_268/StatefulPartitionedCall:output:0lstm_269_3171649lstm_269_3171651lstm_269_3171653*
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3171152?
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)lstm_269/StatefulPartitionedCall:output:0dense_89_3171656dense_89_3171658*
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
E__inference_dense_89_layer_call_and_return_conditional_losses_3170954x
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_89/StatefulPartitionedCall!^lstm_267/StatefulPartitionedCall!^lstm_268/StatefulPartitionedCall!^lstm_269/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall2D
 lstm_267/StatefulPartitionedCall lstm_267/StatefulPartitionedCall2D
 lstm_268/StatefulPartitionedCall lstm_268/StatefulPartitionedCall2D
 lstm_269/StatefulPartitionedCall lstm_269/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_267_input
?8
?
while_body_3170552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_522_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_522_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_522_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_522_matmul_readvariableop_resource:	?G
4while_lstm_cell_522_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_522_biasadd_readvariableop_resource:	???*while/lstm_cell_522/BiasAdd/ReadVariableOp?)while/lstm_cell_522/MatMul/ReadVariableOp?+while/lstm_cell_522/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_522/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_522_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_522/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_522_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_522/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_522/addAddV2$while/lstm_cell_522/MatMul:product:0&while/lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_522_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_522/BiasAddBiasAddwhile/lstm_cell_522/add:z:02while/lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_522/splitSplit,while/lstm_cell_522/split/split_dim:output:0$while/lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_522/SigmoidSigmoid"while/lstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_1Sigmoid"while/lstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mulMul!while/lstm_cell_522/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_522/ReluRelu"while/lstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_1Mulwhile/lstm_cell_522/Sigmoid:y:0&while/lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/add_1AddV2while/lstm_cell_522/mul:z:0while/lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_522/Sigmoid_2Sigmoid"while/lstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_522/Relu_1Reluwhile/lstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_522/mul_2Mul!while/lstm_cell_522/Sigmoid_2:y:0(while/lstm_cell_522/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_522/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_522/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_522/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_522/BiasAdd/ReadVariableOp*^while/lstm_cell_522/MatMul/ReadVariableOp,^while/lstm_cell_522/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_522_biasadd_readvariableop_resource5while_lstm_cell_522_biasadd_readvariableop_resource_0"n
4while_lstm_cell_522_matmul_1_readvariableop_resource6while_lstm_cell_522_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_522_matmul_readvariableop_resource4while_lstm_cell_522_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_522/BiasAdd/ReadVariableOp*while/lstm_cell_522/BiasAdd/ReadVariableOp2V
)while/lstm_cell_522/MatMul/ReadVariableOp)while/lstm_cell_522/MatMul/ReadVariableOp2Z
+while/lstm_cell_522/MatMul_1/ReadVariableOp+while/lstm_cell_522/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3169504

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
while_body_3169868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_523_3169892_0:	d?0
while_lstm_cell_523_3169894_0:	2?,
while_lstm_cell_523_3169896_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_523_3169892:	d?.
while_lstm_cell_523_3169894:	2?*
while_lstm_cell_523_3169896:	???+while/lstm_cell_523/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_523/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_523_3169892_0while_lstm_cell_523_3169894_0while_lstm_cell_523_3169896_0*
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3169854?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_523/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_523/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_523/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_523/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_523_3169892while_lstm_cell_523_3169892_0"<
while_lstm_cell_523_3169894while_lstm_cell_523_3169894_0"<
while_lstm_cell_523_3169896while_lstm_cell_523_3169896_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_523/StatefulPartitionedCall+while/lstm_cell_523/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3173609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3173609___redundant_placeholder05
1while_while_cond_3173609___redundant_placeholder15
1while_while_cond_3173609___redundant_placeholder25
1while_while_cond_3173609___redundant_placeholder3
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3174636

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
*__inference_dense_89_layer_call_fn_3174462

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
E__inference_dense_89_layer_call_and_return_conditional_losses_3170954o
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3170786

inputs?
,lstm_cell_523_matmul_readvariableop_resource:	d?A
.lstm_cell_523_matmul_1_readvariableop_resource:	2?<
-lstm_cell_523_biasadd_readvariableop_resource:	?
identity??$lstm_cell_523/BiasAdd/ReadVariableOp?#lstm_cell_523/MatMul/ReadVariableOp?%lstm_cell_523/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_523/MatMul/ReadVariableOpReadVariableOp,lstm_cell_523_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_523/MatMulMatMulstrided_slice_2:output:0+lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_523_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_523/MatMul_1MatMulzeros:output:0-lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_523/addAddV2lstm_cell_523/MatMul:product:0 lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_523_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_523/BiasAddBiasAddlstm_cell_523/add:z:0,lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_523/splitSplit&lstm_cell_523/split/split_dim:output:0lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_523/SigmoidSigmoidlstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_1Sigmoidlstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_523/mulMullstm_cell_523/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_523/ReluRelulstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_1Mullstm_cell_523/Sigmoid:y:0 lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_523/add_1AddV2lstm_cell_523/mul:z:0lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_523/Sigmoid_2Sigmoidlstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_523/Relu_1Relulstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_523/mul_2Mullstm_cell_523/Sigmoid_2:y:0"lstm_cell_523/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_523_matmul_readvariableop_resource.lstm_cell_523_matmul_1_readvariableop_resource-lstm_cell_523_biasadd_readvariableop_resource*
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
while_body_3170702*
condR
while_cond_3170701*K
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
NoOpNoOp%^lstm_cell_523/BiasAdd/ReadVariableOp$^lstm_cell_523/MatMul/ReadVariableOp&^lstm_cell_523/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_523/BiasAdd/ReadVariableOp$lstm_cell_523/BiasAdd/ReadVariableOp2J
#lstm_cell_523/MatMul/ReadVariableOp#lstm_cell_523/MatMul/ReadVariableOp2N
%lstm_cell_523/MatMul_1/ReadVariableOp%lstm_cell_523/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_268_while_body_3172376.
*lstm_268_while_lstm_268_while_loop_counter4
0lstm_268_while_lstm_268_while_maximum_iterations
lstm_268_while_placeholder 
lstm_268_while_placeholder_1 
lstm_268_while_placeholder_2 
lstm_268_while_placeholder_3-
)lstm_268_while_lstm_268_strided_slice_1_0i
elstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0:	d?R
?lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0:	2?M
>lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0:	?
lstm_268_while_identity
lstm_268_while_identity_1
lstm_268_while_identity_2
lstm_268_while_identity_3
lstm_268_while_identity_4
lstm_268_while_identity_5+
'lstm_268_while_lstm_268_strided_slice_1g
clstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensorN
;lstm_268_while_lstm_cell_523_matmul_readvariableop_resource:	d?P
=lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource:	2?K
<lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource:	???3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp?2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp?4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp?
@lstm_268/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_268/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensor_0lstm_268_while_placeholderIlstm_268/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOpReadVariableOp=lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_268/while/lstm_cell_523/MatMulMatMul9lstm_268/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOpReadVariableOp?lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_268/while/lstm_cell_523/MatMul_1MatMullstm_268_while_placeholder_2<lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_268/while/lstm_cell_523/addAddV2-lstm_268/while/lstm_cell_523/MatMul:product:0/lstm_268/while/lstm_cell_523/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOpReadVariableOp>lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_268/while/lstm_cell_523/BiasAddBiasAdd$lstm_268/while/lstm_cell_523/add:z:0;lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_268/while/lstm_cell_523/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_268/while/lstm_cell_523/splitSplit5lstm_268/while/lstm_cell_523/split/split_dim:output:0-lstm_268/while/lstm_cell_523/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_268/while/lstm_cell_523/SigmoidSigmoid+lstm_268/while/lstm_cell_523/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_268/while/lstm_cell_523/Sigmoid_1Sigmoid+lstm_268/while/lstm_cell_523/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_268/while/lstm_cell_523/mulMul*lstm_268/while/lstm_cell_523/Sigmoid_1:y:0lstm_268_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_268/while/lstm_cell_523/ReluRelu+lstm_268/while/lstm_cell_523/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_268/while/lstm_cell_523/mul_1Mul(lstm_268/while/lstm_cell_523/Sigmoid:y:0/lstm_268/while/lstm_cell_523/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_268/while/lstm_cell_523/add_1AddV2$lstm_268/while/lstm_cell_523/mul:z:0&lstm_268/while/lstm_cell_523/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_268/while/lstm_cell_523/Sigmoid_2Sigmoid+lstm_268/while/lstm_cell_523/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_268/while/lstm_cell_523/Relu_1Relu&lstm_268/while/lstm_cell_523/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_268/while/lstm_cell_523/mul_2Mul*lstm_268/while/lstm_cell_523/Sigmoid_2:y:01lstm_268/while/lstm_cell_523/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_268/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_268_while_placeholder_1lstm_268_while_placeholder&lstm_268/while/lstm_cell_523/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_268/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_268/while/addAddV2lstm_268_while_placeholderlstm_268/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_268/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_268/while/add_1AddV2*lstm_268_while_lstm_268_while_loop_counterlstm_268/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_268/while/IdentityIdentitylstm_268/while/add_1:z:0^lstm_268/while/NoOp*
T0*
_output_shapes
: ?
lstm_268/while/Identity_1Identity0lstm_268_while_lstm_268_while_maximum_iterations^lstm_268/while/NoOp*
T0*
_output_shapes
: t
lstm_268/while/Identity_2Identitylstm_268/while/add:z:0^lstm_268/while/NoOp*
T0*
_output_shapes
: ?
lstm_268/while/Identity_3IdentityClstm_268/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_268/while/NoOp*
T0*
_output_shapes
: ?
lstm_268/while/Identity_4Identity&lstm_268/while/lstm_cell_523/mul_2:z:0^lstm_268/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_268/while/Identity_5Identity&lstm_268/while/lstm_cell_523/add_1:z:0^lstm_268/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_268/while/NoOpNoOp4^lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp3^lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp5^lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_268_while_identity lstm_268/while/Identity:output:0"?
lstm_268_while_identity_1"lstm_268/while/Identity_1:output:0"?
lstm_268_while_identity_2"lstm_268/while/Identity_2:output:0"?
lstm_268_while_identity_3"lstm_268/while/Identity_3:output:0"?
lstm_268_while_identity_4"lstm_268/while/Identity_4:output:0"?
lstm_268_while_identity_5"lstm_268/while/Identity_5:output:0"T
'lstm_268_while_lstm_268_strided_slice_1)lstm_268_while_lstm_268_strided_slice_1_0"~
<lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource>lstm_268_while_lstm_cell_523_biasadd_readvariableop_resource_0"?
=lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource?lstm_268_while_lstm_cell_523_matmul_1_readvariableop_resource_0"|
;lstm_268_while_lstm_cell_523_matmul_readvariableop_resource=lstm_268_while_lstm_cell_523_matmul_readvariableop_resource_0"?
clstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensorelstm_268_while_tensorarrayv2read_tensorlistgetitem_lstm_268_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp3lstm_268/while/lstm_cell_523/BiasAdd/ReadVariableOp2h
2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp2lstm_268/while/lstm_cell_523/MatMul/ReadVariableOp2l
4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp4lstm_268/while/lstm_cell_523/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3174766

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
/__inference_sequential_89_layer_call_fn_3171724

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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3170961o
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
E__inference_dense_89_layer_call_and_return_conditional_losses_3174472

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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3172792
inputs_0?
,lstm_cell_522_matmul_readvariableop_resource:	?A
.lstm_cell_522_matmul_1_readvariableop_resource:	d?<
-lstm_cell_522_biasadd_readvariableop_resource:	?
identity??$lstm_cell_522/BiasAdd/ReadVariableOp?#lstm_cell_522/MatMul/ReadVariableOp?%lstm_cell_522/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_522/MatMul/ReadVariableOpReadVariableOp,lstm_cell_522_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_522/MatMulMatMulstrided_slice_2:output:0+lstm_cell_522/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_522/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_522_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_522/MatMul_1MatMulzeros:output:0-lstm_cell_522/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_522/addAddV2lstm_cell_522/MatMul:product:0 lstm_cell_522/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_522/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_522_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_522/BiasAddBiasAddlstm_cell_522/add:z:0,lstm_cell_522/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_522/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_522/splitSplit&lstm_cell_522/split/split_dim:output:0lstm_cell_522/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_522/SigmoidSigmoidlstm_cell_522/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_1Sigmoidlstm_cell_522/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_522/mulMullstm_cell_522/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_522/ReluRelulstm_cell_522/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_1Mullstm_cell_522/Sigmoid:y:0 lstm_cell_522/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_522/add_1AddV2lstm_cell_522/mul:z:0lstm_cell_522/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_522/Sigmoid_2Sigmoidlstm_cell_522/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_522/Relu_1Relulstm_cell_522/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_522/mul_2Mullstm_cell_522/Sigmoid_2:y:0"lstm_cell_522/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_522_matmul_readvariableop_resource.lstm_cell_522_matmul_1_readvariableop_resource-lstm_cell_522_biasadd_readvariableop_resource*
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
while_body_3172708*
condR
while_cond_3172707*K
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
NoOpNoOp%^lstm_cell_522/BiasAdd/ReadVariableOp$^lstm_cell_522/MatMul/ReadVariableOp&^lstm_cell_522/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_522/BiasAdd/ReadVariableOp$lstm_cell_522/BiasAdd/ReadVariableOp2J
#lstm_cell_522/MatMul/ReadVariableOp#lstm_cell_522/MatMul/ReadVariableOp2N
%lstm_cell_522/MatMul_1/ReadVariableOp%lstm_cell_522/MatMul_1/ReadVariableOp2
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
lstm_267_input;
 serving_default_lstm_267_input:0?????????<
dense_890
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
2dense_89/kernel
:2dense_89/bias
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
0:.	?2lstm_267/lstm_cell_267/kernel
::8	d?2'lstm_267/lstm_cell_267/recurrent_kernel
*:(?2lstm_267/lstm_cell_267/bias
0:.	d?2lstm_268/lstm_cell_268/kernel
::8	2?2'lstm_268/lstm_cell_268/recurrent_kernel
*:(?2lstm_268/lstm_cell_268/bias
/:-2(2lstm_269/lstm_cell_269/kernel
9:7
(2'lstm_269/lstm_cell_269/recurrent_kernel
):'(2lstm_269/lstm_cell_269/bias
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
2Adam/dense_89/kernel/m
 :2Adam/dense_89/bias/m
5:3	?2$Adam/lstm_267/lstm_cell_267/kernel/m
?:=	d?2.Adam/lstm_267/lstm_cell_267/recurrent_kernel/m
/:-?2"Adam/lstm_267/lstm_cell_267/bias/m
5:3	d?2$Adam/lstm_268/lstm_cell_268/kernel/m
?:=	2?2.Adam/lstm_268/lstm_cell_268/recurrent_kernel/m
/:-?2"Adam/lstm_268/lstm_cell_268/bias/m
4:22(2$Adam/lstm_269/lstm_cell_269/kernel/m
>:<
(2.Adam/lstm_269/lstm_cell_269/recurrent_kernel/m
.:,(2"Adam/lstm_269/lstm_cell_269/bias/m
&:$
2Adam/dense_89/kernel/v
 :2Adam/dense_89/bias/v
5:3	?2$Adam/lstm_267/lstm_cell_267/kernel/v
?:=	d?2.Adam/lstm_267/lstm_cell_267/recurrent_kernel/v
/:-?2"Adam/lstm_267/lstm_cell_267/bias/v
5:3	d?2$Adam/lstm_268/lstm_cell_268/kernel/v
?:=	2?2.Adam/lstm_268/lstm_cell_268/recurrent_kernel/v
/:-?2"Adam/lstm_268/lstm_cell_268/bias/v
4:22(2$Adam/lstm_269/lstm_cell_269/kernel/v
>:<
(2.Adam/lstm_269/lstm_cell_269/recurrent_kernel/v
.:,(2"Adam/lstm_269/lstm_cell_269/bias/v
?2?
/__inference_sequential_89_layer_call_fn_3170986
/__inference_sequential_89_layer_call_fn_3171724
/__inference_sequential_89_layer_call_fn_3171751
/__inference_sequential_89_layer_call_fn_3171602?
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3172178
J__inference_sequential_89_layer_call_and_return_conditional_losses_3172605
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171632
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171662?
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
"__inference__wrapped_model_3169437lstm_267_input"?
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
*__inference_lstm_267_layer_call_fn_3172616
*__inference_lstm_267_layer_call_fn_3172627
*__inference_lstm_267_layer_call_fn_3172638
*__inference_lstm_267_layer_call_fn_3172649?
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3172792
E__inference_lstm_267_layer_call_and_return_conditional_losses_3172935
E__inference_lstm_267_layer_call_and_return_conditional_losses_3173078
E__inference_lstm_267_layer_call_and_return_conditional_losses_3173221?
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
*__inference_lstm_268_layer_call_fn_3173232
*__inference_lstm_268_layer_call_fn_3173243
*__inference_lstm_268_layer_call_fn_3173254
*__inference_lstm_268_layer_call_fn_3173265?
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173408
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173551
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173694
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173837?
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
*__inference_lstm_269_layer_call_fn_3173848
*__inference_lstm_269_layer_call_fn_3173859
*__inference_lstm_269_layer_call_fn_3173870
*__inference_lstm_269_layer_call_fn_3173881?
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174024
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174167
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174310
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174453?
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
*__inference_dense_89_layer_call_fn_3174462?
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
E__inference_dense_89_layer_call_and_return_conditional_losses_3174472?
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
%__inference_signature_wrapper_3171697lstm_267_input"?
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
/__inference_lstm_cell_522_layer_call_fn_3174489
/__inference_lstm_cell_522_layer_call_fn_3174506?
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3174538
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3174570?
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
/__inference_lstm_cell_523_layer_call_fn_3174587
/__inference_lstm_cell_523_layer_call_fn_3174604?
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3174636
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3174668?
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
/__inference_lstm_cell_524_layer_call_fn_3174685
/__inference_lstm_cell_524_layer_call_fn_3174702?
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3174734
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3174766?
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
"__inference__wrapped_model_3169437-./012345!";?8
1?.
,?)
lstm_267_input?????????
? "3?0
.
dense_89"?
dense_89??????????
E__inference_dense_89_layer_call_and_return_conditional_losses_3174472\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_89_layer_call_fn_3174462O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_267_layer_call_and_return_conditional_losses_3172792?-./O?L
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3172935?-./O?L
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3173078q-./??<
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
E__inference_lstm_267_layer_call_and_return_conditional_losses_3173221q-./??<
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
*__inference_lstm_267_layer_call_fn_3172616}-./O?L
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
*__inference_lstm_267_layer_call_fn_3172627}-./O?L
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
*__inference_lstm_267_layer_call_fn_3172638d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_267_layer_call_fn_3172649d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173408?012O?L
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173551?012O?L
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173694q012??<
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
E__inference_lstm_268_layer_call_and_return_conditional_losses_3173837q012??<
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
*__inference_lstm_268_layer_call_fn_3173232}012O?L
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
*__inference_lstm_268_layer_call_fn_3173243}012O?L
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
*__inference_lstm_268_layer_call_fn_3173254d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_268_layer_call_fn_3173265d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174024}345O?L
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174167}345O?L
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174310m345??<
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
E__inference_lstm_269_layer_call_and_return_conditional_losses_3174453m345??<
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
*__inference_lstm_269_layer_call_fn_3173848p345O?L
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
*__inference_lstm_269_layer_call_fn_3173859p345O?L
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
*__inference_lstm_269_layer_call_fn_3173870`345??<
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
*__inference_lstm_269_layer_call_fn_3173881`345??<
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3174538?-./??}
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
J__inference_lstm_cell_522_layer_call_and_return_conditional_losses_3174570?-./??}
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
/__inference_lstm_cell_522_layer_call_fn_3174489?-./??}
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
/__inference_lstm_cell_522_layer_call_fn_3174506?-./??}
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3174636?012??}
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
J__inference_lstm_cell_523_layer_call_and_return_conditional_losses_3174668?012??}
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
/__inference_lstm_cell_523_layer_call_fn_3174587?012??}
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
/__inference_lstm_cell_523_layer_call_fn_3174604?012??}
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3174734?345??}
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
J__inference_lstm_cell_524_layer_call_and_return_conditional_losses_3174766?345??}
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
/__inference_lstm_cell_524_layer_call_fn_3174685?345??}
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
/__inference_lstm_cell_524_layer_call_fn_3174702?345??}
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171632y-./012345!"C?@
9?6
,?)
lstm_267_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_89_layer_call_and_return_conditional_losses_3171662y-./012345!"C?@
9?6
,?)
lstm_267_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_89_layer_call_and_return_conditional_losses_3172178q-./012345!";?8
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
J__inference_sequential_89_layer_call_and_return_conditional_losses_3172605q-./012345!";?8
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
/__inference_sequential_89_layer_call_fn_3170986l-./012345!"C?@
9?6
,?)
lstm_267_input?????????
p 

 
? "???????????
/__inference_sequential_89_layer_call_fn_3171602l-./012345!"C?@
9?6
,?)
lstm_267_input?????????
p

 
? "???????????
/__inference_sequential_89_layer_call_fn_3171724d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_89_layer_call_fn_3171751d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3171697?-./012345!"M?J
? 
C?@
>
lstm_267_input,?)
lstm_267_input?????????"3?0
.
dense_89"?
dense_89?????????