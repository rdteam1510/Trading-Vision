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
dense_227/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_227/kernel
u
$dense_227/kernel/Read/ReadVariableOpReadVariableOpdense_227/kernel*
_output_shapes

:
*
dtype0
t
dense_227/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_227/bias
m
"dense_227/bias/Read/ReadVariableOpReadVariableOpdense_227/bias*
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
lstm_681/lstm_cell_681/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_681/lstm_cell_681/kernel
?
1lstm_681/lstm_cell_681/kernel/Read/ReadVariableOpReadVariableOplstm_681/lstm_cell_681/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_681/lstm_cell_681/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_681/lstm_cell_681/recurrent_kernel
?
;lstm_681/lstm_cell_681/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_681/lstm_cell_681/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_681/lstm_cell_681/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_681/lstm_cell_681/bias
?
/lstm_681/lstm_cell_681/bias/Read/ReadVariableOpReadVariableOplstm_681/lstm_cell_681/bias*
_output_shapes	
:?*
dtype0
?
lstm_682/lstm_cell_682/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_682/lstm_cell_682/kernel
?
1lstm_682/lstm_cell_682/kernel/Read/ReadVariableOpReadVariableOplstm_682/lstm_cell_682/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_682/lstm_cell_682/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_682/lstm_cell_682/recurrent_kernel
?
;lstm_682/lstm_cell_682/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_682/lstm_cell_682/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_682/lstm_cell_682/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_682/lstm_cell_682/bias
?
/lstm_682/lstm_cell_682/bias/Read/ReadVariableOpReadVariableOplstm_682/lstm_cell_682/bias*
_output_shapes	
:?*
dtype0
?
lstm_683/lstm_cell_683/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_683/lstm_cell_683/kernel
?
1lstm_683/lstm_cell_683/kernel/Read/ReadVariableOpReadVariableOplstm_683/lstm_cell_683/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_683/lstm_cell_683/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_683/lstm_cell_683/recurrent_kernel
?
;lstm_683/lstm_cell_683/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_683/lstm_cell_683/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_683/lstm_cell_683/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_683/lstm_cell_683/bias
?
/lstm_683/lstm_cell_683/bias/Read/ReadVariableOpReadVariableOplstm_683/lstm_cell_683/bias*
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
Adam/dense_227/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_227/kernel/m
?
+Adam/dense_227/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_227/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_227/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_227/bias/m
{
)Adam/dense_227/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_227/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_681/lstm_cell_681/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_681/lstm_cell_681/kernel/m
?
8Adam/lstm_681/lstm_cell_681/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_681/lstm_cell_681/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_681/lstm_cell_681/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_681/lstm_cell_681/recurrent_kernel/m
?
BAdam/lstm_681/lstm_cell_681/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_681/lstm_cell_681/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_681/lstm_cell_681/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_681/lstm_cell_681/bias/m
?
6Adam/lstm_681/lstm_cell_681/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_681/lstm_cell_681/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_682/lstm_cell_682/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_682/lstm_cell_682/kernel/m
?
8Adam/lstm_682/lstm_cell_682/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_682/lstm_cell_682/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_682/lstm_cell_682/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_682/lstm_cell_682/recurrent_kernel/m
?
BAdam/lstm_682/lstm_cell_682/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_682/lstm_cell_682/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_682/lstm_cell_682/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_682/lstm_cell_682/bias/m
?
6Adam/lstm_682/lstm_cell_682/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_682/lstm_cell_682/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_683/lstm_cell_683/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_683/lstm_cell_683/kernel/m
?
8Adam/lstm_683/lstm_cell_683/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_683/lstm_cell_683/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_683/lstm_cell_683/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m
?
BAdam/lstm_683/lstm_cell_683/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_683/lstm_cell_683/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_683/lstm_cell_683/bias/m
?
6Adam/lstm_683/lstm_cell_683/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_683/lstm_cell_683/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_227/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_227/kernel/v
?
+Adam/dense_227/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_227/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_227/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_227/bias/v
{
)Adam/dense_227/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_227/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_681/lstm_cell_681/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_681/lstm_cell_681/kernel/v
?
8Adam/lstm_681/lstm_cell_681/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_681/lstm_cell_681/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_681/lstm_cell_681/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_681/lstm_cell_681/recurrent_kernel/v
?
BAdam/lstm_681/lstm_cell_681/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_681/lstm_cell_681/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_681/lstm_cell_681/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_681/lstm_cell_681/bias/v
?
6Adam/lstm_681/lstm_cell_681/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_681/lstm_cell_681/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_682/lstm_cell_682/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_682/lstm_cell_682/kernel/v
?
8Adam/lstm_682/lstm_cell_682/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_682/lstm_cell_682/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_682/lstm_cell_682/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_682/lstm_cell_682/recurrent_kernel/v
?
BAdam/lstm_682/lstm_cell_682/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_682/lstm_cell_682/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_682/lstm_cell_682/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_682/lstm_cell_682/bias/v
?
6Adam/lstm_682/lstm_cell_682/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_682/lstm_cell_682/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_683/lstm_cell_683/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_683/lstm_cell_683/kernel/v
?
8Adam/lstm_683/lstm_cell_683/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_683/lstm_cell_683/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_683/lstm_cell_683/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v
?
BAdam/lstm_683/lstm_cell_683/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_683/lstm_cell_683/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_683/lstm_cell_683/bias/v
?
6Adam/lstm_683/lstm_cell_683/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_683/lstm_cell_683/bias/v*
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
VARIABLE_VALUEdense_227/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_227/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_681/lstm_cell_681/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_681/lstm_cell_681/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_681/lstm_cell_681/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_682/lstm_cell_682/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_682/lstm_cell_682/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_682/lstm_cell_682/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_683/lstm_cell_683/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_683/lstm_cell_683/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_683/lstm_cell_683/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_227/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_227/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_681/lstm_cell_681/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_681/lstm_cell_681/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_681/lstm_cell_681/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_682/lstm_cell_682/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_682/lstm_cell_682/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_682/lstm_cell_682/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_683/lstm_cell_683/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_683/lstm_cell_683/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_683/lstm_cell_683/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_227/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_227/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_681/lstm_cell_681/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_681/lstm_cell_681/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_681/lstm_cell_681/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_682/lstm_cell_682/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_682/lstm_cell_682/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_682/lstm_cell_682/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_683/lstm_cell_683/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_683/lstm_cell_683/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_683/lstm_cell_683/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_681_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_681_inputlstm_681/lstm_cell_681/kernel'lstm_681/lstm_cell_681/recurrent_kernellstm_681/lstm_cell_681/biaslstm_682/lstm_cell_682/kernel'lstm_682/lstm_cell_682/recurrent_kernellstm_682/lstm_cell_682/biaslstm_683/lstm_cell_683/kernel'lstm_683/lstm_cell_683/recurrent_kernellstm_683/lstm_cell_683/biasdense_227/kerneldense_227/bias*
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
%__inference_signature_wrapper_3809019
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_227/kernel/Read/ReadVariableOp"dense_227/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_681/lstm_cell_681/kernel/Read/ReadVariableOp;lstm_681/lstm_cell_681/recurrent_kernel/Read/ReadVariableOp/lstm_681/lstm_cell_681/bias/Read/ReadVariableOp1lstm_682/lstm_cell_682/kernel/Read/ReadVariableOp;lstm_682/lstm_cell_682/recurrent_kernel/Read/ReadVariableOp/lstm_682/lstm_cell_682/bias/Read/ReadVariableOp1lstm_683/lstm_cell_683/kernel/Read/ReadVariableOp;lstm_683/lstm_cell_683/recurrent_kernel/Read/ReadVariableOp/lstm_683/lstm_cell_683/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_227/kernel/m/Read/ReadVariableOp)Adam/dense_227/bias/m/Read/ReadVariableOp8Adam/lstm_681/lstm_cell_681/kernel/m/Read/ReadVariableOpBAdam/lstm_681/lstm_cell_681/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_681/lstm_cell_681/bias/m/Read/ReadVariableOp8Adam/lstm_682/lstm_cell_682/kernel/m/Read/ReadVariableOpBAdam/lstm_682/lstm_cell_682/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_682/lstm_cell_682/bias/m/Read/ReadVariableOp8Adam/lstm_683/lstm_cell_683/kernel/m/Read/ReadVariableOpBAdam/lstm_683/lstm_cell_683/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_683/lstm_cell_683/bias/m/Read/ReadVariableOp+Adam/dense_227/kernel/v/Read/ReadVariableOp)Adam/dense_227/bias/v/Read/ReadVariableOp8Adam/lstm_681/lstm_cell_681/kernel/v/Read/ReadVariableOpBAdam/lstm_681/lstm_cell_681/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_681/lstm_cell_681/bias/v/Read/ReadVariableOp8Adam/lstm_682/lstm_cell_682/kernel/v/Read/ReadVariableOpBAdam/lstm_682/lstm_cell_682/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_682/lstm_cell_682/bias/v/Read/ReadVariableOp8Adam/lstm_683/lstm_cell_683/kernel/v/Read/ReadVariableOpBAdam/lstm_683/lstm_cell_683/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_683/lstm_cell_683/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3812231
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_227/kerneldense_227/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_681/lstm_cell_681/kernel'lstm_681/lstm_cell_681/recurrent_kernellstm_681/lstm_cell_681/biaslstm_682/lstm_cell_682/kernel'lstm_682/lstm_cell_682/recurrent_kernellstm_682/lstm_cell_682/biaslstm_683/lstm_cell_683/kernel'lstm_683/lstm_cell_683/recurrent_kernellstm_683/lstm_cell_683/biastotalcountAdam/dense_227/kernel/mAdam/dense_227/bias/m$Adam/lstm_681/lstm_cell_681/kernel/m.Adam/lstm_681/lstm_cell_681/recurrent_kernel/m"Adam/lstm_681/lstm_cell_681/bias/m$Adam/lstm_682/lstm_cell_682/kernel/m.Adam/lstm_682/lstm_cell_682/recurrent_kernel/m"Adam/lstm_682/lstm_cell_682/bias/m$Adam/lstm_683/lstm_cell_683/kernel/m.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m"Adam/lstm_683/lstm_cell_683/bias/mAdam/dense_227/kernel/vAdam/dense_227/bias/v$Adam/lstm_681/lstm_cell_681/kernel/v.Adam/lstm_681/lstm_cell_681/recurrent_kernel/v"Adam/lstm_681/lstm_cell_681/bias/v$Adam/lstm_682/lstm_cell_682/kernel/v.Adam/lstm_682/lstm_cell_682/recurrent_kernel/v"Adam/lstm_682/lstm_cell_682/bias/v$Adam/lstm_683/lstm_cell_683/kernel/v.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v"Adam/lstm_683/lstm_cell_683/bias/v*4
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
#__inference__traced_restore_3812361??+
?T
?
*sequential_227_lstm_683_while_body_3806669L
Hsequential_227_lstm_683_while_sequential_227_lstm_683_while_loop_counterR
Nsequential_227_lstm_683_while_sequential_227_lstm_683_while_maximum_iterations-
)sequential_227_lstm_683_while_placeholder/
+sequential_227_lstm_683_while_placeholder_1/
+sequential_227_lstm_683_while_placeholder_2/
+sequential_227_lstm_683_while_placeholder_3K
Gsequential_227_lstm_683_while_sequential_227_lstm_683_strided_slice_1_0?
?sequential_227_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_683_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_227_lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0:2(`
Nsequential_227_lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0:
([
Msequential_227_lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0:(*
&sequential_227_lstm_683_while_identity,
(sequential_227_lstm_683_while_identity_1,
(sequential_227_lstm_683_while_identity_2,
(sequential_227_lstm_683_while_identity_3,
(sequential_227_lstm_683_while_identity_4,
(sequential_227_lstm_683_while_identity_5I
Esequential_227_lstm_683_while_sequential_227_lstm_683_strided_slice_1?
?sequential_227_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_683_tensorarrayunstack_tensorlistfromtensor\
Jsequential_227_lstm_683_while_lstm_cell_629_matmul_readvariableop_resource:2(^
Lsequential_227_lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource:
(Y
Ksequential_227_lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource:(??Bsequential_227/lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp?Asequential_227/lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp?Csequential_227/lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp?
Osequential_227/lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_227/lstm_683/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_227_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_683_tensorarrayunstack_tensorlistfromtensor_0)sequential_227_lstm_683_while_placeholderXsequential_227/lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_227/lstm_683/while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOpLsequential_227_lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_227/lstm_683/while/lstm_cell_629/MatMulMatMulHsequential_227/lstm_683/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_227/lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_227/lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOpNsequential_227_lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_227/lstm_683/while/lstm_cell_629/MatMul_1MatMul+sequential_227_lstm_683_while_placeholder_2Ksequential_227/lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_227/lstm_683/while/lstm_cell_629/addAddV2<sequential_227/lstm_683/while/lstm_cell_629/MatMul:product:0>sequential_227/lstm_683/while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_227/lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOpMsequential_227_lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_227/lstm_683/while/lstm_cell_629/BiasAddBiasAdd3sequential_227/lstm_683/while/lstm_cell_629/add:z:0Jsequential_227/lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_227/lstm_683/while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_227/lstm_683/while/lstm_cell_629/splitSplitDsequential_227/lstm_683/while/lstm_cell_629/split/split_dim:output:0<sequential_227/lstm_683/while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_227/lstm_683/while/lstm_cell_629/SigmoidSigmoid:sequential_227/lstm_683/while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_227/lstm_683/while/lstm_cell_629/Sigmoid_1Sigmoid:sequential_227/lstm_683/while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_227/lstm_683/while/lstm_cell_629/mulMul9sequential_227/lstm_683/while/lstm_cell_629/Sigmoid_1:y:0+sequential_227_lstm_683_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_227/lstm_683/while/lstm_cell_629/ReluRelu:sequential_227/lstm_683/while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_227/lstm_683/while/lstm_cell_629/mul_1Mul7sequential_227/lstm_683/while/lstm_cell_629/Sigmoid:y:0>sequential_227/lstm_683/while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_227/lstm_683/while/lstm_cell_629/add_1AddV23sequential_227/lstm_683/while/lstm_cell_629/mul:z:05sequential_227/lstm_683/while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_227/lstm_683/while/lstm_cell_629/Sigmoid_2Sigmoid:sequential_227/lstm_683/while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_227/lstm_683/while/lstm_cell_629/Relu_1Relu5sequential_227/lstm_683/while/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_227/lstm_683/while/lstm_cell_629/mul_2Mul9sequential_227/lstm_683/while/lstm_cell_629/Sigmoid_2:y:0@sequential_227/lstm_683/while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_227/lstm_683/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_227_lstm_683_while_placeholder_1)sequential_227_lstm_683_while_placeholder5sequential_227/lstm_683/while/lstm_cell_629/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_227/lstm_683/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_227/lstm_683/while/addAddV2)sequential_227_lstm_683_while_placeholder,sequential_227/lstm_683/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_227/lstm_683/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_227/lstm_683/while/add_1AddV2Hsequential_227_lstm_683_while_sequential_227_lstm_683_while_loop_counter.sequential_227/lstm_683/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_227/lstm_683/while/IdentityIdentity'sequential_227/lstm_683/while/add_1:z:0#^sequential_227/lstm_683/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_683/while/Identity_1IdentityNsequential_227_lstm_683_while_sequential_227_lstm_683_while_maximum_iterations#^sequential_227/lstm_683/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_683/while/Identity_2Identity%sequential_227/lstm_683/while/add:z:0#^sequential_227/lstm_683/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_683/while/Identity_3IdentityRsequential_227/lstm_683/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_227/lstm_683/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_683/while/Identity_4Identity5sequential_227/lstm_683/while/lstm_cell_629/mul_2:z:0#^sequential_227/lstm_683/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_227/lstm_683/while/Identity_5Identity5sequential_227/lstm_683/while/lstm_cell_629/add_1:z:0#^sequential_227/lstm_683/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_227/lstm_683/while/NoOpNoOpC^sequential_227/lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOpB^sequential_227/lstm_683/while/lstm_cell_629/MatMul/ReadVariableOpD^sequential_227/lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_227_lstm_683_while_identity/sequential_227/lstm_683/while/Identity:output:0"]
(sequential_227_lstm_683_while_identity_11sequential_227/lstm_683/while/Identity_1:output:0"]
(sequential_227_lstm_683_while_identity_21sequential_227/lstm_683/while/Identity_2:output:0"]
(sequential_227_lstm_683_while_identity_31sequential_227/lstm_683/while/Identity_3:output:0"]
(sequential_227_lstm_683_while_identity_41sequential_227/lstm_683/while/Identity_4:output:0"]
(sequential_227_lstm_683_while_identity_51sequential_227/lstm_683/while/Identity_5:output:0"?
Ksequential_227_lstm_683_while_lstm_cell_629_biasadd_readvariableop_resourceMsequential_227_lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0"?
Lsequential_227_lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resourceNsequential_227_lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0"?
Jsequential_227_lstm_683_while_lstm_cell_629_matmul_readvariableop_resourceLsequential_227_lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0"?
Esequential_227_lstm_683_while_sequential_227_lstm_683_strided_slice_1Gsequential_227_lstm_683_while_sequential_227_lstm_683_strided_slice_1_0"?
?sequential_227_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_683_tensorarrayunstack_tensorlistfromtensor?sequential_227_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_683_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_227/lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOpBsequential_227/lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp2?
Asequential_227/lstm_683/while/lstm_cell_629/MatMul/ReadVariableOpAsequential_227/lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp2?
Csequential_227/lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOpCsequential_227/lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_682_while_cond_3809270.
*lstm_682_while_lstm_682_while_loop_counter4
0lstm_682_while_lstm_682_while_maximum_iterations
lstm_682_while_placeholder 
lstm_682_while_placeholder_1 
lstm_682_while_placeholder_2 
lstm_682_while_placeholder_30
,lstm_682_while_less_lstm_682_strided_slice_1G
Clstm_682_while_lstm_682_while_cond_3809270___redundant_placeholder0G
Clstm_682_while_lstm_682_while_cond_3809270___redundant_placeholder1G
Clstm_682_while_lstm_682_while_cond_3809270___redundant_placeholder2G
Clstm_682_while_lstm_682_while_cond_3809270___redundant_placeholder3
lstm_682_while_identity
?
lstm_682/while/LessLesslstm_682_while_placeholder,lstm_682_while_less_lstm_682_strided_slice_1*
T0*
_output_shapes
: ]
lstm_682/while/IdentityIdentitylstm_682/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_682_while_identity lstm_682/while/Identity:output:0*(
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3807800

inputs'
lstm_cell_629_3807718:2('
lstm_cell_629_3807720:
(#
lstm_cell_629_3807722:(
identity??%lstm_cell_629/StatefulPartitionedCall?while;
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
%lstm_cell_629/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_629_3807718lstm_cell_629_3807720lstm_cell_629_3807722*
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807672n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_629_3807718lstm_cell_629_3807720lstm_cell_629_3807722*
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
while_body_3807731*
condR
while_cond_3807730*K
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
NoOpNoOp&^lstm_cell_629/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_629/StatefulPartitionedCall%lstm_cell_629/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3808389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3808389___redundant_placeholder05
1while_while_cond_3808389___redundant_placeholder15
1while_while_cond_3808389___redundant_placeholder25
1while_while_cond_3808389___redundant_placeholder3
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

lstm_683_while_body_3809837.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_3-
)lstm_683_while_lstm_683_strided_slice_1_0i
elstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0:2(Q
?lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(L
>lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0:(
lstm_683_while_identity
lstm_683_while_identity_1
lstm_683_while_identity_2
lstm_683_while_identity_3
lstm_683_while_identity_4
lstm_683_while_identity_5+
'lstm_683_while_lstm_683_strided_slice_1g
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorM
;lstm_683_while_lstm_cell_629_matmul_readvariableop_resource:2(O
=lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource:
(J
<lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource:(??3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp?2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp?4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp?
@lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_683/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0lstm_683_while_placeholderIlstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp=lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_683/while/lstm_cell_629/MatMulMatMul9lstm_683/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp?lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_683/while/lstm_cell_629/MatMul_1MatMullstm_683_while_placeholder_2<lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_683/while/lstm_cell_629/addAddV2-lstm_683/while/lstm_cell_629/MatMul:product:0/lstm_683/while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp>lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_683/while/lstm_cell_629/BiasAddBiasAdd$lstm_683/while/lstm_cell_629/add:z:0;lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_683/while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_683/while/lstm_cell_629/splitSplit5lstm_683/while/lstm_cell_629/split/split_dim:output:0-lstm_683/while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_683/while/lstm_cell_629/SigmoidSigmoid+lstm_683/while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_683/while/lstm_cell_629/Sigmoid_1Sigmoid+lstm_683/while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_683/while/lstm_cell_629/mulMul*lstm_683/while/lstm_cell_629/Sigmoid_1:y:0lstm_683_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_683/while/lstm_cell_629/ReluRelu+lstm_683/while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_683/while/lstm_cell_629/mul_1Mul(lstm_683/while/lstm_cell_629/Sigmoid:y:0/lstm_683/while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_683/while/lstm_cell_629/add_1AddV2$lstm_683/while/lstm_cell_629/mul:z:0&lstm_683/while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_683/while/lstm_cell_629/Sigmoid_2Sigmoid+lstm_683/while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_683/while/lstm_cell_629/Relu_1Relu&lstm_683/while/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_683/while/lstm_cell_629/mul_2Mul*lstm_683/while/lstm_cell_629/Sigmoid_2:y:01lstm_683/while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_683/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_683_while_placeholder_1lstm_683_while_placeholder&lstm_683/while/lstm_cell_629/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_683/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_683/while/addAddV2lstm_683_while_placeholderlstm_683/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_683/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_683/while/add_1AddV2*lstm_683_while_lstm_683_while_loop_counterlstm_683/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_683/while/IdentityIdentitylstm_683/while/add_1:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: ?
lstm_683/while/Identity_1Identity0lstm_683_while_lstm_683_while_maximum_iterations^lstm_683/while/NoOp*
T0*
_output_shapes
: t
lstm_683/while/Identity_2Identitylstm_683/while/add:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: ?
lstm_683/while/Identity_3IdentityClstm_683/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_683/while/NoOp*
T0*
_output_shapes
: ?
lstm_683/while/Identity_4Identity&lstm_683/while/lstm_cell_629/mul_2:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_683/while/Identity_5Identity&lstm_683/while/lstm_cell_629/add_1:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_683/while/NoOpNoOp4^lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp3^lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp5^lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_683_while_identity lstm_683/while/Identity:output:0"?
lstm_683_while_identity_1"lstm_683/while/Identity_1:output:0"?
lstm_683_while_identity_2"lstm_683/while/Identity_2:output:0"?
lstm_683_while_identity_3"lstm_683/while/Identity_3:output:0"?
lstm_683_while_identity_4"lstm_683/while/Identity_4:output:0"?
lstm_683_while_identity_5"lstm_683/while/Identity_5:output:0"T
'lstm_683_while_lstm_683_strided_slice_1)lstm_683_while_lstm_683_strided_slice_1_0"~
<lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource>lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0"?
=lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource?lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0"|
;lstm_683_while_lstm_cell_629_matmul_readvariableop_resource=lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0"?
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp2h
2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp2l
4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3811547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3811547___redundant_placeholder05
1while_while_cond_3811547___redundant_placeholder15
1while_while_cond_3811547___redundant_placeholder25
1while_while_cond_3811547___redundant_placeholder3
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3811892

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
/__inference_lstm_cell_629_layer_call_fn_3812024

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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807672o
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3806909

inputs(
lstm_cell_627_3806827:	?(
lstm_cell_627_3806829:	d?$
lstm_cell_627_3806831:	?
identity??%lstm_cell_627/StatefulPartitionedCall?while;
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
%lstm_cell_627/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_627_3806827lstm_cell_627_3806829lstm_cell_627_3806831*
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806826n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_627_3806827lstm_cell_627_3806829lstm_cell_627_3806831*
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
while_body_3806840*
condR
while_cond_3806839*K
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
NoOpNoOp&^lstm_cell_627/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_627/StatefulPartitionedCall%lstm_cell_627/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_682_layer_call_fn_3810565
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3807450|
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3810730
inputs_0?
,lstm_cell_628_matmul_readvariableop_resource:	d?A
.lstm_cell_628_matmul_1_readvariableop_resource:	2?<
-lstm_cell_628_biasadd_readvariableop_resource:	?
identity??$lstm_cell_628/BiasAdd/ReadVariableOp?#lstm_cell_628/MatMul/ReadVariableOp?%lstm_cell_628/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_628/MatMul/ReadVariableOpReadVariableOp,lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_628/MatMulMatMulstrided_slice_2:output:0+lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_628/MatMul_1MatMulzeros:output:0-lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_628/addAddV2lstm_cell_628/MatMul:product:0 lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_628/BiasAddBiasAddlstm_cell_628/add:z:0,lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_628/splitSplit&lstm_cell_628/split/split_dim:output:0lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_628/SigmoidSigmoidlstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_1Sigmoidlstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_628/mulMullstm_cell_628/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_628/ReluRelulstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_1Mullstm_cell_628/Sigmoid:y:0 lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_628/add_1AddV2lstm_cell_628/mul:z:0lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_2Sigmoidlstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_628/Relu_1Relulstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_2Mullstm_cell_628/Sigmoid_2:y:0"lstm_cell_628/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_628_matmul_readvariableop_resource.lstm_cell_628_matmul_1_readvariableop_resource-lstm_cell_628_biasadd_readvariableop_resource*
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
while_body_3810646*
condR
while_cond_3810645*K
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
NoOpNoOp%^lstm_cell_628/BiasAdd/ReadVariableOp$^lstm_cell_628/MatMul/ReadVariableOp&^lstm_cell_628/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_628/BiasAdd/ReadVariableOp$lstm_cell_628/BiasAdd/ReadVariableOp2J
#lstm_cell_628/MatMul/ReadVariableOp#lstm_cell_628/MatMul/ReadVariableOp2N
%lstm_cell_628/MatMul_1/ReadVariableOp%lstm_cell_628/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_681_layer_call_and_return_conditional_losses_3808804

inputs?
,lstm_cell_627_matmul_readvariableop_resource:	?A
.lstm_cell_627_matmul_1_readvariableop_resource:	d?<
-lstm_cell_627_biasadd_readvariableop_resource:	?
identity??$lstm_cell_627/BiasAdd/ReadVariableOp?#lstm_cell_627/MatMul/ReadVariableOp?%lstm_cell_627/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_627/MatMul/ReadVariableOpReadVariableOp,lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_627/MatMulMatMulstrided_slice_2:output:0+lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_627/MatMul_1MatMulzeros:output:0-lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_627/addAddV2lstm_cell_627/MatMul:product:0 lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_627/BiasAddBiasAddlstm_cell_627/add:z:0,lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_627/splitSplit&lstm_cell_627/split/split_dim:output:0lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_627/SigmoidSigmoidlstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_1Sigmoidlstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_627/mulMullstm_cell_627/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_627/ReluRelulstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_1Mullstm_cell_627/Sigmoid:y:0 lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_627/add_1AddV2lstm_cell_627/mul:z:0lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_2Sigmoidlstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_627/Relu_1Relulstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_2Mullstm_cell_627/Sigmoid_2:y:0"lstm_cell_627/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_627_matmul_readvariableop_resource.lstm_cell_627_matmul_1_readvariableop_resource-lstm_cell_627_biasadd_readvariableop_resource*
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
while_body_3808720*
condR
while_cond_3808719*K
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
NoOpNoOp%^lstm_cell_627/BiasAdd/ReadVariableOp$^lstm_cell_627/MatMul/ReadVariableOp&^lstm_cell_627/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_627/BiasAdd/ReadVariableOp$lstm_cell_627/BiasAdd/ReadVariableOp2J
#lstm_cell_627/MatMul/ReadVariableOp#lstm_cell_627/MatMul/ReadVariableOp2N
%lstm_cell_627/MatMul_1/ReadVariableOp%lstm_cell_627/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807672

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
?K
?
E__inference_lstm_682_layer_call_and_return_conditional_losses_3810873
inputs_0?
,lstm_cell_628_matmul_readvariableop_resource:	d?A
.lstm_cell_628_matmul_1_readvariableop_resource:	2?<
-lstm_cell_628_biasadd_readvariableop_resource:	?
identity??$lstm_cell_628/BiasAdd/ReadVariableOp?#lstm_cell_628/MatMul/ReadVariableOp?%lstm_cell_628/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_628/MatMul/ReadVariableOpReadVariableOp,lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_628/MatMulMatMulstrided_slice_2:output:0+lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_628/MatMul_1MatMulzeros:output:0-lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_628/addAddV2lstm_cell_628/MatMul:product:0 lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_628/BiasAddBiasAddlstm_cell_628/add:z:0,lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_628/splitSplit&lstm_cell_628/split/split_dim:output:0lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_628/SigmoidSigmoidlstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_1Sigmoidlstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_628/mulMullstm_cell_628/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_628/ReluRelulstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_1Mullstm_cell_628/Sigmoid:y:0 lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_628/add_1AddV2lstm_cell_628/mul:z:0lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_2Sigmoidlstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_628/Relu_1Relulstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_2Mullstm_cell_628/Sigmoid_2:y:0"lstm_cell_628/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_628_matmul_readvariableop_resource.lstm_cell_628_matmul_1_readvariableop_resource-lstm_cell_628_biasadd_readvariableop_resource*
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
while_body_3810789*
condR
while_cond_3810788*K
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
NoOpNoOp%^lstm_cell_628/BiasAdd/ReadVariableOp$^lstm_cell_628/MatMul/ReadVariableOp&^lstm_cell_628/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_628/BiasAdd/ReadVariableOp$lstm_cell_628/BiasAdd/ReadVariableOp2J
#lstm_cell_628/MatMul/ReadVariableOp#lstm_cell_628/MatMul/ReadVariableOp2N
%lstm_cell_628/MatMul_1/ReadVariableOp%lstm_cell_628/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806972

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
?
*sequential_227_lstm_681_while_cond_3806390L
Hsequential_227_lstm_681_while_sequential_227_lstm_681_while_loop_counterR
Nsequential_227_lstm_681_while_sequential_227_lstm_681_while_maximum_iterations-
)sequential_227_lstm_681_while_placeholder/
+sequential_227_lstm_681_while_placeholder_1/
+sequential_227_lstm_681_while_placeholder_2/
+sequential_227_lstm_681_while_placeholder_3N
Jsequential_227_lstm_681_while_less_sequential_227_lstm_681_strided_slice_1e
asequential_227_lstm_681_while_sequential_227_lstm_681_while_cond_3806390___redundant_placeholder0e
asequential_227_lstm_681_while_sequential_227_lstm_681_while_cond_3806390___redundant_placeholder1e
asequential_227_lstm_681_while_sequential_227_lstm_681_while_cond_3806390___redundant_placeholder2e
asequential_227_lstm_681_while_sequential_227_lstm_681_while_cond_3806390___redundant_placeholder3*
&sequential_227_lstm_681_while_identity
?
"sequential_227/lstm_681/while/LessLess)sequential_227_lstm_681_while_placeholderJsequential_227_lstm_681_while_less_sequential_227_lstm_681_strided_slice_1*
T0*
_output_shapes
: {
&sequential_227/lstm_681/while/IdentityIdentity&sequential_227/lstm_681/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_227_lstm_681_while_identity/sequential_227/lstm_681/while/Identity:output:0*(
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
%__inference_signature_wrapper_3809019
lstm_681_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_681_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3806759o
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
_user_specified_namelstm_681_input
?C
?

lstm_681_while_body_3809559.
*lstm_681_while_lstm_681_while_loop_counter4
0lstm_681_while_lstm_681_while_maximum_iterations
lstm_681_while_placeholder 
lstm_681_while_placeholder_1 
lstm_681_while_placeholder_2 
lstm_681_while_placeholder_3-
)lstm_681_while_lstm_681_strided_slice_1_0i
elstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0:	?R
?lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?M
>lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
lstm_681_while_identity
lstm_681_while_identity_1
lstm_681_while_identity_2
lstm_681_while_identity_3
lstm_681_while_identity_4
lstm_681_while_identity_5+
'lstm_681_while_lstm_681_strided_slice_1g
clstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensorN
;lstm_681_while_lstm_cell_627_matmul_readvariableop_resource:	?P
=lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource:	d?K
<lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource:	???3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp?2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp?4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp?
@lstm_681/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_681/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensor_0lstm_681_while_placeholderIlstm_681/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp=lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_681/while/lstm_cell_627/MatMulMatMul9lstm_681/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp?lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_681/while/lstm_cell_627/MatMul_1MatMullstm_681_while_placeholder_2<lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_681/while/lstm_cell_627/addAddV2-lstm_681/while/lstm_cell_627/MatMul:product:0/lstm_681/while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp>lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_681/while/lstm_cell_627/BiasAddBiasAdd$lstm_681/while/lstm_cell_627/add:z:0;lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_681/while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_681/while/lstm_cell_627/splitSplit5lstm_681/while/lstm_cell_627/split/split_dim:output:0-lstm_681/while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_681/while/lstm_cell_627/SigmoidSigmoid+lstm_681/while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_681/while/lstm_cell_627/Sigmoid_1Sigmoid+lstm_681/while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_681/while/lstm_cell_627/mulMul*lstm_681/while/lstm_cell_627/Sigmoid_1:y:0lstm_681_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_681/while/lstm_cell_627/ReluRelu+lstm_681/while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_681/while/lstm_cell_627/mul_1Mul(lstm_681/while/lstm_cell_627/Sigmoid:y:0/lstm_681/while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_681/while/lstm_cell_627/add_1AddV2$lstm_681/while/lstm_cell_627/mul:z:0&lstm_681/while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_681/while/lstm_cell_627/Sigmoid_2Sigmoid+lstm_681/while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_681/while/lstm_cell_627/Relu_1Relu&lstm_681/while/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_681/while/lstm_cell_627/mul_2Mul*lstm_681/while/lstm_cell_627/Sigmoid_2:y:01lstm_681/while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_681/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_681_while_placeholder_1lstm_681_while_placeholder&lstm_681/while/lstm_cell_627/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_681/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_681/while/addAddV2lstm_681_while_placeholderlstm_681/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_681/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_681/while/add_1AddV2*lstm_681_while_lstm_681_while_loop_counterlstm_681/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_681/while/IdentityIdentitylstm_681/while/add_1:z:0^lstm_681/while/NoOp*
T0*
_output_shapes
: ?
lstm_681/while/Identity_1Identity0lstm_681_while_lstm_681_while_maximum_iterations^lstm_681/while/NoOp*
T0*
_output_shapes
: t
lstm_681/while/Identity_2Identitylstm_681/while/add:z:0^lstm_681/while/NoOp*
T0*
_output_shapes
: ?
lstm_681/while/Identity_3IdentityClstm_681/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_681/while/NoOp*
T0*
_output_shapes
: ?
lstm_681/while/Identity_4Identity&lstm_681/while/lstm_cell_627/mul_2:z:0^lstm_681/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_681/while/Identity_5Identity&lstm_681/while/lstm_cell_627/add_1:z:0^lstm_681/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_681/while/NoOpNoOp4^lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp3^lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp5^lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_681_while_identity lstm_681/while/Identity:output:0"?
lstm_681_while_identity_1"lstm_681/while/Identity_1:output:0"?
lstm_681_while_identity_2"lstm_681/while/Identity_2:output:0"?
lstm_681_while_identity_3"lstm_681/while/Identity_3:output:0"?
lstm_681_while_identity_4"lstm_681/while/Identity_4:output:0"?
lstm_681_while_identity_5"lstm_681/while/Identity_5:output:0"T
'lstm_681_while_lstm_681_strided_slice_1)lstm_681_while_lstm_681_strided_slice_1_0"~
<lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource>lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0"?
=lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource?lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0"|
;lstm_681_while_lstm_cell_627_matmul_readvariableop_resource=lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0"?
clstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensorelstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp2h
2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp2l
4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808872

inputs#
lstm_681_3808845:	?#
lstm_681_3808847:	d?
lstm_681_3808849:	?#
lstm_682_3808852:	d?#
lstm_682_3808854:	2?
lstm_682_3808856:	?"
lstm_683_3808859:2("
lstm_683_3808861:
(
lstm_683_3808863:(#
dense_227_3808866:

dense_227_3808868:
identity??!dense_227/StatefulPartitionedCall? lstm_681/StatefulPartitionedCall? lstm_682/StatefulPartitionedCall? lstm_683/StatefulPartitionedCall?
 lstm_681/StatefulPartitionedCallStatefulPartitionedCallinputslstm_681_3808845lstm_681_3808847lstm_681_3808849*
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3808804?
 lstm_682/StatefulPartitionedCallStatefulPartitionedCall)lstm_681/StatefulPartitionedCall:output:0lstm_682_3808852lstm_682_3808854lstm_682_3808856*
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808639?
 lstm_683/StatefulPartitionedCallStatefulPartitionedCall)lstm_682/StatefulPartitionedCall:output:0lstm_683_3808859lstm_683_3808861lstm_683_3808863*
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808474?
!dense_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_683/StatefulPartitionedCall:output:0dense_227_3808866dense_227_3808868*
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
F__inference_dense_227_layer_call_and_return_conditional_losses_3808276y
IdentityIdentity*dense_227/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_227/StatefulPartitionedCall!^lstm_681/StatefulPartitionedCall!^lstm_682/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_227/StatefulPartitionedCall!dense_227/StatefulPartitionedCall2D
 lstm_681/StatefulPartitionedCall lstm_681/StatefulPartitionedCall2D
 lstm_682/StatefulPartitionedCall lstm_682/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811346
inputs_0>
,lstm_cell_629_matmul_readvariableop_resource:2(@
.lstm_cell_629_matmul_1_readvariableop_resource:
(;
-lstm_cell_629_biasadd_readvariableop_resource:(
identity??$lstm_cell_629/BiasAdd/ReadVariableOp?#lstm_cell_629/MatMul/ReadVariableOp?%lstm_cell_629/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_629/MatMul/ReadVariableOpReadVariableOp,lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_629/MatMulMatMulstrided_slice_2:output:0+lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_629/MatMul_1MatMulzeros:output:0-lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_629/addAddV2lstm_cell_629/MatMul:product:0 lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_629/BiasAddBiasAddlstm_cell_629/add:z:0,lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_629/splitSplit&lstm_cell_629/split/split_dim:output:0lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_629/SigmoidSigmoidlstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_1Sigmoidlstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_629/mulMullstm_cell_629/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_629/ReluRelulstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_1Mullstm_cell_629/Sigmoid:y:0 lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_629/add_1AddV2lstm_cell_629/mul:z:0lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_2Sigmoidlstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_629/Relu_1Relulstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_2Mullstm_cell_629/Sigmoid_2:y:0"lstm_cell_629/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_629_matmul_readvariableop_resource.lstm_cell_629_matmul_1_readvariableop_resource-lstm_cell_629_biasadd_readvariableop_resource*
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
while_body_3811262*
condR
while_cond_3811261*K
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
NoOpNoOp%^lstm_cell_629/BiasAdd/ReadVariableOp$^lstm_cell_629/MatMul/ReadVariableOp&^lstm_cell_629/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_629/BiasAdd/ReadVariableOp$lstm_cell_629/BiasAdd/ReadVariableOp2J
#lstm_cell_629/MatMul/ReadVariableOp#lstm_cell_629/MatMul/ReadVariableOp2N
%lstm_cell_629/MatMul_1/ReadVariableOp%lstm_cell_629/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_3807190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_628_3807214_0:	d?0
while_lstm_cell_628_3807216_0:	2?,
while_lstm_cell_628_3807218_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_628_3807214:	d?.
while_lstm_cell_628_3807216:	2?*
while_lstm_cell_628_3807218:	???+while/lstm_cell_628/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_628/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_628_3807214_0while_lstm_cell_628_3807216_0while_lstm_cell_628_3807218_0*
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807176?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_628/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_628/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_628/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_628/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_628_3807214while_lstm_cell_628_3807214_0"<
while_lstm_cell_628_3807216while_lstm_cell_628_3807216_0"<
while_lstm_cell_628_3807218while_lstm_cell_628_3807218_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_628/StatefulPartitionedCall+while/lstm_cell_628/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_681_while_cond_3809131.
*lstm_681_while_lstm_681_while_loop_counter4
0lstm_681_while_lstm_681_while_maximum_iterations
lstm_681_while_placeholder 
lstm_681_while_placeholder_1 
lstm_681_while_placeholder_2 
lstm_681_while_placeholder_30
,lstm_681_while_less_lstm_681_strided_slice_1G
Clstm_681_while_lstm_681_while_cond_3809131___redundant_placeholder0G
Clstm_681_while_lstm_681_while_cond_3809131___redundant_placeholder1G
Clstm_681_while_lstm_681_while_cond_3809131___redundant_placeholder2G
Clstm_681_while_lstm_681_while_cond_3809131___redundant_placeholder3
lstm_681_while_identity
?
lstm_681/while/LessLesslstm_681_while_placeholder,lstm_681_while_less_lstm_681_strided_slice_1*
T0*
_output_shapes
: ]
lstm_681/while/IdentityIdentitylstm_681/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_681_while_identity lstm_681/while/Identity:output:0*(
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810543

inputs?
,lstm_cell_627_matmul_readvariableop_resource:	?A
.lstm_cell_627_matmul_1_readvariableop_resource:	d?<
-lstm_cell_627_biasadd_readvariableop_resource:	?
identity??$lstm_cell_627/BiasAdd/ReadVariableOp?#lstm_cell_627/MatMul/ReadVariableOp?%lstm_cell_627/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_627/MatMul/ReadVariableOpReadVariableOp,lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_627/MatMulMatMulstrided_slice_2:output:0+lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_627/MatMul_1MatMulzeros:output:0-lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_627/addAddV2lstm_cell_627/MatMul:product:0 lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_627/BiasAddBiasAddlstm_cell_627/add:z:0,lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_627/splitSplit&lstm_cell_627/split/split_dim:output:0lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_627/SigmoidSigmoidlstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_1Sigmoidlstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_627/mulMullstm_cell_627/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_627/ReluRelulstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_1Mullstm_cell_627/Sigmoid:y:0 lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_627/add_1AddV2lstm_cell_627/mul:z:0lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_2Sigmoidlstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_627/Relu_1Relulstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_2Mullstm_cell_627/Sigmoid_2:y:0"lstm_cell_627/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_627_matmul_readvariableop_resource.lstm_cell_627_matmul_1_readvariableop_resource-lstm_cell_627_biasadd_readvariableop_resource*
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
while_body_3810459*
condR
while_cond_3810458*K
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
NoOpNoOp%^lstm_cell_627/BiasAdd/ReadVariableOp$^lstm_cell_627/MatMul/ReadVariableOp&^lstm_cell_627/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_627/BiasAdd/ReadVariableOp$lstm_cell_627/BiasAdd/ReadVariableOp2J
#lstm_cell_627/MatMul/ReadVariableOp#lstm_cell_627/MatMul/ReadVariableOp2N
%lstm_cell_627/MatMul_1/ReadVariableOp%lstm_cell_627/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_683_layer_call_fn_3811192

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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808258o
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

?
0__inference_sequential_227_layer_call_fn_3808308
lstm_681_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_681_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808283o
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
_user_specified_namelstm_681_input
?	
?
F__inference_dense_227_layer_call_and_return_conditional_losses_3808276

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
while_body_3810030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_627_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_627_matmul_readvariableop_resource:	?G
4while_lstm_cell_627_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_627_biasadd_readvariableop_resource:	???*while/lstm_cell_627/BiasAdd/ReadVariableOp?)while/lstm_cell_627/MatMul/ReadVariableOp?+while/lstm_cell_627/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_627/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_627/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_627/addAddV2$while/lstm_cell_627/MatMul:product:0&while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_627/BiasAddBiasAddwhile/lstm_cell_627/add:z:02while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_627/splitSplit,while/lstm_cell_627/split/split_dim:output:0$while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_627/SigmoidSigmoid"while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_1Sigmoid"while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mulMul!while/lstm_cell_627/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_627/ReluRelu"while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_1Mulwhile/lstm_cell_627/Sigmoid:y:0&while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/add_1AddV2while/lstm_cell_627/mul:z:0while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_2Sigmoid"while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_627/Relu_1Reluwhile/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_2Mul!while/lstm_cell_627/Sigmoid_2:y:0(while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_627/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_627/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_627/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_627/BiasAdd/ReadVariableOp*^while/lstm_cell_627/MatMul/ReadVariableOp,^while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_627_biasadd_readvariableop_resource5while_lstm_cell_627_biasadd_readvariableop_resource_0"n
4while_lstm_cell_627_matmul_1_readvariableop_resource6while_lstm_cell_627_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_627_matmul_readvariableop_resource4while_lstm_cell_627_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_627/BiasAdd/ReadVariableOp*while/lstm_cell_627/BiasAdd/ReadVariableOp2V
)while/lstm_cell_627/MatMul/ReadVariableOp)while/lstm_cell_627/MatMul/ReadVariableOp2Z
+while/lstm_cell_627/MatMul_1/ReadVariableOp+while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3811548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_629_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_629_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_629_matmul_readvariableop_resource:2(F
4while_lstm_cell_629_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_629_biasadd_readvariableop_resource:(??*while/lstm_cell_629/BiasAdd/ReadVariableOp?)while/lstm_cell_629/MatMul/ReadVariableOp?+while/lstm_cell_629/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_629/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_629/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_629/addAddV2$while/lstm_cell_629/MatMul:product:0&while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_629/BiasAddBiasAddwhile/lstm_cell_629/add:z:02while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_629/splitSplit,while/lstm_cell_629/split/split_dim:output:0$while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_629/SigmoidSigmoid"while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_1Sigmoid"while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mulMul!while/lstm_cell_629/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_629/ReluRelu"while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_1Mulwhile/lstm_cell_629/Sigmoid:y:0&while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/add_1AddV2while/lstm_cell_629/mul:z:0while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_2Sigmoid"while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_629/Relu_1Reluwhile/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_2Mul!while/lstm_cell_629/Sigmoid_2:y:0(while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_629/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_629/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_629/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_629/BiasAdd/ReadVariableOp*^while/lstm_cell_629/MatMul/ReadVariableOp,^while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_629_biasadd_readvariableop_resource5while_lstm_cell_629_biasadd_readvariableop_resource_0"n
4while_lstm_cell_629_matmul_1_readvariableop_resource6while_lstm_cell_629_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_629_matmul_readvariableop_resource4while_lstm_cell_629_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_629/BiasAdd/ReadVariableOp*while/lstm_cell_629/BiasAdd/ReadVariableOp2V
)while/lstm_cell_629/MatMul/ReadVariableOp)while/lstm_cell_629/MatMul/ReadVariableOp2Z
+while/lstm_cell_629/MatMul_1/ReadVariableOp+while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3809927

inputsH
5lstm_681_lstm_cell_627_matmul_readvariableop_resource:	?J
7lstm_681_lstm_cell_627_matmul_1_readvariableop_resource:	d?E
6lstm_681_lstm_cell_627_biasadd_readvariableop_resource:	?H
5lstm_682_lstm_cell_628_matmul_readvariableop_resource:	d?J
7lstm_682_lstm_cell_628_matmul_1_readvariableop_resource:	2?E
6lstm_682_lstm_cell_628_biasadd_readvariableop_resource:	?G
5lstm_683_lstm_cell_629_matmul_readvariableop_resource:2(I
7lstm_683_lstm_cell_629_matmul_1_readvariableop_resource:
(D
6lstm_683_lstm_cell_629_biasadd_readvariableop_resource:(:
(dense_227_matmul_readvariableop_resource:
7
)dense_227_biasadd_readvariableop_resource:
identity?? dense_227/BiasAdd/ReadVariableOp?dense_227/MatMul/ReadVariableOp?-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp?,lstm_681/lstm_cell_627/MatMul/ReadVariableOp?.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp?lstm_681/while?-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp?,lstm_682/lstm_cell_628/MatMul/ReadVariableOp?.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp?lstm_682/while?-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp?,lstm_683/lstm_cell_629/MatMul/ReadVariableOp?.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp?lstm_683/whileD
lstm_681/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_681/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_681/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_681/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_sliceStridedSlicelstm_681/Shape:output:0%lstm_681/strided_slice/stack:output:0'lstm_681/strided_slice/stack_1:output:0'lstm_681/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_681/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_681/zeros/packedPacklstm_681/strided_slice:output:0 lstm_681/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_681/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_681/zerosFilllstm_681/zeros/packed:output:0lstm_681/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_681/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_681/zeros_1/packedPacklstm_681/strided_slice:output:0"lstm_681/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_681/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_681/zeros_1Fill lstm_681/zeros_1/packed:output:0lstm_681/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_681/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_681/transpose	Transposeinputs lstm_681/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_681/Shape_1Shapelstm_681/transpose:y:0*
T0*
_output_shapes
:h
lstm_681/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_681/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_681/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_slice_1StridedSlicelstm_681/Shape_1:output:0'lstm_681/strided_slice_1/stack:output:0)lstm_681/strided_slice_1/stack_1:output:0)lstm_681/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_681/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_681/TensorArrayV2TensorListReserve-lstm_681/TensorArrayV2/element_shape:output:0!lstm_681/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_681/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_681/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_681/transpose:y:0Glstm_681/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_681/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_681/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_681/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_slice_2StridedSlicelstm_681/transpose:y:0'lstm_681/strided_slice_2/stack:output:0)lstm_681/strided_slice_2/stack_1:output:0)lstm_681/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_681/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp5lstm_681_lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_681/lstm_cell_627/MatMulMatMul!lstm_681/strided_slice_2:output:04lstm_681/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp7lstm_681_lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_681/lstm_cell_627/MatMul_1MatMullstm_681/zeros:output:06lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_681/lstm_cell_627/addAddV2'lstm_681/lstm_cell_627/MatMul:product:0)lstm_681/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp6lstm_681_lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_681/lstm_cell_627/BiasAddBiasAddlstm_681/lstm_cell_627/add:z:05lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_681/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_681/lstm_cell_627/splitSplit/lstm_681/lstm_cell_627/split/split_dim:output:0'lstm_681/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_681/lstm_cell_627/SigmoidSigmoid%lstm_681/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_681/lstm_cell_627/Sigmoid_1Sigmoid%lstm_681/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/mulMul$lstm_681/lstm_cell_627/Sigmoid_1:y:0lstm_681/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_681/lstm_cell_627/ReluRelu%lstm_681/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/mul_1Mul"lstm_681/lstm_cell_627/Sigmoid:y:0)lstm_681/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/add_1AddV2lstm_681/lstm_cell_627/mul:z:0 lstm_681/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_681/lstm_cell_627/Sigmoid_2Sigmoid%lstm_681/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_681/lstm_cell_627/Relu_1Relu lstm_681/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/mul_2Mul$lstm_681/lstm_cell_627/Sigmoid_2:y:0+lstm_681/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_681/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_681/TensorArrayV2_1TensorListReserve/lstm_681/TensorArrayV2_1/element_shape:output:0!lstm_681/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_681/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_681/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_681/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_681/whileWhile$lstm_681/while/loop_counter:output:0*lstm_681/while/maximum_iterations:output:0lstm_681/time:output:0!lstm_681/TensorArrayV2_1:handle:0lstm_681/zeros:output:0lstm_681/zeros_1:output:0!lstm_681/strided_slice_1:output:0@lstm_681/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_681_lstm_cell_627_matmul_readvariableop_resource7lstm_681_lstm_cell_627_matmul_1_readvariableop_resource6lstm_681_lstm_cell_627_biasadd_readvariableop_resource*
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
lstm_681_while_body_3809559*'
condR
lstm_681_while_cond_3809558*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_681/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_681/TensorArrayV2Stack/TensorListStackTensorListStacklstm_681/while:output:3Blstm_681/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_681/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_681/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_681/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_slice_3StridedSlice4lstm_681/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_681/strided_slice_3/stack:output:0)lstm_681/strided_slice_3/stack_1:output:0)lstm_681/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_681/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_681/transpose_1	Transpose4lstm_681/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_681/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_681/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_682/ShapeShapelstm_681/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_682/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_682/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_682/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_sliceStridedSlicelstm_682/Shape:output:0%lstm_682/strided_slice/stack:output:0'lstm_682/strided_slice/stack_1:output:0'lstm_682/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_682/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_682/zeros/packedPacklstm_682/strided_slice:output:0 lstm_682/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_682/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_682/zerosFilllstm_682/zeros/packed:output:0lstm_682/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_682/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_682/zeros_1/packedPacklstm_682/strided_slice:output:0"lstm_682/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_682/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_682/zeros_1Fill lstm_682/zeros_1/packed:output:0lstm_682/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_682/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_682/transpose	Transposelstm_681/transpose_1:y:0 lstm_682/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_682/Shape_1Shapelstm_682/transpose:y:0*
T0*
_output_shapes
:h
lstm_682/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_682/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_682/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_slice_1StridedSlicelstm_682/Shape_1:output:0'lstm_682/strided_slice_1/stack:output:0)lstm_682/strided_slice_1/stack_1:output:0)lstm_682/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_682/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_682/TensorArrayV2TensorListReserve-lstm_682/TensorArrayV2/element_shape:output:0!lstm_682/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_682/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_682/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_682/transpose:y:0Glstm_682/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_682/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_682/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_682/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_slice_2StridedSlicelstm_682/transpose:y:0'lstm_682/strided_slice_2/stack:output:0)lstm_682/strided_slice_2/stack_1:output:0)lstm_682/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_682/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp5lstm_682_lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_682/lstm_cell_628/MatMulMatMul!lstm_682/strided_slice_2:output:04lstm_682/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp7lstm_682_lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_682/lstm_cell_628/MatMul_1MatMullstm_682/zeros:output:06lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_682/lstm_cell_628/addAddV2'lstm_682/lstm_cell_628/MatMul:product:0)lstm_682/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp6lstm_682_lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_682/lstm_cell_628/BiasAddBiasAddlstm_682/lstm_cell_628/add:z:05lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_682/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_682/lstm_cell_628/splitSplit/lstm_682/lstm_cell_628/split/split_dim:output:0'lstm_682/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_682/lstm_cell_628/SigmoidSigmoid%lstm_682/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_682/lstm_cell_628/Sigmoid_1Sigmoid%lstm_682/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/mulMul$lstm_682/lstm_cell_628/Sigmoid_1:y:0lstm_682/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_682/lstm_cell_628/ReluRelu%lstm_682/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/mul_1Mul"lstm_682/lstm_cell_628/Sigmoid:y:0)lstm_682/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/add_1AddV2lstm_682/lstm_cell_628/mul:z:0 lstm_682/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_682/lstm_cell_628/Sigmoid_2Sigmoid%lstm_682/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_682/lstm_cell_628/Relu_1Relu lstm_682/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/mul_2Mul$lstm_682/lstm_cell_628/Sigmoid_2:y:0+lstm_682/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_682/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_682/TensorArrayV2_1TensorListReserve/lstm_682/TensorArrayV2_1/element_shape:output:0!lstm_682/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_682/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_682/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_682/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_682/whileWhile$lstm_682/while/loop_counter:output:0*lstm_682/while/maximum_iterations:output:0lstm_682/time:output:0!lstm_682/TensorArrayV2_1:handle:0lstm_682/zeros:output:0lstm_682/zeros_1:output:0!lstm_682/strided_slice_1:output:0@lstm_682/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_682_lstm_cell_628_matmul_readvariableop_resource7lstm_682_lstm_cell_628_matmul_1_readvariableop_resource6lstm_682_lstm_cell_628_biasadd_readvariableop_resource*
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
lstm_682_while_body_3809698*'
condR
lstm_682_while_cond_3809697*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_682/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_682/TensorArrayV2Stack/TensorListStackTensorListStacklstm_682/while:output:3Blstm_682/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_682/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_682/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_682/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_slice_3StridedSlice4lstm_682/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_682/strided_slice_3/stack:output:0)lstm_682/strided_slice_3/stack_1:output:0)lstm_682/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_682/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_682/transpose_1	Transpose4lstm_682/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_682/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_682/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_683/ShapeShapelstm_682/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_683/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_683/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_683/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_sliceStridedSlicelstm_683/Shape:output:0%lstm_683/strided_slice/stack:output:0'lstm_683/strided_slice/stack_1:output:0'lstm_683/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_683/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_683/zeros/packedPacklstm_683/strided_slice:output:0 lstm_683/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_683/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_683/zerosFilllstm_683/zeros/packed:output:0lstm_683/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_683/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_683/zeros_1/packedPacklstm_683/strided_slice:output:0"lstm_683/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_683/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_683/zeros_1Fill lstm_683/zeros_1/packed:output:0lstm_683/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_683/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_683/transpose	Transposelstm_682/transpose_1:y:0 lstm_683/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_683/Shape_1Shapelstm_683/transpose:y:0*
T0*
_output_shapes
:h
lstm_683/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_683/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_683/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_slice_1StridedSlicelstm_683/Shape_1:output:0'lstm_683/strided_slice_1/stack:output:0)lstm_683/strided_slice_1/stack_1:output:0)lstm_683/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_683/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_683/TensorArrayV2TensorListReserve-lstm_683/TensorArrayV2/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_683/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_683/transpose:y:0Glstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_683/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_683/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_683/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_slice_2StridedSlicelstm_683/transpose:y:0'lstm_683/strided_slice_2/stack:output:0)lstm_683/strided_slice_2/stack_1:output:0)lstm_683/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_683/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp5lstm_683_lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_683/lstm_cell_629/MatMulMatMul!lstm_683/strided_slice_2:output:04lstm_683/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp7lstm_683_lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_683/lstm_cell_629/MatMul_1MatMullstm_683/zeros:output:06lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_683/lstm_cell_629/addAddV2'lstm_683/lstm_cell_629/MatMul:product:0)lstm_683/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp6lstm_683_lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_683/lstm_cell_629/BiasAddBiasAddlstm_683/lstm_cell_629/add:z:05lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_683/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_683/lstm_cell_629/splitSplit/lstm_683/lstm_cell_629/split/split_dim:output:0'lstm_683/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_683/lstm_cell_629/SigmoidSigmoid%lstm_683/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_683/lstm_cell_629/Sigmoid_1Sigmoid%lstm_683/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/mulMul$lstm_683/lstm_cell_629/Sigmoid_1:y:0lstm_683/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_683/lstm_cell_629/ReluRelu%lstm_683/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/mul_1Mul"lstm_683/lstm_cell_629/Sigmoid:y:0)lstm_683/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/add_1AddV2lstm_683/lstm_cell_629/mul:z:0 lstm_683/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_683/lstm_cell_629/Sigmoid_2Sigmoid%lstm_683/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_683/lstm_cell_629/Relu_1Relu lstm_683/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/mul_2Mul$lstm_683/lstm_cell_629/Sigmoid_2:y:0+lstm_683/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_683/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_683/TensorArrayV2_1TensorListReserve/lstm_683/TensorArrayV2_1/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_683/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_683/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_683/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_683/whileWhile$lstm_683/while/loop_counter:output:0*lstm_683/while/maximum_iterations:output:0lstm_683/time:output:0!lstm_683/TensorArrayV2_1:handle:0lstm_683/zeros:output:0lstm_683/zeros_1:output:0!lstm_683/strided_slice_1:output:0@lstm_683/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_683_lstm_cell_629_matmul_readvariableop_resource7lstm_683_lstm_cell_629_matmul_1_readvariableop_resource6lstm_683_lstm_cell_629_biasadd_readvariableop_resource*
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
lstm_683_while_body_3809837*'
condR
lstm_683_while_cond_3809836*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_683/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_683/TensorArrayV2Stack/TensorListStackTensorListStacklstm_683/while:output:3Blstm_683/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_683/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_683/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_683/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_slice_3StridedSlice4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_683/strided_slice_3/stack:output:0)lstm_683/strided_slice_3/stack_1:output:0)lstm_683/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_683/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_683/transpose_1	Transpose4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_683/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_683/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_227/MatMul/ReadVariableOpReadVariableOp(dense_227_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_227/MatMulMatMul!lstm_683/strided_slice_3:output:0'dense_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_227/BiasAdd/ReadVariableOpReadVariableOp)dense_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_227/BiasAddBiasAdddense_227/MatMul:product:0(dense_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_227/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_227/BiasAdd/ReadVariableOp ^dense_227/MatMul/ReadVariableOp.^lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp-^lstm_681/lstm_cell_627/MatMul/ReadVariableOp/^lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp^lstm_681/while.^lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp-^lstm_682/lstm_cell_628/MatMul/ReadVariableOp/^lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp^lstm_682/while.^lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp-^lstm_683/lstm_cell_629/MatMul/ReadVariableOp/^lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp^lstm_683/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_227/BiasAdd/ReadVariableOp dense_227/BiasAdd/ReadVariableOp2B
dense_227/MatMul/ReadVariableOpdense_227/MatMul/ReadVariableOp2^
-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp2\
,lstm_681/lstm_cell_627/MatMul/ReadVariableOp,lstm_681/lstm_cell_627/MatMul/ReadVariableOp2`
.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp2 
lstm_681/whilelstm_681/while2^
-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp2\
,lstm_682/lstm_cell_628/MatMul/ReadVariableOp,lstm_682/lstm_cell_628/MatMul/ReadVariableOp2`
.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp2 
lstm_682/whilelstm_682/while2^
-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp2\
,lstm_683/lstm_cell_629/MatMul/ReadVariableOp,lstm_683/lstm_cell_629/MatMul/ReadVariableOp2`
.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp2 
lstm_683/whilelstm_683/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811632

inputs>
,lstm_cell_629_matmul_readvariableop_resource:2(@
.lstm_cell_629_matmul_1_readvariableop_resource:
(;
-lstm_cell_629_biasadd_readvariableop_resource:(
identity??$lstm_cell_629/BiasAdd/ReadVariableOp?#lstm_cell_629/MatMul/ReadVariableOp?%lstm_cell_629/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_629/MatMul/ReadVariableOpReadVariableOp,lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_629/MatMulMatMulstrided_slice_2:output:0+lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_629/MatMul_1MatMulzeros:output:0-lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_629/addAddV2lstm_cell_629/MatMul:product:0 lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_629/BiasAddBiasAddlstm_cell_629/add:z:0,lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_629/splitSplit&lstm_cell_629/split/split_dim:output:0lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_629/SigmoidSigmoidlstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_1Sigmoidlstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_629/mulMullstm_cell_629/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_629/ReluRelulstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_1Mullstm_cell_629/Sigmoid:y:0 lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_629/add_1AddV2lstm_cell_629/mul:z:0lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_2Sigmoidlstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_629/Relu_1Relulstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_2Mullstm_cell_629/Sigmoid_2:y:0"lstm_cell_629/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_629_matmul_readvariableop_resource.lstm_cell_629_matmul_1_readvariableop_resource-lstm_cell_629_biasadd_readvariableop_resource*
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
while_body_3811548*
condR
while_cond_3811547*K
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
NoOpNoOp%^lstm_cell_629/BiasAdd/ReadVariableOp$^lstm_cell_629/MatMul/ReadVariableOp&^lstm_cell_629/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_629/BiasAdd/ReadVariableOp$lstm_cell_629/BiasAdd/ReadVariableOp2J
#lstm_cell_629/MatMul/ReadVariableOp#lstm_cell_629/MatMul/ReadVariableOp2N
%lstm_cell_629/MatMul_1/ReadVariableOp%lstm_cell_629/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3811405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_629_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_629_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_629_matmul_readvariableop_resource:2(F
4while_lstm_cell_629_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_629_biasadd_readvariableop_resource:(??*while/lstm_cell_629/BiasAdd/ReadVariableOp?)while/lstm_cell_629/MatMul/ReadVariableOp?+while/lstm_cell_629/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_629/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_629/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_629/addAddV2$while/lstm_cell_629/MatMul:product:0&while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_629/BiasAddBiasAddwhile/lstm_cell_629/add:z:02while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_629/splitSplit,while/lstm_cell_629/split/split_dim:output:0$while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_629/SigmoidSigmoid"while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_1Sigmoid"while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mulMul!while/lstm_cell_629/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_629/ReluRelu"while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_1Mulwhile/lstm_cell_629/Sigmoid:y:0&while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/add_1AddV2while/lstm_cell_629/mul:z:0while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_2Sigmoid"while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_629/Relu_1Reluwhile/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_2Mul!while/lstm_cell_629/Sigmoid_2:y:0(while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_629/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_629/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_629/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_629/BiasAdd/ReadVariableOp*^while/lstm_cell_629/MatMul/ReadVariableOp,^while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_629_biasadd_readvariableop_resource5while_lstm_cell_629_biasadd_readvariableop_resource_0"n
4while_lstm_cell_629_matmul_1_readvariableop_resource6while_lstm_cell_629_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_629_matmul_readvariableop_resource4while_lstm_cell_629_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_629/BiasAdd/ReadVariableOp*while/lstm_cell_629/BiasAdd/ReadVariableOp2V
)while/lstm_cell_629/MatMul/ReadVariableOp)while/lstm_cell_629/MatMul/ReadVariableOp2Z
+while/lstm_cell_629/MatMul_1/ReadVariableOp+while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808639

inputs?
,lstm_cell_628_matmul_readvariableop_resource:	d?A
.lstm_cell_628_matmul_1_readvariableop_resource:	2?<
-lstm_cell_628_biasadd_readvariableop_resource:	?
identity??$lstm_cell_628/BiasAdd/ReadVariableOp?#lstm_cell_628/MatMul/ReadVariableOp?%lstm_cell_628/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_628/MatMul/ReadVariableOpReadVariableOp,lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_628/MatMulMatMulstrided_slice_2:output:0+lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_628/MatMul_1MatMulzeros:output:0-lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_628/addAddV2lstm_cell_628/MatMul:product:0 lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_628/BiasAddBiasAddlstm_cell_628/add:z:0,lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_628/splitSplit&lstm_cell_628/split/split_dim:output:0lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_628/SigmoidSigmoidlstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_1Sigmoidlstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_628/mulMullstm_cell_628/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_628/ReluRelulstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_1Mullstm_cell_628/Sigmoid:y:0 lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_628/add_1AddV2lstm_cell_628/mul:z:0lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_2Sigmoidlstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_628/Relu_1Relulstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_2Mullstm_cell_628/Sigmoid_2:y:0"lstm_cell_628/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_628_matmul_readvariableop_resource.lstm_cell_628_matmul_1_readvariableop_resource-lstm_cell_628_biasadd_readvariableop_resource*
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
while_body_3808555*
condR
while_cond_3808554*K
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
NoOpNoOp%^lstm_cell_628/BiasAdd/ReadVariableOp$^lstm_cell_628/MatMul/ReadVariableOp&^lstm_cell_628/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_628/BiasAdd/ReadVariableOp$lstm_cell_628/BiasAdd/ReadVariableOp2J
#lstm_cell_628/MatMul/ReadVariableOp#lstm_cell_628/MatMul/ReadVariableOp2N
%lstm_cell_628/MatMul_1/ReadVariableOp%lstm_cell_628/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3808024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_628_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_628_matmul_readvariableop_resource:	d?G
4while_lstm_cell_628_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_628_biasadd_readvariableop_resource:	???*while/lstm_cell_628/BiasAdd/ReadVariableOp?)while/lstm_cell_628/MatMul/ReadVariableOp?+while/lstm_cell_628/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_628/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_628/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_628/addAddV2$while/lstm_cell_628/MatMul:product:0&while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_628/BiasAddBiasAddwhile/lstm_cell_628/add:z:02while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_628/splitSplit,while/lstm_cell_628/split/split_dim:output:0$while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_628/SigmoidSigmoid"while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_1Sigmoid"while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mulMul!while/lstm_cell_628/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_628/ReluRelu"while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_1Mulwhile/lstm_cell_628/Sigmoid:y:0&while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/add_1AddV2while/lstm_cell_628/mul:z:0while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_2Sigmoid"while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_628/Relu_1Reluwhile/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_2Mul!while/lstm_cell_628/Sigmoid_2:y:0(while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_628/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_628/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_628/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_628/BiasAdd/ReadVariableOp*^while/lstm_cell_628/MatMul/ReadVariableOp,^while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_628_biasadd_readvariableop_resource5while_lstm_cell_628_biasadd_readvariableop_resource_0"n
4while_lstm_cell_628_matmul_1_readvariableop_resource6while_lstm_cell_628_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_628_matmul_readvariableop_resource4while_lstm_cell_628_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_628/BiasAdd/ReadVariableOp*while/lstm_cell_628/BiasAdd/ReadVariableOp2V
)while/lstm_cell_628/MatMul/ReadVariableOp)while/lstm_cell_628/MatMul/ReadVariableOp2Z
+while/lstm_cell_628/MatMul_1/ReadVariableOp+while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807176

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
??
?
"__inference__wrapped_model_3806759
lstm_681_inputW
Dsequential_227_lstm_681_lstm_cell_627_matmul_readvariableop_resource:	?Y
Fsequential_227_lstm_681_lstm_cell_627_matmul_1_readvariableop_resource:	d?T
Esequential_227_lstm_681_lstm_cell_627_biasadd_readvariableop_resource:	?W
Dsequential_227_lstm_682_lstm_cell_628_matmul_readvariableop_resource:	d?Y
Fsequential_227_lstm_682_lstm_cell_628_matmul_1_readvariableop_resource:	2?T
Esequential_227_lstm_682_lstm_cell_628_biasadd_readvariableop_resource:	?V
Dsequential_227_lstm_683_lstm_cell_629_matmul_readvariableop_resource:2(X
Fsequential_227_lstm_683_lstm_cell_629_matmul_1_readvariableop_resource:
(S
Esequential_227_lstm_683_lstm_cell_629_biasadd_readvariableop_resource:(I
7sequential_227_dense_227_matmul_readvariableop_resource:
F
8sequential_227_dense_227_biasadd_readvariableop_resource:
identity??/sequential_227/dense_227/BiasAdd/ReadVariableOp?.sequential_227/dense_227/MatMul/ReadVariableOp?<sequential_227/lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp?;sequential_227/lstm_681/lstm_cell_627/MatMul/ReadVariableOp?=sequential_227/lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp?sequential_227/lstm_681/while?<sequential_227/lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp?;sequential_227/lstm_682/lstm_cell_628/MatMul/ReadVariableOp?=sequential_227/lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp?sequential_227/lstm_682/while?<sequential_227/lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp?;sequential_227/lstm_683/lstm_cell_629/MatMul/ReadVariableOp?=sequential_227/lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp?sequential_227/lstm_683/while[
sequential_227/lstm_681/ShapeShapelstm_681_input*
T0*
_output_shapes
:u
+sequential_227/lstm_681/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_227/lstm_681/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_227/lstm_681/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_227/lstm_681/strided_sliceStridedSlice&sequential_227/lstm_681/Shape:output:04sequential_227/lstm_681/strided_slice/stack:output:06sequential_227/lstm_681/strided_slice/stack_1:output:06sequential_227/lstm_681/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_227/lstm_681/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_227/lstm_681/zeros/packedPack.sequential_227/lstm_681/strided_slice:output:0/sequential_227/lstm_681/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_227/lstm_681/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_227/lstm_681/zerosFill-sequential_227/lstm_681/zeros/packed:output:0,sequential_227/lstm_681/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_227/lstm_681/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_227/lstm_681/zeros_1/packedPack.sequential_227/lstm_681/strided_slice:output:01sequential_227/lstm_681/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_227/lstm_681/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_227/lstm_681/zeros_1Fill/sequential_227/lstm_681/zeros_1/packed:output:0.sequential_227/lstm_681/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_227/lstm_681/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_227/lstm_681/transpose	Transposelstm_681_input/sequential_227/lstm_681/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_227/lstm_681/Shape_1Shape%sequential_227/lstm_681/transpose:y:0*
T0*
_output_shapes
:w
-sequential_227/lstm_681/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_681/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_227/lstm_681/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_681/strided_slice_1StridedSlice(sequential_227/lstm_681/Shape_1:output:06sequential_227/lstm_681/strided_slice_1/stack:output:08sequential_227/lstm_681/strided_slice_1/stack_1:output:08sequential_227/lstm_681/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_227/lstm_681/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_227/lstm_681/TensorArrayV2TensorListReserve<sequential_227/lstm_681/TensorArrayV2/element_shape:output:00sequential_227/lstm_681/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_227/lstm_681/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_227/lstm_681/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_227/lstm_681/transpose:y:0Vsequential_227/lstm_681/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_227/lstm_681/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_681/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_227/lstm_681/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_681/strided_slice_2StridedSlice%sequential_227/lstm_681/transpose:y:06sequential_227/lstm_681/strided_slice_2/stack:output:08sequential_227/lstm_681/strided_slice_2/stack_1:output:08sequential_227/lstm_681/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_227/lstm_681/lstm_cell_627/MatMul/ReadVariableOpReadVariableOpDsequential_227_lstm_681_lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_227/lstm_681/lstm_cell_627/MatMulMatMul0sequential_227/lstm_681/strided_slice_2:output:0Csequential_227/lstm_681/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_227/lstm_681/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOpFsequential_227_lstm_681_lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_227/lstm_681/lstm_cell_627/MatMul_1MatMul&sequential_227/lstm_681/zeros:output:0Esequential_227/lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_227/lstm_681/lstm_cell_627/addAddV26sequential_227/lstm_681/lstm_cell_627/MatMul:product:08sequential_227/lstm_681/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_227/lstm_681/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOpEsequential_227_lstm_681_lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_227/lstm_681/lstm_cell_627/BiasAddBiasAdd-sequential_227/lstm_681/lstm_cell_627/add:z:0Dsequential_227/lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_227/lstm_681/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_227/lstm_681/lstm_cell_627/splitSplit>sequential_227/lstm_681/lstm_cell_627/split/split_dim:output:06sequential_227/lstm_681/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_227/lstm_681/lstm_cell_627/SigmoidSigmoid4sequential_227/lstm_681/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_227/lstm_681/lstm_cell_627/Sigmoid_1Sigmoid4sequential_227/lstm_681/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_227/lstm_681/lstm_cell_627/mulMul3sequential_227/lstm_681/lstm_cell_627/Sigmoid_1:y:0(sequential_227/lstm_681/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_227/lstm_681/lstm_cell_627/ReluRelu4sequential_227/lstm_681/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_227/lstm_681/lstm_cell_627/mul_1Mul1sequential_227/lstm_681/lstm_cell_627/Sigmoid:y:08sequential_227/lstm_681/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_227/lstm_681/lstm_cell_627/add_1AddV2-sequential_227/lstm_681/lstm_cell_627/mul:z:0/sequential_227/lstm_681/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_227/lstm_681/lstm_cell_627/Sigmoid_2Sigmoid4sequential_227/lstm_681/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_227/lstm_681/lstm_cell_627/Relu_1Relu/sequential_227/lstm_681/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_227/lstm_681/lstm_cell_627/mul_2Mul3sequential_227/lstm_681/lstm_cell_627/Sigmoid_2:y:0:sequential_227/lstm_681/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_227/lstm_681/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_227/lstm_681/TensorArrayV2_1TensorListReserve>sequential_227/lstm_681/TensorArrayV2_1/element_shape:output:00sequential_227/lstm_681/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_227/lstm_681/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_227/lstm_681/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_227/lstm_681/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_227/lstm_681/whileWhile3sequential_227/lstm_681/while/loop_counter:output:09sequential_227/lstm_681/while/maximum_iterations:output:0%sequential_227/lstm_681/time:output:00sequential_227/lstm_681/TensorArrayV2_1:handle:0&sequential_227/lstm_681/zeros:output:0(sequential_227/lstm_681/zeros_1:output:00sequential_227/lstm_681/strided_slice_1:output:0Osequential_227/lstm_681/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_227_lstm_681_lstm_cell_627_matmul_readvariableop_resourceFsequential_227_lstm_681_lstm_cell_627_matmul_1_readvariableop_resourceEsequential_227_lstm_681_lstm_cell_627_biasadd_readvariableop_resource*
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
*sequential_227_lstm_681_while_body_3806391*6
cond.R,
*sequential_227_lstm_681_while_cond_3806390*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_227/lstm_681/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_227/lstm_681/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_227/lstm_681/while:output:3Qsequential_227/lstm_681/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_227/lstm_681/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_227/lstm_681/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_681/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_681/strided_slice_3StridedSliceCsequential_227/lstm_681/TensorArrayV2Stack/TensorListStack:tensor:06sequential_227/lstm_681/strided_slice_3/stack:output:08sequential_227/lstm_681/strided_slice_3/stack_1:output:08sequential_227/lstm_681/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_227/lstm_681/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_227/lstm_681/transpose_1	TransposeCsequential_227/lstm_681/TensorArrayV2Stack/TensorListStack:tensor:01sequential_227/lstm_681/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_227/lstm_681/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_227/lstm_682/ShapeShape'sequential_227/lstm_681/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_227/lstm_682/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_227/lstm_682/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_227/lstm_682/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_227/lstm_682/strided_sliceStridedSlice&sequential_227/lstm_682/Shape:output:04sequential_227/lstm_682/strided_slice/stack:output:06sequential_227/lstm_682/strided_slice/stack_1:output:06sequential_227/lstm_682/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_227/lstm_682/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_227/lstm_682/zeros/packedPack.sequential_227/lstm_682/strided_slice:output:0/sequential_227/lstm_682/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_227/lstm_682/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_227/lstm_682/zerosFill-sequential_227/lstm_682/zeros/packed:output:0,sequential_227/lstm_682/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_227/lstm_682/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_227/lstm_682/zeros_1/packedPack.sequential_227/lstm_682/strided_slice:output:01sequential_227/lstm_682/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_227/lstm_682/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_227/lstm_682/zeros_1Fill/sequential_227/lstm_682/zeros_1/packed:output:0.sequential_227/lstm_682/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_227/lstm_682/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_227/lstm_682/transpose	Transpose'sequential_227/lstm_681/transpose_1:y:0/sequential_227/lstm_682/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_227/lstm_682/Shape_1Shape%sequential_227/lstm_682/transpose:y:0*
T0*
_output_shapes
:w
-sequential_227/lstm_682/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_682/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_227/lstm_682/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_682/strided_slice_1StridedSlice(sequential_227/lstm_682/Shape_1:output:06sequential_227/lstm_682/strided_slice_1/stack:output:08sequential_227/lstm_682/strided_slice_1/stack_1:output:08sequential_227/lstm_682/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_227/lstm_682/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_227/lstm_682/TensorArrayV2TensorListReserve<sequential_227/lstm_682/TensorArrayV2/element_shape:output:00sequential_227/lstm_682/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_227/lstm_682/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_227/lstm_682/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_227/lstm_682/transpose:y:0Vsequential_227/lstm_682/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_227/lstm_682/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_682/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_227/lstm_682/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_682/strided_slice_2StridedSlice%sequential_227/lstm_682/transpose:y:06sequential_227/lstm_682/strided_slice_2/stack:output:08sequential_227/lstm_682/strided_slice_2/stack_1:output:08sequential_227/lstm_682/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_227/lstm_682/lstm_cell_628/MatMul/ReadVariableOpReadVariableOpDsequential_227_lstm_682_lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_227/lstm_682/lstm_cell_628/MatMulMatMul0sequential_227/lstm_682/strided_slice_2:output:0Csequential_227/lstm_682/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_227/lstm_682/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOpFsequential_227_lstm_682_lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_227/lstm_682/lstm_cell_628/MatMul_1MatMul&sequential_227/lstm_682/zeros:output:0Esequential_227/lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_227/lstm_682/lstm_cell_628/addAddV26sequential_227/lstm_682/lstm_cell_628/MatMul:product:08sequential_227/lstm_682/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_227/lstm_682/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOpEsequential_227_lstm_682_lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_227/lstm_682/lstm_cell_628/BiasAddBiasAdd-sequential_227/lstm_682/lstm_cell_628/add:z:0Dsequential_227/lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_227/lstm_682/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_227/lstm_682/lstm_cell_628/splitSplit>sequential_227/lstm_682/lstm_cell_628/split/split_dim:output:06sequential_227/lstm_682/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_227/lstm_682/lstm_cell_628/SigmoidSigmoid4sequential_227/lstm_682/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_227/lstm_682/lstm_cell_628/Sigmoid_1Sigmoid4sequential_227/lstm_682/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_227/lstm_682/lstm_cell_628/mulMul3sequential_227/lstm_682/lstm_cell_628/Sigmoid_1:y:0(sequential_227/lstm_682/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_227/lstm_682/lstm_cell_628/ReluRelu4sequential_227/lstm_682/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_227/lstm_682/lstm_cell_628/mul_1Mul1sequential_227/lstm_682/lstm_cell_628/Sigmoid:y:08sequential_227/lstm_682/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_227/lstm_682/lstm_cell_628/add_1AddV2-sequential_227/lstm_682/lstm_cell_628/mul:z:0/sequential_227/lstm_682/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_227/lstm_682/lstm_cell_628/Sigmoid_2Sigmoid4sequential_227/lstm_682/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_227/lstm_682/lstm_cell_628/Relu_1Relu/sequential_227/lstm_682/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_227/lstm_682/lstm_cell_628/mul_2Mul3sequential_227/lstm_682/lstm_cell_628/Sigmoid_2:y:0:sequential_227/lstm_682/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_227/lstm_682/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_227/lstm_682/TensorArrayV2_1TensorListReserve>sequential_227/lstm_682/TensorArrayV2_1/element_shape:output:00sequential_227/lstm_682/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_227/lstm_682/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_227/lstm_682/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_227/lstm_682/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_227/lstm_682/whileWhile3sequential_227/lstm_682/while/loop_counter:output:09sequential_227/lstm_682/while/maximum_iterations:output:0%sequential_227/lstm_682/time:output:00sequential_227/lstm_682/TensorArrayV2_1:handle:0&sequential_227/lstm_682/zeros:output:0(sequential_227/lstm_682/zeros_1:output:00sequential_227/lstm_682/strided_slice_1:output:0Osequential_227/lstm_682/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_227_lstm_682_lstm_cell_628_matmul_readvariableop_resourceFsequential_227_lstm_682_lstm_cell_628_matmul_1_readvariableop_resourceEsequential_227_lstm_682_lstm_cell_628_biasadd_readvariableop_resource*
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
*sequential_227_lstm_682_while_body_3806530*6
cond.R,
*sequential_227_lstm_682_while_cond_3806529*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_227/lstm_682/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_227/lstm_682/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_227/lstm_682/while:output:3Qsequential_227/lstm_682/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_227/lstm_682/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_227/lstm_682/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_682/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_682/strided_slice_3StridedSliceCsequential_227/lstm_682/TensorArrayV2Stack/TensorListStack:tensor:06sequential_227/lstm_682/strided_slice_3/stack:output:08sequential_227/lstm_682/strided_slice_3/stack_1:output:08sequential_227/lstm_682/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_227/lstm_682/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_227/lstm_682/transpose_1	TransposeCsequential_227/lstm_682/TensorArrayV2Stack/TensorListStack:tensor:01sequential_227/lstm_682/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_227/lstm_682/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_227/lstm_683/ShapeShape'sequential_227/lstm_682/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_227/lstm_683/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_227/lstm_683/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_227/lstm_683/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_227/lstm_683/strided_sliceStridedSlice&sequential_227/lstm_683/Shape:output:04sequential_227/lstm_683/strided_slice/stack:output:06sequential_227/lstm_683/strided_slice/stack_1:output:06sequential_227/lstm_683/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_227/lstm_683/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_227/lstm_683/zeros/packedPack.sequential_227/lstm_683/strided_slice:output:0/sequential_227/lstm_683/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_227/lstm_683/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_227/lstm_683/zerosFill-sequential_227/lstm_683/zeros/packed:output:0,sequential_227/lstm_683/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_227/lstm_683/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_227/lstm_683/zeros_1/packedPack.sequential_227/lstm_683/strided_slice:output:01sequential_227/lstm_683/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_227/lstm_683/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_227/lstm_683/zeros_1Fill/sequential_227/lstm_683/zeros_1/packed:output:0.sequential_227/lstm_683/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_227/lstm_683/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_227/lstm_683/transpose	Transpose'sequential_227/lstm_682/transpose_1:y:0/sequential_227/lstm_683/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_227/lstm_683/Shape_1Shape%sequential_227/lstm_683/transpose:y:0*
T0*
_output_shapes
:w
-sequential_227/lstm_683/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_683/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_227/lstm_683/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_683/strided_slice_1StridedSlice(sequential_227/lstm_683/Shape_1:output:06sequential_227/lstm_683/strided_slice_1/stack:output:08sequential_227/lstm_683/strided_slice_1/stack_1:output:08sequential_227/lstm_683/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_227/lstm_683/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_227/lstm_683/TensorArrayV2TensorListReserve<sequential_227/lstm_683/TensorArrayV2/element_shape:output:00sequential_227/lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_227/lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_227/lstm_683/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_227/lstm_683/transpose:y:0Vsequential_227/lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_227/lstm_683/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_683/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_227/lstm_683/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_683/strided_slice_2StridedSlice%sequential_227/lstm_683/transpose:y:06sequential_227/lstm_683/strided_slice_2/stack:output:08sequential_227/lstm_683/strided_slice_2/stack_1:output:08sequential_227/lstm_683/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_227/lstm_683/lstm_cell_629/MatMul/ReadVariableOpReadVariableOpDsequential_227_lstm_683_lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_227/lstm_683/lstm_cell_629/MatMulMatMul0sequential_227/lstm_683/strided_slice_2:output:0Csequential_227/lstm_683/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_227/lstm_683/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOpFsequential_227_lstm_683_lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_227/lstm_683/lstm_cell_629/MatMul_1MatMul&sequential_227/lstm_683/zeros:output:0Esequential_227/lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_227/lstm_683/lstm_cell_629/addAddV26sequential_227/lstm_683/lstm_cell_629/MatMul:product:08sequential_227/lstm_683/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_227/lstm_683/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOpEsequential_227_lstm_683_lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_227/lstm_683/lstm_cell_629/BiasAddBiasAdd-sequential_227/lstm_683/lstm_cell_629/add:z:0Dsequential_227/lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_227/lstm_683/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_227/lstm_683/lstm_cell_629/splitSplit>sequential_227/lstm_683/lstm_cell_629/split/split_dim:output:06sequential_227/lstm_683/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_227/lstm_683/lstm_cell_629/SigmoidSigmoid4sequential_227/lstm_683/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_227/lstm_683/lstm_cell_629/Sigmoid_1Sigmoid4sequential_227/lstm_683/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_227/lstm_683/lstm_cell_629/mulMul3sequential_227/lstm_683/lstm_cell_629/Sigmoid_1:y:0(sequential_227/lstm_683/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_227/lstm_683/lstm_cell_629/ReluRelu4sequential_227/lstm_683/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_227/lstm_683/lstm_cell_629/mul_1Mul1sequential_227/lstm_683/lstm_cell_629/Sigmoid:y:08sequential_227/lstm_683/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_227/lstm_683/lstm_cell_629/add_1AddV2-sequential_227/lstm_683/lstm_cell_629/mul:z:0/sequential_227/lstm_683/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_227/lstm_683/lstm_cell_629/Sigmoid_2Sigmoid4sequential_227/lstm_683/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_227/lstm_683/lstm_cell_629/Relu_1Relu/sequential_227/lstm_683/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_227/lstm_683/lstm_cell_629/mul_2Mul3sequential_227/lstm_683/lstm_cell_629/Sigmoid_2:y:0:sequential_227/lstm_683/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_227/lstm_683/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_227/lstm_683/TensorArrayV2_1TensorListReserve>sequential_227/lstm_683/TensorArrayV2_1/element_shape:output:00sequential_227/lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_227/lstm_683/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_227/lstm_683/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_227/lstm_683/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_227/lstm_683/whileWhile3sequential_227/lstm_683/while/loop_counter:output:09sequential_227/lstm_683/while/maximum_iterations:output:0%sequential_227/lstm_683/time:output:00sequential_227/lstm_683/TensorArrayV2_1:handle:0&sequential_227/lstm_683/zeros:output:0(sequential_227/lstm_683/zeros_1:output:00sequential_227/lstm_683/strided_slice_1:output:0Osequential_227/lstm_683/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_227_lstm_683_lstm_cell_629_matmul_readvariableop_resourceFsequential_227_lstm_683_lstm_cell_629_matmul_1_readvariableop_resourceEsequential_227_lstm_683_lstm_cell_629_biasadd_readvariableop_resource*
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
*sequential_227_lstm_683_while_body_3806669*6
cond.R,
*sequential_227_lstm_683_while_cond_3806668*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_227/lstm_683/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_227/lstm_683/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_227/lstm_683/while:output:3Qsequential_227/lstm_683/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_227/lstm_683/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_227/lstm_683/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_227/lstm_683/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_227/lstm_683/strided_slice_3StridedSliceCsequential_227/lstm_683/TensorArrayV2Stack/TensorListStack:tensor:06sequential_227/lstm_683/strided_slice_3/stack:output:08sequential_227/lstm_683/strided_slice_3/stack_1:output:08sequential_227/lstm_683/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_227/lstm_683/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_227/lstm_683/transpose_1	TransposeCsequential_227/lstm_683/TensorArrayV2Stack/TensorListStack:tensor:01sequential_227/lstm_683/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_227/lstm_683/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_227/dense_227/MatMul/ReadVariableOpReadVariableOp7sequential_227_dense_227_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_227/dense_227/MatMulMatMul0sequential_227/lstm_683/strided_slice_3:output:06sequential_227/dense_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_227/dense_227/BiasAdd/ReadVariableOpReadVariableOp8sequential_227_dense_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_227/dense_227/BiasAddBiasAdd)sequential_227/dense_227/MatMul:product:07sequential_227/dense_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_227/dense_227/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_227/dense_227/BiasAdd/ReadVariableOp/^sequential_227/dense_227/MatMul/ReadVariableOp=^sequential_227/lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp<^sequential_227/lstm_681/lstm_cell_627/MatMul/ReadVariableOp>^sequential_227/lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp^sequential_227/lstm_681/while=^sequential_227/lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp<^sequential_227/lstm_682/lstm_cell_628/MatMul/ReadVariableOp>^sequential_227/lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp^sequential_227/lstm_682/while=^sequential_227/lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp<^sequential_227/lstm_683/lstm_cell_629/MatMul/ReadVariableOp>^sequential_227/lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp^sequential_227/lstm_683/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_227/dense_227/BiasAdd/ReadVariableOp/sequential_227/dense_227/BiasAdd/ReadVariableOp2`
.sequential_227/dense_227/MatMul/ReadVariableOp.sequential_227/dense_227/MatMul/ReadVariableOp2|
<sequential_227/lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp<sequential_227/lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp2z
;sequential_227/lstm_681/lstm_cell_627/MatMul/ReadVariableOp;sequential_227/lstm_681/lstm_cell_627/MatMul/ReadVariableOp2~
=sequential_227/lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp=sequential_227/lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp2>
sequential_227/lstm_681/whilesequential_227/lstm_681/while2|
<sequential_227/lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp<sequential_227/lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp2z
;sequential_227/lstm_682/lstm_cell_628/MatMul/ReadVariableOp;sequential_227/lstm_682/lstm_cell_628/MatMul/ReadVariableOp2~
=sequential_227/lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp=sequential_227/lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp2>
sequential_227/lstm_682/whilesequential_227/lstm_682/while2|
<sequential_227/lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp<sequential_227/lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp2z
;sequential_227/lstm_683/lstm_cell_629/MatMul/ReadVariableOp;sequential_227/lstm_683/lstm_cell_629/MatMul/ReadVariableOp2~
=sequential_227/lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp=sequential_227/lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp2>
sequential_227/lstm_683/whilesequential_227/lstm_683/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_681_input
?8
?
while_body_3810646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_628_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_628_matmul_readvariableop_resource:	d?G
4while_lstm_cell_628_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_628_biasadd_readvariableop_resource:	???*while/lstm_cell_628/BiasAdd/ReadVariableOp?)while/lstm_cell_628/MatMul/ReadVariableOp?+while/lstm_cell_628/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_628/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_628/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_628/addAddV2$while/lstm_cell_628/MatMul:product:0&while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_628/BiasAddBiasAddwhile/lstm_cell_628/add:z:02while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_628/splitSplit,while/lstm_cell_628/split/split_dim:output:0$while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_628/SigmoidSigmoid"while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_1Sigmoid"while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mulMul!while/lstm_cell_628/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_628/ReluRelu"while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_1Mulwhile/lstm_cell_628/Sigmoid:y:0&while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/add_1AddV2while/lstm_cell_628/mul:z:0while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_2Sigmoid"while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_628/Relu_1Reluwhile/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_2Mul!while/lstm_cell_628/Sigmoid_2:y:0(while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_628/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_628/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_628/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_628/BiasAdd/ReadVariableOp*^while/lstm_cell_628/MatMul/ReadVariableOp,^while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_628_biasadd_readvariableop_resource5while_lstm_cell_628_biasadd_readvariableop_resource_0"n
4while_lstm_cell_628_matmul_1_readvariableop_resource6while_lstm_cell_628_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_628_matmul_readvariableop_resource4while_lstm_cell_628_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_628/BiasAdd/ReadVariableOp*while/lstm_cell_628/BiasAdd/ReadVariableOp2V
)while/lstm_cell_628/MatMul/ReadVariableOp)while/lstm_cell_628/MatMul/ReadVariableOp2Z
+while/lstm_cell_628/MatMul_1/ReadVariableOp+while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3810932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_628_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_628_matmul_readvariableop_resource:	d?G
4while_lstm_cell_628_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_628_biasadd_readvariableop_resource:	???*while/lstm_cell_628/BiasAdd/ReadVariableOp?)while/lstm_cell_628/MatMul/ReadVariableOp?+while/lstm_cell_628/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_628/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_628/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_628/addAddV2$while/lstm_cell_628/MatMul:product:0&while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_628/BiasAddBiasAddwhile/lstm_cell_628/add:z:02while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_628/splitSplit,while/lstm_cell_628/split/split_dim:output:0$while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_628/SigmoidSigmoid"while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_1Sigmoid"while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mulMul!while/lstm_cell_628/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_628/ReluRelu"while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_1Mulwhile/lstm_cell_628/Sigmoid:y:0&while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/add_1AddV2while/lstm_cell_628/mul:z:0while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_2Sigmoid"while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_628/Relu_1Reluwhile/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_2Mul!while/lstm_cell_628/Sigmoid_2:y:0(while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_628/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_628/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_628/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_628/BiasAdd/ReadVariableOp*^while/lstm_cell_628/MatMul/ReadVariableOp,^while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_628_biasadd_readvariableop_resource5while_lstm_cell_628_biasadd_readvariableop_resource_0"n
4while_lstm_cell_628_matmul_1_readvariableop_resource6while_lstm_cell_628_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_628_matmul_readvariableop_resource4while_lstm_cell_628_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_628/BiasAdd/ReadVariableOp*while/lstm_cell_628/BiasAdd/ReadVariableOp2V
)while/lstm_cell_628/MatMul/ReadVariableOp)while/lstm_cell_628/MatMul/ReadVariableOp2Z
+while/lstm_cell_628/MatMul_1/ReadVariableOp+while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3810645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3810645___redundant_placeholder05
1while_while_cond_3810645___redundant_placeholder15
1while_while_cond_3810645___redundant_placeholder25
1while_while_cond_3810645___redundant_placeholder3
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
F__inference_dense_227_layer_call_and_return_conditional_losses_3811794

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
?
?
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808954
lstm_681_input#
lstm_681_3808927:	?#
lstm_681_3808929:	d?
lstm_681_3808931:	?#
lstm_682_3808934:	d?#
lstm_682_3808936:	2?
lstm_682_3808938:	?"
lstm_683_3808941:2("
lstm_683_3808943:
(
lstm_683_3808945:(#
dense_227_3808948:

dense_227_3808950:
identity??!dense_227/StatefulPartitionedCall? lstm_681/StatefulPartitionedCall? lstm_682/StatefulPartitionedCall? lstm_683/StatefulPartitionedCall?
 lstm_681/StatefulPartitionedCallStatefulPartitionedCalllstm_681_inputlstm_681_3808927lstm_681_3808929lstm_681_3808931*
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3807958?
 lstm_682/StatefulPartitionedCallStatefulPartitionedCall)lstm_681/StatefulPartitionedCall:output:0lstm_682_3808934lstm_682_3808936lstm_682_3808938*
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808108?
 lstm_683/StatefulPartitionedCallStatefulPartitionedCall)lstm_682/StatefulPartitionedCall:output:0lstm_683_3808941lstm_683_3808943lstm_683_3808945*
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808258?
!dense_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_683/StatefulPartitionedCall:output:0dense_227_3808948dense_227_3808950*
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
F__inference_dense_227_layer_call_and_return_conditional_losses_3808276y
IdentityIdentity*dense_227/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_227/StatefulPartitionedCall!^lstm_681/StatefulPartitionedCall!^lstm_682/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_227/StatefulPartitionedCall!dense_227/StatefulPartitionedCall2D
 lstm_681/StatefulPartitionedCall lstm_681/StatefulPartitionedCall2D
 lstm_682/StatefulPartitionedCall lstm_682/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_681_input
?
?
*__inference_lstm_682_layer_call_fn_3810576

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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808108s
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
while_body_3808555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_628_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_628_matmul_readvariableop_resource:	d?G
4while_lstm_cell_628_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_628_biasadd_readvariableop_resource:	???*while/lstm_cell_628/BiasAdd/ReadVariableOp?)while/lstm_cell_628/MatMul/ReadVariableOp?+while/lstm_cell_628/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_628/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_628/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_628/addAddV2$while/lstm_cell_628/MatMul:product:0&while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_628/BiasAddBiasAddwhile/lstm_cell_628/add:z:02while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_628/splitSplit,while/lstm_cell_628/split/split_dim:output:0$while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_628/SigmoidSigmoid"while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_1Sigmoid"while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mulMul!while/lstm_cell_628/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_628/ReluRelu"while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_1Mulwhile/lstm_cell_628/Sigmoid:y:0&while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/add_1AddV2while/lstm_cell_628/mul:z:0while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_2Sigmoid"while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_628/Relu_1Reluwhile/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_2Mul!while/lstm_cell_628/Sigmoid_2:y:0(while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_628/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_628/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_628/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_628/BiasAdd/ReadVariableOp*^while/lstm_cell_628/MatMul/ReadVariableOp,^while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_628_biasadd_readvariableop_resource5while_lstm_cell_628_biasadd_readvariableop_resource_0"n
4while_lstm_cell_628_matmul_1_readvariableop_resource6while_lstm_cell_628_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_628_matmul_readvariableop_resource4while_lstm_cell_628_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_628/BiasAdd/ReadVariableOp*while/lstm_cell_628/BiasAdd/ReadVariableOp2V
)while/lstm_cell_628/MatMul/ReadVariableOp)while/lstm_cell_628/MatMul/ReadVariableOp2Z
+while/lstm_cell_628/MatMul_1/ReadVariableOp+while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3809500

inputsH
5lstm_681_lstm_cell_627_matmul_readvariableop_resource:	?J
7lstm_681_lstm_cell_627_matmul_1_readvariableop_resource:	d?E
6lstm_681_lstm_cell_627_biasadd_readvariableop_resource:	?H
5lstm_682_lstm_cell_628_matmul_readvariableop_resource:	d?J
7lstm_682_lstm_cell_628_matmul_1_readvariableop_resource:	2?E
6lstm_682_lstm_cell_628_biasadd_readvariableop_resource:	?G
5lstm_683_lstm_cell_629_matmul_readvariableop_resource:2(I
7lstm_683_lstm_cell_629_matmul_1_readvariableop_resource:
(D
6lstm_683_lstm_cell_629_biasadd_readvariableop_resource:(:
(dense_227_matmul_readvariableop_resource:
7
)dense_227_biasadd_readvariableop_resource:
identity?? dense_227/BiasAdd/ReadVariableOp?dense_227/MatMul/ReadVariableOp?-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp?,lstm_681/lstm_cell_627/MatMul/ReadVariableOp?.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp?lstm_681/while?-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp?,lstm_682/lstm_cell_628/MatMul/ReadVariableOp?.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp?lstm_682/while?-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp?,lstm_683/lstm_cell_629/MatMul/ReadVariableOp?.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp?lstm_683/whileD
lstm_681/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_681/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_681/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_681/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_sliceStridedSlicelstm_681/Shape:output:0%lstm_681/strided_slice/stack:output:0'lstm_681/strided_slice/stack_1:output:0'lstm_681/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_681/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_681/zeros/packedPacklstm_681/strided_slice:output:0 lstm_681/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_681/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_681/zerosFilllstm_681/zeros/packed:output:0lstm_681/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_681/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_681/zeros_1/packedPacklstm_681/strided_slice:output:0"lstm_681/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_681/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_681/zeros_1Fill lstm_681/zeros_1/packed:output:0lstm_681/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_681/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_681/transpose	Transposeinputs lstm_681/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_681/Shape_1Shapelstm_681/transpose:y:0*
T0*
_output_shapes
:h
lstm_681/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_681/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_681/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_slice_1StridedSlicelstm_681/Shape_1:output:0'lstm_681/strided_slice_1/stack:output:0)lstm_681/strided_slice_1/stack_1:output:0)lstm_681/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_681/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_681/TensorArrayV2TensorListReserve-lstm_681/TensorArrayV2/element_shape:output:0!lstm_681/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_681/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_681/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_681/transpose:y:0Glstm_681/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_681/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_681/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_681/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_slice_2StridedSlicelstm_681/transpose:y:0'lstm_681/strided_slice_2/stack:output:0)lstm_681/strided_slice_2/stack_1:output:0)lstm_681/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_681/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp5lstm_681_lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_681/lstm_cell_627/MatMulMatMul!lstm_681/strided_slice_2:output:04lstm_681/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp7lstm_681_lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_681/lstm_cell_627/MatMul_1MatMullstm_681/zeros:output:06lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_681/lstm_cell_627/addAddV2'lstm_681/lstm_cell_627/MatMul:product:0)lstm_681/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp6lstm_681_lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_681/lstm_cell_627/BiasAddBiasAddlstm_681/lstm_cell_627/add:z:05lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_681/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_681/lstm_cell_627/splitSplit/lstm_681/lstm_cell_627/split/split_dim:output:0'lstm_681/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_681/lstm_cell_627/SigmoidSigmoid%lstm_681/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_681/lstm_cell_627/Sigmoid_1Sigmoid%lstm_681/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/mulMul$lstm_681/lstm_cell_627/Sigmoid_1:y:0lstm_681/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_681/lstm_cell_627/ReluRelu%lstm_681/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/mul_1Mul"lstm_681/lstm_cell_627/Sigmoid:y:0)lstm_681/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/add_1AddV2lstm_681/lstm_cell_627/mul:z:0 lstm_681/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_681/lstm_cell_627/Sigmoid_2Sigmoid%lstm_681/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_681/lstm_cell_627/Relu_1Relu lstm_681/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_681/lstm_cell_627/mul_2Mul$lstm_681/lstm_cell_627/Sigmoid_2:y:0+lstm_681/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_681/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_681/TensorArrayV2_1TensorListReserve/lstm_681/TensorArrayV2_1/element_shape:output:0!lstm_681/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_681/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_681/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_681/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_681/whileWhile$lstm_681/while/loop_counter:output:0*lstm_681/while/maximum_iterations:output:0lstm_681/time:output:0!lstm_681/TensorArrayV2_1:handle:0lstm_681/zeros:output:0lstm_681/zeros_1:output:0!lstm_681/strided_slice_1:output:0@lstm_681/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_681_lstm_cell_627_matmul_readvariableop_resource7lstm_681_lstm_cell_627_matmul_1_readvariableop_resource6lstm_681_lstm_cell_627_biasadd_readvariableop_resource*
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
lstm_681_while_body_3809132*'
condR
lstm_681_while_cond_3809131*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_681/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_681/TensorArrayV2Stack/TensorListStackTensorListStacklstm_681/while:output:3Blstm_681/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_681/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_681/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_681/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_681/strided_slice_3StridedSlice4lstm_681/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_681/strided_slice_3/stack:output:0)lstm_681/strided_slice_3/stack_1:output:0)lstm_681/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_681/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_681/transpose_1	Transpose4lstm_681/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_681/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_681/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_682/ShapeShapelstm_681/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_682/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_682/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_682/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_sliceStridedSlicelstm_682/Shape:output:0%lstm_682/strided_slice/stack:output:0'lstm_682/strided_slice/stack_1:output:0'lstm_682/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_682/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_682/zeros/packedPacklstm_682/strided_slice:output:0 lstm_682/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_682/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_682/zerosFilllstm_682/zeros/packed:output:0lstm_682/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_682/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_682/zeros_1/packedPacklstm_682/strided_slice:output:0"lstm_682/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_682/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_682/zeros_1Fill lstm_682/zeros_1/packed:output:0lstm_682/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_682/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_682/transpose	Transposelstm_681/transpose_1:y:0 lstm_682/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_682/Shape_1Shapelstm_682/transpose:y:0*
T0*
_output_shapes
:h
lstm_682/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_682/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_682/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_slice_1StridedSlicelstm_682/Shape_1:output:0'lstm_682/strided_slice_1/stack:output:0)lstm_682/strided_slice_1/stack_1:output:0)lstm_682/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_682/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_682/TensorArrayV2TensorListReserve-lstm_682/TensorArrayV2/element_shape:output:0!lstm_682/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_682/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_682/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_682/transpose:y:0Glstm_682/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_682/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_682/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_682/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_slice_2StridedSlicelstm_682/transpose:y:0'lstm_682/strided_slice_2/stack:output:0)lstm_682/strided_slice_2/stack_1:output:0)lstm_682/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_682/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp5lstm_682_lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_682/lstm_cell_628/MatMulMatMul!lstm_682/strided_slice_2:output:04lstm_682/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp7lstm_682_lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_682/lstm_cell_628/MatMul_1MatMullstm_682/zeros:output:06lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_682/lstm_cell_628/addAddV2'lstm_682/lstm_cell_628/MatMul:product:0)lstm_682/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp6lstm_682_lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_682/lstm_cell_628/BiasAddBiasAddlstm_682/lstm_cell_628/add:z:05lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_682/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_682/lstm_cell_628/splitSplit/lstm_682/lstm_cell_628/split/split_dim:output:0'lstm_682/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_682/lstm_cell_628/SigmoidSigmoid%lstm_682/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_682/lstm_cell_628/Sigmoid_1Sigmoid%lstm_682/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/mulMul$lstm_682/lstm_cell_628/Sigmoid_1:y:0lstm_682/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_682/lstm_cell_628/ReluRelu%lstm_682/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/mul_1Mul"lstm_682/lstm_cell_628/Sigmoid:y:0)lstm_682/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/add_1AddV2lstm_682/lstm_cell_628/mul:z:0 lstm_682/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_682/lstm_cell_628/Sigmoid_2Sigmoid%lstm_682/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_682/lstm_cell_628/Relu_1Relu lstm_682/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_682/lstm_cell_628/mul_2Mul$lstm_682/lstm_cell_628/Sigmoid_2:y:0+lstm_682/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_682/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_682/TensorArrayV2_1TensorListReserve/lstm_682/TensorArrayV2_1/element_shape:output:0!lstm_682/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_682/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_682/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_682/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_682/whileWhile$lstm_682/while/loop_counter:output:0*lstm_682/while/maximum_iterations:output:0lstm_682/time:output:0!lstm_682/TensorArrayV2_1:handle:0lstm_682/zeros:output:0lstm_682/zeros_1:output:0!lstm_682/strided_slice_1:output:0@lstm_682/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_682_lstm_cell_628_matmul_readvariableop_resource7lstm_682_lstm_cell_628_matmul_1_readvariableop_resource6lstm_682_lstm_cell_628_biasadd_readvariableop_resource*
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
lstm_682_while_body_3809271*'
condR
lstm_682_while_cond_3809270*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_682/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_682/TensorArrayV2Stack/TensorListStackTensorListStacklstm_682/while:output:3Blstm_682/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_682/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_682/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_682/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_682/strided_slice_3StridedSlice4lstm_682/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_682/strided_slice_3/stack:output:0)lstm_682/strided_slice_3/stack_1:output:0)lstm_682/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_682/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_682/transpose_1	Transpose4lstm_682/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_682/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_682/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_683/ShapeShapelstm_682/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_683/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_683/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_683/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_sliceStridedSlicelstm_683/Shape:output:0%lstm_683/strided_slice/stack:output:0'lstm_683/strided_slice/stack_1:output:0'lstm_683/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_683/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_683/zeros/packedPacklstm_683/strided_slice:output:0 lstm_683/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_683/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_683/zerosFilllstm_683/zeros/packed:output:0lstm_683/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_683/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_683/zeros_1/packedPacklstm_683/strided_slice:output:0"lstm_683/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_683/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_683/zeros_1Fill lstm_683/zeros_1/packed:output:0lstm_683/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_683/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_683/transpose	Transposelstm_682/transpose_1:y:0 lstm_683/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_683/Shape_1Shapelstm_683/transpose:y:0*
T0*
_output_shapes
:h
lstm_683/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_683/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_683/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_slice_1StridedSlicelstm_683/Shape_1:output:0'lstm_683/strided_slice_1/stack:output:0)lstm_683/strided_slice_1/stack_1:output:0)lstm_683/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_683/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_683/TensorArrayV2TensorListReserve-lstm_683/TensorArrayV2/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_683/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_683/transpose:y:0Glstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_683/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_683/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_683/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_slice_2StridedSlicelstm_683/transpose:y:0'lstm_683/strided_slice_2/stack:output:0)lstm_683/strided_slice_2/stack_1:output:0)lstm_683/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_683/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp5lstm_683_lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_683/lstm_cell_629/MatMulMatMul!lstm_683/strided_slice_2:output:04lstm_683/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp7lstm_683_lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_683/lstm_cell_629/MatMul_1MatMullstm_683/zeros:output:06lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_683/lstm_cell_629/addAddV2'lstm_683/lstm_cell_629/MatMul:product:0)lstm_683/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp6lstm_683_lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_683/lstm_cell_629/BiasAddBiasAddlstm_683/lstm_cell_629/add:z:05lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_683/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_683/lstm_cell_629/splitSplit/lstm_683/lstm_cell_629/split/split_dim:output:0'lstm_683/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_683/lstm_cell_629/SigmoidSigmoid%lstm_683/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_683/lstm_cell_629/Sigmoid_1Sigmoid%lstm_683/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/mulMul$lstm_683/lstm_cell_629/Sigmoid_1:y:0lstm_683/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_683/lstm_cell_629/ReluRelu%lstm_683/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/mul_1Mul"lstm_683/lstm_cell_629/Sigmoid:y:0)lstm_683/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/add_1AddV2lstm_683/lstm_cell_629/mul:z:0 lstm_683/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_683/lstm_cell_629/Sigmoid_2Sigmoid%lstm_683/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_683/lstm_cell_629/Relu_1Relu lstm_683/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_683/lstm_cell_629/mul_2Mul$lstm_683/lstm_cell_629/Sigmoid_2:y:0+lstm_683/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_683/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_683/TensorArrayV2_1TensorListReserve/lstm_683/TensorArrayV2_1/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_683/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_683/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_683/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_683/whileWhile$lstm_683/while/loop_counter:output:0*lstm_683/while/maximum_iterations:output:0lstm_683/time:output:0!lstm_683/TensorArrayV2_1:handle:0lstm_683/zeros:output:0lstm_683/zeros_1:output:0!lstm_683/strided_slice_1:output:0@lstm_683/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_683_lstm_cell_629_matmul_readvariableop_resource7lstm_683_lstm_cell_629_matmul_1_readvariableop_resource6lstm_683_lstm_cell_629_biasadd_readvariableop_resource*
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
lstm_683_while_body_3809410*'
condR
lstm_683_while_cond_3809409*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_683/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_683/TensorArrayV2Stack/TensorListStackTensorListStacklstm_683/while:output:3Blstm_683/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_683/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_683/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_683/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_683/strided_slice_3StridedSlice4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_683/strided_slice_3/stack:output:0)lstm_683/strided_slice_3/stack_1:output:0)lstm_683/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_683/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_683/transpose_1	Transpose4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_683/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_683/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_227/MatMul/ReadVariableOpReadVariableOp(dense_227_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_227/MatMulMatMul!lstm_683/strided_slice_3:output:0'dense_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_227/BiasAdd/ReadVariableOpReadVariableOp)dense_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_227/BiasAddBiasAdddense_227/MatMul:product:0(dense_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_227/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_227/BiasAdd/ReadVariableOp ^dense_227/MatMul/ReadVariableOp.^lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp-^lstm_681/lstm_cell_627/MatMul/ReadVariableOp/^lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp^lstm_681/while.^lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp-^lstm_682/lstm_cell_628/MatMul/ReadVariableOp/^lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp^lstm_682/while.^lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp-^lstm_683/lstm_cell_629/MatMul/ReadVariableOp/^lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp^lstm_683/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_227/BiasAdd/ReadVariableOp dense_227/BiasAdd/ReadVariableOp2B
dense_227/MatMul/ReadVariableOpdense_227/MatMul/ReadVariableOp2^
-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp-lstm_681/lstm_cell_627/BiasAdd/ReadVariableOp2\
,lstm_681/lstm_cell_627/MatMul/ReadVariableOp,lstm_681/lstm_cell_627/MatMul/ReadVariableOp2`
.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp.lstm_681/lstm_cell_627/MatMul_1/ReadVariableOp2 
lstm_681/whilelstm_681/while2^
-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp-lstm_682/lstm_cell_628/BiasAdd/ReadVariableOp2\
,lstm_682/lstm_cell_628/MatMul/ReadVariableOp,lstm_682/lstm_cell_628/MatMul/ReadVariableOp2`
.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp.lstm_682/lstm_cell_628/MatMul_1/ReadVariableOp2 
lstm_682/whilelstm_682/while2^
-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp-lstm_683/lstm_cell_629/BiasAdd/ReadVariableOp2\
,lstm_683/lstm_cell_629/MatMul/ReadVariableOp,lstm_683/lstm_cell_629/MatMul/ReadVariableOp2`
.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp.lstm_683/lstm_cell_629/MatMul_1/ReadVariableOp2 
lstm_683/whilelstm_683/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_682_layer_call_fn_3810587

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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808639s
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807322

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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808108

inputs?
,lstm_cell_628_matmul_readvariableop_resource:	d?A
.lstm_cell_628_matmul_1_readvariableop_resource:	2?<
-lstm_cell_628_biasadd_readvariableop_resource:	?
identity??$lstm_cell_628/BiasAdd/ReadVariableOp?#lstm_cell_628/MatMul/ReadVariableOp?%lstm_cell_628/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_628/MatMul/ReadVariableOpReadVariableOp,lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_628/MatMulMatMulstrided_slice_2:output:0+lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_628/MatMul_1MatMulzeros:output:0-lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_628/addAddV2lstm_cell_628/MatMul:product:0 lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_628/BiasAddBiasAddlstm_cell_628/add:z:0,lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_628/splitSplit&lstm_cell_628/split/split_dim:output:0lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_628/SigmoidSigmoidlstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_1Sigmoidlstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_628/mulMullstm_cell_628/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_628/ReluRelulstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_1Mullstm_cell_628/Sigmoid:y:0 lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_628/add_1AddV2lstm_cell_628/mul:z:0lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_2Sigmoidlstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_628/Relu_1Relulstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_2Mullstm_cell_628/Sigmoid_2:y:0"lstm_cell_628/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_628_matmul_readvariableop_resource.lstm_cell_628_matmul_1_readvariableop_resource-lstm_cell_628_biasadd_readvariableop_resource*
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
while_body_3808024*
condR
while_cond_3808023*K
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
NoOpNoOp%^lstm_cell_628/BiasAdd/ReadVariableOp$^lstm_cell_628/MatMul/ReadVariableOp&^lstm_cell_628/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_628/BiasAdd/ReadVariableOp$lstm_cell_628/BiasAdd/ReadVariableOp2J
#lstm_cell_628/MatMul/ReadVariableOp#lstm_cell_628/MatMul/ReadVariableOp2N
%lstm_cell_628/MatMul_1/ReadVariableOp%lstm_cell_628/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808258

inputs>
,lstm_cell_629_matmul_readvariableop_resource:2(@
.lstm_cell_629_matmul_1_readvariableop_resource:
(;
-lstm_cell_629_biasadd_readvariableop_resource:(
identity??$lstm_cell_629/BiasAdd/ReadVariableOp?#lstm_cell_629/MatMul/ReadVariableOp?%lstm_cell_629/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_629/MatMul/ReadVariableOpReadVariableOp,lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_629/MatMulMatMulstrided_slice_2:output:0+lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_629/MatMul_1MatMulzeros:output:0-lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_629/addAddV2lstm_cell_629/MatMul:product:0 lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_629/BiasAddBiasAddlstm_cell_629/add:z:0,lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_629/splitSplit&lstm_cell_629/split/split_dim:output:0lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_629/SigmoidSigmoidlstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_1Sigmoidlstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_629/mulMullstm_cell_629/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_629/ReluRelulstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_1Mullstm_cell_629/Sigmoid:y:0 lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_629/add_1AddV2lstm_cell_629/mul:z:0lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_2Sigmoidlstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_629/Relu_1Relulstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_2Mullstm_cell_629/Sigmoid_2:y:0"lstm_cell_629/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_629_matmul_readvariableop_resource.lstm_cell_629_matmul_1_readvariableop_resource-lstm_cell_629_biasadd_readvariableop_resource*
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
while_body_3808174*
condR
while_cond_3808173*K
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
NoOpNoOp%^lstm_cell_629/BiasAdd/ReadVariableOp$^lstm_cell_629/MatMul/ReadVariableOp&^lstm_cell_629/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_629/BiasAdd/ReadVariableOp$lstm_cell_629/BiasAdd/ReadVariableOp2J
#lstm_cell_629/MatMul/ReadVariableOp#lstm_cell_629/MatMul/ReadVariableOp2N
%lstm_cell_629/MatMul_1/ReadVariableOp%lstm_cell_629/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3810173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_627_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_627_matmul_readvariableop_resource:	?G
4while_lstm_cell_627_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_627_biasadd_readvariableop_resource:	???*while/lstm_cell_627/BiasAdd/ReadVariableOp?)while/lstm_cell_627/MatMul/ReadVariableOp?+while/lstm_cell_627/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_627/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_627/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_627/addAddV2$while/lstm_cell_627/MatMul:product:0&while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_627/BiasAddBiasAddwhile/lstm_cell_627/add:z:02while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_627/splitSplit,while/lstm_cell_627/split/split_dim:output:0$while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_627/SigmoidSigmoid"while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_1Sigmoid"while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mulMul!while/lstm_cell_627/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_627/ReluRelu"while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_1Mulwhile/lstm_cell_627/Sigmoid:y:0&while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/add_1AddV2while/lstm_cell_627/mul:z:0while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_2Sigmoid"while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_627/Relu_1Reluwhile/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_2Mul!while/lstm_cell_627/Sigmoid_2:y:0(while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_627/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_627/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_627/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_627/BiasAdd/ReadVariableOp*^while/lstm_cell_627/MatMul/ReadVariableOp,^while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_627_biasadd_readvariableop_resource5while_lstm_cell_627_biasadd_readvariableop_resource_0"n
4while_lstm_cell_627_matmul_1_readvariableop_resource6while_lstm_cell_627_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_627_matmul_readvariableop_resource4while_lstm_cell_627_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_627/BiasAdd/ReadVariableOp*while/lstm_cell_627/BiasAdd/ReadVariableOp2V
)while/lstm_cell_627/MatMul/ReadVariableOp)while/lstm_cell_627/MatMul/ReadVariableOp2Z
+while/lstm_cell_627/MatMul_1/ReadVariableOp+while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_683_while_cond_3809409.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_30
,lstm_683_while_less_lstm_683_strided_slice_1G
Clstm_683_while_lstm_683_while_cond_3809409___redundant_placeholder0G
Clstm_683_while_lstm_683_while_cond_3809409___redundant_placeholder1G
Clstm_683_while_lstm_683_while_cond_3809409___redundant_placeholder2G
Clstm_683_while_lstm_683_while_cond_3809409___redundant_placeholder3
lstm_683_while_identity
?
lstm_683/while/LessLesslstm_683_while_placeholder,lstm_683_while_less_lstm_683_strided_slice_1*
T0*
_output_shapes
: ]
lstm_683/while/IdentityIdentitylstm_683/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_683_while_identity lstm_683/while/Identity:output:0*(
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3811958

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
?
*__inference_lstm_683_layer_call_fn_3811170
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3807609o
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811775

inputs>
,lstm_cell_629_matmul_readvariableop_resource:2(@
.lstm_cell_629_matmul_1_readvariableop_resource:
(;
-lstm_cell_629_biasadd_readvariableop_resource:(
identity??$lstm_cell_629/BiasAdd/ReadVariableOp?#lstm_cell_629/MatMul/ReadVariableOp?%lstm_cell_629/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_629/MatMul/ReadVariableOpReadVariableOp,lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_629/MatMulMatMulstrided_slice_2:output:0+lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_629/MatMul_1MatMulzeros:output:0-lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_629/addAddV2lstm_cell_629/MatMul:product:0 lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_629/BiasAddBiasAddlstm_cell_629/add:z:0,lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_629/splitSplit&lstm_cell_629/split/split_dim:output:0lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_629/SigmoidSigmoidlstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_1Sigmoidlstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_629/mulMullstm_cell_629/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_629/ReluRelulstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_1Mullstm_cell_629/Sigmoid:y:0 lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_629/add_1AddV2lstm_cell_629/mul:z:0lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_2Sigmoidlstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_629/Relu_1Relulstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_2Mullstm_cell_629/Sigmoid_2:y:0"lstm_cell_629/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_629_matmul_readvariableop_resource.lstm_cell_629_matmul_1_readvariableop_resource-lstm_cell_629_biasadd_readvariableop_resource*
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
while_body_3811691*
condR
while_cond_3811690*K
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
NoOpNoOp%^lstm_cell_629/BiasAdd/ReadVariableOp$^lstm_cell_629/MatMul/ReadVariableOp&^lstm_cell_629/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_629/BiasAdd/ReadVariableOp$lstm_cell_629/BiasAdd/ReadVariableOp2J
#lstm_cell_629/MatMul/ReadVariableOp#lstm_cell_629/MatMul/ReadVariableOp2N
%lstm_cell_629/MatMul_1/ReadVariableOp%lstm_cell_629/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3808173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3808173___redundant_placeholder05
1while_while_cond_3808173___redundant_placeholder15
1while_while_cond_3808173___redundant_placeholder25
1while_while_cond_3808173___redundant_placeholder3
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3811016

inputs?
,lstm_cell_628_matmul_readvariableop_resource:	d?A
.lstm_cell_628_matmul_1_readvariableop_resource:	2?<
-lstm_cell_628_biasadd_readvariableop_resource:	?
identity??$lstm_cell_628/BiasAdd/ReadVariableOp?#lstm_cell_628/MatMul/ReadVariableOp?%lstm_cell_628/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_628/MatMul/ReadVariableOpReadVariableOp,lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_628/MatMulMatMulstrided_slice_2:output:0+lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_628/MatMul_1MatMulzeros:output:0-lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_628/addAddV2lstm_cell_628/MatMul:product:0 lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_628/BiasAddBiasAddlstm_cell_628/add:z:0,lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_628/splitSplit&lstm_cell_628/split/split_dim:output:0lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_628/SigmoidSigmoidlstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_1Sigmoidlstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_628/mulMullstm_cell_628/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_628/ReluRelulstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_1Mullstm_cell_628/Sigmoid:y:0 lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_628/add_1AddV2lstm_cell_628/mul:z:0lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_2Sigmoidlstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_628/Relu_1Relulstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_2Mullstm_cell_628/Sigmoid_2:y:0"lstm_cell_628/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_628_matmul_readvariableop_resource.lstm_cell_628_matmul_1_readvariableop_resource-lstm_cell_628_biasadd_readvariableop_resource*
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
while_body_3810932*
condR
while_cond_3810931*K
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
NoOpNoOp%^lstm_cell_628/BiasAdd/ReadVariableOp$^lstm_cell_628/MatMul/ReadVariableOp&^lstm_cell_628/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_628/BiasAdd/ReadVariableOp$lstm_cell_628/BiasAdd/ReadVariableOp2J
#lstm_cell_628/MatMul/ReadVariableOp#lstm_cell_628/MatMul/ReadVariableOp2N
%lstm_cell_628/MatMul_1/ReadVariableOp%lstm_cell_628/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3807874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_627_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_627_matmul_readvariableop_resource:	?G
4while_lstm_cell_627_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_627_biasadd_readvariableop_resource:	???*while/lstm_cell_627/BiasAdd/ReadVariableOp?)while/lstm_cell_627/MatMul/ReadVariableOp?+while/lstm_cell_627/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_627/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_627/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_627/addAddV2$while/lstm_cell_627/MatMul:product:0&while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_627/BiasAddBiasAddwhile/lstm_cell_627/add:z:02while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_627/splitSplit,while/lstm_cell_627/split/split_dim:output:0$while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_627/SigmoidSigmoid"while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_1Sigmoid"while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mulMul!while/lstm_cell_627/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_627/ReluRelu"while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_1Mulwhile/lstm_cell_627/Sigmoid:y:0&while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/add_1AddV2while/lstm_cell_627/mul:z:0while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_2Sigmoid"while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_627/Relu_1Reluwhile/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_2Mul!while/lstm_cell_627/Sigmoid_2:y:0(while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_627/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_627/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_627/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_627/BiasAdd/ReadVariableOp*^while/lstm_cell_627/MatMul/ReadVariableOp,^while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_627_biasadd_readvariableop_resource5while_lstm_cell_627_biasadd_readvariableop_resource_0"n
4while_lstm_cell_627_matmul_1_readvariableop_resource6while_lstm_cell_627_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_627_matmul_readvariableop_resource4while_lstm_cell_627_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_627/BiasAdd/ReadVariableOp*while/lstm_cell_627/BiasAdd/ReadVariableOp2V
)while/lstm_cell_627/MatMul/ReadVariableOp)while/lstm_cell_627/MatMul/ReadVariableOp2Z
+while/lstm_cell_627/MatMul_1/ReadVariableOp+while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3808390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_629_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_629_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_629_matmul_readvariableop_resource:2(F
4while_lstm_cell_629_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_629_biasadd_readvariableop_resource:(??*while/lstm_cell_629/BiasAdd/ReadVariableOp?)while/lstm_cell_629/MatMul/ReadVariableOp?+while/lstm_cell_629/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_629/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_629/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_629/addAddV2$while/lstm_cell_629/MatMul:product:0&while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_629/BiasAddBiasAddwhile/lstm_cell_629/add:z:02while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_629/splitSplit,while/lstm_cell_629/split/split_dim:output:0$while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_629/SigmoidSigmoid"while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_1Sigmoid"while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mulMul!while/lstm_cell_629/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_629/ReluRelu"while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_1Mulwhile/lstm_cell_629/Sigmoid:y:0&while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/add_1AddV2while/lstm_cell_629/mul:z:0while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_2Sigmoid"while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_629/Relu_1Reluwhile/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_2Mul!while/lstm_cell_629/Sigmoid_2:y:0(while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_629/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_629/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_629/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_629/BiasAdd/ReadVariableOp*^while/lstm_cell_629/MatMul/ReadVariableOp,^while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_629_biasadd_readvariableop_resource5while_lstm_cell_629_biasadd_readvariableop_resource_0"n
4while_lstm_cell_629_matmul_1_readvariableop_resource6while_lstm_cell_629_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_629_matmul_readvariableop_resource4while_lstm_cell_629_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_629/BiasAdd/ReadVariableOp*while/lstm_cell_629/BiasAdd/ReadVariableOp2V
)while/lstm_cell_629/MatMul/ReadVariableOp)while/lstm_cell_629/MatMul/ReadVariableOp2Z
+while/lstm_cell_629/MatMul_1/ReadVariableOp+while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3811159

inputs?
,lstm_cell_628_matmul_readvariableop_resource:	d?A
.lstm_cell_628_matmul_1_readvariableop_resource:	2?<
-lstm_cell_628_biasadd_readvariableop_resource:	?
identity??$lstm_cell_628/BiasAdd/ReadVariableOp?#lstm_cell_628/MatMul/ReadVariableOp?%lstm_cell_628/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_628/MatMul/ReadVariableOpReadVariableOp,lstm_cell_628_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_628/MatMulMatMulstrided_slice_2:output:0+lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_628_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_628/MatMul_1MatMulzeros:output:0-lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_628/addAddV2lstm_cell_628/MatMul:product:0 lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_628_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_628/BiasAddBiasAddlstm_cell_628/add:z:0,lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_628/splitSplit&lstm_cell_628/split/split_dim:output:0lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_628/SigmoidSigmoidlstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_1Sigmoidlstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_628/mulMullstm_cell_628/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_628/ReluRelulstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_1Mullstm_cell_628/Sigmoid:y:0 lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_628/add_1AddV2lstm_cell_628/mul:z:0lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_628/Sigmoid_2Sigmoidlstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_628/Relu_1Relulstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_628/mul_2Mullstm_cell_628/Sigmoid_2:y:0"lstm_cell_628/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_628_matmul_readvariableop_resource.lstm_cell_628_matmul_1_readvariableop_resource-lstm_cell_628_biasadd_readvariableop_resource*
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
while_body_3811075*
condR
while_cond_3811074*K
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
NoOpNoOp%^lstm_cell_628/BiasAdd/ReadVariableOp$^lstm_cell_628/MatMul/ReadVariableOp&^lstm_cell_628/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_628/BiasAdd/ReadVariableOp$lstm_cell_628/BiasAdd/ReadVariableOp2J
#lstm_cell_628/MatMul/ReadVariableOp#lstm_cell_628/MatMul/ReadVariableOp2N
%lstm_cell_628/MatMul_1/ReadVariableOp%lstm_cell_628/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3810789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_628_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_628_matmul_readvariableop_resource:	d?G
4while_lstm_cell_628_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_628_biasadd_readvariableop_resource:	???*while/lstm_cell_628/BiasAdd/ReadVariableOp?)while/lstm_cell_628/MatMul/ReadVariableOp?+while/lstm_cell_628/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_628/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_628/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_628/addAddV2$while/lstm_cell_628/MatMul:product:0&while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_628/BiasAddBiasAddwhile/lstm_cell_628/add:z:02while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_628/splitSplit,while/lstm_cell_628/split/split_dim:output:0$while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_628/SigmoidSigmoid"while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_1Sigmoid"while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mulMul!while/lstm_cell_628/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_628/ReluRelu"while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_1Mulwhile/lstm_cell_628/Sigmoid:y:0&while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/add_1AddV2while/lstm_cell_628/mul:z:0while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_2Sigmoid"while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_628/Relu_1Reluwhile/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_2Mul!while/lstm_cell_628/Sigmoid_2:y:0(while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_628/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_628/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_628/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_628/BiasAdd/ReadVariableOp*^while/lstm_cell_628/MatMul/ReadVariableOp,^while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_628_biasadd_readvariableop_resource5while_lstm_cell_628_biasadd_readvariableop_resource_0"n
4while_lstm_cell_628_matmul_1_readvariableop_resource6while_lstm_cell_628_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_628_matmul_readvariableop_resource4while_lstm_cell_628_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_628/BiasAdd/ReadVariableOp*while/lstm_cell_628/BiasAdd/ReadVariableOp2V
)while/lstm_cell_628/MatMul/ReadVariableOp)while/lstm_cell_628/MatMul/ReadVariableOp2Z
+while/lstm_cell_628/MatMul_1/ReadVariableOp+while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_629_layer_call_fn_3812007

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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807526o
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
while_cond_3810029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3810029___redundant_placeholder05
1while_while_cond_3810029___redundant_placeholder15
1while_while_cond_3810029___redundant_placeholder25
1while_while_cond_3810029___redundant_placeholder3
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
while_cond_3810172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3810172___redundant_placeholder05
1while_while_cond_3810172___redundant_placeholder15
1while_while_cond_3810172___redundant_placeholder25
1while_while_cond_3810172___redundant_placeholder3
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
+__inference_dense_227_layer_call_fn_3811784

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
F__inference_dense_227_layer_call_and_return_conditional_losses_3808276o
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
*__inference_lstm_682_layer_call_fn_3810554
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3807259|
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

?
lstm_682_while_cond_3809697.
*lstm_682_while_lstm_682_while_loop_counter4
0lstm_682_while_lstm_682_while_maximum_iterations
lstm_682_while_placeholder 
lstm_682_while_placeholder_1 
lstm_682_while_placeholder_2 
lstm_682_while_placeholder_30
,lstm_682_while_less_lstm_682_strided_slice_1G
Clstm_682_while_lstm_682_while_cond_3809697___redundant_placeholder0G
Clstm_682_while_lstm_682_while_cond_3809697___redundant_placeholder1G
Clstm_682_while_lstm_682_while_cond_3809697___redundant_placeholder2G
Clstm_682_while_lstm_682_while_cond_3809697___redundant_placeholder3
lstm_682_while_identity
?
lstm_682/while/LessLesslstm_682_while_placeholder,lstm_682_while_less_lstm_682_strided_slice_1*
T0*
_output_shapes
: ]
lstm_682/while/IdentityIdentitylstm_682/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_682_while_identity lstm_682/while/Identity:output:0*(
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
while_cond_3808554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3808554___redundant_placeholder05
1while_while_cond_3808554___redundant_placeholder15
1while_while_cond_3808554___redundant_placeholder25
1while_while_cond_3808554___redundant_placeholder3
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
/__inference_lstm_cell_628_layer_call_fn_3811909

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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807176o
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
while_body_3807031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_627_3807055_0:	?0
while_lstm_cell_627_3807057_0:	d?,
while_lstm_cell_627_3807059_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_627_3807055:	?.
while_lstm_cell_627_3807057:	d?*
while_lstm_cell_627_3807059:	???+while/lstm_cell_627/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_627/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_627_3807055_0while_lstm_cell_627_3807057_0while_lstm_cell_627_3807059_0*
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806972?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_627/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_627/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_627/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_627/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_627_3807055while_lstm_cell_627_3807055_0"<
while_lstm_cell_627_3807057while_lstm_cell_627_3807057_0"<
while_lstm_cell_627_3807059while_lstm_cell_627_3807059_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_627/StatefulPartitionedCall+while/lstm_cell_627/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808984
lstm_681_input#
lstm_681_3808957:	?#
lstm_681_3808959:	d?
lstm_681_3808961:	?#
lstm_682_3808964:	d?#
lstm_682_3808966:	2?
lstm_682_3808968:	?"
lstm_683_3808971:2("
lstm_683_3808973:
(
lstm_683_3808975:(#
dense_227_3808978:

dense_227_3808980:
identity??!dense_227/StatefulPartitionedCall? lstm_681/StatefulPartitionedCall? lstm_682/StatefulPartitionedCall? lstm_683/StatefulPartitionedCall?
 lstm_681/StatefulPartitionedCallStatefulPartitionedCalllstm_681_inputlstm_681_3808957lstm_681_3808959lstm_681_3808961*
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3808804?
 lstm_682/StatefulPartitionedCallStatefulPartitionedCall)lstm_681/StatefulPartitionedCall:output:0lstm_682_3808964lstm_682_3808966lstm_682_3808968*
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808639?
 lstm_683/StatefulPartitionedCallStatefulPartitionedCall)lstm_682/StatefulPartitionedCall:output:0lstm_683_3808971lstm_683_3808973lstm_683_3808975*
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808474?
!dense_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_683/StatefulPartitionedCall:output:0dense_227_3808978dense_227_3808980*
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
F__inference_dense_227_layer_call_and_return_conditional_losses_3808276y
IdentityIdentity*dense_227/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_227/StatefulPartitionedCall!^lstm_681/StatefulPartitionedCall!^lstm_682/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_227/StatefulPartitionedCall!dense_227/StatefulPartitionedCall2D
 lstm_681/StatefulPartitionedCall lstm_681/StatefulPartitionedCall2D
 lstm_682/StatefulPartitionedCall lstm_682/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_681_input
?
?
while_cond_3811404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3811404___redundant_placeholder05
1while_while_cond_3811404___redundant_placeholder15
1while_while_cond_3811404___redundant_placeholder25
1while_while_cond_3811404___redundant_placeholder3
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

lstm_682_while_body_3809698.
*lstm_682_while_lstm_682_while_loop_counter4
0lstm_682_while_lstm_682_while_maximum_iterations
lstm_682_while_placeholder 
lstm_682_while_placeholder_1 
lstm_682_while_placeholder_2 
lstm_682_while_placeholder_3-
)lstm_682_while_lstm_682_strided_slice_1_0i
elstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0:	d?R
?lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?M
>lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
lstm_682_while_identity
lstm_682_while_identity_1
lstm_682_while_identity_2
lstm_682_while_identity_3
lstm_682_while_identity_4
lstm_682_while_identity_5+
'lstm_682_while_lstm_682_strided_slice_1g
clstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensorN
;lstm_682_while_lstm_cell_628_matmul_readvariableop_resource:	d?P
=lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource:	2?K
<lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource:	???3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp?2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp?4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp?
@lstm_682/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_682/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensor_0lstm_682_while_placeholderIlstm_682/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp=lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_682/while/lstm_cell_628/MatMulMatMul9lstm_682/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp?lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_682/while/lstm_cell_628/MatMul_1MatMullstm_682_while_placeholder_2<lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_682/while/lstm_cell_628/addAddV2-lstm_682/while/lstm_cell_628/MatMul:product:0/lstm_682/while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp>lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_682/while/lstm_cell_628/BiasAddBiasAdd$lstm_682/while/lstm_cell_628/add:z:0;lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_682/while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_682/while/lstm_cell_628/splitSplit5lstm_682/while/lstm_cell_628/split/split_dim:output:0-lstm_682/while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_682/while/lstm_cell_628/SigmoidSigmoid+lstm_682/while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_682/while/lstm_cell_628/Sigmoid_1Sigmoid+lstm_682/while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_682/while/lstm_cell_628/mulMul*lstm_682/while/lstm_cell_628/Sigmoid_1:y:0lstm_682_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_682/while/lstm_cell_628/ReluRelu+lstm_682/while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_682/while/lstm_cell_628/mul_1Mul(lstm_682/while/lstm_cell_628/Sigmoid:y:0/lstm_682/while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_682/while/lstm_cell_628/add_1AddV2$lstm_682/while/lstm_cell_628/mul:z:0&lstm_682/while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_682/while/lstm_cell_628/Sigmoid_2Sigmoid+lstm_682/while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_682/while/lstm_cell_628/Relu_1Relu&lstm_682/while/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_682/while/lstm_cell_628/mul_2Mul*lstm_682/while/lstm_cell_628/Sigmoid_2:y:01lstm_682/while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_682/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_682_while_placeholder_1lstm_682_while_placeholder&lstm_682/while/lstm_cell_628/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_682/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_682/while/addAddV2lstm_682_while_placeholderlstm_682/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_682/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_682/while/add_1AddV2*lstm_682_while_lstm_682_while_loop_counterlstm_682/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_682/while/IdentityIdentitylstm_682/while/add_1:z:0^lstm_682/while/NoOp*
T0*
_output_shapes
: ?
lstm_682/while/Identity_1Identity0lstm_682_while_lstm_682_while_maximum_iterations^lstm_682/while/NoOp*
T0*
_output_shapes
: t
lstm_682/while/Identity_2Identitylstm_682/while/add:z:0^lstm_682/while/NoOp*
T0*
_output_shapes
: ?
lstm_682/while/Identity_3IdentityClstm_682/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_682/while/NoOp*
T0*
_output_shapes
: ?
lstm_682/while/Identity_4Identity&lstm_682/while/lstm_cell_628/mul_2:z:0^lstm_682/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_682/while/Identity_5Identity&lstm_682/while/lstm_cell_628/add_1:z:0^lstm_682/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_682/while/NoOpNoOp4^lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp3^lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp5^lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_682_while_identity lstm_682/while/Identity:output:0"?
lstm_682_while_identity_1"lstm_682/while/Identity_1:output:0"?
lstm_682_while_identity_2"lstm_682/while/Identity_2:output:0"?
lstm_682_while_identity_3"lstm_682/while/Identity_3:output:0"?
lstm_682_while_identity_4"lstm_682/while/Identity_4:output:0"?
lstm_682_while_identity_5"lstm_682/while/Identity_5:output:0"T
'lstm_682_while_lstm_682_strided_slice_1)lstm_682_while_lstm_682_strided_slice_1_0"~
<lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource>lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0"?
=lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource?lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0"|
;lstm_682_while_lstm_cell_628_matmul_readvariableop_resource=lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0"?
clstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensorelstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp2h
2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp2l
4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_627_layer_call_fn_3811811

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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806826o
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
while_cond_3806839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3806839___redundant_placeholder05
1while_while_cond_3806839___redundant_placeholder15
1while_while_cond_3806839___redundant_placeholder25
1while_while_cond_3806839___redundant_placeholder3
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

lstm_682_while_body_3809271.
*lstm_682_while_lstm_682_while_loop_counter4
0lstm_682_while_lstm_682_while_maximum_iterations
lstm_682_while_placeholder 
lstm_682_while_placeholder_1 
lstm_682_while_placeholder_2 
lstm_682_while_placeholder_3-
)lstm_682_while_lstm_682_strided_slice_1_0i
elstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0:	d?R
?lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?M
>lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
lstm_682_while_identity
lstm_682_while_identity_1
lstm_682_while_identity_2
lstm_682_while_identity_3
lstm_682_while_identity_4
lstm_682_while_identity_5+
'lstm_682_while_lstm_682_strided_slice_1g
clstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensorN
;lstm_682_while_lstm_cell_628_matmul_readvariableop_resource:	d?P
=lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource:	2?K
<lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource:	???3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp?2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp?4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp?
@lstm_682/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_682/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensor_0lstm_682_while_placeholderIlstm_682/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp=lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_682/while/lstm_cell_628/MatMulMatMul9lstm_682/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp?lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_682/while/lstm_cell_628/MatMul_1MatMullstm_682_while_placeholder_2<lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_682/while/lstm_cell_628/addAddV2-lstm_682/while/lstm_cell_628/MatMul:product:0/lstm_682/while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp>lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_682/while/lstm_cell_628/BiasAddBiasAdd$lstm_682/while/lstm_cell_628/add:z:0;lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_682/while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_682/while/lstm_cell_628/splitSplit5lstm_682/while/lstm_cell_628/split/split_dim:output:0-lstm_682/while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_682/while/lstm_cell_628/SigmoidSigmoid+lstm_682/while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_682/while/lstm_cell_628/Sigmoid_1Sigmoid+lstm_682/while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_682/while/lstm_cell_628/mulMul*lstm_682/while/lstm_cell_628/Sigmoid_1:y:0lstm_682_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_682/while/lstm_cell_628/ReluRelu+lstm_682/while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_682/while/lstm_cell_628/mul_1Mul(lstm_682/while/lstm_cell_628/Sigmoid:y:0/lstm_682/while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_682/while/lstm_cell_628/add_1AddV2$lstm_682/while/lstm_cell_628/mul:z:0&lstm_682/while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_682/while/lstm_cell_628/Sigmoid_2Sigmoid+lstm_682/while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_682/while/lstm_cell_628/Relu_1Relu&lstm_682/while/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_682/while/lstm_cell_628/mul_2Mul*lstm_682/while/lstm_cell_628/Sigmoid_2:y:01lstm_682/while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_682/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_682_while_placeholder_1lstm_682_while_placeholder&lstm_682/while/lstm_cell_628/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_682/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_682/while/addAddV2lstm_682_while_placeholderlstm_682/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_682/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_682/while/add_1AddV2*lstm_682_while_lstm_682_while_loop_counterlstm_682/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_682/while/IdentityIdentitylstm_682/while/add_1:z:0^lstm_682/while/NoOp*
T0*
_output_shapes
: ?
lstm_682/while/Identity_1Identity0lstm_682_while_lstm_682_while_maximum_iterations^lstm_682/while/NoOp*
T0*
_output_shapes
: t
lstm_682/while/Identity_2Identitylstm_682/while/add:z:0^lstm_682/while/NoOp*
T0*
_output_shapes
: ?
lstm_682/while/Identity_3IdentityClstm_682/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_682/while/NoOp*
T0*
_output_shapes
: ?
lstm_682/while/Identity_4Identity&lstm_682/while/lstm_cell_628/mul_2:z:0^lstm_682/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_682/while/Identity_5Identity&lstm_682/while/lstm_cell_628/add_1:z:0^lstm_682/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_682/while/NoOpNoOp4^lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp3^lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp5^lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_682_while_identity lstm_682/while/Identity:output:0"?
lstm_682_while_identity_1"lstm_682/while/Identity_1:output:0"?
lstm_682_while_identity_2"lstm_682/while/Identity_2:output:0"?
lstm_682_while_identity_3"lstm_682/while/Identity_3:output:0"?
lstm_682_while_identity_4"lstm_682/while/Identity_4:output:0"?
lstm_682_while_identity_5"lstm_682/while/Identity_5:output:0"T
'lstm_682_while_lstm_682_strided_slice_1)lstm_682_while_lstm_682_strided_slice_1_0"~
<lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource>lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0"?
=lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource?lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0"|
;lstm_682_while_lstm_cell_628_matmul_readvariableop_resource=lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0"?
clstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensorelstm_682_while_tensorarrayv2read_tensorlistgetitem_lstm_682_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp3lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp2h
2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp2lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp2l
4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp4lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_227_lstm_682_while_cond_3806529L
Hsequential_227_lstm_682_while_sequential_227_lstm_682_while_loop_counterR
Nsequential_227_lstm_682_while_sequential_227_lstm_682_while_maximum_iterations-
)sequential_227_lstm_682_while_placeholder/
+sequential_227_lstm_682_while_placeholder_1/
+sequential_227_lstm_682_while_placeholder_2/
+sequential_227_lstm_682_while_placeholder_3N
Jsequential_227_lstm_682_while_less_sequential_227_lstm_682_strided_slice_1e
asequential_227_lstm_682_while_sequential_227_lstm_682_while_cond_3806529___redundant_placeholder0e
asequential_227_lstm_682_while_sequential_227_lstm_682_while_cond_3806529___redundant_placeholder1e
asequential_227_lstm_682_while_sequential_227_lstm_682_while_cond_3806529___redundant_placeholder2e
asequential_227_lstm_682_while_sequential_227_lstm_682_while_cond_3806529___redundant_placeholder3*
&sequential_227_lstm_682_while_identity
?
"sequential_227/lstm_682/while/LessLess)sequential_227_lstm_682_while_placeholderJsequential_227_lstm_682_while_less_sequential_227_lstm_682_strided_slice_1*
T0*
_output_shapes
: {
&sequential_227/lstm_682/while/IdentityIdentity&sequential_227/lstm_682/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_227_lstm_682_while_identity/sequential_227/lstm_682/while/Identity:output:0*(
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

lstm_683_while_body_3809410.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_3-
)lstm_683_while_lstm_683_strided_slice_1_0i
elstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0:2(Q
?lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(L
>lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0:(
lstm_683_while_identity
lstm_683_while_identity_1
lstm_683_while_identity_2
lstm_683_while_identity_3
lstm_683_while_identity_4
lstm_683_while_identity_5+
'lstm_683_while_lstm_683_strided_slice_1g
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorM
;lstm_683_while_lstm_cell_629_matmul_readvariableop_resource:2(O
=lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource:
(J
<lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource:(??3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp?2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp?4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp?
@lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_683/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0lstm_683_while_placeholderIlstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp=lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_683/while/lstm_cell_629/MatMulMatMul9lstm_683/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp?lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_683/while/lstm_cell_629/MatMul_1MatMullstm_683_while_placeholder_2<lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_683/while/lstm_cell_629/addAddV2-lstm_683/while/lstm_cell_629/MatMul:product:0/lstm_683/while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp>lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_683/while/lstm_cell_629/BiasAddBiasAdd$lstm_683/while/lstm_cell_629/add:z:0;lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_683/while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_683/while/lstm_cell_629/splitSplit5lstm_683/while/lstm_cell_629/split/split_dim:output:0-lstm_683/while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_683/while/lstm_cell_629/SigmoidSigmoid+lstm_683/while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_683/while/lstm_cell_629/Sigmoid_1Sigmoid+lstm_683/while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_683/while/lstm_cell_629/mulMul*lstm_683/while/lstm_cell_629/Sigmoid_1:y:0lstm_683_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_683/while/lstm_cell_629/ReluRelu+lstm_683/while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_683/while/lstm_cell_629/mul_1Mul(lstm_683/while/lstm_cell_629/Sigmoid:y:0/lstm_683/while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_683/while/lstm_cell_629/add_1AddV2$lstm_683/while/lstm_cell_629/mul:z:0&lstm_683/while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_683/while/lstm_cell_629/Sigmoid_2Sigmoid+lstm_683/while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_683/while/lstm_cell_629/Relu_1Relu&lstm_683/while/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_683/while/lstm_cell_629/mul_2Mul*lstm_683/while/lstm_cell_629/Sigmoid_2:y:01lstm_683/while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_683/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_683_while_placeholder_1lstm_683_while_placeholder&lstm_683/while/lstm_cell_629/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_683/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_683/while/addAddV2lstm_683_while_placeholderlstm_683/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_683/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_683/while/add_1AddV2*lstm_683_while_lstm_683_while_loop_counterlstm_683/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_683/while/IdentityIdentitylstm_683/while/add_1:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: ?
lstm_683/while/Identity_1Identity0lstm_683_while_lstm_683_while_maximum_iterations^lstm_683/while/NoOp*
T0*
_output_shapes
: t
lstm_683/while/Identity_2Identitylstm_683/while/add:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: ?
lstm_683/while/Identity_3IdentityClstm_683/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_683/while/NoOp*
T0*
_output_shapes
: ?
lstm_683/while/Identity_4Identity&lstm_683/while/lstm_cell_629/mul_2:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_683/while/Identity_5Identity&lstm_683/while/lstm_cell_629/add_1:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_683/while/NoOpNoOp4^lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp3^lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp5^lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_683_while_identity lstm_683/while/Identity:output:0"?
lstm_683_while_identity_1"lstm_683/while/Identity_1:output:0"?
lstm_683_while_identity_2"lstm_683/while/Identity_2:output:0"?
lstm_683_while_identity_3"lstm_683/while/Identity_3:output:0"?
lstm_683_while_identity_4"lstm_683/while/Identity_4:output:0"?
lstm_683_while_identity_5"lstm_683/while/Identity_5:output:0"T
'lstm_683_while_lstm_683_strided_slice_1)lstm_683_while_lstm_683_strided_slice_1_0"~
<lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource>lstm_683_while_lstm_cell_629_biasadd_readvariableop_resource_0"?
=lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource?lstm_683_while_lstm_cell_629_matmul_1_readvariableop_resource_0"|
;lstm_683_while_lstm_cell_629_matmul_readvariableop_resource=lstm_683_while_lstm_cell_629_matmul_readvariableop_resource_0"?
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp3lstm_683/while/lstm_cell_629/BiasAdd/ReadVariableOp2h
2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp2lstm_683/while/lstm_cell_629/MatMul/ReadVariableOp2l
4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp4lstm_683/while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3807609

inputs'
lstm_cell_629_3807527:2('
lstm_cell_629_3807529:
(#
lstm_cell_629_3807531:(
identity??%lstm_cell_629/StatefulPartitionedCall?while;
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
%lstm_cell_629/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_629_3807527lstm_cell_629_3807529lstm_cell_629_3807531*
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807526n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_629_3807527lstm_cell_629_3807529lstm_cell_629_3807531*
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
while_body_3807540*
condR
while_cond_3807539*K
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
NoOpNoOp&^lstm_cell_629/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_629/StatefulPartitionedCall%lstm_cell_629/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811489
inputs_0>
,lstm_cell_629_matmul_readvariableop_resource:2(@
.lstm_cell_629_matmul_1_readvariableop_resource:
(;
-lstm_cell_629_biasadd_readvariableop_resource:(
identity??$lstm_cell_629/BiasAdd/ReadVariableOp?#lstm_cell_629/MatMul/ReadVariableOp?%lstm_cell_629/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_629/MatMul/ReadVariableOpReadVariableOp,lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_629/MatMulMatMulstrided_slice_2:output:0+lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_629/MatMul_1MatMulzeros:output:0-lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_629/addAddV2lstm_cell_629/MatMul:product:0 lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_629/BiasAddBiasAddlstm_cell_629/add:z:0,lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_629/splitSplit&lstm_cell_629/split/split_dim:output:0lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_629/SigmoidSigmoidlstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_1Sigmoidlstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_629/mulMullstm_cell_629/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_629/ReluRelulstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_1Mullstm_cell_629/Sigmoid:y:0 lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_629/add_1AddV2lstm_cell_629/mul:z:0lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_2Sigmoidlstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_629/Relu_1Relulstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_2Mullstm_cell_629/Sigmoid_2:y:0"lstm_cell_629/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_629_matmul_readvariableop_resource.lstm_cell_629_matmul_1_readvariableop_resource-lstm_cell_629_biasadd_readvariableop_resource*
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
while_body_3811405*
condR
while_cond_3811404*K
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
NoOpNoOp%^lstm_cell_629/BiasAdd/ReadVariableOp$^lstm_cell_629/MatMul/ReadVariableOp&^lstm_cell_629/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_629/BiasAdd/ReadVariableOp$lstm_cell_629/BiasAdd/ReadVariableOp2J
#lstm_cell_629/MatMul/ReadVariableOp#lstm_cell_629/MatMul/ReadVariableOp2N
%lstm_cell_629/MatMul_1/ReadVariableOp%lstm_cell_629/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3812088

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
while_cond_3807189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3807189___redundant_placeholder05
1while_while_cond_3807189___redundant_placeholder15
1while_while_cond_3807189___redundant_placeholder25
1while_while_cond_3807189___redundant_placeholder3
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
while_cond_3807539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3807539___redundant_placeholder05
1while_while_cond_3807539___redundant_placeholder15
1while_while_cond_3807539___redundant_placeholder25
1while_while_cond_3807539___redundant_placeholder3
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
while_cond_3811261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3811261___redundant_placeholder05
1while_while_cond_3811261___redundant_placeholder15
1while_while_cond_3811261___redundant_placeholder25
1while_while_cond_3811261___redundant_placeholder3
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
*sequential_227_lstm_682_while_body_3806530L
Hsequential_227_lstm_682_while_sequential_227_lstm_682_while_loop_counterR
Nsequential_227_lstm_682_while_sequential_227_lstm_682_while_maximum_iterations-
)sequential_227_lstm_682_while_placeholder/
+sequential_227_lstm_682_while_placeholder_1/
+sequential_227_lstm_682_while_placeholder_2/
+sequential_227_lstm_682_while_placeholder_3K
Gsequential_227_lstm_682_while_sequential_227_lstm_682_strided_slice_1_0?
?sequential_227_lstm_682_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_682_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_227_lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0:	d?a
Nsequential_227_lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?\
Msequential_227_lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0:	?*
&sequential_227_lstm_682_while_identity,
(sequential_227_lstm_682_while_identity_1,
(sequential_227_lstm_682_while_identity_2,
(sequential_227_lstm_682_while_identity_3,
(sequential_227_lstm_682_while_identity_4,
(sequential_227_lstm_682_while_identity_5I
Esequential_227_lstm_682_while_sequential_227_lstm_682_strided_slice_1?
?sequential_227_lstm_682_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_682_tensorarrayunstack_tensorlistfromtensor]
Jsequential_227_lstm_682_while_lstm_cell_628_matmul_readvariableop_resource:	d?_
Lsequential_227_lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource:	2?Z
Ksequential_227_lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource:	???Bsequential_227/lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp?Asequential_227/lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp?Csequential_227/lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp?
Osequential_227/lstm_682/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_227/lstm_682/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_227_lstm_682_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_682_tensorarrayunstack_tensorlistfromtensor_0)sequential_227_lstm_682_while_placeholderXsequential_227/lstm_682/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_227/lstm_682/while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOpLsequential_227_lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_227/lstm_682/while/lstm_cell_628/MatMulMatMulHsequential_227/lstm_682/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_227/lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_227/lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOpNsequential_227_lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_227/lstm_682/while/lstm_cell_628/MatMul_1MatMul+sequential_227_lstm_682_while_placeholder_2Ksequential_227/lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_227/lstm_682/while/lstm_cell_628/addAddV2<sequential_227/lstm_682/while/lstm_cell_628/MatMul:product:0>sequential_227/lstm_682/while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_227/lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOpMsequential_227_lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_227/lstm_682/while/lstm_cell_628/BiasAddBiasAdd3sequential_227/lstm_682/while/lstm_cell_628/add:z:0Jsequential_227/lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_227/lstm_682/while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_227/lstm_682/while/lstm_cell_628/splitSplitDsequential_227/lstm_682/while/lstm_cell_628/split/split_dim:output:0<sequential_227/lstm_682/while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_227/lstm_682/while/lstm_cell_628/SigmoidSigmoid:sequential_227/lstm_682/while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_227/lstm_682/while/lstm_cell_628/Sigmoid_1Sigmoid:sequential_227/lstm_682/while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_227/lstm_682/while/lstm_cell_628/mulMul9sequential_227/lstm_682/while/lstm_cell_628/Sigmoid_1:y:0+sequential_227_lstm_682_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_227/lstm_682/while/lstm_cell_628/ReluRelu:sequential_227/lstm_682/while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_227/lstm_682/while/lstm_cell_628/mul_1Mul7sequential_227/lstm_682/while/lstm_cell_628/Sigmoid:y:0>sequential_227/lstm_682/while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_227/lstm_682/while/lstm_cell_628/add_1AddV23sequential_227/lstm_682/while/lstm_cell_628/mul:z:05sequential_227/lstm_682/while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_227/lstm_682/while/lstm_cell_628/Sigmoid_2Sigmoid:sequential_227/lstm_682/while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_227/lstm_682/while/lstm_cell_628/Relu_1Relu5sequential_227/lstm_682/while/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_227/lstm_682/while/lstm_cell_628/mul_2Mul9sequential_227/lstm_682/while/lstm_cell_628/Sigmoid_2:y:0@sequential_227/lstm_682/while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_227/lstm_682/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_227_lstm_682_while_placeholder_1)sequential_227_lstm_682_while_placeholder5sequential_227/lstm_682/while/lstm_cell_628/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_227/lstm_682/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_227/lstm_682/while/addAddV2)sequential_227_lstm_682_while_placeholder,sequential_227/lstm_682/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_227/lstm_682/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_227/lstm_682/while/add_1AddV2Hsequential_227_lstm_682_while_sequential_227_lstm_682_while_loop_counter.sequential_227/lstm_682/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_227/lstm_682/while/IdentityIdentity'sequential_227/lstm_682/while/add_1:z:0#^sequential_227/lstm_682/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_682/while/Identity_1IdentityNsequential_227_lstm_682_while_sequential_227_lstm_682_while_maximum_iterations#^sequential_227/lstm_682/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_682/while/Identity_2Identity%sequential_227/lstm_682/while/add:z:0#^sequential_227/lstm_682/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_682/while/Identity_3IdentityRsequential_227/lstm_682/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_227/lstm_682/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_682/while/Identity_4Identity5sequential_227/lstm_682/while/lstm_cell_628/mul_2:z:0#^sequential_227/lstm_682/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_227/lstm_682/while/Identity_5Identity5sequential_227/lstm_682/while/lstm_cell_628/add_1:z:0#^sequential_227/lstm_682/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_227/lstm_682/while/NoOpNoOpC^sequential_227/lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOpB^sequential_227/lstm_682/while/lstm_cell_628/MatMul/ReadVariableOpD^sequential_227/lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_227_lstm_682_while_identity/sequential_227/lstm_682/while/Identity:output:0"]
(sequential_227_lstm_682_while_identity_11sequential_227/lstm_682/while/Identity_1:output:0"]
(sequential_227_lstm_682_while_identity_21sequential_227/lstm_682/while/Identity_2:output:0"]
(sequential_227_lstm_682_while_identity_31sequential_227/lstm_682/while/Identity_3:output:0"]
(sequential_227_lstm_682_while_identity_41sequential_227/lstm_682/while/Identity_4:output:0"]
(sequential_227_lstm_682_while_identity_51sequential_227/lstm_682/while/Identity_5:output:0"?
Ksequential_227_lstm_682_while_lstm_cell_628_biasadd_readvariableop_resourceMsequential_227_lstm_682_while_lstm_cell_628_biasadd_readvariableop_resource_0"?
Lsequential_227_lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resourceNsequential_227_lstm_682_while_lstm_cell_628_matmul_1_readvariableop_resource_0"?
Jsequential_227_lstm_682_while_lstm_cell_628_matmul_readvariableop_resourceLsequential_227_lstm_682_while_lstm_cell_628_matmul_readvariableop_resource_0"?
Esequential_227_lstm_682_while_sequential_227_lstm_682_strided_slice_1Gsequential_227_lstm_682_while_sequential_227_lstm_682_strided_slice_1_0"?
?sequential_227_lstm_682_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_682_tensorarrayunstack_tensorlistfromtensor?sequential_227_lstm_682_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_682_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_227/lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOpBsequential_227/lstm_682/while/lstm_cell_628/BiasAdd/ReadVariableOp2?
Asequential_227/lstm_682/while/lstm_cell_628/MatMul/ReadVariableOpAsequential_227/lstm_682/while/lstm_cell_628/MatMul/ReadVariableOp2?
Csequential_227/lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOpCsequential_227/lstm_682/while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3811691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_629_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_629_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_629_matmul_readvariableop_resource:2(F
4while_lstm_cell_629_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_629_biasadd_readvariableop_resource:(??*while/lstm_cell_629/BiasAdd/ReadVariableOp?)while/lstm_cell_629/MatMul/ReadVariableOp?+while/lstm_cell_629/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_629/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_629/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_629/addAddV2$while/lstm_cell_629/MatMul:product:0&while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_629/BiasAddBiasAddwhile/lstm_cell_629/add:z:02while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_629/splitSplit,while/lstm_cell_629/split/split_dim:output:0$while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_629/SigmoidSigmoid"while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_1Sigmoid"while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mulMul!while/lstm_cell_629/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_629/ReluRelu"while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_1Mulwhile/lstm_cell_629/Sigmoid:y:0&while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/add_1AddV2while/lstm_cell_629/mul:z:0while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_2Sigmoid"while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_629/Relu_1Reluwhile/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_2Mul!while/lstm_cell_629/Sigmoid_2:y:0(while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_629/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_629/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_629/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_629/BiasAdd/ReadVariableOp*^while/lstm_cell_629/MatMul/ReadVariableOp,^while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_629_biasadd_readvariableop_resource5while_lstm_cell_629_biasadd_readvariableop_resource_0"n
4while_lstm_cell_629_matmul_1_readvariableop_resource6while_lstm_cell_629_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_629_matmul_readvariableop_resource4while_lstm_cell_629_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_629/BiasAdd/ReadVariableOp*while/lstm_cell_629/BiasAdd/ReadVariableOp2V
)while/lstm_cell_629/MatMul/ReadVariableOp)while/lstm_cell_629/MatMul/ReadVariableOp2Z
+while/lstm_cell_629/MatMul_1/ReadVariableOp+while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3810315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3810315___redundant_placeholder05
1while_while_cond_3810315___redundant_placeholder15
1while_while_cond_3810315___redundant_placeholder25
1while_while_cond_3810315___redundant_placeholder3
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
*sequential_227_lstm_681_while_body_3806391L
Hsequential_227_lstm_681_while_sequential_227_lstm_681_while_loop_counterR
Nsequential_227_lstm_681_while_sequential_227_lstm_681_while_maximum_iterations-
)sequential_227_lstm_681_while_placeholder/
+sequential_227_lstm_681_while_placeholder_1/
+sequential_227_lstm_681_while_placeholder_2/
+sequential_227_lstm_681_while_placeholder_3K
Gsequential_227_lstm_681_while_sequential_227_lstm_681_strided_slice_1_0?
?sequential_227_lstm_681_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_681_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_227_lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0:	?a
Nsequential_227_lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?\
Msequential_227_lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0:	?*
&sequential_227_lstm_681_while_identity,
(sequential_227_lstm_681_while_identity_1,
(sequential_227_lstm_681_while_identity_2,
(sequential_227_lstm_681_while_identity_3,
(sequential_227_lstm_681_while_identity_4,
(sequential_227_lstm_681_while_identity_5I
Esequential_227_lstm_681_while_sequential_227_lstm_681_strided_slice_1?
?sequential_227_lstm_681_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_681_tensorarrayunstack_tensorlistfromtensor]
Jsequential_227_lstm_681_while_lstm_cell_627_matmul_readvariableop_resource:	?_
Lsequential_227_lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource:	d?Z
Ksequential_227_lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource:	???Bsequential_227/lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp?Asequential_227/lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp?Csequential_227/lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp?
Osequential_227/lstm_681/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_227/lstm_681/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_227_lstm_681_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_681_tensorarrayunstack_tensorlistfromtensor_0)sequential_227_lstm_681_while_placeholderXsequential_227/lstm_681/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_227/lstm_681/while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOpLsequential_227_lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_227/lstm_681/while/lstm_cell_627/MatMulMatMulHsequential_227/lstm_681/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_227/lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_227/lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOpNsequential_227_lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_227/lstm_681/while/lstm_cell_627/MatMul_1MatMul+sequential_227_lstm_681_while_placeholder_2Ksequential_227/lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_227/lstm_681/while/lstm_cell_627/addAddV2<sequential_227/lstm_681/while/lstm_cell_627/MatMul:product:0>sequential_227/lstm_681/while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_227/lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOpMsequential_227_lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_227/lstm_681/while/lstm_cell_627/BiasAddBiasAdd3sequential_227/lstm_681/while/lstm_cell_627/add:z:0Jsequential_227/lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_227/lstm_681/while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_227/lstm_681/while/lstm_cell_627/splitSplitDsequential_227/lstm_681/while/lstm_cell_627/split/split_dim:output:0<sequential_227/lstm_681/while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_227/lstm_681/while/lstm_cell_627/SigmoidSigmoid:sequential_227/lstm_681/while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_227/lstm_681/while/lstm_cell_627/Sigmoid_1Sigmoid:sequential_227/lstm_681/while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_227/lstm_681/while/lstm_cell_627/mulMul9sequential_227/lstm_681/while/lstm_cell_627/Sigmoid_1:y:0+sequential_227_lstm_681_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_227/lstm_681/while/lstm_cell_627/ReluRelu:sequential_227/lstm_681/while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_227/lstm_681/while/lstm_cell_627/mul_1Mul7sequential_227/lstm_681/while/lstm_cell_627/Sigmoid:y:0>sequential_227/lstm_681/while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_227/lstm_681/while/lstm_cell_627/add_1AddV23sequential_227/lstm_681/while/lstm_cell_627/mul:z:05sequential_227/lstm_681/while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_227/lstm_681/while/lstm_cell_627/Sigmoid_2Sigmoid:sequential_227/lstm_681/while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_227/lstm_681/while/lstm_cell_627/Relu_1Relu5sequential_227/lstm_681/while/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_227/lstm_681/while/lstm_cell_627/mul_2Mul9sequential_227/lstm_681/while/lstm_cell_627/Sigmoid_2:y:0@sequential_227/lstm_681/while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_227/lstm_681/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_227_lstm_681_while_placeholder_1)sequential_227_lstm_681_while_placeholder5sequential_227/lstm_681/while/lstm_cell_627/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_227/lstm_681/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_227/lstm_681/while/addAddV2)sequential_227_lstm_681_while_placeholder,sequential_227/lstm_681/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_227/lstm_681/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_227/lstm_681/while/add_1AddV2Hsequential_227_lstm_681_while_sequential_227_lstm_681_while_loop_counter.sequential_227/lstm_681/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_227/lstm_681/while/IdentityIdentity'sequential_227/lstm_681/while/add_1:z:0#^sequential_227/lstm_681/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_681/while/Identity_1IdentityNsequential_227_lstm_681_while_sequential_227_lstm_681_while_maximum_iterations#^sequential_227/lstm_681/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_681/while/Identity_2Identity%sequential_227/lstm_681/while/add:z:0#^sequential_227/lstm_681/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_681/while/Identity_3IdentityRsequential_227/lstm_681/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_227/lstm_681/while/NoOp*
T0*
_output_shapes
: ?
(sequential_227/lstm_681/while/Identity_4Identity5sequential_227/lstm_681/while/lstm_cell_627/mul_2:z:0#^sequential_227/lstm_681/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_227/lstm_681/while/Identity_5Identity5sequential_227/lstm_681/while/lstm_cell_627/add_1:z:0#^sequential_227/lstm_681/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_227/lstm_681/while/NoOpNoOpC^sequential_227/lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOpB^sequential_227/lstm_681/while/lstm_cell_627/MatMul/ReadVariableOpD^sequential_227/lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_227_lstm_681_while_identity/sequential_227/lstm_681/while/Identity:output:0"]
(sequential_227_lstm_681_while_identity_11sequential_227/lstm_681/while/Identity_1:output:0"]
(sequential_227_lstm_681_while_identity_21sequential_227/lstm_681/while/Identity_2:output:0"]
(sequential_227_lstm_681_while_identity_31sequential_227/lstm_681/while/Identity_3:output:0"]
(sequential_227_lstm_681_while_identity_41sequential_227/lstm_681/while/Identity_4:output:0"]
(sequential_227_lstm_681_while_identity_51sequential_227/lstm_681/while/Identity_5:output:0"?
Ksequential_227_lstm_681_while_lstm_cell_627_biasadd_readvariableop_resourceMsequential_227_lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0"?
Lsequential_227_lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resourceNsequential_227_lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0"?
Jsequential_227_lstm_681_while_lstm_cell_627_matmul_readvariableop_resourceLsequential_227_lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0"?
Esequential_227_lstm_681_while_sequential_227_lstm_681_strided_slice_1Gsequential_227_lstm_681_while_sequential_227_lstm_681_strided_slice_1_0"?
?sequential_227_lstm_681_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_681_tensorarrayunstack_tensorlistfromtensor?sequential_227_lstm_681_while_tensorarrayv2read_tensorlistgetitem_sequential_227_lstm_681_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_227/lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOpBsequential_227/lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp2?
Asequential_227/lstm_681/while/lstm_cell_627/MatMul/ReadVariableOpAsequential_227/lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp2?
Csequential_227/lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOpCsequential_227/lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3807873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3807873___redundant_placeholder05
1while_while_cond_3807873___redundant_placeholder15
1while_while_cond_3807873___redundant_placeholder25
1while_while_cond_3807873___redundant_placeholder3
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3807958

inputs?
,lstm_cell_627_matmul_readvariableop_resource:	?A
.lstm_cell_627_matmul_1_readvariableop_resource:	d?<
-lstm_cell_627_biasadd_readvariableop_resource:	?
identity??$lstm_cell_627/BiasAdd/ReadVariableOp?#lstm_cell_627/MatMul/ReadVariableOp?%lstm_cell_627/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_627/MatMul/ReadVariableOpReadVariableOp,lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_627/MatMulMatMulstrided_slice_2:output:0+lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_627/MatMul_1MatMulzeros:output:0-lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_627/addAddV2lstm_cell_627/MatMul:product:0 lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_627/BiasAddBiasAddlstm_cell_627/add:z:0,lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_627/splitSplit&lstm_cell_627/split/split_dim:output:0lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_627/SigmoidSigmoidlstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_1Sigmoidlstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_627/mulMullstm_cell_627/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_627/ReluRelulstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_1Mullstm_cell_627/Sigmoid:y:0 lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_627/add_1AddV2lstm_cell_627/mul:z:0lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_2Sigmoidlstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_627/Relu_1Relulstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_2Mullstm_cell_627/Sigmoid_2:y:0"lstm_cell_627/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_627_matmul_readvariableop_resource.lstm_cell_627_matmul_1_readvariableop_resource-lstm_cell_627_biasadd_readvariableop_resource*
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
while_body_3807874*
condR
while_cond_3807873*K
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
NoOpNoOp%^lstm_cell_627/BiasAdd/ReadVariableOp$^lstm_cell_627/MatMul/ReadVariableOp&^lstm_cell_627/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_627/BiasAdd/ReadVariableOp$lstm_cell_627/BiasAdd/ReadVariableOp2J
#lstm_cell_627/MatMul/ReadVariableOp#lstm_cell_627/MatMul/ReadVariableOp2N
%lstm_cell_627/MatMul_1/ReadVariableOp%lstm_cell_627/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3808023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3808023___redundant_placeholder05
1while_while_cond_3808023___redundant_placeholder15
1while_while_cond_3808023___redundant_placeholder25
1while_while_cond_3808023___redundant_placeholder3
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
while_cond_3808719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3808719___redundant_placeholder05
1while_while_cond_3808719___redundant_placeholder15
1while_while_cond_3808719___redundant_placeholder25
1while_while_cond_3808719___redundant_placeholder3
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806826

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
while_body_3807540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_629_3807564_0:2(/
while_lstm_cell_629_3807566_0:
(+
while_lstm_cell_629_3807568_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_629_3807564:2(-
while_lstm_cell_629_3807566:
()
while_lstm_cell_629_3807568:(??+while/lstm_cell_629/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_629/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_629_3807564_0while_lstm_cell_629_3807566_0while_lstm_cell_629_3807568_0*
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807526?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_629/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_629/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_629/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_629/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_629_3807564while_lstm_cell_629_3807564_0"<
while_lstm_cell_629_3807566while_lstm_cell_629_3807566_0"<
while_lstm_cell_629_3807568while_lstm_cell_629_3807568_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_629/StatefulPartitionedCall+while/lstm_cell_629/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3807380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3807380___redundant_placeholder05
1while_while_cond_3807380___redundant_placeholder15
1while_while_cond_3807380___redundant_placeholder25
1while_while_cond_3807380___redundant_placeholder3
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
lstm_683_while_cond_3809836.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_30
,lstm_683_while_less_lstm_683_strided_slice_1G
Clstm_683_while_lstm_683_while_cond_3809836___redundant_placeholder0G
Clstm_683_while_lstm_683_while_cond_3809836___redundant_placeholder1G
Clstm_683_while_lstm_683_while_cond_3809836___redundant_placeholder2G
Clstm_683_while_lstm_683_while_cond_3809836___redundant_placeholder3
lstm_683_while_identity
?
lstm_683/while/LessLesslstm_683_while_placeholder,lstm_683_while_less_lstm_683_strided_slice_1*
T0*
_output_shapes
: ]
lstm_683/while/IdentityIdentitylstm_683/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_683_while_identity lstm_683/while/Identity:output:0*(
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
*__inference_lstm_681_layer_call_fn_3809938
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3806909|
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
while_cond_3810931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3810931___redundant_placeholder05
1while_while_cond_3810931___redundant_placeholder15
1while_while_cond_3810931___redundant_placeholder25
1while_while_cond_3810931___redundant_placeholder3
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3807259

inputs(
lstm_cell_628_3807177:	d?(
lstm_cell_628_3807179:	2?$
lstm_cell_628_3807181:	?
identity??%lstm_cell_628/StatefulPartitionedCall?while;
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
%lstm_cell_628/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_628_3807177lstm_cell_628_3807179lstm_cell_628_3807181*
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807176n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_628_3807177lstm_cell_628_3807179lstm_cell_628_3807181*
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
while_body_3807190*
condR
while_cond_3807189*K
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
NoOpNoOp&^lstm_cell_628/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_628/StatefulPartitionedCall%lstm_cell_628/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_628_layer_call_fn_3811926

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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807322o
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
0__inference_sequential_227_layer_call_fn_3808924
lstm_681_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_681_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808872o
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
_user_specified_namelstm_681_input
?8
?
while_body_3810316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_627_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_627_matmul_readvariableop_resource:	?G
4while_lstm_cell_627_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_627_biasadd_readvariableop_resource:	???*while/lstm_cell_627/BiasAdd/ReadVariableOp?)while/lstm_cell_627/MatMul/ReadVariableOp?+while/lstm_cell_627/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_627/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_627/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_627/addAddV2$while/lstm_cell_627/MatMul:product:0&while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_627/BiasAddBiasAddwhile/lstm_cell_627/add:z:02while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_627/splitSplit,while/lstm_cell_627/split/split_dim:output:0$while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_627/SigmoidSigmoid"while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_1Sigmoid"while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mulMul!while/lstm_cell_627/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_627/ReluRelu"while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_1Mulwhile/lstm_cell_627/Sigmoid:y:0&while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/add_1AddV2while/lstm_cell_627/mul:z:0while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_2Sigmoid"while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_627/Relu_1Reluwhile/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_2Mul!while/lstm_cell_627/Sigmoid_2:y:0(while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_627/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_627/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_627/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_627/BiasAdd/ReadVariableOp*^while/lstm_cell_627/MatMul/ReadVariableOp,^while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_627_biasadd_readvariableop_resource5while_lstm_cell_627_biasadd_readvariableop_resource_0"n
4while_lstm_cell_627_matmul_1_readvariableop_resource6while_lstm_cell_627_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_627_matmul_readvariableop_resource4while_lstm_cell_627_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_627/BiasAdd/ReadVariableOp*while/lstm_cell_627/BiasAdd/ReadVariableOp2V
)while/lstm_cell_627/MatMul/ReadVariableOp)while/lstm_cell_627/MatMul/ReadVariableOp2Z
+while/lstm_cell_627/MatMul_1/ReadVariableOp+while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_227_lstm_683_while_cond_3806668L
Hsequential_227_lstm_683_while_sequential_227_lstm_683_while_loop_counterR
Nsequential_227_lstm_683_while_sequential_227_lstm_683_while_maximum_iterations-
)sequential_227_lstm_683_while_placeholder/
+sequential_227_lstm_683_while_placeholder_1/
+sequential_227_lstm_683_while_placeholder_2/
+sequential_227_lstm_683_while_placeholder_3N
Jsequential_227_lstm_683_while_less_sequential_227_lstm_683_strided_slice_1e
asequential_227_lstm_683_while_sequential_227_lstm_683_while_cond_3806668___redundant_placeholder0e
asequential_227_lstm_683_while_sequential_227_lstm_683_while_cond_3806668___redundant_placeholder1e
asequential_227_lstm_683_while_sequential_227_lstm_683_while_cond_3806668___redundant_placeholder2e
asequential_227_lstm_683_while_sequential_227_lstm_683_while_cond_3806668___redundant_placeholder3*
&sequential_227_lstm_683_while_identity
?
"sequential_227/lstm_683/while/LessLess)sequential_227_lstm_683_while_placeholderJsequential_227_lstm_683_while_less_sequential_227_lstm_683_strided_slice_1*
T0*
_output_shapes
: {
&sequential_227/lstm_683/while/IdentityIdentity&sequential_227/lstm_683/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_227_lstm_683_while_identity/sequential_227/lstm_683/while/Identity:output:0*(
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3807100

inputs(
lstm_cell_627_3807018:	?(
lstm_cell_627_3807020:	d?$
lstm_cell_627_3807022:	?
identity??%lstm_cell_627/StatefulPartitionedCall?while;
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
%lstm_cell_627/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_627_3807018lstm_cell_627_3807020lstm_cell_627_3807022*
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806972n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_627_3807018lstm_cell_627_3807020lstm_cell_627_3807022*
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
while_body_3807031*
condR
while_cond_3807030*K
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
NoOpNoOp&^lstm_cell_627/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_627/StatefulPartitionedCall%lstm_cell_627/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3807030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3807030___redundant_placeholder05
1while_while_cond_3807030___redundant_placeholder15
1while_while_cond_3807030___redundant_placeholder25
1while_while_cond_3807030___redundant_placeholder3
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
while_body_3807381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_628_3807405_0:	d?0
while_lstm_cell_628_3807407_0:	2?,
while_lstm_cell_628_3807409_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_628_3807405:	d?.
while_lstm_cell_628_3807407:	2?*
while_lstm_cell_628_3807409:	???+while/lstm_cell_628/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_628/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_628_3807405_0while_lstm_cell_628_3807407_0while_lstm_cell_628_3807409_0*
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807322?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_628/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_628/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_628/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_628/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_628_3807405while_lstm_cell_628_3807405_0"<
while_lstm_cell_628_3807407while_lstm_cell_628_3807407_0"<
while_lstm_cell_628_3807409while_lstm_cell_628_3807409_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_628/StatefulPartitionedCall+while/lstm_cell_628/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810114
inputs_0?
,lstm_cell_627_matmul_readvariableop_resource:	?A
.lstm_cell_627_matmul_1_readvariableop_resource:	d?<
-lstm_cell_627_biasadd_readvariableop_resource:	?
identity??$lstm_cell_627/BiasAdd/ReadVariableOp?#lstm_cell_627/MatMul/ReadVariableOp?%lstm_cell_627/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_627/MatMul/ReadVariableOpReadVariableOp,lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_627/MatMulMatMulstrided_slice_2:output:0+lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_627/MatMul_1MatMulzeros:output:0-lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_627/addAddV2lstm_cell_627/MatMul:product:0 lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_627/BiasAddBiasAddlstm_cell_627/add:z:0,lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_627/splitSplit&lstm_cell_627/split/split_dim:output:0lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_627/SigmoidSigmoidlstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_1Sigmoidlstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_627/mulMullstm_cell_627/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_627/ReluRelulstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_1Mullstm_cell_627/Sigmoid:y:0 lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_627/add_1AddV2lstm_cell_627/mul:z:0lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_2Sigmoidlstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_627/Relu_1Relulstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_2Mullstm_cell_627/Sigmoid_2:y:0"lstm_cell_627/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_627_matmul_readvariableop_resource.lstm_cell_627_matmul_1_readvariableop_resource-lstm_cell_627_biasadd_readvariableop_resource*
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
while_body_3810030*
condR
while_cond_3810029*K
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
NoOpNoOp%^lstm_cell_627/BiasAdd/ReadVariableOp$^lstm_cell_627/MatMul/ReadVariableOp&^lstm_cell_627/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_627/BiasAdd/ReadVariableOp$lstm_cell_627/BiasAdd/ReadVariableOp2J
#lstm_cell_627/MatMul/ReadVariableOp#lstm_cell_627/MatMul/ReadVariableOp2N
%lstm_cell_627/MatMul_1/ReadVariableOp%lstm_cell_627/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_681_while_body_3809132.
*lstm_681_while_lstm_681_while_loop_counter4
0lstm_681_while_lstm_681_while_maximum_iterations
lstm_681_while_placeholder 
lstm_681_while_placeholder_1 
lstm_681_while_placeholder_2 
lstm_681_while_placeholder_3-
)lstm_681_while_lstm_681_strided_slice_1_0i
elstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0:	?R
?lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?M
>lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
lstm_681_while_identity
lstm_681_while_identity_1
lstm_681_while_identity_2
lstm_681_while_identity_3
lstm_681_while_identity_4
lstm_681_while_identity_5+
'lstm_681_while_lstm_681_strided_slice_1g
clstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensorN
;lstm_681_while_lstm_cell_627_matmul_readvariableop_resource:	?P
=lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource:	d?K
<lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource:	???3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp?2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp?4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp?
@lstm_681/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_681/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensor_0lstm_681_while_placeholderIlstm_681/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp=lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_681/while/lstm_cell_627/MatMulMatMul9lstm_681/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp?lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_681/while/lstm_cell_627/MatMul_1MatMullstm_681_while_placeholder_2<lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_681/while/lstm_cell_627/addAddV2-lstm_681/while/lstm_cell_627/MatMul:product:0/lstm_681/while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp>lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_681/while/lstm_cell_627/BiasAddBiasAdd$lstm_681/while/lstm_cell_627/add:z:0;lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_681/while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_681/while/lstm_cell_627/splitSplit5lstm_681/while/lstm_cell_627/split/split_dim:output:0-lstm_681/while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_681/while/lstm_cell_627/SigmoidSigmoid+lstm_681/while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_681/while/lstm_cell_627/Sigmoid_1Sigmoid+lstm_681/while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_681/while/lstm_cell_627/mulMul*lstm_681/while/lstm_cell_627/Sigmoid_1:y:0lstm_681_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_681/while/lstm_cell_627/ReluRelu+lstm_681/while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_681/while/lstm_cell_627/mul_1Mul(lstm_681/while/lstm_cell_627/Sigmoid:y:0/lstm_681/while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_681/while/lstm_cell_627/add_1AddV2$lstm_681/while/lstm_cell_627/mul:z:0&lstm_681/while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_681/while/lstm_cell_627/Sigmoid_2Sigmoid+lstm_681/while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_681/while/lstm_cell_627/Relu_1Relu&lstm_681/while/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_681/while/lstm_cell_627/mul_2Mul*lstm_681/while/lstm_cell_627/Sigmoid_2:y:01lstm_681/while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_681/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_681_while_placeholder_1lstm_681_while_placeholder&lstm_681/while/lstm_cell_627/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_681/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_681/while/addAddV2lstm_681_while_placeholderlstm_681/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_681/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_681/while/add_1AddV2*lstm_681_while_lstm_681_while_loop_counterlstm_681/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_681/while/IdentityIdentitylstm_681/while/add_1:z:0^lstm_681/while/NoOp*
T0*
_output_shapes
: ?
lstm_681/while/Identity_1Identity0lstm_681_while_lstm_681_while_maximum_iterations^lstm_681/while/NoOp*
T0*
_output_shapes
: t
lstm_681/while/Identity_2Identitylstm_681/while/add:z:0^lstm_681/while/NoOp*
T0*
_output_shapes
: ?
lstm_681/while/Identity_3IdentityClstm_681/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_681/while/NoOp*
T0*
_output_shapes
: ?
lstm_681/while/Identity_4Identity&lstm_681/while/lstm_cell_627/mul_2:z:0^lstm_681/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_681/while/Identity_5Identity&lstm_681/while/lstm_cell_627/add_1:z:0^lstm_681/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_681/while/NoOpNoOp4^lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp3^lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp5^lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_681_while_identity lstm_681/while/Identity:output:0"?
lstm_681_while_identity_1"lstm_681/while/Identity_1:output:0"?
lstm_681_while_identity_2"lstm_681/while/Identity_2:output:0"?
lstm_681_while_identity_3"lstm_681/while/Identity_3:output:0"?
lstm_681_while_identity_4"lstm_681/while/Identity_4:output:0"?
lstm_681_while_identity_5"lstm_681/while/Identity_5:output:0"T
'lstm_681_while_lstm_681_strided_slice_1)lstm_681_while_lstm_681_strided_slice_1_0"~
<lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource>lstm_681_while_lstm_cell_627_biasadd_readvariableop_resource_0"?
=lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource?lstm_681_while_lstm_cell_627_matmul_1_readvariableop_resource_0"|
;lstm_681_while_lstm_cell_627_matmul_readvariableop_resource=lstm_681_while_lstm_cell_627_matmul_readvariableop_resource_0"?
clstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensorelstm_681_while_tensorarrayv2read_tensorlistgetitem_lstm_681_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp3lstm_681/while/lstm_cell_627/BiasAdd/ReadVariableOp2h
2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp2lstm_681/while/lstm_cell_627/MatMul/ReadVariableOp2l
4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp4lstm_681/while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_3812231
file_prefix/
+savev2_dense_227_kernel_read_readvariableop-
)savev2_dense_227_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_681_lstm_cell_681_kernel_read_readvariableopF
Bsavev2_lstm_681_lstm_cell_681_recurrent_kernel_read_readvariableop:
6savev2_lstm_681_lstm_cell_681_bias_read_readvariableop<
8savev2_lstm_682_lstm_cell_682_kernel_read_readvariableopF
Bsavev2_lstm_682_lstm_cell_682_recurrent_kernel_read_readvariableop:
6savev2_lstm_682_lstm_cell_682_bias_read_readvariableop<
8savev2_lstm_683_lstm_cell_683_kernel_read_readvariableopF
Bsavev2_lstm_683_lstm_cell_683_recurrent_kernel_read_readvariableop:
6savev2_lstm_683_lstm_cell_683_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_227_kernel_m_read_readvariableop4
0savev2_adam_dense_227_bias_m_read_readvariableopC
?savev2_adam_lstm_681_lstm_cell_681_kernel_m_read_readvariableopM
Isavev2_adam_lstm_681_lstm_cell_681_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_681_lstm_cell_681_bias_m_read_readvariableopC
?savev2_adam_lstm_682_lstm_cell_682_kernel_m_read_readvariableopM
Isavev2_adam_lstm_682_lstm_cell_682_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_682_lstm_cell_682_bias_m_read_readvariableopC
?savev2_adam_lstm_683_lstm_cell_683_kernel_m_read_readvariableopM
Isavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_683_lstm_cell_683_bias_m_read_readvariableop6
2savev2_adam_dense_227_kernel_v_read_readvariableop4
0savev2_adam_dense_227_bias_v_read_readvariableopC
?savev2_adam_lstm_681_lstm_cell_681_kernel_v_read_readvariableopM
Isavev2_adam_lstm_681_lstm_cell_681_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_681_lstm_cell_681_bias_v_read_readvariableopC
?savev2_adam_lstm_682_lstm_cell_682_kernel_v_read_readvariableopM
Isavev2_adam_lstm_682_lstm_cell_682_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_682_lstm_cell_682_bias_v_read_readvariableopC
?savev2_adam_lstm_683_lstm_cell_683_kernel_v_read_readvariableopM
Isavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_683_lstm_cell_683_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_227_kernel_read_readvariableop)savev2_dense_227_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_681_lstm_cell_681_kernel_read_readvariableopBsavev2_lstm_681_lstm_cell_681_recurrent_kernel_read_readvariableop6savev2_lstm_681_lstm_cell_681_bias_read_readvariableop8savev2_lstm_682_lstm_cell_682_kernel_read_readvariableopBsavev2_lstm_682_lstm_cell_682_recurrent_kernel_read_readvariableop6savev2_lstm_682_lstm_cell_682_bias_read_readvariableop8savev2_lstm_683_lstm_cell_683_kernel_read_readvariableopBsavev2_lstm_683_lstm_cell_683_recurrent_kernel_read_readvariableop6savev2_lstm_683_lstm_cell_683_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_227_kernel_m_read_readvariableop0savev2_adam_dense_227_bias_m_read_readvariableop?savev2_adam_lstm_681_lstm_cell_681_kernel_m_read_readvariableopIsavev2_adam_lstm_681_lstm_cell_681_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_681_lstm_cell_681_bias_m_read_readvariableop?savev2_adam_lstm_682_lstm_cell_682_kernel_m_read_readvariableopIsavev2_adam_lstm_682_lstm_cell_682_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_682_lstm_cell_682_bias_m_read_readvariableop?savev2_adam_lstm_683_lstm_cell_683_kernel_m_read_readvariableopIsavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_683_lstm_cell_683_bias_m_read_readvariableop2savev2_adam_dense_227_kernel_v_read_readvariableop0savev2_adam_dense_227_bias_v_read_readvariableop?savev2_adam_lstm_681_lstm_cell_681_kernel_v_read_readvariableopIsavev2_adam_lstm_681_lstm_cell_681_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_681_lstm_cell_681_bias_v_read_readvariableop?savev2_adam_lstm_682_lstm_cell_682_kernel_v_read_readvariableopIsavev2_adam_lstm_682_lstm_cell_682_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_682_lstm_cell_682_bias_v_read_readvariableop?savev2_adam_lstm_683_lstm_cell_683_kernel_v_read_readvariableopIsavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_683_lstm_cell_683_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?#
?
while_body_3807731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_629_3807755_0:2(/
while_lstm_cell_629_3807757_0:
(+
while_lstm_cell_629_3807759_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_629_3807755:2(-
while_lstm_cell_629_3807757:
()
while_lstm_cell_629_3807759:(??+while/lstm_cell_629/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_629/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_629_3807755_0while_lstm_cell_629_3807757_0while_lstm_cell_629_3807759_0*
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807672?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_629/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_629/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_629/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_629/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_629_3807755while_lstm_cell_629_3807755_0"<
while_lstm_cell_629_3807757while_lstm_cell_629_3807757_0"<
while_lstm_cell_629_3807759while_lstm_cell_629_3807759_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_629/StatefulPartitionedCall+while/lstm_cell_629/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810257
inputs_0?
,lstm_cell_627_matmul_readvariableop_resource:	?A
.lstm_cell_627_matmul_1_readvariableop_resource:	d?<
-lstm_cell_627_biasadd_readvariableop_resource:	?
identity??$lstm_cell_627/BiasAdd/ReadVariableOp?#lstm_cell_627/MatMul/ReadVariableOp?%lstm_cell_627/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_627/MatMul/ReadVariableOpReadVariableOp,lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_627/MatMulMatMulstrided_slice_2:output:0+lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_627/MatMul_1MatMulzeros:output:0-lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_627/addAddV2lstm_cell_627/MatMul:product:0 lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_627/BiasAddBiasAddlstm_cell_627/add:z:0,lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_627/splitSplit&lstm_cell_627/split/split_dim:output:0lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_627/SigmoidSigmoidlstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_1Sigmoidlstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_627/mulMullstm_cell_627/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_627/ReluRelulstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_1Mullstm_cell_627/Sigmoid:y:0 lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_627/add_1AddV2lstm_cell_627/mul:z:0lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_2Sigmoidlstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_627/Relu_1Relulstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_2Mullstm_cell_627/Sigmoid_2:y:0"lstm_cell_627/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_627_matmul_readvariableop_resource.lstm_cell_627_matmul_1_readvariableop_resource-lstm_cell_627_biasadd_readvariableop_resource*
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
while_body_3810173*
condR
while_cond_3810172*K
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
NoOpNoOp%^lstm_cell_627/BiasAdd/ReadVariableOp$^lstm_cell_627/MatMul/ReadVariableOp&^lstm_cell_627/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_627/BiasAdd/ReadVariableOp$lstm_cell_627/BiasAdd/ReadVariableOp2J
#lstm_cell_627/MatMul/ReadVariableOp#lstm_cell_627/MatMul/ReadVariableOp2N
%lstm_cell_627/MatMul_1/ReadVariableOp%lstm_cell_627/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3811690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3811690___redundant_placeholder05
1while_while_cond_3811690___redundant_placeholder15
1while_while_cond_3811690___redundant_placeholder25
1while_while_cond_3811690___redundant_placeholder3
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808474

inputs>
,lstm_cell_629_matmul_readvariableop_resource:2(@
.lstm_cell_629_matmul_1_readvariableop_resource:
(;
-lstm_cell_629_biasadd_readvariableop_resource:(
identity??$lstm_cell_629/BiasAdd/ReadVariableOp?#lstm_cell_629/MatMul/ReadVariableOp?%lstm_cell_629/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_629/MatMul/ReadVariableOpReadVariableOp,lstm_cell_629_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_629/MatMulMatMulstrided_slice_2:output:0+lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_629_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_629/MatMul_1MatMulzeros:output:0-lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_629/addAddV2lstm_cell_629/MatMul:product:0 lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_629_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_629/BiasAddBiasAddlstm_cell_629/add:z:0,lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_629/splitSplit&lstm_cell_629/split/split_dim:output:0lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_629/SigmoidSigmoidlstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_1Sigmoidlstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_629/mulMullstm_cell_629/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_629/ReluRelulstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_1Mullstm_cell_629/Sigmoid:y:0 lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_629/add_1AddV2lstm_cell_629/mul:z:0lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_629/Sigmoid_2Sigmoidlstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_629/Relu_1Relulstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_629/mul_2Mullstm_cell_629/Sigmoid_2:y:0"lstm_cell_629/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_629_matmul_readvariableop_resource.lstm_cell_629_matmul_1_readvariableop_resource-lstm_cell_629_biasadd_readvariableop_resource*
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
while_body_3808390*
condR
while_cond_3808389*K
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
NoOpNoOp%^lstm_cell_629/BiasAdd/ReadVariableOp$^lstm_cell_629/MatMul/ReadVariableOp&^lstm_cell_629/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_629/BiasAdd/ReadVariableOp$lstm_cell_629/BiasAdd/ReadVariableOp2J
#lstm_cell_629/MatMul/ReadVariableOp#lstm_cell_629/MatMul/ReadVariableOp2N
%lstm_cell_629/MatMul_1/ReadVariableOp%lstm_cell_629/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_681_while_cond_3809558.
*lstm_681_while_lstm_681_while_loop_counter4
0lstm_681_while_lstm_681_while_maximum_iterations
lstm_681_while_placeholder 
lstm_681_while_placeholder_1 
lstm_681_while_placeholder_2 
lstm_681_while_placeholder_30
,lstm_681_while_less_lstm_681_strided_slice_1G
Clstm_681_while_lstm_681_while_cond_3809558___redundant_placeholder0G
Clstm_681_while_lstm_681_while_cond_3809558___redundant_placeholder1G
Clstm_681_while_lstm_681_while_cond_3809558___redundant_placeholder2G
Clstm_681_while_lstm_681_while_cond_3809558___redundant_placeholder3
lstm_681_while_identity
?
lstm_681/while/LessLesslstm_681_while_placeholder,lstm_681_while_less_lstm_681_strided_slice_1*
T0*
_output_shapes
: ]
lstm_681/while/IdentityIdentitylstm_681/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_681_while_identity lstm_681/while/Identity:output:0*(
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
while_body_3806840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_627_3806864_0:	?0
while_lstm_cell_627_3806866_0:	d?,
while_lstm_cell_627_3806868_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_627_3806864:	?.
while_lstm_cell_627_3806866:	d?*
while_lstm_cell_627_3806868:	???+while/lstm_cell_627/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_627/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_627_3806864_0while_lstm_cell_627_3806866_0while_lstm_cell_627_3806868_0*
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806826?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_627/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_627/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_627/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_627/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_627_3806864while_lstm_cell_627_3806864_0"<
while_lstm_cell_627_3806866while_lstm_cell_627_3806866_0"<
while_lstm_cell_627_3806868while_lstm_cell_627_3806868_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_627/StatefulPartitionedCall+while/lstm_cell_627/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3810458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3810458___redundant_placeholder05
1while_while_cond_3810458___redundant_placeholder15
1while_while_cond_3810458___redundant_placeholder25
1while_while_cond_3810458___redundant_placeholder3
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
*__inference_lstm_683_layer_call_fn_3811203

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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808474o
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3807450

inputs(
lstm_cell_628_3807368:	d?(
lstm_cell_628_3807370:	2?$
lstm_cell_628_3807372:	?
identity??%lstm_cell_628/StatefulPartitionedCall?while;
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
%lstm_cell_628/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_628_3807368lstm_cell_628_3807370lstm_cell_628_3807372*
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3807322n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_628_3807368lstm_cell_628_3807370lstm_cell_628_3807372*
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
while_body_3807381*
condR
while_cond_3807380*K
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
NoOpNoOp&^lstm_cell_628/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_628/StatefulPartitionedCall%lstm_cell_628/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3812056

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
while_cond_3811074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3811074___redundant_placeholder05
1while_while_cond_3811074___redundant_placeholder15
1while_while_cond_3811074___redundant_placeholder25
1while_while_cond_3811074___redundant_placeholder3
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
while_body_3811075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_628_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_628_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_628_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_628_matmul_readvariableop_resource:	d?G
4while_lstm_cell_628_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_628_biasadd_readvariableop_resource:	???*while/lstm_cell_628/BiasAdd/ReadVariableOp?)while/lstm_cell_628/MatMul/ReadVariableOp?+while/lstm_cell_628/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_628/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_628_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_628/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_628/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_628/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_628_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_628/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_628/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_628/addAddV2$while/lstm_cell_628/MatMul:product:0&while/lstm_cell_628/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_628/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_628_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_628/BiasAddBiasAddwhile/lstm_cell_628/add:z:02while/lstm_cell_628/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_628/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_628/splitSplit,while/lstm_cell_628/split/split_dim:output:0$while/lstm_cell_628/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_628/SigmoidSigmoid"while/lstm_cell_628/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_1Sigmoid"while/lstm_cell_628/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mulMul!while/lstm_cell_628/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_628/ReluRelu"while/lstm_cell_628/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_1Mulwhile/lstm_cell_628/Sigmoid:y:0&while/lstm_cell_628/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/add_1AddV2while/lstm_cell_628/mul:z:0while/lstm_cell_628/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_628/Sigmoid_2Sigmoid"while/lstm_cell_628/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_628/Relu_1Reluwhile/lstm_cell_628/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_628/mul_2Mul!while/lstm_cell_628/Sigmoid_2:y:0(while/lstm_cell_628/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_628/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_628/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_628/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_628/BiasAdd/ReadVariableOp*^while/lstm_cell_628/MatMul/ReadVariableOp,^while/lstm_cell_628/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_628_biasadd_readvariableop_resource5while_lstm_cell_628_biasadd_readvariableop_resource_0"n
4while_lstm_cell_628_matmul_1_readvariableop_resource6while_lstm_cell_628_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_628_matmul_readvariableop_resource4while_lstm_cell_628_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_628/BiasAdd/ReadVariableOp*while/lstm_cell_628/BiasAdd/ReadVariableOp2V
)while/lstm_cell_628/MatMul/ReadVariableOp)while/lstm_cell_628/MatMul/ReadVariableOp2Z
+while/lstm_cell_628/MatMul_1/ReadVariableOp+while/lstm_cell_628/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3810459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_627_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_627_matmul_readvariableop_resource:	?G
4while_lstm_cell_627_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_627_biasadd_readvariableop_resource:	???*while/lstm_cell_627/BiasAdd/ReadVariableOp?)while/lstm_cell_627/MatMul/ReadVariableOp?+while/lstm_cell_627/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_627/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_627/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_627/addAddV2$while/lstm_cell_627/MatMul:product:0&while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_627/BiasAddBiasAddwhile/lstm_cell_627/add:z:02while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_627/splitSplit,while/lstm_cell_627/split/split_dim:output:0$while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_627/SigmoidSigmoid"while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_1Sigmoid"while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mulMul!while/lstm_cell_627/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_627/ReluRelu"while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_1Mulwhile/lstm_cell_627/Sigmoid:y:0&while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/add_1AddV2while/lstm_cell_627/mul:z:0while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_2Sigmoid"while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_627/Relu_1Reluwhile/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_2Mul!while/lstm_cell_627/Sigmoid_2:y:0(while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_627/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_627/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_627/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_627/BiasAdd/ReadVariableOp*^while/lstm_cell_627/MatMul/ReadVariableOp,^while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_627_biasadd_readvariableop_resource5while_lstm_cell_627_biasadd_readvariableop_resource_0"n
4while_lstm_cell_627_matmul_1_readvariableop_resource6while_lstm_cell_627_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_627_matmul_readvariableop_resource4while_lstm_cell_627_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_627/BiasAdd/ReadVariableOp*while/lstm_cell_627/BiasAdd/ReadVariableOp2V
)while/lstm_cell_627/MatMul/ReadVariableOp)while/lstm_cell_627/MatMul/ReadVariableOp2Z
+while/lstm_cell_627/MatMul_1/ReadVariableOp+while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_681_layer_call_fn_3809971

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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3808804s
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
while_body_3808174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_629_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_629_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_629_matmul_readvariableop_resource:2(F
4while_lstm_cell_629_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_629_biasadd_readvariableop_resource:(??*while/lstm_cell_629/BiasAdd/ReadVariableOp?)while/lstm_cell_629/MatMul/ReadVariableOp?+while/lstm_cell_629/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_629/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_629/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_629/addAddV2$while/lstm_cell_629/MatMul:product:0&while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_629/BiasAddBiasAddwhile/lstm_cell_629/add:z:02while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_629/splitSplit,while/lstm_cell_629/split/split_dim:output:0$while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_629/SigmoidSigmoid"while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_1Sigmoid"while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mulMul!while/lstm_cell_629/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_629/ReluRelu"while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_1Mulwhile/lstm_cell_629/Sigmoid:y:0&while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/add_1AddV2while/lstm_cell_629/mul:z:0while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_2Sigmoid"while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_629/Relu_1Reluwhile/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_2Mul!while/lstm_cell_629/Sigmoid_2:y:0(while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_629/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_629/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_629/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_629/BiasAdd/ReadVariableOp*^while/lstm_cell_629/MatMul/ReadVariableOp,^while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_629_biasadd_readvariableop_resource5while_lstm_cell_629_biasadd_readvariableop_resource_0"n
4while_lstm_cell_629_matmul_1_readvariableop_resource6while_lstm_cell_629_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_629_matmul_readvariableop_resource4while_lstm_cell_629_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_629/BiasAdd/ReadVariableOp*while/lstm_cell_629/BiasAdd/ReadVariableOp2V
)while/lstm_cell_629/MatMul/ReadVariableOp)while/lstm_cell_629/MatMul/ReadVariableOp2Z
+while/lstm_cell_629/MatMul_1/ReadVariableOp+while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3810788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3810788___redundant_placeholder05
1while_while_cond_3810788___redundant_placeholder15
1while_while_cond_3810788___redundant_placeholder25
1while_while_cond_3810788___redundant_placeholder3
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3807526

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
while_body_3808720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_627_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_627_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_627_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_627_matmul_readvariableop_resource:	?G
4while_lstm_cell_627_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_627_biasadd_readvariableop_resource:	???*while/lstm_cell_627/BiasAdd/ReadVariableOp?)while/lstm_cell_627/MatMul/ReadVariableOp?+while/lstm_cell_627/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_627/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_627_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_627/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_627_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_627/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_627/addAddV2$while/lstm_cell_627/MatMul:product:0&while/lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_627_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_627/BiasAddBiasAddwhile/lstm_cell_627/add:z:02while/lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_627/splitSplit,while/lstm_cell_627/split/split_dim:output:0$while/lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_627/SigmoidSigmoid"while/lstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_1Sigmoid"while/lstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mulMul!while/lstm_cell_627/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_627/ReluRelu"while/lstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_1Mulwhile/lstm_cell_627/Sigmoid:y:0&while/lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/add_1AddV2while/lstm_cell_627/mul:z:0while/lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_627/Sigmoid_2Sigmoid"while/lstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_627/Relu_1Reluwhile/lstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_627/mul_2Mul!while/lstm_cell_627/Sigmoid_2:y:0(while/lstm_cell_627/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_627/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_627/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_627/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_627/BiasAdd/ReadVariableOp*^while/lstm_cell_627/MatMul/ReadVariableOp,^while/lstm_cell_627/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_627_biasadd_readvariableop_resource5while_lstm_cell_627_biasadd_readvariableop_resource_0"n
4while_lstm_cell_627_matmul_1_readvariableop_resource6while_lstm_cell_627_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_627_matmul_readvariableop_resource4while_lstm_cell_627_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_627/BiasAdd/ReadVariableOp*while/lstm_cell_627/BiasAdd/ReadVariableOp2V
)while/lstm_cell_627/MatMul/ReadVariableOp)while/lstm_cell_627/MatMul/ReadVariableOp2Z
+while/lstm_cell_627/MatMul_1/ReadVariableOp+while/lstm_cell_627/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810400

inputs?
,lstm_cell_627_matmul_readvariableop_resource:	?A
.lstm_cell_627_matmul_1_readvariableop_resource:	d?<
-lstm_cell_627_biasadd_readvariableop_resource:	?
identity??$lstm_cell_627/BiasAdd/ReadVariableOp?#lstm_cell_627/MatMul/ReadVariableOp?%lstm_cell_627/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_627/MatMul/ReadVariableOpReadVariableOp,lstm_cell_627_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_627/MatMulMatMulstrided_slice_2:output:0+lstm_cell_627/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_627/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_627_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_627/MatMul_1MatMulzeros:output:0-lstm_cell_627/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_627/addAddV2lstm_cell_627/MatMul:product:0 lstm_cell_627/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_627/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_627_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_627/BiasAddBiasAddlstm_cell_627/add:z:0,lstm_cell_627/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_627/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_627/splitSplit&lstm_cell_627/split/split_dim:output:0lstm_cell_627/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_627/SigmoidSigmoidlstm_cell_627/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_1Sigmoidlstm_cell_627/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_627/mulMullstm_cell_627/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_627/ReluRelulstm_cell_627/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_1Mullstm_cell_627/Sigmoid:y:0 lstm_cell_627/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_627/add_1AddV2lstm_cell_627/mul:z:0lstm_cell_627/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_627/Sigmoid_2Sigmoidlstm_cell_627/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_627/Relu_1Relulstm_cell_627/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_627/mul_2Mullstm_cell_627/Sigmoid_2:y:0"lstm_cell_627/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_627_matmul_readvariableop_resource.lstm_cell_627_matmul_1_readvariableop_resource-lstm_cell_627_biasadd_readvariableop_resource*
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
while_body_3810316*
condR
while_cond_3810315*K
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
NoOpNoOp%^lstm_cell_627/BiasAdd/ReadVariableOp$^lstm_cell_627/MatMul/ReadVariableOp&^lstm_cell_627/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_627/BiasAdd/ReadVariableOp$lstm_cell_627/BiasAdd/ReadVariableOp2J
#lstm_cell_627/MatMul/ReadVariableOp#lstm_cell_627/MatMul/ReadVariableOp2N
%lstm_cell_627/MatMul_1/ReadVariableOp%lstm_cell_627/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_683_layer_call_fn_3811181
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3807800o
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
while_cond_3807730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3807730___redundant_placeholder05
1while_while_cond_3807730___redundant_placeholder15
1while_while_cond_3807730___redundant_placeholder25
1while_while_cond_3807730___redundant_placeholder3
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
#__inference__traced_restore_3812361
file_prefix3
!assignvariableop_dense_227_kernel:
/
!assignvariableop_1_dense_227_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_681_lstm_cell_681_kernel:	?M
:assignvariableop_8_lstm_681_lstm_cell_681_recurrent_kernel:	d?=
.assignvariableop_9_lstm_681_lstm_cell_681_bias:	?D
1assignvariableop_10_lstm_682_lstm_cell_682_kernel:	d?N
;assignvariableop_11_lstm_682_lstm_cell_682_recurrent_kernel:	2?>
/assignvariableop_12_lstm_682_lstm_cell_682_bias:	?C
1assignvariableop_13_lstm_683_lstm_cell_683_kernel:2(M
;assignvariableop_14_lstm_683_lstm_cell_683_recurrent_kernel:
(=
/assignvariableop_15_lstm_683_lstm_cell_683_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_227_kernel_m:
7
)assignvariableop_19_adam_dense_227_bias_m:K
8assignvariableop_20_adam_lstm_681_lstm_cell_681_kernel_m:	?U
Bassignvariableop_21_adam_lstm_681_lstm_cell_681_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_681_lstm_cell_681_bias_m:	?K
8assignvariableop_23_adam_lstm_682_lstm_cell_682_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_682_lstm_cell_682_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_682_lstm_cell_682_bias_m:	?J
8assignvariableop_26_adam_lstm_683_lstm_cell_683_kernel_m:2(T
Bassignvariableop_27_adam_lstm_683_lstm_cell_683_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_683_lstm_cell_683_bias_m:(=
+assignvariableop_29_adam_dense_227_kernel_v:
7
)assignvariableop_30_adam_dense_227_bias_v:K
8assignvariableop_31_adam_lstm_681_lstm_cell_681_kernel_v:	?U
Bassignvariableop_32_adam_lstm_681_lstm_cell_681_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_681_lstm_cell_681_bias_v:	?K
8assignvariableop_34_adam_lstm_682_lstm_cell_682_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_682_lstm_cell_682_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_682_lstm_cell_682_bias_v:	?J
8assignvariableop_37_adam_lstm_683_lstm_cell_683_kernel_v:2(T
Bassignvariableop_38_adam_lstm_683_lstm_cell_683_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_683_lstm_cell_683_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_227_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_227_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_681_lstm_cell_681_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_681_lstm_cell_681_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_681_lstm_cell_681_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_682_lstm_cell_682_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_682_lstm_cell_682_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_682_lstm_cell_682_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_683_lstm_cell_683_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_683_lstm_cell_683_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_683_lstm_cell_683_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_227_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_227_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_681_lstm_cell_681_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_681_lstm_cell_681_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_681_lstm_cell_681_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_682_lstm_cell_682_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_682_lstm_cell_682_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_682_lstm_cell_682_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_683_lstm_cell_683_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_683_lstm_cell_683_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_683_lstm_cell_683_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_227_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_227_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_681_lstm_cell_681_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_681_lstm_cell_681_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_681_lstm_cell_681_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_682_lstm_cell_682_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_682_lstm_cell_682_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_682_lstm_cell_682_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_683_lstm_cell_683_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_683_lstm_cell_683_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_683_lstm_cell_683_bias_vIdentity_39:output:0"/device:CPU:0*
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
/__inference_lstm_cell_627_layer_call_fn_3811828

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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3806972o
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3811990

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
while_body_3811262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_629_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_629_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_629_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_629_matmul_readvariableop_resource:2(F
4while_lstm_cell_629_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_629_biasadd_readvariableop_resource:(??*while/lstm_cell_629/BiasAdd/ReadVariableOp?)while/lstm_cell_629/MatMul/ReadVariableOp?+while/lstm_cell_629/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_629/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_629_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_629/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_629/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_629/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_629_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_629/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_629/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_629/addAddV2$while/lstm_cell_629/MatMul:product:0&while/lstm_cell_629/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_629/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_629_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_629/BiasAddBiasAddwhile/lstm_cell_629/add:z:02while/lstm_cell_629/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_629/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_629/splitSplit,while/lstm_cell_629/split/split_dim:output:0$while/lstm_cell_629/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_629/SigmoidSigmoid"while/lstm_cell_629/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_1Sigmoid"while/lstm_cell_629/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mulMul!while/lstm_cell_629/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_629/ReluRelu"while/lstm_cell_629/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_1Mulwhile/lstm_cell_629/Sigmoid:y:0&while/lstm_cell_629/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/add_1AddV2while/lstm_cell_629/mul:z:0while/lstm_cell_629/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_629/Sigmoid_2Sigmoid"while/lstm_cell_629/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_629/Relu_1Reluwhile/lstm_cell_629/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_629/mul_2Mul!while/lstm_cell_629/Sigmoid_2:y:0(while/lstm_cell_629/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_629/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_629/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_629/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_629/BiasAdd/ReadVariableOp*^while/lstm_cell_629/MatMul/ReadVariableOp,^while/lstm_cell_629/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_629_biasadd_readvariableop_resource5while_lstm_cell_629_biasadd_readvariableop_resource_0"n
4while_lstm_cell_629_matmul_1_readvariableop_resource6while_lstm_cell_629_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_629_matmul_readvariableop_resource4while_lstm_cell_629_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_629/BiasAdd/ReadVariableOp*while/lstm_cell_629/BiasAdd/ReadVariableOp2V
)while/lstm_cell_629/MatMul/ReadVariableOp)while/lstm_cell_629/MatMul/ReadVariableOp2Z
+while/lstm_cell_629/MatMul_1/ReadVariableOp+while/lstm_cell_629/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_227_layer_call_fn_3809046

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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808283o
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
*__inference_lstm_681_layer_call_fn_3809960

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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3807958s
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
*__inference_lstm_681_layer_call_fn_3809949
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3807100|
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

?
0__inference_sequential_227_layer_call_fn_3809073

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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808872o
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
?
?
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3811860

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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808283

inputs#
lstm_681_3807959:	?#
lstm_681_3807961:	d?
lstm_681_3807963:	?#
lstm_682_3808109:	d?#
lstm_682_3808111:	2?
lstm_682_3808113:	?"
lstm_683_3808259:2("
lstm_683_3808261:
(
lstm_683_3808263:(#
dense_227_3808277:

dense_227_3808279:
identity??!dense_227/StatefulPartitionedCall? lstm_681/StatefulPartitionedCall? lstm_682/StatefulPartitionedCall? lstm_683/StatefulPartitionedCall?
 lstm_681/StatefulPartitionedCallStatefulPartitionedCallinputslstm_681_3807959lstm_681_3807961lstm_681_3807963*
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3807958?
 lstm_682/StatefulPartitionedCallStatefulPartitionedCall)lstm_681/StatefulPartitionedCall:output:0lstm_682_3808109lstm_682_3808111lstm_682_3808113*
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3808108?
 lstm_683/StatefulPartitionedCallStatefulPartitionedCall)lstm_682/StatefulPartitionedCall:output:0lstm_683_3808259lstm_683_3808261lstm_683_3808263*
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3808258?
!dense_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_683/StatefulPartitionedCall:output:0dense_227_3808277dense_227_3808279*
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
F__inference_dense_227_layer_call_and_return_conditional_losses_3808276y
IdentityIdentity*dense_227/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_227/StatefulPartitionedCall!^lstm_681/StatefulPartitionedCall!^lstm_682/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_227/StatefulPartitionedCall!dense_227/StatefulPartitionedCall2D
 lstm_681/StatefulPartitionedCall lstm_681/StatefulPartitionedCall2D
 lstm_682/StatefulPartitionedCall lstm_682/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
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
lstm_681_input;
 serving_default_lstm_681_input:0?????????=
	dense_2270
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
2dense_227/kernel
:2dense_227/bias
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
0:.	?2lstm_681/lstm_cell_681/kernel
::8	d?2'lstm_681/lstm_cell_681/recurrent_kernel
*:(?2lstm_681/lstm_cell_681/bias
0:.	d?2lstm_682/lstm_cell_682/kernel
::8	2?2'lstm_682/lstm_cell_682/recurrent_kernel
*:(?2lstm_682/lstm_cell_682/bias
/:-2(2lstm_683/lstm_cell_683/kernel
9:7
(2'lstm_683/lstm_cell_683/recurrent_kernel
):'(2lstm_683/lstm_cell_683/bias
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
2Adam/dense_227/kernel/m
!:2Adam/dense_227/bias/m
5:3	?2$Adam/lstm_681/lstm_cell_681/kernel/m
?:=	d?2.Adam/lstm_681/lstm_cell_681/recurrent_kernel/m
/:-?2"Adam/lstm_681/lstm_cell_681/bias/m
5:3	d?2$Adam/lstm_682/lstm_cell_682/kernel/m
?:=	2?2.Adam/lstm_682/lstm_cell_682/recurrent_kernel/m
/:-?2"Adam/lstm_682/lstm_cell_682/bias/m
4:22(2$Adam/lstm_683/lstm_cell_683/kernel/m
>:<
(2.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m
.:,(2"Adam/lstm_683/lstm_cell_683/bias/m
':%
2Adam/dense_227/kernel/v
!:2Adam/dense_227/bias/v
5:3	?2$Adam/lstm_681/lstm_cell_681/kernel/v
?:=	d?2.Adam/lstm_681/lstm_cell_681/recurrent_kernel/v
/:-?2"Adam/lstm_681/lstm_cell_681/bias/v
5:3	d?2$Adam/lstm_682/lstm_cell_682/kernel/v
?:=	2?2.Adam/lstm_682/lstm_cell_682/recurrent_kernel/v
/:-?2"Adam/lstm_682/lstm_cell_682/bias/v
4:22(2$Adam/lstm_683/lstm_cell_683/kernel/v
>:<
(2.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v
.:,(2"Adam/lstm_683/lstm_cell_683/bias/v
?2?
0__inference_sequential_227_layer_call_fn_3808308
0__inference_sequential_227_layer_call_fn_3809046
0__inference_sequential_227_layer_call_fn_3809073
0__inference_sequential_227_layer_call_fn_3808924?
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3809500
K__inference_sequential_227_layer_call_and_return_conditional_losses_3809927
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808954
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808984?
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
"__inference__wrapped_model_3806759lstm_681_input"?
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
*__inference_lstm_681_layer_call_fn_3809938
*__inference_lstm_681_layer_call_fn_3809949
*__inference_lstm_681_layer_call_fn_3809960
*__inference_lstm_681_layer_call_fn_3809971?
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810114
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810257
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810400
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810543?
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
*__inference_lstm_682_layer_call_fn_3810554
*__inference_lstm_682_layer_call_fn_3810565
*__inference_lstm_682_layer_call_fn_3810576
*__inference_lstm_682_layer_call_fn_3810587?
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3810730
E__inference_lstm_682_layer_call_and_return_conditional_losses_3810873
E__inference_lstm_682_layer_call_and_return_conditional_losses_3811016
E__inference_lstm_682_layer_call_and_return_conditional_losses_3811159?
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
*__inference_lstm_683_layer_call_fn_3811170
*__inference_lstm_683_layer_call_fn_3811181
*__inference_lstm_683_layer_call_fn_3811192
*__inference_lstm_683_layer_call_fn_3811203?
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811346
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811489
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811632
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811775?
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
+__inference_dense_227_layer_call_fn_3811784?
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
F__inference_dense_227_layer_call_and_return_conditional_losses_3811794?
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
%__inference_signature_wrapper_3809019lstm_681_input"?
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
/__inference_lstm_cell_627_layer_call_fn_3811811
/__inference_lstm_cell_627_layer_call_fn_3811828?
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3811860
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3811892?
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
/__inference_lstm_cell_628_layer_call_fn_3811909
/__inference_lstm_cell_628_layer_call_fn_3811926?
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3811958
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3811990?
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
/__inference_lstm_cell_629_layer_call_fn_3812007
/__inference_lstm_cell_629_layer_call_fn_3812024?
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3812056
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3812088?
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
"__inference__wrapped_model_3806759?-./012345!";?8
1?.
,?)
lstm_681_input?????????
? "5?2
0
	dense_227#? 
	dense_227??????????
F__inference_dense_227_layer_call_and_return_conditional_losses_3811794\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_227_layer_call_fn_3811784O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810114?-./O?L
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810257?-./O?L
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810400q-./??<
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
E__inference_lstm_681_layer_call_and_return_conditional_losses_3810543q-./??<
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
*__inference_lstm_681_layer_call_fn_3809938}-./O?L
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
*__inference_lstm_681_layer_call_fn_3809949}-./O?L
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
*__inference_lstm_681_layer_call_fn_3809960d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_681_layer_call_fn_3809971d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_682_layer_call_and_return_conditional_losses_3810730?012O?L
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3810873?012O?L
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3811016q012??<
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
E__inference_lstm_682_layer_call_and_return_conditional_losses_3811159q012??<
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
*__inference_lstm_682_layer_call_fn_3810554}012O?L
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
*__inference_lstm_682_layer_call_fn_3810565}012O?L
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
*__inference_lstm_682_layer_call_fn_3810576d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_682_layer_call_fn_3810587d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811346}345O?L
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811489}345O?L
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811632m345??<
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
E__inference_lstm_683_layer_call_and_return_conditional_losses_3811775m345??<
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
*__inference_lstm_683_layer_call_fn_3811170p345O?L
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
*__inference_lstm_683_layer_call_fn_3811181p345O?L
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
*__inference_lstm_683_layer_call_fn_3811192`345??<
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
*__inference_lstm_683_layer_call_fn_3811203`345??<
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3811860?-./??}
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
J__inference_lstm_cell_627_layer_call_and_return_conditional_losses_3811892?-./??}
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
/__inference_lstm_cell_627_layer_call_fn_3811811?-./??}
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
/__inference_lstm_cell_627_layer_call_fn_3811828?-./??}
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3811958?012??}
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
J__inference_lstm_cell_628_layer_call_and_return_conditional_losses_3811990?012??}
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
/__inference_lstm_cell_628_layer_call_fn_3811909?012??}
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
/__inference_lstm_cell_628_layer_call_fn_3811926?012??}
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3812056?345??}
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
J__inference_lstm_cell_629_layer_call_and_return_conditional_losses_3812088?345??}
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
/__inference_lstm_cell_629_layer_call_fn_3812007?345??}
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
/__inference_lstm_cell_629_layer_call_fn_3812024?345??}
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808954y-./012345!"C?@
9?6
,?)
lstm_681_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_227_layer_call_and_return_conditional_losses_3808984y-./012345!"C?@
9?6
,?)
lstm_681_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_227_layer_call_and_return_conditional_losses_3809500q-./012345!";?8
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
K__inference_sequential_227_layer_call_and_return_conditional_losses_3809927q-./012345!";?8
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
0__inference_sequential_227_layer_call_fn_3808308l-./012345!"C?@
9?6
,?)
lstm_681_input?????????
p 

 
? "???????????
0__inference_sequential_227_layer_call_fn_3808924l-./012345!"C?@
9?6
,?)
lstm_681_input?????????
p

 
? "???????????
0__inference_sequential_227_layer_call_fn_3809046d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_227_layer_call_fn_3809073d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3809019?-./012345!"M?J
? 
C?@
>
lstm_681_input,?)
lstm_681_input?????????"5?2
0
	dense_227#? 
	dense_227?????????